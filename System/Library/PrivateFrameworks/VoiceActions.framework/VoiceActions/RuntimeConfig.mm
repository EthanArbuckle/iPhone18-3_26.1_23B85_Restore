@interface RuntimeConfig
- (BOOL)audioDebug;
- (BOOL)batchDecode;
- (BOOL)duringKeywordSilence;
- (BOOL)postKeywordSilence;
- (BOOL)preKeywordSilence;
- (BOOL)secondPass;
- (NSString)description;
- (RuntimeConfig)init;
- (void)setAudioDebug:(BOOL)debug;
- (void)setBatchDecode:(BOOL)decode;
- (void)setDuringKeywordSilence:(BOOL)silence;
- (void)setPostKeywordSilence:(BOOL)silence;
- (void)setPreKeywordSilence:(BOOL)silence;
- (void)setSecondPass:(BOOL)pass;
@end

@implementation RuntimeConfig

- (BOOL)audioDebug
{
  v3 = OBJC_IVAR___RuntimeConfig_audioDebug;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioDebug:(BOOL)debug
{
  v5 = OBJC_IVAR___RuntimeConfig_audioDebug;
  swift_beginAccess();
  *(&self->super.isa + v5) = debug;
}

- (BOOL)batchDecode
{
  v3 = OBJC_IVAR___RuntimeConfig_batchDecode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBatchDecode:(BOOL)decode
{
  v5 = OBJC_IVAR___RuntimeConfig_batchDecode;
  swift_beginAccess();
  *(&self->super.isa + v5) = decode;
}

- (BOOL)preKeywordSilence
{
  v3 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPreKeywordSilence:(BOOL)silence
{
  v5 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  swift_beginAccess();
  *(&self->super.isa + v5) = silence;
}

- (BOOL)duringKeywordSilence
{
  v3 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDuringKeywordSilence:(BOOL)silence
{
  v5 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  swift_beginAccess();
  *(&self->super.isa + v5) = silence;
}

- (BOOL)postKeywordSilence
{
  v3 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPostKeywordSilence:(BOOL)silence
{
  v5 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  swift_beginAccess();
  *(&self->super.isa + v5) = silence;
}

- (BOOL)secondPass
{
  v3 = OBJC_IVAR___RuntimeConfig_secondPass;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSecondPass:(BOOL)pass
{
  v5 = OBJC_IVAR___RuntimeConfig_secondPass;
  swift_beginAccess();
  *(&self->super.isa + v5) = pass;
}

- (RuntimeConfig)init
{
  *(&self->super.isa + OBJC_IVAR___RuntimeConfig_audioDebug) = 0;
  *(&self->super.isa + OBJC_IVAR___RuntimeConfig_batchDecode) = 0;
  *(&self->super.isa + OBJC_IVAR___RuntimeConfig_preKeywordSilence) = 1;
  *(&self->super.isa + OBJC_IVAR___RuntimeConfig_duringKeywordSilence) = 1;
  *(&self->super.isa + OBJC_IVAR___RuntimeConfig_postKeywordSilence) = 0;
  *(&self->super.isa + OBJC_IVAR___RuntimeConfig_secondPass) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RuntimeConfig();
  return [(RuntimeConfig *)&v3 init];
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
  type metadata accessor for RuntimeConfig();
  sub_27227DA80(&qword_280882440, v9, type metadata accessor for RuntimeConfig);
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