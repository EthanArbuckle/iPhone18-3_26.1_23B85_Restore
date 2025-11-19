@interface SBHLibraryIndicatorIconSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHLibraryIndicatorIconSettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = SBHLibraryIndicatorIconSettings;
  [(PTSettings *)&v6 setDefaultValues];
  [(SBHLibraryIndicatorIconSettings *)self setPod1Scale:0.93];
  [(SBHLibraryIndicatorIconSettings *)self setPod2Scale:0.9075];
  [(SBHLibraryIndicatorIconSettings *)self setPod3Scale:0.87];
  v3 = [(SBHLibraryIndicatorIconSettings *)self pod1AnimationSettings];
  [v3 setDefaultValues];
  [v3 setBehaviorType:1];
  [v3 setDampingRatio:0.4];
  [v3 setResponse:0.5];
  v4 = [(SBHLibraryIndicatorIconSettings *)self pod2AnimationSettings];
  [v4 setDefaultValues];
  [v4 setBehaviorType:1];
  [v4 setDampingRatio:0.6];
  [v4 setResponse:0.4];
  v5 = [(SBHLibraryIndicatorIconSettings *)self pod3AnimationSettings];
  [v5 setDefaultValues];
  [v5 setBehaviorType:1];
  [v5 setDampingRatio:0.8];
  [v5 setResponse:0.3];
}

+ (id)settingsControllerModule
{
  v33[3] = *MEMORY[0x1E69E9840];
  v28 = MEMORY[0x1E69C6638];
  v2 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pod 1 Scale" valueKeyPath:@"pod1Scale"];
  v3 = [v2 between:0.0 and:1.0];
  v4 = [v3 precision:4];
  v33[0] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pod 2 Scale" valueKeyPath:@"pod2Scale"];
  v6 = [v5 between:0.0 and:1.0];
  v7 = [v6 precision:4];
  v33[1] = v7;
  v8 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pod 3 Scale" valueKeyPath:@"pod3Scale"];
  v9 = [v8 between:0.0 and:1.0];
  v10 = [v9 precision:4];
  v33[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v29 = [v28 sectionWithRows:v11 title:@"Pod Scale Settings"];

  v12 = MEMORY[0x1E69C6638];
  v13 = [MEMORY[0x1E69C6610] rowWithTitle:@"Pod 1 Animation Settings" childSettingsKeyPath:@"pod1AnimationSettings"];
  v32[0] = v13;
  v14 = [MEMORY[0x1E69C6610] rowWithTitle:@"Pod 2 Animation Settings" childSettingsKeyPath:@"pod2AnimationSettings"];
  v32[1] = v14;
  v15 = [MEMORY[0x1E69C6610] rowWithTitle:@"Pod 3 Animation Settings" childSettingsKeyPath:@"pod3AnimationSettings"];
  v32[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v17 = [v12 sectionWithRows:v16 title:@"Pod Scale Animation Settings"];

  v18 = MEMORY[0x1E69C6638];
  v19 = MEMORY[0x1E69C65E8];
  v20 = [MEMORY[0x1E69C6640] action];
  v21 = [v19 rowWithTitle:@"Restore Defaults" action:v20];
  v31 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v23 = [v18 sectionWithRows:v22];

  v24 = MEMORY[0x1E69C6638];
  v30[0] = v29;
  v30[1] = v17;
  v30[2] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v26 = [v24 moduleWithTitle:0 contents:v25];

  return v26;
}

@end