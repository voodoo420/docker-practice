FROM node

RUN apt-get update && apt-get install -y nano

RUN mkdir /skillbox
COPY . /skillbox

WORKDIR /skillbox

RUN yarn install
RUN yarn test
RUN yarn build 
CMD yarn start

EXPOSE 3000
