@interface PHABiomeUtilities
+ (id)readBiomeEventsForPhotoStyleWithInputName:(id)name labelName:(id)labelName error:(id *)error;
+ (id)readUUIDsWithStream:(int64_t)stream progressReporter:(id)reporter error:(id *)error;
+ (id)readUUIDsWithStream:(int64_t)stream subsetName:(id)name type:(id)type progressReporter:(id)reporter error:(id *)error;
+ (int64_t)biomeStreamFor:(id)for;
- (PHABiomeUtilities)init;
@end

@implementation PHABiomeUtilities

+ (id)readUUIDsWithStream:(int64_t)stream progressReporter:(id)reporter error:(id *)error
{
  swift_getObjCClassMetadata();
  reporterCopy = reporter;
  v8 = static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(stream, 0, 0, 0);

  return v8;
}

+ (id)readUUIDsWithStream:(int64_t)stream subsetName:(id)name type:(id)type progressReporter:(id)reporter error:(id *)error
{
  if (name)
  {
    v10 = sub_22FCC8A84();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_getObjCClassMetadata();
  typeCopy = type;
  reporterCopy = reporter;
  v15 = static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(stream, v10, v12, type);

  return v15;
}

+ (id)readBiomeEventsForPhotoStyleWithInputName:(id)name labelName:(id)labelName error:(id *)error
{
  v5 = sub_22FCC8A84();
  v7 = v6;
  v8 = sub_22FCC8A84();
  sub_22FC2D924(v5, v7, v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8108);
  v10 = sub_22FCC8C24();

  return v10;
}

+ (int64_t)biomeStreamFor:(id)for
{
  v3 = sub_22FCC8A84();
  v5 = _s13PhotoAnalysis14BiomeUtilitiesC11biomeStream3forAA0cF0OSS_tFZ_0(v3, v4);

  return v5;
}

- (PHABiomeUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BiomeUtilities();
  return [(PHABiomeUtilities *)&v3 init];
}

@end