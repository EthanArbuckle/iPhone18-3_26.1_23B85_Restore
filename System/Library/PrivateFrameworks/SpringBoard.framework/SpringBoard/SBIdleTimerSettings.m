@interface SBIdleTimerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBIdleTimerSettings

- (void)setDefaultValues
{
  [(SBIdleTimerSettings *)self setDisableIdleTimer:0];
  [(SBIdleTimerSettings *)self setUnlockedIdleTimerCap:300.0];
  [(SBIdleTimerSettings *)self setOverrideIdleTimer:0];
  [(SBIdleTimerSettings *)self setDurationInterval:15.0];
  [(SBIdleTimerSettings *)self setWarnInterval:10.0];

  [(SBIdleTimerSettings *)self setSamplingStartBeforeFirstTimeout:10.0];
}

+ (id)settingsControllerModule
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Disable Idle Timer" valueKeyPath:@"disableIdleTimer"];
  v18[0] = v2;
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Unlocked Max Idle Timer" valueKeyPath:@"unlockedIdleTimerCap"];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v5 = [MEMORY[0x277D43210] sectionWithRows:v4 title:@"Features"];
  v6 = [MEMORY[0x277D432A8] rowWithTitle:@"Override Idle Timer" valueKeyPath:@"overrideIdleTimer"];
  v17[0] = v6;
  v7 = [MEMORY[0x277D431E8] rowWithTitle:@"Idle Timer Duration Override" valueKeyPath:@"durationInterval"];
  v17[1] = v7;
  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Warn Duration Override" valueKeyPath:@"warnInterval"];
  v17[2] = v8;
  v9 = [MEMORY[0x277D431E8] rowWithTitle:@"Sampling Start Before First Timeout" valueKeyPath:@"samplingStartBeforeFirstTimeout"];
  v17[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  v11 = [MEMORY[0x277D43210] sectionWithRows:v10 title:@"Override"];
  v12 = MEMORY[0x277D43210];
  v16[0] = v5;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v14 = [v12 moduleWithTitle:0 contents:v13];

  return v14;
}

@end