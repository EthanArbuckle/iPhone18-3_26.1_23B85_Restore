@interface PXPhotosDetailsHeaderTileSettings
+ (PXPhotosDetailsHeaderTileSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXPhotosDetailsHeaderTileSettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = PXPhotosDetailsHeaderTileSettings;
  [(PTSettings *)&v6 setDefaultValues];
  [(PXPhotosDetailsHeaderTileSettings *)self setAspectRatio:1.77777779];
  [(PXPhotosDetailsHeaderTileSettings *)self setMaximumHeightRelativeToScreenHeight:0.666666687];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 400.0;
  if (userInterfaceIdiom == 2)
  {
    v5 = 720.0;
  }

  [(PXPhotosDetailsHeaderTileSettings *)self setMaximumAbsoluteHeight:v5];
  [(PXPhotosDetailsHeaderTileSettings *)self setShowAlways:1];
}

+ (id)settingsControllerModule
{
  v19[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Aspect Ratio" valueKeyPath:@"aspectRatio"];
  v4 = [v3 minValue:1.0 maxValue:3.0];
  v19[0] = v4;
  v5 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Height (Relative to Screen)" valueKeyPath:@"maximumHeightRelativeToScreenHeight"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v19[1] = v6;
  v7 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Absolute Height" valueKeyPath:@"maximumAbsoluteHeight"];
  v8 = [v7 minValue:0.0 maxValue:2000.0];
  v9 = [v8 px_increment:10.0];
  v19[2] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Always" valueKeyPath:@"showAlways"];
  v19[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v12 = [v2 sectionWithRows:v11 title:@"Settings"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v14 = MEMORY[0x1E69C6638];
  v18[0] = v12;
  v18[1] = px_restoreDefaultsSection;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [v14 moduleWithTitle:@"Photos Details Header Tile" contents:v15];

  return v16;
}

+ (PXPhotosDetailsHeaderTileSettings)sharedInstance
{
  if (sharedInstance_onceToken_184598 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_184598, &__block_literal_global_184599);
  }

  v3 = sharedInstance_sharedInstance_184600;

  return v3;
}

void __51__PXPhotosDetailsHeaderTileSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 photosDetailsHeaderTile];
  v1 = sharedInstance_sharedInstance_184600;
  sharedInstance_sharedInstance_184600 = v0;
}

@end