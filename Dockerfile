FROM python:3.8-slim-buster
WORKDIR /tmp/app
RUN mkdir conf
COPY requirements.txt ./
RUN apt-get update
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY DEVOPS-praktikum_Docker/web.py ./
COPY DEVOPS-praktikum_Docker/conf/web.conf conf/
ENTRYPOINT ["python3","web.py"]
