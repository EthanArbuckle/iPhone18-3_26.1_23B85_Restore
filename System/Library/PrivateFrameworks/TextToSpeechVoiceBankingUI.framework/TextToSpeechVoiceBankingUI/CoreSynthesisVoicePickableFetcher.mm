@interface CoreSynthesisVoicePickableFetcher
- (_TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher)init;
- (void)dealloc;
@end

@implementation CoreSynthesisVoicePickableFetcher

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x110);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
  [(CoreSynthesisVoicePickableFetcher *)&v4 dealloc];
}

- (_TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end