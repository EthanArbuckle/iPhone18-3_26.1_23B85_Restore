@interface DisambiguationResultModel
- (_TtC13TranslationUI25DisambiguationResultModel)init;
- (id)excludedTypesForResult:(id)a3;
- (void)disambiguableResult:(id)a3 didChangeResultForSentence:(id)a4 withSelection:(id)a5;
- (void)disambiguableResultDidUpdate:(id)a3;
@end

@implementation DisambiguationResultModel

- (_TtC13TranslationUI25DisambiguationResultModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)disambiguableResult:(id)a3 didChangeResultForSentence:(id)a4 withSelection:(id)a5
{
  v9 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  v10 = *(&self->super.isa + v9);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  if (v10)
  {
    sub_26F3C3338();
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_26F3C2694();
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v15 = *(&v14->super.isa + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler);
  if (v15)
  {
    v16 = *&v14->disambiguableResult[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
    v13 = v13;
    v15(v12, v13);

    v11 = v12;
    v12 = v14;
    v14 = v13;
  }

  v11 = v12;
  v12 = v13;
LABEL_8:
}

- (id)excludedTypesForResult:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s13TranslationUI25DisambiguationResultModelC13excludedTypes3forShySo8NSNumberCGSgSo016_LTDisambiguableD0C_tF_0();

  if (v6)
  {
    sub_26F3B0C24(0, &qword_2806DEF68, 0x277CCABB0);
    sub_26F3C8DCC();
    v7 = sub_26F49FD38();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)disambiguableResultDidUpdate:(id)a3
{
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  v6 = self;
  if (v5)
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

@end