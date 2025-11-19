@interface PXVideoPlaybackSettings
+ (PXVideoPlaybackSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXVideoPlaybackSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXVideoPlaybackSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXVideoPlaybackSettings *)self setMaxHighlightFractionForDisplay:0.9];
  [(PXVideoPlaybackSettings *)self setIsDownloadingVideoSegmentsEnabled:1];
}

+ (PXVideoPlaybackSettings)sharedInstance
{
  if (sharedInstance_onceToken_82000 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_82000, &__block_literal_global_82001);
  }

  v3 = sharedInstance_sharedInstance_82002;

  return v3;
}

void __41__PXVideoPlaybackSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 videoPlaybackSettings];
  v1 = sharedInstance_sharedInstance_82002;
  sharedInstance_sharedInstance_82002 = v0;
}

+ (id)settingsControllerModule
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_isDownloadingVideoSegmentsEnabled);
  v5 = [v3 rowWithTitle:@"Download Video Segments" valueKeyPath:v4];
  v18[0] = v5;
  v6 = MEMORY[0x1E69C66A0];
  v7 = NSStringFromSelector(sel_maxHighlightFractionForDisplay);
  v8 = [v6 rowWithTitle:@"Max Highlight Fraction" valueKeyPath:v7];
  v9 = [v8 minValue:0.5 maxValue:1.0];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v2 sectionWithRows:v10 title:@"Settings"];

  v12 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v13 = MEMORY[0x1E69C6638];
  v17[0] = v11;
  v17[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [v13 moduleWithTitle:@"Video Playback" contents:v14];

  return v15;
}

@end