@interface SBSystemActionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemActionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemActionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemActionPreviewSettings *)self->_previewSettings setDefaultValues];
  [(SBSystemActionCoachingSettings *)self->_coachingSettings setDefaultValues];
  self->_popScale = 1.1;
  self->_inflateScale = 1.1;
}

+ (id)settingsControllerModule
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v28 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v33[0] = v28;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v26 = [v4 sectionWithRows:v5];

  v27 = [MEMORY[0x277D431D8] rowWithTitle:@"Previews" childSettingsKeyPath:@"previewSettings"];
  v6 = MEMORY[0x277D43210];
  v32 = v27;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v25 = [v6 sectionWithRows:v7];

  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"Coaching" childSettingsKeyPath:@"coachingSettings"];
  v9 = MEMORY[0x277D43210];
  v31 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v11 = [v9 sectionWithRows:v10];

  v12 = MEMORY[0x277D43210];
  v13 = [MEMORY[0x277D431E8] rowWithTitle:@"Pop Scale" valueKeyPath:@"popScale"];
  v14 = [v13 between:0.0 and:5.0];
  v15 = [v14 precision:2];
  v30[0] = v15;
  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Inflate Scale" valueKeyPath:@"inflateScale"];
  v17 = [v16 between:0.0 and:5.0];
  v18 = [v17 precision:2];
  v30[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v20 = [v12 sectionWithRows:v19 title:@"Animation"];

  v21 = MEMORY[0x277D43210];
  v29[0] = v26;
  v29[1] = v25;
  v29[2] = v11;
  v29[3] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v23 = [v21 moduleWithTitle:@"System Action" contents:v22];

  return v23;
}

@end