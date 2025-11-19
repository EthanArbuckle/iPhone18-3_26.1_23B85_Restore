@interface SSMLVoiceTagger
- (_TtC12TextToSpeech15SSMLVoiceTagger)init;
- (id)tagSSML:(id)a3;
@end

@implementation SSMLVoiceTagger

- (_TtC12TextToSpeech15SSMLVoiceTagger)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_currentVoiceName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_currentLanguage);
  *v3 = 0;
  v3[1] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_voiceTagRanges) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SSMLVoiceTagger();
  return [(SSMLVoiceTagger *)&v6 init];
}

- (id)tagSSML:(id)a3
{
  v4 = sub_1A957C0F8();
  v6 = v5;
  v7 = self;
  v8 = sub_1A93C149C(v4, v6);

  return v8;
}

@end