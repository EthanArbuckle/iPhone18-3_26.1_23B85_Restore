@interface SpeechSynth
- (_TtC31TextToSpeechVoiceBankingSupport11SpeechSynth)init;
@end

@implementation SpeechSynth

- (_TtC31TextToSpeechVoiceBankingSupport11SpeechSynth)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriSynth) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport11SpeechSynth_siriVoice) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SpeechSynth *)&v5 init];
}

@end