@interface PXAssetsRecoverySettings
+ (PXAssetsRecoverySettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXAssetsRecoverySettings

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = PXAssetsRecoverySettings;
  [(PTSettings *)&v2 setDefaultValues];
}

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = MEMORY[0x1E69C6638];
  v4 = MEMORY[0x1E69C65E8];
  v5 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_197_200922];
  v6 = [v4 rowWithTitle:@"Clear Dismissal Date" action:v5];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v3 sectionWithRows:v7];
  [v2 addObject:v8];

  v9 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Assets Recovery" contents:v2];

  return v9;
}

uint64_t __52__PXAssetsRecoverySettings_settingsControllerModule__block_invoke()
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = [v0 px_localDefaults];
  [v1 setDate:0 forKey:@"AssetsRecoveryBannerDismissalDate"];

  return 1;
}

+ (PXAssetsRecoverySettings)sharedInstance
{
  if (sharedInstance_onceToken_200935 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_200935, &__block_literal_global_200936);
  }

  v3 = sharedInstance_sharedInstance_200937;

  return v3;
}

void __42__PXAssetsRecoverySettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 assetsRecoverySettings];
  v1 = sharedInstance_sharedInstance_200937;
  sharedInstance_sharedInstance_200937 = v0;
}

@end