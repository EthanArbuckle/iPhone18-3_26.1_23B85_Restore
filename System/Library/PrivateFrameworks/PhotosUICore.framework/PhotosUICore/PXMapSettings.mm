@interface PXMapSettings
+ (PXMapSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXMapSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXMapSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXMapSettings *)self setEnableCuratedPlacesAlbumSnapshot:1];
}

+ (id)settingsControllerModule
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_enableCuratedPlacesAlbumSnapshot);
  v5 = [v3 rowWithTitle:@"Enable Curated Places Album Snapshot" valueKeyPath:v4];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v7 = [v2 sectionWithRows:v6];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v9 = MEMORY[0x1E69C6638];
  v13[0] = v7;
  v13[1] = px_restoreDefaultsSection;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v9 moduleWithTitle:@"Maps" contents:v10];

  return v11;
}

+ (PXMapSettings)sharedInstance
{
  if (sharedInstance_onceToken_256907 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_256907, &__block_literal_global_256908);
  }

  v3 = sharedInstance_sharedInstance_256909;

  return v3;
}

void __31__PXMapSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 mapSettings];
  v1 = sharedInstance_sharedInstance_256909;
  sharedInstance_sharedInstance_256909 = v0;
}

@end