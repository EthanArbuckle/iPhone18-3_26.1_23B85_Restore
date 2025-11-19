@interface WBSSVGImageRenderingFetchOperation
@end

@implementation WBSSVGImageRenderingFetchOperation

void __60__WBSSVGImageRenderingFetchOperation__takeSnapshotAndFinish__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Check for successful SVG rendering failed with error: %{public}@", v7, v8, v9, v10, 2u);
}

void __60__WBSSVGImageRenderingFetchOperation__takeSnapshotAndFinish__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "SVG rendering failed with unexpected result: %{public}@", &v2, 0xCu);
}

void __60__WBSSVGImageRenderingFetchOperation__takeSnapshotAndFinish__block_invoke_24_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Snapshotting SVG content failed with error: %{public}@", v7, v8, v9, v10, 2u);
}

@end