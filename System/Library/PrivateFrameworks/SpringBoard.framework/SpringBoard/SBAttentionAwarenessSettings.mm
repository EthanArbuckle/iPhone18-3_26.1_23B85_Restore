@interface SBAttentionAwarenessSettings
+ (id)settingsControllerModule;
- (void)dealloc;
- (void)setDefaultValues;
@end

@implementation SBAttentionAwarenessSettings

+ (id)settingsControllerModule
{
  v20[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Attention Sensor(s)" valueKeyPath:@"shouldUseAttentionSensor"];
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Sample Interval" valueKeyPath:@"sampleInterval"];
  v4 = [v3 between:0.0 and:300.0];
  v5 = [v4 precision:2];

  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Dim Interval" valueKeyPath:@"dimInterval"];
  v7 = [v6 between:0.0 and:300.0];
  v8 = [v7 precision:2];

  v9 = [MEMORY[0x277D431E8] rowWithTitle:@"Sleep Interval" valueKeyPath:@"sleepInterval"];
  v10 = [v9 between:0.0 and:300.0];
  v11 = [v10 precision:2];

  v12 = MEMORY[0x277D43210];
  v20[0] = v2;
  v20[1] = v5;
  v20[2] = v8;
  v20[3] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v14 = [v12 sectionWithRows:v13];

  v15 = MEMORY[0x277D43210];
  v19 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v17 = [v15 moduleWithTitle:@"Attention Awareness" contents:v16];

  return v17;
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  [MEMORY[0x277CEF768] cancelNotification:self->_attentionAwarenessToken];
  v4.receiver = self;
  v4.super_class = SBAttentionAwarenessSettings;
  [(PTSettings *)&v4 dealloc];
}

- (void)setDefaultValues
{
  self->_supportsAttentionSensor = [objc_opt_class() attentionSensorSupported];
  self->_shouldUseAttentionSensor = 1;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [(SBAttentionAwarenessSettings *)self profileConnectionDidReceiveEffectiveSettingsChangedNotification:mEMORY[0x277D262A0] userInfo:0];

  if (!self->_isObservingDataSources)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__SBAttentionAwarenessSettings_setDefaultValues__block_invoke;
    v5[3] = &unk_2783A8C18;
    v5[4] = self;
    self->_attentionAwarenessToken = [MEMORY[0x277CEF768] notifySupportedEventsChangedWithQueue:MEMORY[0x277D85CD0] block:v5];
    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    [mEMORY[0x277D262A0]2 registerObserver:self];

    self->_isObservingDataSources = 1;
  }

  [(SBAttentionAwarenessSettings *)self setSampleInterval:4.0];
  [(SBAttentionAwarenessSettings *)self setDimInterval:20.0];
  [(SBAttentionAwarenessSettings *)self setSleepInterval:30.0];
}

uint64_t __48__SBAttentionAwarenessSettings_setDefaultValues__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() attentionSensorSupported];
  *(*(a1 + 32) + 49) = result;
  return result;
}

@end