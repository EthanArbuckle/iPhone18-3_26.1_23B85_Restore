@interface PXAssetAnalyzerRequest
@end

@implementation PXAssetAnalyzerRequest

void __48___PXAssetAnalyzerRequest_runWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Effects request failed: %@", &v6, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFinishWithSuccess:v3 == 0];
}

@end