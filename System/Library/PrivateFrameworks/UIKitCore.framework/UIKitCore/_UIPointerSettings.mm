@interface _UIPointerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIPointerSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIPointerSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIPointerSettings *)self setShowRegions:0];
  [(_UIPointerSettings *)self setShowEffectPlatter:0];
  [(_UIPointerSettings *)self setShowMenuPressDuration:0];
}

+ (id)settingsControllerModule
{
  v38[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v21 = MEMORY[0x1E69C6638];
  v33 = [MEMORY[0x1E69C6610] rowWithTitle:@"Size Rule Settings" childSettingsKeyPath:@"sizeRuleSettings"];
  v37[0] = v33;
  v32 = [MEMORY[0x1E69C6610] rowWithTitle:@"Highlight Effect" childSettingsKeyPath:@"highlightEffectSettings"];
  v37[1] = v32;
  v31 = [MEMORY[0x1E69C6610] rowWithTitle:@"Lift Effect" childSettingsKeyPath:@"liftEffectSettings"];
  v37[2] = v31;
  v30 = [MEMORY[0x1E69C6610] rowWithTitle:@"Hover Effect" childSettingsKeyPath:@"hoverEffectSettings"];
  v37[3] = v30;
  v29 = [MEMORY[0x1E69C6610] rowWithTitle:@"SB App Icon Effect" childSettingsKeyPath:@"SBAppIconEffectSettings"];
  v37[4] = v29;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  v27 = [v2 sectionWithRows:v28 title:@"Effect Settings"];
  v38[0] = v27;
  v3 = MEMORY[0x1E69C6638];
  v26 = [MEMORY[0x1E69C6610] rowWithTitle:@"Freeform Pointer" childSettingsKeyPath:@"freeformPointerSettings"];
  v36[0] = v26;
  v25 = [MEMORY[0x1E69C6610] rowWithTitle:@"Beam" childSettingsKeyPath:@"beamSettings"];
  v36[1] = v25;
  v24 = [MEMORY[0x1E69C6610] rowWithTitle:@"Link Pointer" childSettingsKeyPath:@"linkPointerSettings"];
  v36[2] = v24;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v20 = [v3 sectionWithRows:v23 title:@"Special Pointer Settings"];
  v38[1] = v20;
  v4 = MEMORY[0x1E69C6638];
  v19 = [MEMORY[0x1E69C6610] rowWithTitle:@"Text Interactions" childSettingsKeyPath:@"textSettings"];
  v35[0] = v19;
  v18 = [MEMORY[0x1E69C6610] rowWithTitle:@"Button Interactions" childSettingsKeyPath:@"buttonSettings"];
  v35[1] = v18;
  v17 = [MEMORY[0x1E69C6610] rowWithTitle:@"NavigationBar & Toolbar Interactions" childSettingsKeyPath:@"navigationAndToolbarSettings"];
  v35[2] = v17;
  v5 = [MEMORY[0x1E69C6610] rowWithTitle:@"TabBar Interactions" childSettingsKeyPath:@"tabBarSettings"];
  v35[3] = v5;
  v6 = [MEMORY[0x1E69C6610] rowWithTitle:@"SearchBar Interactions" childSettingsKeyPath:@"searchBarSettings"];
  v35[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:5];
  v8 = [v4 sectionWithRows:v7 title:@"Pointer Related Behavior Settings"];
  v38[2] = v8;
  v9 = MEMORY[0x1E69C6638];
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Pointer Regions" valueKeyPath:@"showRegions"];
  v34[0] = v10;
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Effect Platter Debug Border" valueKeyPath:@"showEffectPlatter"];
  v34[1] = v11;
  v12 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Context Menu Press Duration" valueKeyPath:@"showMenuPressDuration"];
  v34[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v14 = [v9 sectionWithRows:v13 title:@"Debugging"];
  v38[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  v22 = [v21 moduleWithTitle:@"UIKit Pointer Settings" contents:v15];

  return v22;
}

@end