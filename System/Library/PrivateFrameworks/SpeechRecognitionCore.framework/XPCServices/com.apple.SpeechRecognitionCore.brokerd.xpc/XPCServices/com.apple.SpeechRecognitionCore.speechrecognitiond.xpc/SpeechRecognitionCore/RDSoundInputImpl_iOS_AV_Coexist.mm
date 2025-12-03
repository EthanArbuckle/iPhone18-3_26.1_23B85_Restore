@interface RDSoundInputImpl_iOS_AV_Coexist
- (BOOL)startRecording;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)initWithExpectedFormat:(id)format deliverSamples:(id)samples;
- (void)handleConfigurationChangeNotificationWithNote:(id)note;
- (void)stopRecording;
@end

@implementation RDSoundInputImpl_iOS_AV_Coexist

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)initWithExpectedFormat:(id)format deliverSamples:(id)samples
{
  v5 = _Block_copy(samples);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return RDSoundInputImpl_iOS_AV_Coexist.init(expectedFormat:deliverSamples:)(format, sub_10005C684, v6);
}

- (void)handleConfigurationChangeNotificationWithNote:(id)note
{
  noteCopy = note;
  selfCopy = self;
  sub_10005968C(noteCopy);
}

- (BOOL)startRecording
{
  selfCopy = self;
  v3 = RDSoundInputImpl_iOS_AV_Coexist.startRecording()();

  return v3;
}

- (void)stopRecording
{
  selfCopy = self;
  RDSoundInputImpl_iOS_AV_Coexist.stopRecording()();
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond31RDSoundInputImpl_iOS_AV_Coexist)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end