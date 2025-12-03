@interface DisambiguationResultModel
- (_TtC13TranslationUI25DisambiguationResultModel)init;
- (id)excludedTypesForResult:(id)result;
- (void)disambiguableResult:(id)result didChangeResultForSentence:(id)sentence withSelection:(id)selection;
- (void)disambiguableResultDidUpdate:(id)update;
@end

@implementation DisambiguationResultModel

- (_TtC13TranslationUI25DisambiguationResultModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)disambiguableResult:(id)result didChangeResultForSentence:(id)sentence withSelection:(id)selection
{
  v9 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  v10 = *(&self->super.isa + v9);
  resultCopy = result;
  sentenceCopy = sentence;
  selectionCopy = selection;
  selfCopy = self;
  if (v10)
  {
    sub_26F3C3338();
    if (!selectionCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_26F3C2694();
    if (!selectionCopy)
    {
      goto LABEL_8;
    }
  }

  v15 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler);
  if (v15)
  {
    v16 = *&selfCopy->disambiguableResult[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
    selectionCopy = selectionCopy;
    v15(sentenceCopy, selectionCopy);

    resultCopy = sentenceCopy;
    sentenceCopy = selfCopy;
    selfCopy = selectionCopy;
  }

  resultCopy = sentenceCopy;
  sentenceCopy = selectionCopy;
LABEL_8:
}

- (id)excludedTypesForResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
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

- (void)disambiguableResultDidUpdate:(id)update
{
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  selfCopy = self;
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