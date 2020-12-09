# Base image for Flask app serving JS app needing Node
FROM python:3.8-slim-buster
RUN apt-get update || : && apt-get install -y gcc musl-dev netcat curl gnupg - && curl --silent https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && echo "deb https://deb.nodesource.com/node_14.x buster main\ndeb-src https://deb.nodesource.com/node_14.x buster main" > /etc/apt/sources.list.d/nodesource.list && apt-get update - && \
  curl -sL https://deb.nodesource.com/node_14.x | apt-get install -y nodejs - && curl -sL https://deb.nodesource.com/node_14.x | apt-get install -y nodejs - &&\
  pip install --upgrade pip && echo "🎉 All done!"

# RUN apt-get update || : && apt-get install -y gcc musl-dev netcat curl gnupg
# RUN curl --silent https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
# RUN echo "deb https://deb.nodesource.com/node_14.x buster main\ndeb-src https://deb.nodesource.com/node_14.x buster main" > /etc/apt/sources.list.d/nodesource.list && apt-get update
# RUN curl -sL https://deb.nodesource.com/node_14.x | apt-get install -y nodejs
# RUN pip install --upgrade pip && echo "🎉 All done!"
