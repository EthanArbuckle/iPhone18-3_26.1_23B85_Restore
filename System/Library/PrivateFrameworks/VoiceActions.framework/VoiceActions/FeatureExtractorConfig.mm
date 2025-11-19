@interface FeatureExtractorConfig
- (FeatureExtractorConfig)init;
- (NSString)description;
- (int64_t)cmvnMinWindowLength;
- (int64_t)cmvnSlidingWindowLength;
- (int64_t)downSampleStride;
- (int64_t)nnetIntakeFeatureLength;
- (int64_t)nnetVectorSize;
- (int64_t)spliceLeftContext;
- (int64_t)spliceRightContext;
- (void)setCmvnMinWindowLength:(int64_t)a3;
- (void)setCmvnSlidingWindowLength:(int64_t)a3;
- (void)setDownSampleStride:(int64_t)a3;
- (void)setNnetIntakeFeatureLength:(int64_t)a3;
- (void)setNnetVectorSize:(int64_t)a3;
- (void)setSpliceLeftContext:(int64_t)a3;
- (void)setSpliceRightContext:(int64_t)a3;
@end

@implementation FeatureExtractorConfig

- (int64_t)cmvnSlidingWindowLength
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCmvnSlidingWindowLength:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)cmvnMinWindowLength
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCmvnMinWindowLength:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)spliceLeftContext
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSpliceLeftContext:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)spliceRightContext
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSpliceRightContext:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)downSampleStride
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDownSampleStride:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)nnetIntakeFeatureLength
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNnetIntakeFeatureLength:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)nnetVectorSize
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNnetVectorSize:(int64_t)a3
{
  v5 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (FeatureExtractorConfig)init
{
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength) = 600;
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength) = 24;
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext) = 3;
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_spliceRightContext) = 3;
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_downSampleStride) = 3;
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength) = 8;
  *(&self->super.isa + OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize) = 280;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeatureExtractorConfig();
  return [(FeatureExtractorConfig *)&v3 init];
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
  type metadata accessor for FeatureExtractorConfig();
  sub_27227DA80(&qword_2808823F8, v9, type metadata accessor for FeatureExtractorConfig);
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