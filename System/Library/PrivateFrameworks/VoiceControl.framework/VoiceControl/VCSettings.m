@interface VCSettings
- (_TtC12VoiceControl10VCSettings)init;
@end

@implementation VCSettings

- (_TtC12VoiceControl10VCSettings)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsDaemon) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsVocabulary) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12VoiceControl10VCSettings_testMode) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VCSettings();
  v2 = [(VCSettings *)&v4 init];
  sub_2723E8E04(0);

  return v2;
}

@end