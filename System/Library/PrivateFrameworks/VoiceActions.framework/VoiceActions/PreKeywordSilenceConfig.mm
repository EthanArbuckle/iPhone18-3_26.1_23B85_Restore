@interface PreKeywordSilenceConfig
- (NSString)description;
- (PreKeywordSilenceConfig)init;
- (float)silenceProbability;
- (int64_t)lookbackFrames;
- (int64_t)minSilenceInLookbackFrames;
- (void)setLookbackFrames:(int64_t)frames;
- (void)setMinSilenceInLookbackFrames:(int64_t)frames;
- (void)setSilenceProbability:(float)probability;
@end

@implementation PreKeywordSilenceConfig

- (int64_t)lookbackFrames
{
  v3 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLookbackFrames:(int64_t)frames
{
  v5 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  swift_beginAccess();
  *(&self->super.isa + v5) = frames;
}

- (int64_t)minSilenceInLookbackFrames
{
  v3 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMinSilenceInLookbackFrames:(int64_t)frames
{
  v5 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  swift_beginAccess();
  *(&self->super.isa + v5) = frames;
}

- (float)silenceProbability
{
  v2 = (self + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  return *v2;
}

- (void)setSilenceProbability:(float)probability
{
  v4 = (self + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  *v4 = probability;
}

- (PreKeywordSilenceConfig)init
{
  *(&self->super.isa + OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames) = 20;
  *(&self->super.isa + OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames) = 10;
  *(&self->super.isa + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability) = 1060320051;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PreKeywordSilence();
  return [(PreKeywordSilenceConfig *)&v3 init];
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
  type metadata accessor for PreKeywordSilence();
  sub_27227DA80(&qword_280882290, v9, type metadata accessor for PreKeywordSilence);
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