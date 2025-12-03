@interface PGFeatureExtractorCircularDatetime
- (NSArray)featureNames;
- (PGFeatureExtractorCircularDatetime)init;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorCircularDatetime

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  selfCopy = self;
  sub_22F13B388(entityCopy);
  v8 = v7;

  return v8;
}

- (NSArray)featureNames
{
  _s11PhotosGraph32FeatureExtractorCircularDatetimeC12featureNamesSaySSGvg_0();
  v2 = sub_22F741160();

  return v2;
}

- (PGFeatureExtractorCircularDatetime)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGFeatureExtractorCircularDatetime *)&v3 init];
}

@end