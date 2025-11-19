@interface SBAmbientSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBAmbientSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBAmbientSettings;
  [(PTSettings *)&v5 setDefaultValues];
  v3 = MGGetBoolAnswer();
  self->_enableSuppression = v3;
  if (v3)
  {
    self->_idleTimerDuration = 18;
    idleTimerWarnMode = 1;
    self->_idleTimerWarnMode = 1;
    self->_suppressedIdleTimerDuration = 10;
  }

  else
  {
    self->_idleTimerDuration = 10;
    self->_idleTimerWarnMode = 1;
    self->_suppressedIdleTimerDuration = self->_idleTimerDuration;
    idleTimerWarnMode = self->_idleTimerWarnMode;
  }

  self->_suppressedIdleTimerWarnMode = idleTimerWarnMode;
}

+ (id)settingsControllerModule
{
  v38[5] = *MEMORY[0x277D85DE8];
  v37[0] = &unk_283370F58;
  v37[1] = &unk_283370F70;
  v38[0] = @"Locked";
  v38[1] = @"Ambient Extended";
  v37[2] = &unk_283370F88;
  v37[3] = &unk_283370FA0;
  v38[2] = @"Deep Interaction";
  v38[3] = @"Unlocked";
  v37[4] = &unk_283370FB8;
  v38[4] = @"Forever";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
  v35[0] = &unk_283370FD0;
  v35[1] = &unk_283370F58;
  v36[0] = @"Warn";
  v36[1] = @"Disabled";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v29 = [SBAmbientChoiceRow rowWithTitle:@"Duration" valueKeyPath:@"idleTimerDuration"];
  [v29 setPossibleChoicesFromDictionary:v2 order:&unk_28336E418];
  v28 = [SBAmbientChoiceRow rowWithTitle:@"Warning" valueKeyPath:@"idleTimerWarnMode"];
  [v28 setPossibleChoicesFromDictionary:v3 order:&unk_28336E430];
  v4 = MEMORY[0x277D43210];
  v34[0] = v29;
  v34[1] = v28;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v26 = [v4 sectionWithRows:v5 title:@"Idle Timer Behavior"];

  v27 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Suppression" valueKeyPath:@"enableSuppression"];
  v6 = MEMORY[0x277D43210];
  v33 = v27;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v8 = [MEMORY[0x277CCAC30] predicateWithValue:{objc_msgSend(MEMORY[0x277CC1D50], "isAvailable")}];
  v25 = [v6 sectionWithRows:v7 title:@"Suppression" condition:v8];

  v9 = [SBAmbientChoiceRow rowWithTitle:@"Duration" valueKeyPath:@"suppressedIdleTimerDuration"];
  [v9 setPossibleChoicesFromDictionary:v2 order:&unk_28336E448];
  v10 = [SBAmbientChoiceRow rowWithTitle:@"Warning" valueKeyPath:@"suppressedIdleTimerWarnMode"];
  [v10 setPossibleChoicesFromDictionary:v3 order:&unk_28336E460];
  v11 = MEMORY[0x277D43210];
  v32[0] = v9;
  v32[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"enableSuppression == YES"];
  v14 = [v11 sectionWithRows:v12 title:@"Idle Timer Behavior During Suppression" condition:v13];

  v15 = MEMORY[0x277D431B0];
  v16 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v17 = [v15 rowWithTitle:@"Restore Defaults" action:v16];

  v18 = MEMORY[0x277D43210];
  v31 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v20 = [v18 sectionWithRows:v19];

  v21 = MEMORY[0x277D43210];
  v30[0] = v26;
  v30[1] = v25;
  v30[2] = v14;
  v30[3] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v23 = [v21 moduleWithTitle:@"Domino" contents:v22];

  return v23;
}

@end