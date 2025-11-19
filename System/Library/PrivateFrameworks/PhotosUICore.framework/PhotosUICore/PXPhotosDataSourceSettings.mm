@interface PXPhotosDataSourceSettings
+ (PXPhotosDataSourceSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXPhotosDataSourceSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXPhotosDataSourceSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXPhotosDataSourceSettings *)self setSlowBackgroundFetch:0];
  [(PXPhotosDataSourceSettings *)self setDisableKeyAssetCuration:0];
  [(PXPhotosDataSourceSettings *)self setDelayChanges:0.0];
}

+ (PXPhotosDataSourceSettings)sharedInstance
{
  if (sharedInstance_onceToken_179388 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_179388, &__block_literal_global_179389);
  }

  v3 = sharedInstance_sharedInstance_179390;

  return v3;
}

void __44__PXPhotosDataSourceSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 photosDataSource];
  v1 = sharedInstance_sharedInstance_179390;
  sharedInstance_sharedInstance_179390 = v0;
}

+ (id)settingsControllerModule
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v24 = NSStringFromSelector(sel_slowBackgroundFetch);
  v23 = [v3 rowWithTitle:@"Slow Background Fetch" valueKeyPath:v24];
  v26[0] = v23;
  v4 = MEMORY[0x1E69C66A8];
  v22 = NSStringFromSelector(sel_disableKeyAssetCuration);
  v21 = [v4 rowWithTitle:@"Disable Key Asset Curation" valueKeyPath:v22];
  v26[1] = v21;
  v5 = MEMORY[0x1E69C66A0];
  v20 = NSStringFromSelector(sel_delayChanges);
  v19 = [v5 rowWithTitle:@"Delay Changes" valueKeyPath:v20];
  v6 = [v19 minValue:0.0 maxValue:60.0];
  v7 = [v6 px_increment:0.1];
  v26[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v9 = [v2 sectionWithRows:v8 title:@"Data Source"];
  v27[0] = v9;
  v10 = MEMORY[0x1E69C6638];
  v11 = MEMORY[0x1E69C65E8];
  v12 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v13 = [v11 rowWithTitle:@"Restore Defaults" action:v12];
  v25 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v15 = [v10 sectionWithRows:v14];
  v27[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v17 = [v2 moduleWithTitle:@"Data Source" contents:v16];

  return v17;
}

@end