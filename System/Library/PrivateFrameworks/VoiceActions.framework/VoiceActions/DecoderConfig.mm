@interface DecoderConfig
- (AudioCaptureConfig)audioCapture;
- (BOOL)useChecker;
- (DuringKeywordSilenceConfig)duringKeywordSilence;
- (NSString)description;
- (PostKeywordSilenceConfig)postKeywordSilence;
- (PreKeywordSilenceConfig)preKeywordSilence;
- (void)setAudioCapture:(id)capture;
- (void)setDuringKeywordSilence:(id)silence;
- (void)setPostKeywordSilence:(id)silence;
- (void)setPreKeywordSilence:(id)silence;
- (void)setUseChecker:(BOOL)checker;
@end

@implementation DecoderConfig

- (BOOL)useChecker
{
  v3 = OBJC_IVAR___DecoderConfig_useChecker;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUseChecker:(BOOL)checker
{
  v5 = OBJC_IVAR___DecoderConfig_useChecker;
  swift_beginAccess();
  *(&self->super.isa + v5) = checker;
}

- (PreKeywordSilenceConfig)preKeywordSilence
{
  v3 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreKeywordSilence:(id)silence
{
  v5 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = silence;
  silenceCopy = silence;
}

- (DuringKeywordSilenceConfig)duringKeywordSilence
{
  v3 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDuringKeywordSilence:(id)silence
{
  v5 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = silence;
  silenceCopy = silence;
}

- (PostKeywordSilenceConfig)postKeywordSilence
{
  v3 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPostKeywordSilence:(id)silence
{
  v5 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = silence;
  silenceCopy = silence;
}

- (AudioCaptureConfig)audioCapture
{
  v3 = OBJC_IVAR___DecoderConfig_audioCapture;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioCapture:(id)capture
{
  v5 = OBJC_IVAR___DecoderConfig_audioCapture;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = capture;
  captureCopy = capture;
}

- (NSString)description
{
  v3 = sub_27237788C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  selfCopy = self;
  sub_272376B2C();
  type metadata accessor for DecoderConfig();
  sub_27227DA80(&qword_280882378, v9, type metadata accessor for DecoderConfig);
  v10 = sub_272376B1C();
  v12 = v11;

  sub_27237787C();
  sub_27237784C();
  if (v13)
  {
    sub_2721F05C8(v10, v12);

    v14 = sub_2723777FC();

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

@end