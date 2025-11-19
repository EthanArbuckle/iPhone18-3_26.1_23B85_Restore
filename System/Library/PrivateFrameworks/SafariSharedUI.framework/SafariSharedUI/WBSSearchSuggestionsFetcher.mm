@interface WBSSearchSuggestionsFetcher
@end

@implementation WBSSearchSuggestionsFetcher

void __105__WBSSearchSuggestionsFetcher_updateSuggestionsRequestWithSearchTerms_userAgentString_completionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "WBSSearchSuggestionsFetcher received an error: %{public}@", buf, 0xCu);
}

@end