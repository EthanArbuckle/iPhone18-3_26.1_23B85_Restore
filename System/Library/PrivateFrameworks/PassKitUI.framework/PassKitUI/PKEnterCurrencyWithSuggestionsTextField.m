@interface PKEnterCurrencyWithSuggestionsTextField
@end

@implementation PKEnterCurrencyWithSuggestionsTextField

void __61___PKEnterCurrencyWithSuggestionsTextField_setInputDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained suggestionsDataSource];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v2 textSuggestionsForTextField:v4];
    [v5 setSuggestions:v6];
  }
}

@end