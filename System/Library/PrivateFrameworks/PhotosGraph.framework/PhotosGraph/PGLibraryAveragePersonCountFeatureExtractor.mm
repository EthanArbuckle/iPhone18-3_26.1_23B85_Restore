@interface PGLibraryAveragePersonCountFeatureExtractor
- (NSArray)featureNames;
- (PGLibraryAveragePersonCountFeatureExtractor)init;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGLibraryAveragePersonCountFeatureExtractor

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  selfCopy = self;
  sub_22F1F5C18(entityCopy);
  v8 = v7;

  return v8;
}

- (NSArray)featureNames
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F771340;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  v4 = sub_22F741160();

  return v4;
}

- (PGLibraryAveragePersonCountFeatureExtractor)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGLibraryAveragePersonCountFeatureExtractor *)&v3 init];
}

@end