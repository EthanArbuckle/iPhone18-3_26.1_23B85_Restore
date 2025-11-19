@interface PXSensitivityContentManager
@end

@implementation PXSensitivityContentManager

void __61__PXSensitivityContentManager_prefetchSensitiveContentPolicy__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 localizedDescription];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Error prefetching sensitive content policy: %@", &v5, 0xCu);
    }
  }
}

@end