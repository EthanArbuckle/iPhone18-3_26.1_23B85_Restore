@interface WBSScribbleEffectView
+ (void)_prewarmSceneAndEffect;
@end

@implementation WBSScribbleEffectView

void __44__WBSScribbleEffectView__loadSceneAndEffect__block_invoke_cold_1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  v4 = a1;
  [v3 timeIntervalSinceReferenceDate];
  v6 = (v5 - *(a2 + 48)) * 1000.0;
  v7 = 134217984;
  v8 = v6;
  _os_log_debug_impl(&dword_1C6968000, v4, OS_LOG_TYPE_DEBUG, "Used a prewarmed hiding effect (%.0f ms)", &v7, 0xCu);
}

void __44__WBSScribbleEffectView__loadSceneAndEffect__block_invoke_cold_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(*a1 + 8) + 24))
  {
    v4 = @"succeeded";
  }

  else
  {
    v4 = @"failed";
  }

  v5 = MEMORY[0x1E695DF00];
  v6 = a2;
  [v5 timeIntervalSinceReferenceDate];
  v8 = (v7 - *(a3 + 48)) * 1000.0;
  v9 = 138412546;
  v10 = v4;
  v11 = 2048;
  v12 = v8;
  _os_log_debug_impl(&dword_1C6968000, v6, OS_LOG_TYPE_DEBUG, "Synchronously loaded hiding effect (%@) (%.0f ms)", &v9, 0x16u);
}

+ (void)_prewarmSceneAndEffect
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to load effect: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)_loadTextureWithImage:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to load texture for snapshot: %{public}@", v7, v8, v9, v10, 2u);
}

@end