@interface PXAudioSettings
+ (PXAudioSettings)sharedInstance;
+ (id)settingsControllerModule;
+ (void)purgeFlexDataFromModuleController:(id)a3;
- (void)setDefaultValues;
@end

@implementation PXAudioSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXAudioSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXAudioSettings *)self setShouldEnableContentAwareRouting:1];
  [(PXAudioSettings *)self setFlexReturnOnlyLocalSongs:0];
  [(PXAudioSettings *)self setFlexSimulateDownloadFailure:0];
  [(PXAudioSettings *)self setFlexSimulateAssetFetchFailure:0];
  [(PXAudioSettings *)self setWorkaround80278485:1];
}

+ (PXAudioSettings)sharedInstance
{
  if (sharedInstance_onceToken_168401 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_168401, &__block_literal_global_168402);
  }

  v3 = sharedInstance_sharedInstance_168403;

  return v3;
}

void __33__PXAudioSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 audioSettings];
  v1 = sharedInstance_sharedInstance_168403;
  sharedInstance_sharedInstance_168403 = v0;
}

+ (void)purgeFlexDataFromModuleController:(id)a3
{
  v3 = a3;
  v4 = [PXAlertController progressAlertControllerWithMessage:@"Purging Flex Data…"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PXAudioSettings_UI__purgeFlexDataFromModuleController___block_invoke;
  v6[3] = &unk_1E774C648;
  v7 = v4;
  v5 = v4;
  [v3 presentViewController:v5 animated:1 completion:v6];
}

uint64_t __57__PXAudioSettings_UI__purgeFlexDataFromModuleController___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  [*(a1 + 32) setProgress:1 animated:a2];
  v3 = *(a1 + 32);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

+ (id)settingsControllerModule
{
  v38[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C6638];
  v25 = MEMORY[0x1E69C6638];
  v4 = MEMORY[0x1E69C6660];
  v33 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_179318];
  v32 = [v4 rowWithTitle:@"Reset Media Library Access" action:v33];
  v37 = v32;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v30 = [v3 sectionWithRows:v31 title:@"Permissions"];
  v38[0] = v30;
  v5 = MEMORY[0x1E69C6638];
  v6 = MEMORY[0x1E69C66A8];
  v29 = NSStringFromSelector(sel_workaround80278485);
  v28 = [v6 rowWithTitle:@"Workaround 80278485" valueKeyPath:v29];
  v36 = v28;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v26 = [v5 sectionWithRows:v27 title:@"Workarounds"];
  v38[1] = v26;
  v7 = MEMORY[0x1E69C6638];
  v8 = MEMORY[0x1E69C66A8];
  v24 = NSStringFromSelector(sel_flexReturnOnlyLocalSongs);
  v23 = [v8 rowWithTitle:@"Only Fetch Local Songs" valueKeyPath:v24];
  v35[0] = v23;
  v9 = MEMORY[0x1E69C66A8];
  v10 = NSStringFromSelector(sel_flexSimulateAssetFetchFailure);
  v11 = [v9 rowWithTitle:@"Simulate Asset Fetch Failure" valueKeyPath:v10];
  v35[1] = v11;
  v12 = MEMORY[0x1E69C66A8];
  v13 = NSStringFromSelector(sel_flexSimulateDownloadFailure);
  v14 = [v12 rowWithTitle:@"Simulate Download Failure" valueKeyPath:v13];
  v35[2] = v14;
  v15 = MEMORY[0x1E69C65E8];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __47__PXAudioSettings_UI__settingsControllerModule__block_invoke_2;
  v34[3] = &__block_descriptor_40_e11_B24__0_8_16l;
  v34[4] = a1;
  v16 = [MEMORY[0x1E69C6658] actionWithHandler:v34];
  v17 = [v15 rowWithTitle:@"Purge All Local Flex Data" action:v16];
  v35[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  v19 = [v7 sectionWithRows:v18 title:@"Flex Music"];
  v38[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v21 = [v25 moduleWithTitle:@"Audio" contents:v20];

  return v21;
}

@end