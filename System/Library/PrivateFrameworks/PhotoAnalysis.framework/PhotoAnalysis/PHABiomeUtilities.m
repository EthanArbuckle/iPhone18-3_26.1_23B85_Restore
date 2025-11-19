@interface PHABiomeUtilities
+ (id)readBiomeEventsForPhotoStyleWithInputName:(id)a3 labelName:(id)a4 error:(id *)a5;
+ (id)readUUIDsWithStream:(int64_t)a3 progressReporter:(id)a4 error:(id *)a5;
+ (id)readUUIDsWithStream:(int64_t)a3 subsetName:(id)a4 type:(id)a5 progressReporter:(id)a6 error:(id *)a7;
+ (int64_t)biomeStreamFor:(id)a3;
- (PHABiomeUtilities)init;
@end

@implementation PHABiomeUtilities

+ (id)readUUIDsWithStream:(int64_t)a3 progressReporter:(id)a4 error:(id *)a5
{
  swift_getObjCClassMetadata();
  v7 = a4;
  v8 = static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(a3, 0, 0, 0);

  return v8;
}

+ (id)readUUIDsWithStream:(int64_t)a3 subsetName:(id)a4 type:(id)a5 progressReporter:(id)a6 error:(id *)a7
{
  if (a4)
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
  v13 = a5;
  v14 = a6;
  v15 = static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(a3, v10, v12, a5);

  return v15;
}

+ (id)readBiomeEventsForPhotoStyleWithInputName:(id)a3 labelName:(id)a4 error:(id *)a5
{
  v5 = sub_22FCC8A84();
  v7 = v6;
  v8 = sub_22FCC8A84();
  sub_22FC2D924(v5, v7, v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8108);
  v10 = sub_22FCC8C24();

  return v10;
}

+ (int64_t)biomeStreamFor:(id)a3
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