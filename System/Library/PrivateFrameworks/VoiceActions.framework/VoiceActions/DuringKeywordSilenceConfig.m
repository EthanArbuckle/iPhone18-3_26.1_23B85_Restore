@interface DuringKeywordSilenceConfig
- (DuringKeywordSilenceConfig)init;
- (NSString)description;
- (float)minPercentageOfNonSilenceFrames;
- (float)silenceProbability;
- (void)setMinPercentageOfNonSilenceFrames:(float)a3;
- (void)setSilenceProbability:(float)a3;
@end

@implementation DuringKeywordSilenceConfig

- (float)minPercentageOfNonSilenceFrames
{
  v2 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames);
  swift_beginAccess();
  return *v2;
}

- (void)setMinPercentageOfNonSilenceFrames:(float)a3
{
  v4 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames);
  swift_beginAccess();
  *v4 = a3;
}

- (float)silenceProbability
{
  v2 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  return *v2;
}

- (void)setSilenceProbability:(float)a3
{
  v4 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  *v4 = a3;
}

- (DuringKeywordSilenceConfig)init
{
  *(&self->super.isa + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames) = 1056964608;
  *(&self->super.isa + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability) = 1056964608;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DuringKeywordSilence();
  return [(DuringKeywordSilenceConfig *)&v3 init];
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
  type metadata accessor for DuringKeywordSilence();
  sub_27227DA80(&qword_2808822B8, v9, type metadata accessor for DuringKeywordSilence);
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