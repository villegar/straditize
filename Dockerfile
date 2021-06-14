FROM continuumio/miniconda3:latest

MAINTAINER Roberto Villegas-Diaz

RUN apt-get update -y && apt-get install libnetcdf-dev libnetcdff-dev -y
RUN apt-get install libgl1-mesa-glx libnss3 -y
RUN apt-get install libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libxtst-dev libxss-dev libdbus-1-dev libevent-dev libfontconfig1-dev libcap-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libegl1-mesa-dev gperf bison nodejs -y

RUN conda install pip -y
RUN pip install pyqt5==5.11.2
RUN pip install psyplot-gui
RUN pip install straditize

CMD straditize