@interface GenerateSharedLibrarySuggestionsQuestions
@end

@implementation GenerateSharedLibrarySuggestionsQuestions

uint64_t ___GenerateSharedLibrarySuggestionsQuestions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [off_1E7721960 defaultPresenterWithViewController:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___GenerateSharedLibrarySuggestionsQuestions_block_invoke_2;
  v8[3] = &unk_1E774C5C0;
  v9 = v3;
  v5 = v3;
  PXGenerateSurveyQuestionsWithOptions(0x80000, 50, v4, v8);
  v6 = [off_1E7721948 standardUserDefaults];
  [v6 setSurveyQuestionsHideDate:0];

  return 1;
}

void ___GenerateSharedLibrarySuggestionsQuestions_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    _PresentAlert(@"Shared Library Suggestion Questions", @"Generated new Photos Challenges questions, available in the For You tab.", *(a1 + 32));
  }
}

@end