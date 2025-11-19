@interface STTranslationResult
- (NSString)sourceText;
- (NSUUID)sourceIdentifier;
- (STTranslationResult)init;
- (STTranslationResult)initWithTranslation:(id)a3 sourceText:(id)a4 isFinal:(BOOL)a5;
- (STTranslationResult)initWithTranslation:(id)a3 sourceText:(id)a4 isFinal:(BOOL)a5 identifier:(id)a6 sourceIdentifier:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setSourceText:(id)a3;
- (void)set_identifier:(id)a3;
- (void)set_sourceIdentifier:(id)a3;
@end

@implementation STTranslationResult

- (void)set_identifier:(id)a3
{
  v4 = *(self + OBJC_IVAR___STTranslationResult__identifier);
  *(self + OBJC_IVAR___STTranslationResult__identifier) = a3;
  v3 = a3;
}

- (void)set_sourceIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR___STTranslationResult__sourceIdentifier);
  *(self + OBJC_IVAR___STTranslationResult__sourceIdentifier) = a3;
  v3 = a3;
}

- (NSString)sourceText
{
  if (*(self + OBJC_IVAR___STTranslationResult_sourceText + 8))
  {
    v2 = *(self + OBJC_IVAR___STTranslationResult_sourceText);
    v3 = *(self + OBJC_IVAR___STTranslationResult_sourceText + 8);

    v4 = sub_26B5E198C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSourceText:(id)a3
{
  if (a3)
  {
    v4 = sub_26B5E199C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___STTranslationResult_sourceText);
  v7 = *(self + OBJC_IVAR___STTranslationResult_sourceText + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSUUID)sourceIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  STTranslationResult.sourceIdentifier.getter(v6);

  v8 = sub_26B5E15DC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_26B5E15AC();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (STTranslationResult)initWithTranslation:(id)a3 sourceText:(id)a4 isFinal:(BOOL)a5
{
  v7 = sub_26B5E199C();
  if (a4)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_26B5E199C();
    v7 = v9;
    v13 = v12;
    v8 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return STTranslationResult.init(translation:sourceText:isFinal:)(v7, v8, v11, v13, a5);
}

- (STTranslationResult)initWithTranslation:(id)a3 sourceText:(id)a4 isFinal:(BOOL)a5 identifier:(id)a6 sourceIdentifier:(id)a7
{
  v26 = a5;
  v27 = self;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407D90, &unk_26B5E3B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-v11];
  v13 = sub_26B5E15DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_26B5E199C();
  v20 = v19;
  if (a4)
  {
    a4 = sub_26B5E199C();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_26B5E15BC();
  if (a7)
  {
    sub_26B5E15BC();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v14 + 56))(v12, v23, 1, v13);
  return STTranslationResult.init(translation:sourceText:isFinal:identifier:sourceIdentifier:)(v18, v20, a4, v22, v26, v17, v12);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  STTranslationResult.encode(with:)(v4);
}

- (STTranslationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end