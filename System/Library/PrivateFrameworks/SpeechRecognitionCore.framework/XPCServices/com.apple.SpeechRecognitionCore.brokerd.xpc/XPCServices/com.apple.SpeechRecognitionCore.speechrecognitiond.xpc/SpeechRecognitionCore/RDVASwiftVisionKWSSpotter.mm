@interface RDVASwiftVisionKWSSpotter
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)initWithDelegate:(id)delegate;
- (void)addAudioSamplesWithAudio:(id)audio count:(int64_t)count;
- (void)startWithUsedKeywords:(id)keywords saveRuntimeAudio:(BOOL)audio;
- (void)stop;
@end

@implementation RDVASwiftVisionKWSSpotter

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v4 = sub_1000583C4(delegate);
  swift_unknownObjectRelease();
  return v4;
}

- (void)startWithUsedKeywords:(id)keywords saveRuntimeAudio:(BOOL)audio
{
  sub_1000C9B74();
  selfCopy = self;
  sub_100057B90();
}

- (void)stop
{
  v2 = *((swift_isaMask & self->super.isa) + 0x70);
  selfCopy = self;
  if (v2())
  {
    sub_100052CBC(&qword_10010DD30, &qword_1000D1C20);
    sub_1000C9C74();
  }
}

- (void)addAudioSamplesWithAudio:(id)audio count:(int64_t)count
{
  v5 = sub_1000C9B74();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_spotter);
  v7 = *((swift_isaMask & self->super.isa) + 0xD8);
  selfCopy = self;
  v9 = v7(v5);
  mach_absolute_time();
  sub_1000C9594();
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end