FROM ubuntu:latest

RUN apt update
RUN apt install -y curl
RUN apt install -y unzip
RUN apt install -y git
RUN apt install -y emacs
RUN apt install -y vim
RUN curl https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_arm64.zip > tf.zip
RUN unzip tf.zip
RUN chmod +x terraform
mkdir connection-test
RUN mv terraform /usr/local/bin