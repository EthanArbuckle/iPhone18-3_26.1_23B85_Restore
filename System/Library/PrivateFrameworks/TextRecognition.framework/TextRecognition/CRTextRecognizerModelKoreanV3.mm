@interface CRTextRecognizerModelKoreanV3
+ (id)defaultURLOfModelInThisBundle;
- (TextBoxesOffsets)characterBoxesOffsets;
- (TextBoxesOffsets)wordBoxesOffsets;
- (_TtC15TextRecognition29CRTextRecognizerModelKoreanV3)init;
- (_TtC15TextRecognition29CRTextRecognizerModelKoreanV3)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error;
@end

@implementation CRTextRecognizerModelKoreanV3

+ (id)defaultURLOfModelInThisBundle
{
  v2 = sub_1B429F658();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  sub_1B4132FBC();
  v7 = sub_1B429F5F8();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (TextBoxesOffsets)characterBoxesOffsets
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  [(CRTextSequenceRecognizerModel *)&v6 characterBoxesOffsets];
  v5 = -1.0;
  result.var3 = v4;
  result.var2 = v3;
  result.var1 = v2;
  result.var0 = v5;
  return result;
}

- (TextBoxesOffsets)wordBoxesOffsets
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  [(CRTextSequenceRecognizerModel *)&v6 characterBoxesOffsets];
  v5 = -3.0;
  result.var3 = v4;
  result.var2 = v3;
  result.var1 = v2;
  result.var0 = v5;
  return result;
}

- (_TtC15TextRecognition29CRTextRecognizerModelKoreanV3)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRTextRecognizerModelKoreanV3();
  return [(CRTextRecognizerModelKoreanV3 *)&v3 init];
}

- (_TtC15TextRecognition29CRTextRecognizerModelKoreanV3)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error
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
  v17 = sub_1B41336D8(configurationCopy, v15);

  return v17;
}

@end