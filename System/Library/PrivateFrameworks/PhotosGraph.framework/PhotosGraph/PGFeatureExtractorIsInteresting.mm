@interface PGFeatureExtractorIsInteresting
- (NSArray)featureNames;
- (PGFeatureExtractorIsInteresting)init;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorIsInteresting

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  selfCopy = self;
  v7 = FeatureExtractorIsInteresting.floatVector(withEntity:)(entityCopy);

  return v7;
}

- (NSArray)featureNames
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F770DF0;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_22F740E20();
  *(v2 + 56) = v4;
  v5 = sub_22F741160();

  return v5;
}

- (PGFeatureExtractorIsInteresting)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end