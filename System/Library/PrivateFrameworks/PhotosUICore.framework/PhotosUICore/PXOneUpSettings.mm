@interface PXOneUpSettings
+ (PXOneUpSettings)sharedInstance;
+ (id)settingsControllerModule;
- (BOOL)shouldInitiallyZoomContentWithSize:(CGSize)size toFillViewWithSize:(CGSize)withSize forAssetMediaType:(int64_t)type userInterfaceIdiom:(int64_t)idiom;
- (void)setDefaultValues;
@end

@implementation PXOneUpSettings

- (void)setDefaultValues
{
  v8.receiver = self;
  v8.super_class = PXOneUpSettings;
  setDefaultValues = [(PTSettings *)&v8 setDefaultValues];
  v4 = MEMORY[0x1A590D320](setDefaultValues);
  v5 = 41.0;
  if (!v4)
  {
    v5 = 22.0;
  }

  v6 = MEMORY[0x1A590D320]([(PXOneUpSettings *)self setMaximumWhitespaceWidthForInitialZoomToFill:v5]);
  v7 = 48.0;
  if (!v6)
  {
    v7 = 0.0;
  }

  [(PXOneUpSettings *)self setMaximumWhitespaceHeightForInitialZoomToFill:v7];
  [(PXOneUpSettings *)self setReverseFavoritesOneUpSortOrder:0];
}

- (BOOL)shouldInitiallyZoomContentWithSize:(CGSize)size toFillViewWithSize:(CGSize)withSize forAssetMediaType:(int64_t)type userInterfaceIdiom:(int64_t)idiom
{
  v8 = MEMORY[0x1A590D320]();
  result = 0;
  if (idiom != 1 && type != 2)
  {
    if (v8)
    {
      PXSizeGetAspectRatio();
    }
  }

  return result;
}

+ (PXOneUpSettings)sharedInstance
{
  if (sharedInstance_onceToken_169748 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_169748, &__block_literal_global_169749);
  }

  v3 = sharedInstance_sharedInstance_169750;

  return v3;
}

void __33__PXOneUpSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 oneUpSettings];
  v1 = sharedInstance_sharedInstance_169750;
  sharedInstance_sharedInstance_169750 = v0;
}

+ (id)settingsControllerModule
{
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A0];
  v19 = NSStringFromSelector(sel_maximumWhitespaceWidthForInitialZoomToFill);
  v18 = [v3 rowWithTitle:@"Maximum Whitespace For Initial Zoom" valueKeyPath:v19];
  v17 = [v18 minValue:0.0 maxValue:50.0];
  v4 = [v17 px_increment:1.0];
  v20[0] = v4;
  v5 = MEMORY[0x1E69C66A8];
  v6 = NSStringFromSelector(sel_hideFloatingInfoPanel);
  v7 = [v5 rowWithTitle:@"Hide Floating Info Panel" valueKeyPath:v6];
  v20[1] = v7;
  v8 = MEMORY[0x1E69C66A8];
  v9 = NSStringFromSelector(sel_reverseFavoritesOneUpSortOrder);
  v10 = [v8 rowWithTitle:@"Reverse Favorites Sort Order" valueKeyPath:v9];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v12 = [v2 sectionWithRows:v11 title:@"Settings"];
  v21[0] = v12;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v21[1] = px_restoreDefaultsSection;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v15 = [v2 moduleWithTitle:@"One Up" contents:v14];

  return v15;
}

@end