@interface PGMomentHasBirthdayFeatureExtractor
- (NSArray)featureNames;
- (PGMomentHasBirthdayFeatureExtractor)init;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGMomentHasBirthdayFeatureExtractor

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  MomentHasBirthdayFeatureExtractor.floatVector(withEntity:)(v5);
  v8 = v7;

  return v8;
}

- (NSArray)featureNames
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F7707D0;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_22F740E20();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_22F740E20();
  *(v2 + 72) = v5;
  v6 = sub_22F741160();

  return v6;
}

- (PGMomentHasBirthdayFeatureExtractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end