@interface PGFeatureExtractorAverageMomentScenes
- (NSArray)featureNames;
- (PGFeatureExtractorAverageMomentScenes)init;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAverageMomentScenes

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  selfCopy = self;
  v7 = FeatureExtractorAverageMomentScenes.floatVector(withEntity:)(entityCopy);

  return v7;
}

- (NSArray)featureNames
{
  selfCopy = self;
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