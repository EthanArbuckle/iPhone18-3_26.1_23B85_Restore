@interface SFSearchResult
@end

@implementation SFSearchResult

uint64_t __47__SFSearchResult_SPFeedback__objectForFeedback__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Atxsearchresul.isa);
  v1 = objectForFeedback_atxAppClass;
  objectForFeedback_atxAppClass = v0;

  v2 = NSClassFromString(&cfstr_Atxactionsearc.isa);
  v3 = objectForFeedback_atxResultClass;
  objectForFeedback_atxResultClass = v2;

  objectForFeedback_atxSuggestionResultClass = NSClassFromString(&cfstr_Atxsuggestions.isa);

  return MEMORY[0x1EEE66BB8]();
}

@end