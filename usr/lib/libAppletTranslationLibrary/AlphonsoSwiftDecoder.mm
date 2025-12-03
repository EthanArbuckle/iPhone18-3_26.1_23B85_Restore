@interface AlphonsoSwiftDecoder
+ (id)getInstance;
- (_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder)init;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
@end

@implementation AlphonsoSwiftDecoder

+ (id)getInstance
{
  if (qword_27DA9E378 != -1)
  {
    swift_once();
  }

  v3 = qword_27DA9E640;

  return v3;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  selfCopy = self;
  v19 = sub_22EFB61DC();
  v21 = v20;

  v22 = sub_22EFB648C();
  v24 = v23;

  sub_22EF8141C(v19, v21, v22, v24);

  sub_22EF708C8(v19, v21);
  v25 = sub_22EFB641C();

  return v25;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v9 = sub_22EFB648C();
  v11 = v10;
  historyCopy = history;
  selfCopy = self;
  sub_22EF8189C(historyCopy, v9, v11);

  v14 = sub_22EFB641C();

  return v14;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  sub_22EF82140();
  v7 = sub_22EFB641C();

  return v7;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  sub_22EFAB468(MEMORY[0x277D84F90]);
  v7 = sub_22EFB641C();

  return v7;
}

- (_TtC24AppletTranslationLibrary20AlphonsoSwiftDecoder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AlphonsoSwiftDecoder();
  return [(AlphonsoSwiftDecoder *)&v3 init];
}

@end