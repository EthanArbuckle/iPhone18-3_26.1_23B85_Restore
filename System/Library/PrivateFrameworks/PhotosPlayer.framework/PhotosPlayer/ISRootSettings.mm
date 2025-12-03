@interface ISRootSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)createChildren;
- (void)save;
- (void)setDefaultValues;
@end

@implementation ISRootSettings

- (void)save
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"SettingsVersionKey";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:12];
  v9[1] = @"SettingsArchiveKey";
  v10[0] = v3;
  archiveDictionary = [(PTSettings *)self archiveDictionary];
  v10[1] = archiveDictionary;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _defaultsKey = [objc_opt_class() _defaultsKey];
  [standardUserDefaults setObject:v5 forKey:_defaultsKey];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createChildren
{
  initWithDefaultValues = [(PTSettings *)[ISPlayerSettings alloc] initWithDefaultValues];
  playerSettings = self->_playerSettings;
  self->_playerSettings = initWithDefaultValues;

  initWithDefaultValues2 = [(PTSettings *)[ISVitalitySettings alloc] initWithDefaultValues];
  vitalitySettings = self->_vitalitySettings;
  self->_vitalitySettings = initWithDefaultValues2;

  initWithDefaultValues3 = [(PTSettings *)[ISPerformanceDiagnosticsSettings alloc] initWithDefaultValues];
  performanceDiagnosticsSettings = self->_performanceDiagnosticsSettings;
  self->_performanceDiagnosticsSettings = initWithDefaultValues3;

  MEMORY[0x2821F96F8](initWithDefaultValues3, performanceDiagnosticsSettings);
}

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = ISRootSettings;
  [(PTSettings *)&v6 setDefaultValues];
  playerSettings = [(ISRootSettings *)self playerSettings];
  [playerSettings setDefaultValues];

  vitalitySettings = [(ISRootSettings *)self vitalitySettings];
  [vitalitySettings setDefaultValues];

  performanceDiagnosticsSettings = [(ISRootSettings *)self performanceDiagnosticsSettings];
  [performanceDiagnosticsSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D431E0] rowWithTitle:@"Player" childSettingsKeyPath:@"playerSettings"];
  v21[0] = v3;
  v4 = [MEMORY[0x277D431E0] rowWithTitle:@"Vitality" childSettingsKeyPath:@"vitalitySettings"];
  v21[1] = v4;
  v5 = [MEMORY[0x277D431E0] rowWithTitle:@"Performance Diagnostics" childSettingsKeyPath:@"performanceDiagnosticsSettings"];
  v21[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v7 = [v2 sectionWithRows:v6];

  v8 = MEMORY[0x277D43218];
  v9 = MEMORY[0x277D431A8];
  v10 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v11 = [v9 rowWithTitle:@"Restore All Defaults" action:v10];
  v20 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v13 = [v8 sectionWithRows:v12];

  v14 = MEMORY[0x277D43218];
  v19[0] = v7;
  v19[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v16 = [v14 moduleWithTitle:@"PhotosPlayer" contents:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ISRootSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2674 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2674, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __32__ISRootSettings_sharedInstance__block_invoke(uint64_t a1)
{
  if (PFOSVariantHasInternalUI())
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [*(a1 + 32) _defaultsKey];
    v4 = [v2 objectForKey:v3];

    v5 = [v4 objectForKeyedSubscript:@"SettingsVersionKey"];
    if ([v5 integerValue] == 12)
    {
      v6 = [v4 objectForKeyedSubscript:@"SettingsArchiveKey"];
      if (v6)
      {
        v7 = v6;
        v8 = [*(a1 + 32) settingsFromArchiveDictionary:v6];
        v9 = sharedInstance_sharedInstance;
        sharedInstance_sharedInstance = v8;
      }
    }
  }

  if (!sharedInstance_sharedInstance)
  {
    v10 = [(PTSettings *)[ISRootSettings alloc] initWithDefaultValues];
    v11 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v10;

    MEMORY[0x2821F96F8](v10, v11);
  }
}

@end