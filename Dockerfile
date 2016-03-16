FROM python:3.5

MAINTAINER zqdou zqdou@dataman-inc.com

ADD . /app
WORKDIR /app

#RUN apt-get install python3-dev -y
RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD python3 hello.py runserver --host 0.0.0.0 -p 8000
