@interface PHRootSettings
+ (id)settingsControllerModule;
+ (id)sharedSettings;
+ (void)_rebuildMoments;
@end

@implementation PHRootSettings

+ (void)_rebuildMoments
{
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];
  assetsdClient = [systemPhotoLibrary assetsdClient];
  debugClient = [assetsdClient debugClient];
  v7 = 0;
  v5 = [debugClient rebuildMomentsDeletingExistingMoments:0 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    NSLog(&cfstr_SynchronouslyR.isa, v6);
  }
}

+ (id)settingsControllerModule
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43218];
  v22 = [MEMORY[0x277D431E0] rowWithTitle:@"Image Manager" childSettingsKeyPath:@"imageManagerSettings"];
  v26[0] = v22;
  v21 = [MEMORY[0x277D431E0] rowWithTitle:@"Resource Download Request" childSettingsKeyPath:@"resourceDownloadSettings"];
  v26[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v19 = [v3 sectionWithRows:v20 title:@"PhotoKit"];
  v27[0] = v19;
  v4 = MEMORY[0x277D43218];
  v5 = MEMORY[0x277D431A8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__PHRootSettings_settingsControllerModule__block_invoke;
  v23[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v23[4] = self;
  v6 = [MEMORY[0x277D43248] actionWithHandler:v23];
  v7 = [v5 rowWithTitle:@"Rebuild Moments" action:v6];
  v25 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v9 = [v4 sectionWithRows:v8 title:@"Actions"];
  v27[1] = v9;
  v10 = MEMORY[0x277D43218];
  v11 = MEMORY[0x277D431A8];
  v12 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v13 = [v11 rowWithTitle:@"Restore All Defaults" action:v12];
  v24 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v15 = [v10 sectionWithRows:v14];
  v27[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v17 = [v3 moduleWithTitle:@"PhotoKit Settings" contents:v16];

  return v17;
}

+ (id)sharedSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PHRootSettings_sharedSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSettings_onceToken != -1)
  {
    dispatch_once(&sharedSettings_onceToken, block);
  }

  v2 = sharedSettings_sharedSettings;

  return v2;
}

uint64_t __32__PHRootSettings_sharedSettings__block_invoke(uint64_t a1)
{
  sharedSettings_sharedSettings = [*(a1 + 32) createSharedSettings];

  return MEMORY[0x2821F96F8]();
}

@end