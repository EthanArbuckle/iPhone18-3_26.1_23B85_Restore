@interface SBExternalDisplaySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBExternalDisplaySettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBExternalDisplaySettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(SBExternalDisplayRuntimeAvailabilitySettings *)self->_availabilitySettings setDefaultValues];
  v3 = +[SBDefaults localDefaults];
  externalDisplayDefaults = [v3 externalDisplayDefaults];

  -[SBExternalDisplaySettings setFakeStorageForWirelessDisplaySupport:](self, "setFakeStorageForWirelessDisplaySupport:", [externalDisplayDefaults allowWirelessDisplaysForExtendedDisplayMode]);
  [externalDisplayDefaults contentsScale];
  [(SBExternalDisplaySettings *)self setFakeStorageForContentsScale:?];
  [(SBExternalDisplaySettings *)self setActiveDisplayTrackingMethodology:1];
}

+ (id)settingsControllerModule
{
  v44[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  array = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Active Display Tracking" valueKeyPath:@"activeDisplayTrackingMethodology"];
  v4 = [v3 possibleValues:&unk_28336DED8 titles:&unk_28336DEF0];
  [array addObject:v4];

  v31 = [MEMORY[0x277D43210] sectionWithRows:array title:0];
  v32 = [SBExternalDisplayRuntimeAvailabilitySettings _moduleWithSectionTitle:@"Runtime Requirements (Deprecated)"];
  v30 = [MEMORY[0x277D43210] submoduleWithModule:v32 childSettingsKeyPath:@"availabilitySettings" condition:v2];
  v5 = +[SBDefaults localDefaults];
  externalDisplayDefaults = [v5 externalDisplayDefaults];

  v7 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow Wireless Displays" valueKeyPath:@"fakeStorageForWirelessDisplaySupport"];
  v8 = [v7 condition:v2];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke;
  v40[3] = &unk_2783ADCB8;
  v9 = externalDisplayDefaults;
  v41 = v9;
  [v8 setValueValidatator:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_2;
  v38[3] = &unk_2783ADCB8;
  v10 = v9;
  v39 = v10;
  v28 = v8;
  [v8 setValueFormatter:v38];
  v11 = [MEMORY[0x277D431E8] rowWithTitle:@"Override Display Scale" valueKeyPath:@"fakeStorageForContentsScale"];
  v12 = [v11 condition:v2];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_3;
  v36[3] = &unk_2783ADCB8;
  v13 = v10;
  v37 = v13;
  [v12 setValueValidatator:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_4;
  v34[3] = &unk_2783ADCB8;
  v35 = v13;
  v29 = v13;
  [v12 setValueFormatter:v34];
  v14 = [MEMORY[0x277D431B0] rowWithTitle:@"Kill SpringBoard to Traverse the Mist" outletKeyPath:@"killSpringBoardOutlet"];
  v15 = MEMORY[0x277D43210];
  v44[0] = v8;
  v44[1] = v12;
  v44[2] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v17 = [v15 sectionWithRows:v16 title:@"Devs Helping Devs (DO NOT FILE RADARS IF YOU CHANGE THESE)" condition:v2];

  v18 = MEMORY[0x277D431B0];
  v19 = [MEMORY[0x277D43250] actionWithHandler:&__block_literal_global_44];
  v20 = [v18 rowWithTitle:@"Restore All Defaults" action:v19];

  v21 = MEMORY[0x277D43210];
  v43 = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v23 = [v21 sectionWithRows:v22 title:@"Restore Defaults" condition:v2];

  v24 = MEMORY[0x277D43210];
  v42[0] = v31;
  v42[1] = v30;
  v42[2] = v17;
  v42[3] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v26 = [v24 moduleWithTitle:@"Runtime Requirements" contents:v25];

  return v26;
}

id __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAllowWirelessDisplaysForExtendedDisplayMode:{objc_msgSend(v3, "BOOLValue")}];

  return v3;
}

uint64_t __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 allowWirelessDisplaysForExtendedDisplayMode];
  [v4 setFakeStorageForWirelessDisplaySupport:v5];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5];
}

id __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 floatValue];
  [*(a1 + 32) setContentsScale:v4];

  return v3;
}

uint64_t __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v3 contentsScale];
  v6 = v5;
  [v4 setFakeStorageForContentsScale:?];

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithDouble:v6];
}

uint64_t __53__SBExternalDisplaySettings_settingsControllerModule__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 externalDisplayDefaults];
  [v5 resetPrototypeSettingAdjustableDefaults];

  v6 = [v3 settings];

  [v6 setDefaultValues];
  return 1;
}

@end