@interface RDSoundInputImpl_iOS_AV_Coexist
- (BOOL)startRecording;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)initWithExpectedFormat:(id)a3 deliverSamples:(id)a4;
- (void)handleConfigurationChangeNotificationWithNote:(id)a3;
- (void)stopRecording;
@end

@implementation RDSoundInputImpl_iOS_AV_Coexist

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)initWithExpectedFormat:(id)a3 deliverSamples:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return RDSoundInputImpl_iOS_AV_Coexist.init(expectedFormat:deliverSamples:)(a3, sub_10005C684, v6);
}

- (void)handleConfigurationChangeNotificationWithNote:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005968C(v4);
}

- (BOOL)startRecording
{
  v2 = self;
  v3 = RDSoundInputImpl_iOS_AV_Coexist.startRecording()();

  return v3;
}

- (void)stopRecording
{
  v2 = self;
  RDSoundInputImpl_iOS_AV_Coexist.stopRecording()();
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end