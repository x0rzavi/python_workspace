FROM gitpod/workspace-full:latest
USER root
RUN echo 'root:testing' | chpasswd
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y python3 python3-pip build-essential libssl-dev libffi-dev python-dev python3-venv
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER root
