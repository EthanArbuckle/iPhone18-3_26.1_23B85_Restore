@interface PGFeatureExtractorAssetAverage
- (NSArray)featureNames;
- (NSString)name;
- (PGFeatureExtractorAssetAverage)init;
- (PGFeatureExtractorAssetAverage)initWithFeatureExtractor:(id)extractor skipAssetsWithErrors:(BOOL)errors;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetAverage

- (PGFeatureExtractorAssetAverage)initWithFeatureExtractor:(id)extractor skipAssetsWithErrors:(BOOL)errors
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor) = extractor;
  *(&self->super.super.super.isa + OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors) = errors;
  v10.receiver = self;
  v10.super_class = ObjectType;
  extractorCopy = extractor;
  return [(PGFeatureExtractorAssetAverage *)&v10 init];
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  selfCopy = self;
  v7 = FeatureExtractorAssetAverage.floatVector(withEntity:)(entityCopy);

  return v7;
}

- (NSArray)featureNames
{
  selfCopy = self;
  FeatureExtractorAssetAverage.featureNames.getter();

  v3 = sub_22F741160();

  return v3;
}

- (NSString)name
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor);
  selfCopy = self;
  name = [v2 name];
  v5 = sub_22F740E20();
  v7 = v6;

  sub_22F740E20();
  MEMORY[0x231900B10](95, 0xE100000000000000);
  MEMORY[0x231900B10](v5, v7);

  v8 = sub_22F740DF0();

  return v8;
}

- (PGFeatureExtractorAssetAverage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end