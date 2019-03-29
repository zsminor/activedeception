#!/bin/bash

#installs dependencies for tensor flow docker images, creates tensorflow-container and spawn a bash shell for it.

#updates repos and updates installed packages. Installs docker. Installs tensorflow docker images.

sudo apt-get update && apt-get upgrade -y;
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common;
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable";
sudo apt-get update -y;
sudo apt-get install -y docker-ce docker-ce-cli containerd.io;
docker pull tensorflow/tensorflow:latest-gpu-jupyter;
docker -it -P tensorflow/tensorflow:latest-gpu-jupyter bash;
