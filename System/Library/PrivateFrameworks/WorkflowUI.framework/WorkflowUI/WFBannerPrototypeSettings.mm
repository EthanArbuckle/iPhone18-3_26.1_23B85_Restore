@interface WFBannerPrototypeSettings
+ (id)settingsControllerModule;
+ (id)sharedSettings;
- (void)setDefaultValues;
@end

@implementation WFBannerPrototypeSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = WFBannerPrototypeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(WFBannerPrototypeSettings *)self setBannerFramesEnabled:0];
  [(WFBannerPrototypeSettings *)self setDebugShadowsEnabled:0];
  [(WFBannerPrototypeSettings *)self setBlurFilterEnabled:1];
  [(WFBannerPrototypeSettings *)self setDebugMorphTransitions:0];
  [(WFBannerPrototypeSettings *)self setSimulateStatusBannerDevice:0];
  [(WFBannerPrototypeSettings *)self setUseRemoteAlertsForActionInterfaceDialogRequests:1];
}

+ (id)settingsControllerModule
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = MEMORY[0x277D431A8];
  v4 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v31[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v7 = [v2 sectionWithRows:v6];

  v8 = MEMORY[0x277D43218];
  v9 = [MEMORY[0x277D431E0] rowWithTitle:@"Transition" childSettingsKeyPath:@"transitionSettings"];
  v30[0] = v9;
  v10 = [MEMORY[0x277D431E0] rowWithTitle:@"Gesture" childSettingsKeyPath:@"gestureSettings"];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v12 = [v8 sectionWithRows:v11 title:0];

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Banner Frames" valueKeyPath:@"bannerFramesEnabled"];
  v29[0] = v14;
  v15 = [MEMORY[0x277D432A0] rowWithTitle:@"Shadow Debugging" valueKeyPath:@"debugShadowsEnabled"];
  v29[1] = v15;
  v16 = [MEMORY[0x277D432A0] rowWithTitle:@"Blur Filter" valueKeyPath:@"blurFilterEnabled"];
  v29[2] = v16;
  v17 = [MEMORY[0x277D432A0] rowWithTitle:@"Debug Morph Transitions" valueKeyPath:@"debugMorphTransitions"];
  v29[3] = v17;
  v18 = [MEMORY[0x277D432A0] rowWithTitle:@"Remote Alert Action Interface" valueKeyPath:@"useRemoteAlertsForActionInterfaceDialogRequests"];
  v29[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:5];
  v20 = [v13 initWithArray:v19];

  v21 = [MEMORY[0x277D79F18] currentDevice];
  LODWORD(v15) = [v21 hasSystemAperture];

  if (v15)
  {
    v22 = [MEMORY[0x277D432A0] rowWithTitle:@"Test Status Banners" valueKeyPath:@"simulateStatusBannerDevice"];
    [v20 addObject:v22];
  }

  v23 = [MEMORY[0x277D43218] sectionWithRows:v20 title:@"Debug"];
  v24 = MEMORY[0x277D43218];
  v28[0] = v7;
  v28[1] = v12;
  v28[2] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v26 = [v24 moduleWithTitle:@"Custom Banner Transitions" contents:v25];

  return v26;
}

+ (id)sharedSettings
{
  if (sharedSettings_onceToken != -1)
  {
    dispatch_once(&sharedSettings_onceToken, &__block_literal_global_8219);
  }

  v3 = sharedSettings_sharedInstance;

  return v3;
}

void __43__WFBannerPrototypeSettings_sharedSettings__block_invoke()
{
  v0 = +[WFBannerPrototypeSettingsDomain rootSettings];
  v1 = sharedSettings_sharedInstance;
  sharedSettings_sharedInstance = v0;
}

@end