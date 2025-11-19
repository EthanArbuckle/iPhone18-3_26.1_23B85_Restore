@interface PGStoryPromptSuggestionQuestionFactory
- (PGStoryPromptSuggestionQuestionFactory)init;
- (id)generateQuestionsWithLimit:(int64_t)a3 progressBlock:(id)a4;
@end

@implementation PGStoryPromptSuggestionQuestionFactory

- (id)generateQuestionsWithLimit:(int64_t)a3 progressBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_22F11FA78(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0540, &qword_22F7707F8);
  v8 = sub_22F741160();

  return v8;
}

- (PGStoryPromptSuggestionQuestionFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end