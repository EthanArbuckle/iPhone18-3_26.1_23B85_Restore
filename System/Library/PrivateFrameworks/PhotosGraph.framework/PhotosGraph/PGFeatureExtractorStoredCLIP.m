@interface PGFeatureExtractorStoredCLIP
- (NSArray)featureNames;
- (PGFeatureExtractorStoredCLIP)init;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorStoredCLIP

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_22F2E5D58(v5);
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