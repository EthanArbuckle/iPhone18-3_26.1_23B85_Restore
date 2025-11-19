@interface STUIVisualProviderSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation STUIVisualProviderSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = STUIVisualProviderSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(STUIVisualProviderSettings *)self setRedInSpringBoard:0];
  [(STUIVisualProviderSettings *)self setPromoteThermalWarning:0];
  [(STUIVisualProviderSettings *)self setEnableActivity:0];
  [(STUIVisualProviderSettings *)self setBackgroundActivityCoalescingDelay:0.0];
  [(STUIVisualProviderSettings *)self setShowVPNDisconnect:0];
  [(STUIVisualProviderSettings *)self setLegacyPhoneUsesiPadLayout:0];
  [(STUIVisualProviderSettings *)self setFullWidthBackgroundActivity:1];
  [(STUIVisualProviderSettings *)self setShowsDateBeforeTime:0];
  [(STUIVisualProviderSettings *)self setHasBoldTime:0];
  [(STUIVisualProviderSettings *)self setVisualProviderClassName:&stru_287D04F38];
}

+ (id)settingsControllerModule
{
  v41[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v25 = MEMORY[0x277D43218];
  v35 = [MEMORY[0x277D432A0] rowWithTitle:@"Red In SpringBoard" valueKeyPath:@"redInSpringBoard"];
  v40[0] = v35;
  v34 = [MEMORY[0x277D431F8] rowWithTitle:@"Visual Provider Class" valueKeyPath:@"visualProviderClassName"];
  v40[1] = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v32 = [v2 sectionWithRows:v33 title:@"All"];
  v41[0] = v32;
  v3 = MEMORY[0x277D43218];
  v31 = [MEMORY[0x277D432A0] rowWithTitle:@"Promote Thermal Warning" valueKeyPath:@"promoteThermalWarning"];
  v39[0] = v31;
  v30 = [MEMORY[0x277D432A0] rowWithTitle:@"Activity" valueKeyPath:@"enableActivity"];
  v39[1] = v30;
  v29 = [MEMORY[0x277D431F0] rowWithTitle:@"BG Activity Coalescing Delay" valueKeyPath:@"backgroundActivityCoalescingDelay"];
  v28 = [v29 between:0.0 and:20.0];
  v27 = [v28 precision:1];
  v39[2] = v27;
  v24 = [MEMORY[0x277D432A0] rowWithTitle:@"VPN Disconnect" valueKeyPath:@"showVPNDisconnect"];
  v39[3] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v22 = [v3 sectionWithRows:v23 title:@"Split Phone"];
  v41[1] = v22;
  v4 = MEMORY[0x277D43218];
  v21 = [MEMORY[0x277D432A0] rowWithTitle:@"Use iPad Layout" valueKeyPath:@"legacyPhoneUsesiPadLayout"];
  v38[0] = v21;
  v20 = [MEMORY[0x277D432A0] rowWithTitle:@"Full-Width Background Activity" valueKeyPath:@"fullWidthBackgroundActivity"];
  v38[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v5 = [v4 sectionWithRows:v19 title:@"Legacy Phone"];
  v41[2] = v5;
  v6 = MEMORY[0x277D43218];
  v7 = [MEMORY[0x277D432A0] rowWithTitle:@"Date Before Time" valueKeyPath:@"showsDateBeforeTime"];
  v37[0] = v7;
  v8 = [MEMORY[0x277D432A0] rowWithTitle:@"Bold Time" valueKeyPath:@"hasBoldTime"];
  v37[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v10 = [v6 sectionWithRows:v9 title:@"iPad"];
  v41[3] = v10;
  v11 = MEMORY[0x277D43218];
  v12 = MEMORY[0x277D431A8];
  v13 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];
  v36 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v16 = [v11 sectionWithRows:v15];
  v41[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
  v26 = [v25 moduleWithTitle:0 contents:v17];

  return v26;
}

@end