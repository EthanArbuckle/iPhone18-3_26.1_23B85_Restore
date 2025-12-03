@interface SBHAppLibrarySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHAppLibrarySettings

- (void)setDefaultValues
{
  [(SBHAppLibrarySettings *)self setMinimumNumberOfIconsToShowSectionHeaderInDeweySearch:75];
  [(SBHAppLibrarySettings *)self setCriticalDismissalThresholdDurationFactor:0.0];
  [(SBHAppLibrarySettings *)self setMinimumVelocityForSwipeToDismiss:450.0];

  [(SBHAppLibrarySettings *)self setMinimumTranslationFractionForSwipeToDismiss:0.25];
}

+ (id)settingsControllerModule
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v26 = [v2 rowWithTitle:@"Restore Defaults" action:action];

  v4 = MEMORY[0x1E69C6638];
  v30[0] = v26;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v25 = [v4 sectionWithRows:v5];

  v6 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Section Header Minimum Icons" valueKeyPath:@"minimumNumberOfIconsToShowSectionHeaderInDeweySearch"];
  v24 = [v6 minValue:25.0 maxValue:150.0];

  [v24 setValueValidatator:&__block_literal_global_54];
  v7 = MEMORY[0x1E69C6638];
  v29 = v24;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v23 = [v7 sectionWithRows:v8 title:@"Search"];

  v9 = MEMORY[0x1E69C6638];
  v10 = [MEMORY[0x1E69C6618] rowWithTitle:@"Critical Dismissal Duration Factor" valueKeyPath:@"criticalDismissalThresholdDurationFactor"];
  v11 = [v10 between:0.0 and:1.0];
  v12 = [v11 precision:3];
  v28[0] = v12;
  v13 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Minimum Velocity for Swipe To Dismiss" valueKeyPath:@"minimumVelocityForSwipeToDismiss"];
  v14 = [v13 minValue:100.0 maxValue:2500.0];
  v28[1] = v14;
  v15 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Minimum Translation Fraction for Swipe To Dismiss" valueKeyPath:@"minimumTranslationFractionForSwipeToDismiss"];
  v16 = [v15 minValue:0.0 maxValue:1.0];
  v28[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v18 = [v9 sectionWithRows:v17 title:@"Trailing Page"];

  v19 = MEMORY[0x1E69C6638];
  v27[0] = v23;
  v27[1] = v18;
  v27[2] = v25;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  v21 = [v19 moduleWithTitle:@"Icons" contents:v20];

  return v21;
}

uint64_t __49__SBHAppLibrarySettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 floatValue];
  *&v3 = floorf(*&v3);

  return [v2 numberWithFloat:v3];
}

@end