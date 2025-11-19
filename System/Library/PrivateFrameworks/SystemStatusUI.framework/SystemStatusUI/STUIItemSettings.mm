@interface STUIItemSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation STUIItemSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = STUIItemSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(STUIItemSettings *)self setBatteryPercentageAlwaysEnabled:0];
  [(STUIItemSettings *)self setBatteryCondensedPercentageForceEnabled:0];
  [(STUIItemSettings *)self setShowBothDualCarrierNames:0];
  [(STUIItemSettings *)self setSecondarySIMUnderBaseline:0];
  [(STUIItemSettings *)self setShowRingerWhenSilenced:1];
  [(STUIItemSettings *)self setShowRingerOnAODLockScreen:0];
  [(STUIItemSettings *)self setShowRingerOffLockScreen:1];
}

+ (id)settingsControllerModule
{
  v32[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v20 = MEMORY[0x277D43218];
  v27 = [MEMORY[0x277D432A0] rowWithTitle:@"Percentage" valueKeyPath:@"batteryPercentageAlwaysEnabled"];
  v31[0] = v27;
  v26 = [MEMORY[0x277D432A0] rowWithTitle:@"Condensed Percentage" valueKeyPath:@"batteryCondensedPercentageForceEnabled"];
  v31[1] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v24 = [v2 sectionWithRows:v25 title:@"Battery"];
  v32[0] = v24;
  v3 = MEMORY[0x277D43218];
  v23 = [MEMORY[0x277D432A0] rowWithTitle:@"Both Carrier Names" valueKeyPath:@"showBothDualCarrierNames"];
  v30[0] = v23;
  v22 = [MEMORY[0x277D432A0] rowWithTitle:@"Second SIM Under Baseline" valueKeyPath:@"secondarySIMUnderBaseline"];
  v30[1] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v19 = [v3 sectionWithRows:v21 title:@"Cellular"];
  v32[1] = v19;
  v4 = MEMORY[0x277D43218];
  v18 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Ringer When Silenced" valueKeyPath:@"showRingerWhenSilenced"];
  v29[0] = v18;
  v5 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Ringer On AOD" valueKeyPath:@"showRingerOnAODLockScreen"];
  v29[1] = v5;
  v6 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Ringer Everywhere" valueKeyPath:@"showRingerOffLockScreen"];
  v29[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v8 = [v4 sectionWithRows:v7 title:@"Ringer"];
  v32[2] = v8;
  v9 = MEMORY[0x277D43218];
  v10 = MEMORY[0x277D431A8];
  v11 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v12 = [v10 rowWithTitle:@"Restore Defaults" action:v11];
  v28 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v14 = [v9 sectionWithRows:v13];
  v32[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  v16 = [v20 moduleWithTitle:0 contents:v15];

  return v16;
}

@end