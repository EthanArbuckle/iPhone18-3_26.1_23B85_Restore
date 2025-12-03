@interface SBPIPStashMaterialSettings
+ (BOOL)ignoresKey:(id)key;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBPIPStashMaterialSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBPIPStashMaterialSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(SBPIPStashMaterialSettings *)self setChevronCompositingFilter:*MEMORY[0x277CDA5E8]];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(SBPIPStashMaterialSettings *)self setChevronTintColor:secondaryLabelColor];

  [(SBPIPStashMaterialSettings *)self setDarkTintAlpha:0.55];
  [(SBPIPStashMaterialSettings *)self setLightTintAlpha:0.15];
}

+ (id)settingsControllerModule
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Interface Style" valueKeyPath:@"userInterfaceStyle"];
  v29 = [v2 possibleValues:&unk_28336F030 titles:&unk_28336F048];

  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Chevron Filter" valueKeyPath:@"chevronCompositingFilter"];
  null = [MEMORY[0x277CBEB68] null];
  v5 = *MEMORY[0x277CDA5E8];
  v33[0] = null;
  v33[1] = v5;
  v33[2] = *MEMORY[0x277CDA5D8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v28 = [v3 possibleValues:v6 titles:&unk_28336F060];

  v7 = [MEMORY[0x277D431B8] rowWithTitle:@"Chevron Tint" valueKeyPath:@"chevronTintColor"];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v32[0] = labelColor;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v32[1] = secondaryLabelColor;
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  v32[2] = tertiaryLabelColor;
  quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
  v32[3] = quaternaryLabelColor;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  v27 = [v7 possibleValues:v12 titles:&unk_28336F078];

  v26 = [MEMORY[0x277D43290] rowWithTitle:@"Dark Tint Alpha" valueKeyPath:@"darkTintAlpha"];
  v13 = [MEMORY[0x277D43290] rowWithTitle:@"Light Tint Alpha" valueKeyPath:@"lightTintAlpha"];
  v14 = [MEMORY[0x277D43290] rowWithTitle:@"Start Blur Transition" valueKeyPath:@"startBlurTransition"];
  v15 = [v14 valueStringFormatter:&__block_literal_global_386];
  v16 = [v15 valueValidator:&__block_literal_global_388_0];

  v17 = [MEMORY[0x277D43290] rowWithTitle:@"Complete Blur Transition" valueKeyPath:@"completeBlurTransition"];
  v18 = [v17 valueStringFormatter:&__block_literal_global_386];
  v19 = [v18 valueValidator:&__block_literal_global_390_0];

  v20 = MEMORY[0x277D43210];
  v30[0] = v29;
  v30[1] = v28;
  v30[2] = v27;
  v30[3] = v26;
  v30[4] = v13;
  v30[5] = v16;
  v30[6] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:7];
  v22 = [v20 sectionWithRows:v21];
  v31 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v24 = [v20 moduleWithTitle:@"Stash Visual Settings" contents:v23];

  return v24;
}

uint64_t __54__SBPIPStashMaterialSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 completeBlurTransition];
  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  v10 = v8 + -0.01;
  if (v6 < v8 + -0.01)
  {
    v10 = v6;
  }

  return [v9 numberWithDouble:v10];
}

uint64_t __54__SBPIPStashMaterialSettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 startBlurTransition];
  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  v10 = v8 + 0.01;
  if (v6 >= v8 + 0.01)
  {
    v10 = v6;
  }

  return [v9 numberWithDouble:v10];
}

+ (BOOL)ignoresKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"darkTintColor"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"lightTintColor"];
  }

  return v4;
}

@end