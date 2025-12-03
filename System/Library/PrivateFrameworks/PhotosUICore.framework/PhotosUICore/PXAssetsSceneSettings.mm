@interface PXAssetsSceneSettings
+ (PXAssetsSceneSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXAssetsSceneSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXAssetsSceneSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXAssetsSceneSettings *)self setTransitionDuration:0.3];
  [(PXAssetsSceneSettings *)self setEnableImagePreheating:1];
  [(PXAssetsSceneSettings *)self setShowBordersOnAnimatedContent:0];
  [(PXAssetsSceneSettings *)self setAnimateContentByDefault:0];
  [(PXAssetsSceneSettings *)self setAllowLivePhotoPlayback:1];
  [(PXAssetsSceneSettings *)self setPlayLivePhotosAsLoops:1];
  [(PXAssetsSceneSettings *)self setAllowAnimatedImagePlayback:1];
  [(PXAssetsSceneSettings *)self setAllowVideoPlayback:1];
  [(PXAssetsSceneSettings *)self setAllowLoopingVideoPlayback:1];
}

+ (PXAssetsSceneSettings)sharedInstance
{
  if (sharedInstance_onceToken_139278 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_139278, &__block_literal_global_139279);
  }

  v3 = sharedInstance_sharedInstance_139280;

  return v3;
}

void __39__PXAssetsSceneSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 assetsScene];
  v1 = sharedInstance_sharedInstance_139280;
  sharedInstance_sharedInstance_139280 = v0;
}

+ (id)settingsControllerModule
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Transition Duration" valueKeyPath:@"transitionDuration"];
  v4 = [v3 minValue:0.0 maxValue:10.0];
  v27[0] = v4;
  v5 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Image Preheating" valueKeyPath:@"enableImagePreheating"];
  v27[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v24 = [v2 sectionWithRows:v6 title:@"Settings"];

  v7 = MEMORY[0x1E69C6638];
  v23 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Animate by Default" valueKeyPath:@"animateContentByDefault"];
  v26[0] = v23;
  v22 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Live Photos" valueKeyPath:@"allowLivePhotoPlayback"];
  v26[1] = v22;
  v8 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Loop Live Photos" valueKeyPath:@"playLivePhotosAsLoops"];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"allowLivePhotoPlayback == YES"];
  v10 = [v8 condition:v9];
  v26[2] = v10;
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Looping Videos" valueKeyPath:@"allowLoopingVideoPlayback"];
  v26[3] = v11;
  v12 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Videos" valueKeyPath:@"allowVideoPlayback"];
  v26[4] = v12;
  v13 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Animated Images" valueKeyPath:@"allowAnimatedImagePlayback"];
  v26[5] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Borders On Animated Content" valueKeyPath:@"showBordersOnAnimatedContent"];
  v26[6] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];
  v16 = [v7 sectionWithRows:v15 title:@"Animated Content"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v18 = MEMORY[0x1E69C6638];
  v25[0] = v24;
  v25[1] = v16;
  v25[2] = px_restoreDefaultsSection;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v20 = [v18 moduleWithTitle:@"Assets Scene" contents:v19];

  return v20;
}

@end