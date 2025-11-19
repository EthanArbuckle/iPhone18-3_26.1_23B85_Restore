@interface PXTilingSettings
+ (PXTilingSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXTilingSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXTilingSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXTilingSettings *)self setFlipLayoutsHorizontally:0];
}

+ (PXTilingSettings)sharedInstance
{
  if (sharedInstance_onceToken_101817 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_101817, &__block_literal_global_101818);
  }

  v3 = sharedInstance_sharedInstance_101819;

  return v3;
}

void __34__PXTilingSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 tiling];
  v1 = sharedInstance_sharedInstance_101819;
  sharedInstance_sharedInstance_101819 = v0;
}

+ (id)settingsControllerModule
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Flip Layouts Horizontally" valueKeyPath:@"flipLayoutsHorizontally"];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v5 = [v2 sectionWithRows:v4 title:@"Settings"];

  v6 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v7 = MEMORY[0x1E69C6638];
  v11[0] = v5;
  v11[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v7 moduleWithTitle:@"Tiling" contents:v8];

  return v9;
}

@end