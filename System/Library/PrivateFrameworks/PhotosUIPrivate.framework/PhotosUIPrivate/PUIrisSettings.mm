@interface PUIrisSettings
+ (id)_photosPlayerRootSettings;
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)performPostSaveActions;
- (void)restoreDefaultValues;
- (void)setDefaultValues;
@end

@implementation PUIrisSettings

- (void)setDefaultValues
{
  [(PUIrisSettings *)self setShowStatusBorder:0];
  [(PUIrisSettings *)self setVitalityAllowed:1];

  [(PUIrisSettings *)self setShouldAlwaysBadge:0];
}

- (void)performPostSaveActions
{
  v3.receiver = self;
  v3.super_class = PUIrisSettings;
  [(PXSettings *)&v3 performPostSaveActions];
  _photosPlayerRootSettings = [objc_opt_class() _photosPlayerRootSettings];
  [_photosPlayerRootSettings save];
}

- (void)restoreDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUIrisSettings;
  [(PXSettings *)&v3 restoreDefaultValues];
  _photosPlayerRootSettings = [objc_opt_class() _photosPlayerRootSettings];
  [_photosPlayerRootSettings restoreDefaultValues];
}

+ (id)settingsControllerModule
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __42__PUIrisSettings_settingsControllerModule__block_invoke;
  v27[3] = &__block_descriptor_40_e17___ISSettings_8__0l;
  v27[4] = self;
  v3 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"PhotosPlayer Settings" settingsProvider:v27];
  v32[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v5 = [v2 sectionWithRows:v4];

  v6 = MEMORY[0x1E69C6638];
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Status Border" valueKeyPath:@"showStatusBorder"];
  v31 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v9 = [v6 sectionWithRows:v8 title:@"Live Photo View"];

  v10 = MEMORY[0x1E69C6638];
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Vitality" valueKeyPath:@"vitalityAllowed"];
  v30[0] = v11;
  v12 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Vitality Settings" settingsProvider:&__block_literal_global_32];
  v13 = [v12 conditionFormat:@"isVitalityAllowed != 0"];
  v30[1] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Badge" valueKeyPath:@"shouldAlwaysBadge"];
  v30[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v16 = [v10 sectionWithRows:v15 title:@"Vitality"];

  v17 = MEMORY[0x1E69C6638];
  v18 = MEMORY[0x1E69C65E8];
  v19 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v20 = [v18 rowWithTitle:@"Restore Defaults" action:v19];
  v29 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v22 = [v17 sectionWithRows:v21];

  v23 = MEMORY[0x1E69C6638];
  v28[0] = v9;
  v28[1] = v5;
  v28[2] = v16;
  v28[3] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v25 = [v23 moduleWithTitle:@"Iris" contents:v24];

  return v25;
}

+ (id)_photosPlayerRootSettings
{
  v2 = NSClassFromString(&cfstr_Isrootsettings.isa);

  return [(objc_class *)v2 sharedInstance];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_37219 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_37219, &__block_literal_global_37220);
  }

  v3 = sharedInstance_sharedInstance_37221;

  return v3;
}

void __32__PUIrisSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 irisSettings];
  v1 = sharedInstance_sharedInstance_37221;
  sharedInstance_sharedInstance_37221 = v0;
}

@end