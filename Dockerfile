#Using Ubuntu as base image version 20.04
FROM ubuntu:20.04

LABEL maintainer: "welcomemcube@gmail.com"

#Update Ubuntu Software repository and Install Redis
RUN apt-get update && apt-get install -y redis-server

#Expose ports
EXPOSE 6379
ENTRYPOINT ["redis-server"]