@interface SCMLNormalizer
+ (id)normalizeText:(id)text lite:(BOOL)lite error:(id *)error;
+ (id)trimmedText:(id)text;
- (_TtC26SensitiveContentAnalysisML14SCMLNormalizer)init;
@end

@implementation SCMLNormalizer

+ (id)normalizeText:(id)text lite:(BOOL)lite error:(id *)error
{
  liteCopy = lite;
  v6 = sub_1B8AF0668();
  if (liteCopy)
  {
    sub_1B8ACFCBC(v6, v7);
  }

  else
  {
    sub_1B8AD0090(v6, v7);
  }

  v8 = sub_1B8AF0658();

  return v8;
}

+ (id)trimmedText:(id)text
{
  v3 = sub_1B8AEFB28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v18 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  v18[0] = sub_1B8AF0668();
  v18[1] = v14;
  sub_1B8AEFB08();
  sub_1B8AEFAF8();
  sub_1B8AEFB18();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v11, v3);
  sub_1B8A3F920();
  sub_1B8AF09D8();
  v15(v13, v3);

  v16 = sub_1B8AF0658();

  return v16;
}

- (_TtC26SensitiveContentAnalysisML14SCMLNormalizer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SCMLNormalizer();
  return [(SCMLNormalizer *)&v3 init];
}

@end