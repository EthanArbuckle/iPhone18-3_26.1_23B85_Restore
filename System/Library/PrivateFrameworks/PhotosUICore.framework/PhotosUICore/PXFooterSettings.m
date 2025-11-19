@interface PXFooterSettings
+ (PXFooterSettings)sharedInstance;
+ (id)settingsControllerModule;
+ (void)resetLastShownInfo;
- (void)setDefaultValues;
@end

@implementation PXFooterSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = PXFooterSettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(PXFooterSettings *)self setShouldAlternateTitleWithGridCycle:1];
  [(PXFooterSettings *)self setAlternateTitleGridCycleCount:2];
  [(PXFooterSettings *)self setAlternateTitleGridCycleDelay:0.1];
  [(PXFooterSettings *)self setAlternateTitleCyclingInterval:4.0];
  [(PXFooterSettings *)self setAnimationDelay:2.0];
  LODWORD(v3) = 1036831949;
  [(PXFooterSettings *)self setMinimumDisplayedProgress:v3];
  [(PXFooterSettings *)self setSimulateImportantInformation:0];
  [(PXFooterSettings *)self setSimulateAnimatedIconMode:0];
  [(PXFooterSettings *)self setSimulatedAnimatedIconMode:0];
  [(PXFooterSettings *)self setSimulateDisplayedProgress:0];
  LODWORD(v4) = 1051260355;
  [(PXFooterSettings *)self setSimulatedProgressValue:v4];
  [(PXFooterSettings *)self setShowFilterView:1];
}

+ (id)settingsControllerModule
{
  v53[8] = *MEMORY[0x1E69E9840];
  v43 = MEMORY[0x1E69C6638];
  v49 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Alt. Title with Grids" valueKeyPath:@"shouldAlternateTitleWithGridCycle"];
  v53[0] = v49;
  v47 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Alt. Titles Grid Cycle" valueKeyPath:@"alternateTitleGridCycleCount"];
  v45 = [MEMORY[0x1E695DEC8] px_integersFrom:1 to:4];
  v42 = [v47 px_possibleValues:v45];
  v41 = [v42 conditionFormat:@"shouldAlternateTitleWithGridCycle != 0"];
  v53[1] = v41;
  v40 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Alt. Titles Delay" valueKeyPath:@"alternateTitleGridCycleDelay"];
  v39 = [v40 minValue:0.0 maxValue:0.5];
  v38 = [v39 px_increment:0.01];
  v37 = [v38 conditionFormat:@"shouldAlternateTitleWithGridCycle != 0"];
  v53[2] = v37;
  v36 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Alt. Titles Interval" valueKeyPath:@"alternateTitleCyclingInterval"];
  v35 = [v36 minValue:0.0 maxValue:5.0];
  v34 = [v35 px_increment:0.2];
  v33 = [v34 conditionFormat:@"shouldAlternateTitleWithGridCycle == 0"];
  v53[3] = v33;
  v32 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Animation Delay" valueKeyPath:@"animationDelay"];
  v2 = [v32 minValue:0.0 maxValue:5.0];
  v3 = [v2 px_increment:0.2];
  v53[4] = v3;
  v4 = MEMORY[0x1E69C65E8];
  v5 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_56839];
  v6 = [v4 rowWithTitle:@"Reset Last Shown Info" action:v5];
  v53[5] = v6;
  v7 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Minimum Progress" valueKeyPath:@"minimumDisplayedProgress"];
  v8 = [v7 minValue:0.0 maxValue:1.0];
  v9 = [v8 px_increment:0.01];
  v53[6] = v9;
  v10 = MEMORY[0x1E69C66A8];
  v11 = NSStringFromSelector(sel_showFilterView);
  v12 = [v10 rowWithTitle:@"Show Filter View" valueKeyPath:v11];
  v53[7] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:8];
  v44 = [v43 sectionWithRows:v13 title:@"Settings"];

  v14 = MEMORY[0x1E69C6638];
  v50 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Important Information" valueKeyPath:@"simulateImportantInformation"];
  v52[0] = v50;
  v48 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Animated Icon Mode" valueKeyPath:@"simulateAnimatedIconMode"];
  v52[1] = v48;
  v46 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Animated Icon Mode" valueKeyPath:@"simulatedAnimatedIconMode"];
  v15 = [v46 possibleValues:&unk_1F19100D8 titles:&unk_1F19100F0];
  v16 = [v15 conditionFormat:@"simulateAnimatedIconMode != 0"];
  v52[2] = v16;
  v17 = MEMORY[0x1E69C66A8];
  v18 = NSStringFromSelector(sel_simulateDisplayedProgress);
  v19 = [v17 rowWithTitle:@"Display Progress" valueKeyPath:v18];
  v52[3] = v19;
  v20 = MEMORY[0x1E69C66A0];
  v21 = NSStringFromSelector(sel_simulatedProgressValue);
  v22 = [v20 rowWithTitle:@"Progress Value" valueKeyPath:v21];
  v23 = [v22 minValue:0.0 maxValue:1.0];
  v24 = [v23 px_increment:0.1];
  v52[4] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:5];
  v26 = [v14 sectionWithRows:v25 title:@"Simulate"];

  v27 = MEMORY[0x1E69C6638];
  v51[0] = v44;
  v51[1] = v26;
  v28 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v51[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
  v30 = [v27 moduleWithTitle:@"Footer" contents:v29];

  return v30;
}

+ (void)resetLastShownInfo
{
  v2 = [off_1E7721948 standardUserDefaults];
  [v2 setDidShowCurationFooter:0];
  [v2 setDidShowCompletedCurationFooterAnimation:0];
}

+ (PXFooterSettings)sharedInstance
{
  if (sharedInstance_onceToken_164887 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_164887, &__block_literal_global_164888);
  }

  v3 = sharedInstance_sharedInstance_164889;

  return v3;
}

void __34__PXFooterSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 footerSettings];
  v1 = sharedInstance_sharedInstance_164889;
  sharedInstance_sharedInstance_164889 = v0;
}

@end