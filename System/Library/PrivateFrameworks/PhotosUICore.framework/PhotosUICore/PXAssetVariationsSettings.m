@interface PXAssetVariationsSettings
+ (PXAssetVariationsSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXAssetVariationsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXAssetVariationsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXAssetVariationsSettings *)self setSelectionDetailsDismissalDelay:0.25];
  [(PXAssetVariationsSettings *)self setLayoutStyle:0];
  [(PXAssetVariationsSettings *)self setSimulateLoadingFailure:0];
  [(PXAssetVariationsSettings *)self setUseNeutrinoRendering:1];
  [(PXAssetVariationsSettings *)self setShowStatusInDisclosureLabel:0];
  [(PXAssetVariationsSettings *)self setShowLoopBadges:0];
  [(PXAssetVariationsSettings *)self setInvalidateCachedPreviews:1];
  [(PXAssetVariationsSettings *)self setUseLiveRenderedPreviews:1];
  [(PXAssetVariationsSettings *)self setSimulateSavingFailure:0];
}

+ (id)settingsControllerModule
{
  v23[9] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v21 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Selection Details Dismissal Delay" valueKeyPath:@"selectionDetailsDismissalDelay"];
  v20 = [v21 minValue:0.0 maxValue:1.0];
  v19 = [v20 px_increment:0.05];
  v23[0] = v19;
  v18 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Layout Style" valueKeyPath:@"layoutStyle"];
  v3 = [v18 possibleValues:&unk_1F1910468 titles:&unk_1F1910480];
  v23[1] = v3;
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Loading Failure" valueKeyPath:@"simulateLoadingFailure"];
  v23[2] = v4;
  v5 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Saving Failure" valueKeyPath:@"simulateSavingFailure"];
  v23[3] = v5;
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Full Edit Rendering" valueKeyPath:@"useNeutrinoRendering"];
  v23[4] = v6;
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Status" valueKeyPath:@"showStatusInDisclosureLabel"];
  v23[5] = v7;
  v8 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Loop Badges" valueKeyPath:@"showLoopBadges"];
  v23[6] = v8;
  v9 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Invalidate Previews on Edit" valueKeyPath:@"invalidateCachedPreviews"];
  v23[7] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Live Rendered Previews" valueKeyPath:@"useLiveRenderedPreviews"];
  v23[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:9];
  v12 = [v2 sectionWithRows:v11 title:@"Settings"];

  v13 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v14 = MEMORY[0x1E69C6638];
  v22[0] = v12;
  v22[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v16 = [v14 moduleWithTitle:@"Variations" contents:v15];

  return v16;
}

+ (PXAssetVariationsSettings)sharedInstance
{
  if (sharedInstance_onceToken_91944 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_91944, &__block_literal_global_91945);
  }

  v3 = sharedInstance_sharedInstance_91946;

  return v3;
}

void __43__PXAssetVariationsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 variationsSettings];
  v1 = sharedInstance_sharedInstance_91946;
  sharedInstance_sharedInstance_91946 = v0;
}

@end