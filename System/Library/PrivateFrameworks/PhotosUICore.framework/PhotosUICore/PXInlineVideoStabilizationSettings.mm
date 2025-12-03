@interface PXInlineVideoStabilizationSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (id)transientProperties;
- (unint64_t)allowedAnalysisTypes;
- (void)setDefaultValues;
@end

@implementation PXInlineVideoStabilizationSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXInlineVideoStabilizationSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXInlineVideoStabilizationSettings *)self setCrossfadeEnabled:1];
  [(PXInlineVideoStabilizationSettings *)self setTimeRangeEnabled:1];
  [(PXInlineVideoStabilizationSettings *)self setGyroStabilizationEnabled:1];
  [(PXInlineVideoStabilizationSettings *)self setPixelStabilizationEnabled:1];
  [(PXInlineVideoStabilizationSettings *)self setAllowedCropFraction:0.1];
  [(PXInlineVideoStabilizationSettings *)self setUseMediaAnalysisRecipe:1];
  [(PXInlineVideoStabilizationSettings *)self setLocalCacheForMediaAnalysisRecipes:1];
  [(PXInlineVideoStabilizationSettings *)self setShowDiagnosticUI:1];
}

- (unint64_t)allowedAnalysisTypes
{
  if ([(PXInlineVideoStabilizationSettings *)self gyroStabilizationEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3 | [(PXInlineVideoStabilizationSettings *)self pixelStabilizationEnabled];
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXInlineVideoStabilizationSettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transientProperties_onceToken_67713 != -1)
  {
    dispatch_once(&transientProperties_onceToken_67713, block);
  }

  v2 = transientProperties_transientProperties_67714;

  return v2;
}

void __57__PXInlineVideoStabilizationSettings_transientProperties__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___PXInlineVideoStabilizationSettings;
  v1 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v2 = NSStringFromSelector(sel_allowedAnalysisTypes);
  v3 = [v1 setByAddingObject:v2];
  v4 = transientProperties_transientProperties_67714;
  transientProperties_transientProperties_67714 = v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_67717 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_67717, &__block_literal_global_67718);
  }

  v3 = sharedInstance_sharedInstance_67719;

  return v3;
}

void __52__PXInlineVideoStabilizationSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 inlineVideoStabilizationSettings];
  v1 = sharedInstance_sharedInstance_67719;
  sharedInstance_sharedInstance_67719 = v0;
}

+ (id)settingsControllerModule
{
  v22[8] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v20 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Media Analysis Recipe" valueKeyPath:@"useMediaAnalysisRecipe"];
  v22[0] = v20;
  v19 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Cache Recipes Locally" valueKeyPath:@"localCacheForMediaAnalysisRecipes"];
  v18 = [v19 conditionFormat:@"useMediaAnalysisRecipe == YES"];
  v22[1] = v18;
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Crop" valueKeyPath:@"allowedCropFraction"];
  v4 = [v3 minValue:0.1 maxValue:0.5];
  v5 = [v4 conditionFormat:@"useMediaAnalysisRecipe == NO"];
  v22[2] = v5;
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Gyro Enabled" valueKeyPath:@"gyroStabilizationEnabled"];
  v22[3] = v6;
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Pixel-Based Enabled" valueKeyPath:@"pixelStabilizationEnabled"];
  v22[4] = v7;
  v8 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Crossfade Enabled" valueKeyPath:@"crossfadeEnabled"];
  v22[5] = v8;
  v9 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Time Range Enabled" valueKeyPath:@"timeRangeEnabled"];
  v22[6] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Diagnostic UI Enabled" valueKeyPath:@"showDiagnosticUI"];
  v22[7] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:8];
  v12 = [v2 sectionWithRows:v11 title:@"Settings"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v14 = MEMORY[0x1E69C6638];
  v21[0] = v12;
  v21[1] = px_restoreDefaultsSection;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v16 = [v14 moduleWithTitle:@"Inline Stabilization" contents:v15];

  return v16;
}

@end