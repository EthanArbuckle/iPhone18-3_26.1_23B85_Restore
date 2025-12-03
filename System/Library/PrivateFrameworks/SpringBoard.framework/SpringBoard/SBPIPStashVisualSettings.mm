@interface SBPIPStashVisualSettings
+ (BOOL)ignoresKey:(id)key;
+ (id)settingsControllerModule;
- (id)materialSettingsForUserInterfaceStyle:(int64_t)style;
- (void)setDefaultValues;
@end

@implementation SBPIPStashVisualSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBPIPStashVisualSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBPIPStashVisualSettings *)self setUserInterfaceStyle:2];
  [(SBPIPStashVisualSettings *)self setStartBlurTransition:0.9];
  [(SBPIPStashVisualSettings *)self setCompleteBlurTransition:1.0];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431B8] rowWithTitle:@"Override Interface Style" valueKeyPath:@"userInterfaceStyle"];
  v3 = [v2 possibleValues:&unk_28336F000 titles:&unk_28336F018];

  v4 = [MEMORY[0x277D431D8] rowWithTitle:@"Light Mode Material" childSettingsKeyPath:@"lightModeMaterialSettings"];
  v5 = [MEMORY[0x277D431D8] rowWithTitle:@"Dark Mode Material" childSettingsKeyPath:@"darkModeMaterialSettings"];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"Start Blur Transition" valueKeyPath:@"startBlurTransition"];
  v7 = [v6 valueStringFormatter:&__block_literal_global_422];
  v8 = [v7 valueValidator:&__block_literal_global_267_0];

  v9 = [MEMORY[0x277D43290] rowWithTitle:@"Complete Blur Transition" valueKeyPath:@"completeBlurTransition"];
  v10 = [v9 valueStringFormatter:&__block_literal_global_422];
  v11 = [v10 valueValidator:&__block_literal_global_276];

  v12 = MEMORY[0x277D43210];
  v18[0] = v3;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v8;
  v18[4] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  v14 = [v12 sectionWithRows:v13];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v16 = [v12 moduleWithTitle:@"Stash Visual Settings" contents:v15];

  return v16;
}

uint64_t __52__SBPIPStashVisualSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2, void *a3)
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

uint64_t __52__SBPIPStashVisualSettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2, void *a3)
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

- (id)materialSettingsForUserInterfaceStyle:(int64_t)style
{
  if (style <= 2)
  {
    a2 = *(&self->super.super.isa + *off_2783C3A98[style]);
  }

  return a2;
}

@end