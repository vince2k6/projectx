FROM java:8

# install maven
RUN apt-get update && apt-get install -y maven

COPY pom.xml .
COPY src src

RUN ["mvn","clean","install"]


