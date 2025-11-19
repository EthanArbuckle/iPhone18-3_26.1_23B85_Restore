@interface WBSStartPageBackgroundManager
+ (WBSStartPageBackgroundManager)defaultManager;
- (void)_setExtendedAttributesOnBackgroundImage;
@end

@implementation WBSStartPageBackgroundManager

+ (WBSStartPageBackgroundManager)defaultManager
{
  if (+[WBSStartPageBackgroundManager defaultManager]::once != -1)
  {
    +[WBSStartPageBackgroundManager defaultManager];
  }

  v3 = +[WBSStartPageBackgroundManager defaultManager]::instance;

  return v3;
}

void __47__WBSStartPageBackgroundManager_defaultManager__block_invoke()
{
  v0 = [WBSStartPageBackgroundManager alloc];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v4 safari_startPageBackgroundImageFileURLForDefaultProfile];
  v2 = [(WBSStartPageBackgroundManager *)v0 initWithImageURL:v1];
  v3 = +[WBSStartPageBackgroundManager defaultManager]::instance;
  +[WBSStartPageBackgroundManager defaultManager]::instance = v2;
}

- (void)generateProfileSpecificBackgroundImageWithSymbol:forProfile:withColor:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to create directory for profile specific generated background image: %{public}@", v5);
}

- (void)_setExtendedAttributesOnBackgroundImage
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to set iTunes unencrypted backup exclusion for Safari's background image: %{public}@", v5);
}

void __121__WBSStartPageBackgroundManager__saveImage_appearance_luminance_forIdentifier_isGeneratedImage_withinProfile_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to clear wallpaper %{public}@", v5);
}

void __46__WBSStartPageBackgroundManager_ciColorKernel__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error loading CI kernel %{public}@", v5);
}

void __46__WBSStartPageBackgroundManager_ciColorKernel__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Error loading metallib %{public}@", v5);
}

@end