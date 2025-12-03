@interface CRTextOrientationModelV1
+ (id)defaultURLOfModelInThisBundle;
- (NSURL)modelURL;
- (_TtC15TextRecognition24CRTextOrientationModelV1)init;
- (_TtC15TextRecognition24CRTextOrientationModelV1)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error;
@end

@implementation CRTextOrientationModelV1

+ (id)defaultURLOfModelInThisBundle
{
  v2 = sub_1B429F658();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  sub_1B4130CD8();
  v7 = sub_1B429F5F8();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (NSURL)modelURL
{
  ObjectType = swift_getObjectType();
  v3 = sub_1B429F658();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultURLOfModelInThisBundle = [ObjectType defaultURLOfModelInThisBundle];
  sub_1B429F628();

  v10 = sub_1B429F5F8();
  (*(v4 + 8))(v8, v3);

  return v10;
}

- (_TtC15TextRecognition24CRTextOrientationModelV1)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRTextOrientationModelV1();
  return [(CRTextOrientationModelV1 *)&v3 init];
}

- (_TtC15TextRecognition24CRTextOrientationModelV1)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error
{
  v7 = sub_1B429F6D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19[-v14];
  if (owner)
  {
    sub_1B429F6B8();
    (*(v8 + 32))(v15, v11, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v7);
  }

  configurationCopy = configuration;
  v17 = sub_1B4131468(configurationCopy, v15);

  return v17;
}

@end