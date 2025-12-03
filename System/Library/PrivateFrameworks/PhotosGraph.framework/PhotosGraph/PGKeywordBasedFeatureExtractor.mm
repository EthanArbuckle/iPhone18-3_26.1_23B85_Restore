@interface PGKeywordBasedFeatureExtractor
- (PGKeywordBasedFeatureExtractor)init;
- (PGKeywordBasedFeatureExtractor)initWithWeightByKeyword:(id)keyword;
- (id)musicCurationFeaturesWithContext:(id)context progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGKeywordBasedFeatureExtractor

- (PGKeywordBasedFeatureExtractor)initWithWeightByKeyword:(id)keyword
{
  ObjectType = swift_getObjectType();
  v5 = sub_22F7401D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740CA0();
  v10 = self + OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash;
  *v10 = 0;
  v10[8] = 1;
  sub_22F7401C0();
  v11 = sub_22F740190();

  (*(v6 + 8))(v9, v5);
  *(&self->super.isa + OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword) = v11;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(PGKeywordBasedFeatureExtractor *)&v13 init];
}

- (id)musicCurationFeaturesWithContext:(id)context progressReporter:(id)reporter error:(id *)error
{
  contextCopy = context;
  reporterCopy = reporter;
  selfCopy = self;
  v10 = KeywordBasedFeatureExtractor.musicCurationFeatures(context:progressReporter:)(contextCopy);

  return v10;
}

- (PGKeywordBasedFeatureExtractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end