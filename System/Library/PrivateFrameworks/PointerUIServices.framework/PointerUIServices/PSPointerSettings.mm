@interface PSPointerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PSPointerSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PSPointerSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PSPointerSettings *)self setMaterialAlphaDot:0.85];
  [(PSPointerSettings *)self setMaterialAlphaIBeam:1.0];
  [(PSPointerSettings *)self setMaterialAlphaSmallItemLight:0.25];
  [(PSPointerSettings *)self setMaterialAlphaSmallItemDark:0.3];
  [(PSPointerSettings *)self setMaterialAlphaSmallItemDarkHighContrast:0.3];
}

+ (id)settingsControllerModule
{
  v27[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431F0] rowWithTitle:@"Dot" valueKeyPath:@"materialAlphaDot"];
  v24 = [v2 between:0.0 and:1.0];

  v3 = [MEMORY[0x277D431F0] rowWithTitle:@"I-Beam" valueKeyPath:@"materialAlphaIBeam"];
  v23 = [v3 between:0.0 and:1.0];

  v4 = [MEMORY[0x277D431F0] rowWithTitle:@"Small Item Light" valueKeyPath:@"materialAlphaSmallItemLight"];
  v5 = [v4 between:0.0 and:1.0];

  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"Small Item Dark" valueKeyPath:@"materialAlphaSmallItemDark"];
  v7 = [v6 between:0.0 and:1.0];

  v8 = [MEMORY[0x277D431F0] rowWithTitle:@"Small Item Dark High Contrast" valueKeyPath:@"materialAlphaSmallItemDarkHighContrast"];
  v9 = [v8 between:0.0 and:1.0];

  v10 = MEMORY[0x277D43218];
  v27[0] = v24;
  v27[1] = v23;
  v27[2] = v5;
  v27[3] = v7;
  v27[4] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];
  v12 = [v10 sectionWithRows:v11 title:@"Material Alpha"];

  v13 = MEMORY[0x277D431A8];
  v14 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];

  v16 = MEMORY[0x277D43218];
  v26 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v18 = [v16 sectionWithRows:v17];

  v25[0] = v18;
  v25[1] = v12;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v20 = [MEMORY[0x277D43218] moduleWithTitle:0 contents:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end