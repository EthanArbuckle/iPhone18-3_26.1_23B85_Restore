@interface PGFeatureExtractorStoredCLIP
- (NSArray)featureNames;
- (PGFeatureExtractorStoredCLIP)init;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorStoredCLIP

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  selfCopy = self;
  sub_22F2E5D58(entityCopy);
  v8 = v7;

  return v8;
}

- (NSArray)featureNames
{
  _s11PhotosGraph26FeatureExtractorStoredCLIPC12featureNamesSaySSGvg_0();
  v2 = sub_22F741160();

  return v2;
}

- (PGFeatureExtractorStoredCLIP)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGFeatureExtractorStoredCLIP *)&v3 init];
}

@end