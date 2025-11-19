@interface SBSystemNotesAppearanceSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemNotesAppearanceSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemNotesAppearanceSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemNotesAppearanceSettings *)self setPlatterTintRed:1.0];
  [(SBSystemNotesAppearanceSettings *)self setPlatterTintGreen:1.0];
  [(SBSystemNotesAppearanceSettings *)self setPlatterTintBlue:1.0];
  [(SBSystemNotesAppearanceSettings *)self setPlatterTintAlpha:0.05];
}

+ (id)settingsControllerModule
{
  v21[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v4 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"red" valueKeyPath:@"platterTintRed"];
  v6 = [v5 between:0.0 and:1.0];

  v7 = [MEMORY[0x277D431E8] rowWithTitle:@"green" valueKeyPath:@"platterTintGreen"];
  v8 = [v7 between:0.0 and:1.0];

  v9 = [MEMORY[0x277D431E8] rowWithTitle:@"blue" valueKeyPath:@"platterTintBlue"];
  v10 = [v9 between:0.0 and:1.0];

  v11 = [MEMORY[0x277D431E8] rowWithTitle:@"alpha" valueKeyPath:@"platterTintAlpha"];
  v12 = [v11 between:0.0 and:1.0];

  v13 = MEMORY[0x277D43210];
  v21[0] = v4;
  v21[1] = v6;
  v21[2] = v8;
  v21[3] = v10;
  v21[4] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v15 = [v13 sectionWithRows:v14 title:@"Platter Tint"];

  v16 = MEMORY[0x277D43210];
  v20 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v18 = [v16 moduleWithTitle:0 contents:v17];

  return v18;
}

@end