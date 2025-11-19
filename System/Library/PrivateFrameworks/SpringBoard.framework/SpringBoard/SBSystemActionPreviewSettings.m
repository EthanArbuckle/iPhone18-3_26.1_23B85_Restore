@interface SBSystemActionPreviewSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemActionPreviewSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemActionPreviewSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemActionPreviewSettings *)self setMinimumPreviewInterval:1.5];
  [(SBSystemActionPreviewSettings *)self setAdditionalUrgencyInterval:0.5];
}

+ (id)settingsControllerModule
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimum Preview Interval" valueKeyPath:@"minimumPreviewInterval"];
  v4 = [v3 between:0.0 and:10.0];
  v21[0] = v4;
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"Additional Urgency Interval" valueKeyPath:@"additionalUrgencyInterval"];
  v6 = [v5 between:0.0 and:10.0];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v8 = [v2 sectionWithRows:v7 title:@"Timing"];

  v9 = MEMORY[0x277D43210];
  v10 = MEMORY[0x277D431B0];
  v11 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v12 = [v10 rowWithTitle:@"Restore Defaults" action:v11];
  v20 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v14 = [v9 sectionWithRows:v13];

  v15 = MEMORY[0x277D43210];
  v19[0] = v14;
  v19[1] = v8;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v17 = [v15 moduleWithTitle:@"Previews" contents:v16];

  return v17;
}

@end