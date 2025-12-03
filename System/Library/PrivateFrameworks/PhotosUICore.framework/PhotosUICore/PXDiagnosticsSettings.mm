@interface PXDiagnosticsSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXDiagnosticsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXDiagnosticsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXDiagnosticsSettings *)self setEnableContextualGesture:1];
  [(PXDiagnosticsSettings *)self setEnableInternalSettingsService:1];
  [(PXDiagnosticsSettings *)self setEnableGenericService:0];
  [(PXDiagnosticsSettings *)self setEnableGraphService:1];
  [(PXDiagnosticsSettings *)self setEnableTitleFontService:0];
  [(PXDiagnosticsSettings *)self setEnableCompleteMyMomentService:1];
  [(PXDiagnosticsSettings *)self setEnableDebugDictionaryService:1];
  [(PXDiagnosticsSettings *)self setEnableScrollService:0];
  [(PXDiagnosticsSettings *)self setScrollSpeed:20.0];
  [(PXDiagnosticsSettings *)self setScrollIterations:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15740 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_15740, &__block_literal_global_15741);
  }

  v3 = sharedInstance_sharedInstance_15742;

  return v3;
}

void __39__PXDiagnosticsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 diagnostics];
  v1 = sharedInstance_sharedInstance_15742;
  sharedInstance_sharedInstance_15742 = v0;
}

+ (id)settingsControllerModule
{
  v45[2] = *MEMORY[0x1E69E9840];
  v2 = +[PXDiagnosticsController sharedController];
  v3 = MEMORY[0x1E69C6638];
  v4 = MEMORY[0x1E69C65E8];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __53__PXDiagnosticsSettings_UI__settingsControllerModule__block_invoke;
  v40[3] = &unk_1E774C648;
  v5 = v2;
  v41 = v5;
  v6 = [v4 px_rowWithTitle:@"Present Contextual Diagnostics" postDismissalAction:v40];
  v45[0] = v6;
  v7 = MEMORY[0x1E69C6610];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __53__PXDiagnosticsSettings_UI__settingsControllerModule__block_invoke_2;
  v38[3] = &unk_1E773B578;
  v39 = v5;
  v37 = v5;
  v8 = [v7 px_rowWithTitle:@"Generic Service" action:v38];
  v9 = [v8 conditionFormat:@"enableGenericService != 0"];
  v45[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v36 = [v3 sectionWithRows:v10];

  v11 = MEMORY[0x1E69C6638];
  v12 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Gesture (4-Finger Double-Tap)" valueKeyPath:@"enableContextualGesture"];
  v44[0] = v12;
  v13 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Internal Settings" valueKeyPath:@"enableInternalSettingsService"];
  v44[1] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Generic Service" valueKeyPath:@"enableGenericService"];
  v44[2] = v14;
  v15 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Graph Service" valueKeyPath:@"enableGraphService"];
  v44[3] = v15;
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Title Font Service" valueKeyPath:@"enableTitleFontService"];
  v44[4] = v16;
  v17 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Complete My Moment Service" valueKeyPath:@"enableCompleteMyMomentService"];
  v44[5] = v17;
  v18 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Debug Dictionary Service" valueKeyPath:@"enableDebugDictionaryService"];
  v44[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:7];
  v35 = [v11 sectionWithRows:v19 title:@"Settings"];

  v20 = MEMORY[0x1E69C6638];
  v21 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Scroll Stress" valueKeyPath:@"enableScrollService"];
  v43[0] = v21;
  v22 = [MEMORY[0x1E69C6668] rowWithTitle:@"Scroll Speed (pt/f)" valueKeyPath:@"scrollSpeed"];
  v23 = [v22 px_possibleValues:&unk_1F1910A08];
  v24 = [v23 conditionFormat:@"enableScrollService != 0"];
  v43[1] = v24;
  v25 = [MEMORY[0x1E69C6668] rowWithTitle:@"Iterations" valueKeyPath:@"scrollIterations"];
  v26 = [v25 px_possibleValues:&unk_1F1910A20];
  v27 = [v26 conditionFormat:@"enableScrollService != 0"];
  v43[2] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v29 = [v20 sectionWithRows:v28 title:@"Scroll"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v31 = MEMORY[0x1E69C6638];
  v42[0] = v36;
  v42[1] = v35;
  v42[2] = v29;
  v42[3] = px_restoreDefaultsSection;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  v33 = [v31 moduleWithTitle:@"Diagnostics" contents:v32];

  return v33;
}

void __53__PXDiagnosticsSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) currentItemProviders];
  v4 = [(PXDiagnosticsService *)[PXGenericDiagnosticsService alloc] initWithItemProviders:v3];
  if ([(PXGenericDiagnosticsService *)v4 canProvideSettingsViewController])
  {
    v5 = [(PXGenericDiagnosticsService *)v4 settingsViewController];
    [v6 pushViewController:v5 animated:1];
  }
}

@end