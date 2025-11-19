@interface PGFeatureExtractorAssetAverage
- (NSArray)featureNames;
- (NSString)name;
- (PGFeatureExtractorAssetAverage)init;
- (PGFeatureExtractorAssetAverage)initWithFeatureExtractor:(id)a3 skipAssetsWithErrors:(BOOL)a4;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAssetAverage

- (PGFeatureExtractorAssetAverage)initWithFeatureExtractor:(id)a3 skipAssetsWithErrors:(BOOL)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor) = a3;
  *(&self->super.super.super.isa + OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors) = a4;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = a3;
  return [(PGFeatureExtractorAssetAverage *)&v10 init];
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = FeatureExtractorAssetAverage.floatVector(withEntity:)(v5);

  return v7;
}

- (NSArray)featureNames
{
  v2 = self;
  FeatureExtractorAssetAverage.featureNames.getter();

  v3 = sub_22F741160();

  return v3;
}

- (NSString)name
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor);
  v3 = self;
  v4 = [v2 name];
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