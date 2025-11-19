@interface WBSTouchIconFetchOperation
@end

@implementation WBSTouchIconFetchOperation

void __52__WBSTouchIconFetchOperation_didFailFetchWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 request];
  v6 = [v5 url];
  v7 = [*(a1 + 40) safari_privacyPreservingDescription];
  v8 = 141558531;
  v9 = 1752392040;
  v10 = 2117;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&dword_1C6968000, v4, OS_LOG_TYPE_ERROR, "Failed to extract icon URLs for URL %{sensitive, mask.hash}@. %{public}@", &v8, 0x20u);
}

@end