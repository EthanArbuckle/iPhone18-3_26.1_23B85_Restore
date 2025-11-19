@interface PGFeatureExtractorAverageMomentScenes
- (NSArray)featureNames;
- (PGFeatureExtractorAverageMomentScenes)init;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAverageMomentScenes

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = FeatureExtractorAverageMomentScenes.floatVector(withEntity:)(v5);

  return v7;
}

- (NSArray)featureNames
{
  v2 = self;
  FeatureExtractorAverageMomentScenes.featureNames.getter();

  v3 = sub_22F741160();

  return v3;
}

- (PGFeatureExtractorAverageMomentScenes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end