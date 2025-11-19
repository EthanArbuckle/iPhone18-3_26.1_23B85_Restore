@interface PostKeywordSilenceConfig
- (NSString)description;
- (PostKeywordSilenceConfig)init;
- (float)silenceProbability;
- (int64_t)lookForwardFrames;
- (int64_t)minSilenceFrameCountAtEndOfKeyword;
- (int64_t)minSilenceFramesExpected;
- (void)setLookForwardFrames:(int64_t)a3;
- (void)setMinSilenceFrameCountAtEndOfKeyword:(int64_t)a3;
- (void)setMinSilenceFramesExpected:(int64_t)a3;
- (void)setSilenceProbability:(float)a3;
@end

@implementation PostKeywordSilenceConfig

- (int64_t)lookForwardFrames
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLookForwardFrames:(int64_t)a3
{
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)minSilenceFramesExpected
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMinSilenceFramesExpected:(int64_t)a3
{
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (float)silenceProbability
{
  v2 = (self + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  return *v2;
}

- (void)setSilenceProbability:(float)a3
{
  v4 = (self + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  *v4 = a3;
}

- (int64_t)minSilenceFrameCountAtEndOfKeyword
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMinSilenceFrameCountAtEndOfKeyword:(int64_t)a3
{
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (PostKeywordSilenceConfig)init
{
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames) = 8;
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected) = 2;
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability) = 1060320051;
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword) = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PostKeywordSilence();
  return [(PostKeywordSilenceConfig *)&v3 init];
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
  v8 = self;
  sub_272376B2C();
  type metadata accessor for PostKeywordSilence();
  sub_27227DA80(&qword_2808822F0, v9, type metadata accessor for PostKeywordSilence);
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