@interface SBScreenLongevitySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBScreenLongevitySettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = SBScreenLongevitySettings;
  [(PTSettings *)&v6 setDefaultValues];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 screenLongevityDefaults];

  self->_ignoreAutoLockSetToNever = 0;
  self->_overrideEnablement = 0;
  self->_enablement = 0;
  [v4 dimInterval];
  self->_dimInterval = v5;
  self->_waitInterval = 60.0;
  self->_minimalFaceDetectionInterval = 4.0;
  self->_undimFaceDetectionInterval = 2.0;
  self->_touchAttentionLostTimeout = 2.0;
  self->_dimmingAnimationLength = 2.0;
  self->_undimmingAnimationLength = 0.5;
  self->_faceDetectionScoreThreshold = 50.0;
  self->_noisyLogging = 0;
  self->_noOpButLogOnEnablementUpdate = 0;
}

+ (id)settingsControllerModule
{
  v62[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v55 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v62[0] = v55;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  v51 = [v4 sectionWithRows:v5 title:@"Restore"];

  v54 = [MEMORY[0x277D432A8] rowWithTitle:@"Ignore Auto Lock Set To Never" valueKeyPath:@"ignoreAutoLockSetToNever"];
  v53 = [MEMORY[0x277D432A8] rowWithTitle:@"Override Enablement" valueKeyPath:@"overrideEnablement"];
  v52 = [MEMORY[0x277D432A8] rowWithTitle:@"Enablement" valueKeyPath:@"enablement"];
  v6 = MEMORY[0x277D43210];
  v61[0] = v54;
  v61[1] = v53;
  v61[2] = v52;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  v50 = [v6 sectionWithRows:v7 title:@"Enablement Overrides"];

  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Dim Duration" valueKeyPath:@"dimInterval"];
  v9 = [v8 between:0.0 and:600.0];
  v49 = [v9 precision:1];

  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"Wait Duration Before Face Detection Kicks In" valueKeyPath:@"waitInterval"];
  v11 = [v10 between:0.0 and:600.0];
  v48 = [v11 precision:1];

  v12 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimal Face Detection Time Interval" valueKeyPath:@"minimalFaceDetectionInterval"];
  v13 = [v12 between:0.0 and:60.0];
  v47 = [v13 precision:1];

  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Undim Face Detection Time Interval" valueKeyPath:@"undimFaceDetectionInterval"];
  v15 = [v14 between:0.0 and:5.0];
  v46 = [v15 precision:1];

  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Touch Attention Lost Timeout" valueKeyPath:@"touchAttentionLostTimeout"];
  v17 = [v16 between:0.0 and:60.0];
  v45 = [v17 precision:1];

  v18 = MEMORY[0x277D43210];
  v60[0] = v49;
  v60[1] = v48;
  v60[2] = v47;
  v60[3] = v46;
  v60[4] = v45;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:5];
  v44 = [v18 sectionWithRows:v19 title:@"Timer"];

  v20 = [MEMORY[0x277D431E8] rowWithTitle:@"Dimming Animation Length" valueKeyPath:@"dimmingAnimationLength"];
  v21 = [v20 between:0.0 and:60.0];
  v43 = [v21 precision:3];

  v22 = [MEMORY[0x277D431E8] rowWithTitle:@"Undimming Animation Length" valueKeyPath:@"undimmingAnimationLength"];
  v23 = [v22 between:0.0 and:60.0];
  v42 = [v23 precision:3];

  v24 = MEMORY[0x277D43210];
  v59[0] = v43;
  v59[1] = v42;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v40 = [v24 sectionWithRows:v25 title:@"Core Brightness"];

  v26 = [MEMORY[0x277D431E8] rowWithTitle:@"Face Detection Score Threshold" valueKeyPath:@"faceDetectionScoreThreshold"];
  v27 = [v26 between:0.0 and:100.0];
  v41 = [v27 precision:1];

  v28 = MEMORY[0x277D43210];
  v58 = v41;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v30 = [v28 sectionWithRows:v29 title:@"Face Detection Score"];

  v31 = [MEMORY[0x277D432A8] rowWithTitle:@"Noisy Logging" valueKeyPath:@"noisyLogging"];
  v32 = [MEMORY[0x277D432A8] rowWithTitle:@"No Op But Log When Enablement Update" valueKeyPath:@"noOpButLogOnEnablementUpdate"];
  v33 = MEMORY[0x277D43210];
  v57[0] = v31;
  v57[1] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v35 = [v33 sectionWithRows:v34 title:@"Debug"];

  v36 = MEMORY[0x277D43210];
  v56[0] = v51;
  v56[1] = v50;
  v56[2] = v44;
  v56[3] = v40;
  v56[4] = v30;
  v56[5] = v35;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:6];
  v38 = [v36 moduleWithTitle:@"Screen Longevity" contents:v37];

  return v38;
}

@end