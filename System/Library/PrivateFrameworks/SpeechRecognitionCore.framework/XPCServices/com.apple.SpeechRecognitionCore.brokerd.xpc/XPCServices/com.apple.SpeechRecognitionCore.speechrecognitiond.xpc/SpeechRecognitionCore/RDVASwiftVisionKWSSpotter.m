@interface RDVASwiftVisionKWSSpotter
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)initWithDelegate:(id)a3;
- (void)addAudioSamplesWithAudio:(id)a3 count:(int64_t)a4;
- (void)startWithUsedKeywords:(id)a3 saveRuntimeAudio:(BOOL)a4;
- (void)stop;
@end

@implementation RDVASwiftVisionKWSSpotter

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1000583C4(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)startWithUsedKeywords:(id)a3 saveRuntimeAudio:(BOOL)a4
{
  sub_1000C9B74();
  v5 = self;
  sub_100057B90();
}

- (void)stop
{
  v2 = *((swift_isaMask & self->super.isa) + 0x70);
  v3 = self;
  if (v2())
  {
    sub_100052CBC(&qword_10010DD30, &qword_1000D1C20);
    sub_1000C9C74();
  }
}

- (void)addAudioSamplesWithAudio:(id)a3 count:(int64_t)a4
{
  v5 = sub_1000C9B74();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter_spotter);
  v7 = *((swift_isaMask & self->super.isa) + 0xD8);
  v8 = self;
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