@interface WBSTranslationWebpageContentExtractor
@end

@implementation WBSTranslationWebpageContentExtractor

void __79__WBSTranslationWebpageContentExtractor__updateHTMLLanguageAttributesIfNeeded___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to update page's language attributes: %{public}@", &v5, 0xCu);
}

@end