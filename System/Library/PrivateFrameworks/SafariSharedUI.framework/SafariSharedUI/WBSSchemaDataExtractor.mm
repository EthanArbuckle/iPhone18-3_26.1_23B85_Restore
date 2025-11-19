@interface WBSSchemaDataExtractor
@end

@implementation WBSSchemaDataExtractor

void __65__WBSSchemaDataExtractor_fetchDataFromWebView_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Fetching schema data failed with error: %{public}@", &v5, 0xCu);
}

void __65__WBSSchemaDataExtractor_fetchDataFromWebView_completionHandler___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Fetching schema data returned unexpected result: %{private}@", &v2, 0xCu);
}

@end