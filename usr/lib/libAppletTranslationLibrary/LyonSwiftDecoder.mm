@interface LyonSwiftDecoder
+ (id)getInstance;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (int64_t)stateNumber;
- (void)cleanup;
@end

@implementation LyonSwiftDecoder

+ (id)getInstance
{
  if (qword_27DA9E368 != -1)
  {
    swift_once();
  }

  v3 = qword_27DA9E510;

  return v3;
}

- (int64_t)stateNumber
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC24AppletTranslationLibrary16LyonSwiftDecoder_state);
  if (!(v2 >> 6))
  {
    return 2;
  }

  if (v2 >> 6 == 1)
  {
    return 3;
  }

  if (v2 == 128)
  {
    return 1;
  }

  return 4;
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

  sub_22EF7D058(v19, v21, v22, v24);

  sub_22EF708C8(v19, v21);
  v25 = sub_22EFB641C();

  return v25;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  sub_22EF7D54C();
  v7 = sub_22EFB641C();

  return v7;
}

- (void)cleanup
{
  selfCopy = self;
  sub_22EF7ADDC();
}

@end