@interface PGFeatureExtractorCircularDatetime
- (NSArray)featureNames;
- (PGFeatureExtractorCircularDatetime)init;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorCircularDatetime

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_22F13B388(v5);
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