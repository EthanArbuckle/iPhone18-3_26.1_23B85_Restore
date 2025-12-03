@interface SBHCrossfadeAppTransitionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAppTransitionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHCrossfadeAppTransitionSettings;
  [(SBHCrossfadeZoomSettings *)&v3 setDefaultValues];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

+ (id)settingsControllerModule
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___SBHCrossfadeAppTransitionSettings;
  v3 = objc_msgSendSuper2(&v18, sel_settingsControllerModule);
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:0];

  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Snapshot Corner Radius" delay:1 frameRate:0];
  v7 = [v5 submoduleWithModule:v6 childSettingsKeyPath:@"appSnapshotCornerRadiusSettings"];

  v8 = MEMORY[0x1E69C6638];
  v9 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v11 = [v9 rowWithTitle:@"Restore Defaults" action:action];
  v20[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v13 = [v8 sectionWithRows:v12];

  v14 = MEMORY[0x1E69C6638];
  v19[0] = v4;
  v19[1] = v7;
  v19[2] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v16 = [v14 moduleWithTitle:0 contents:v15];

  return v16;
}

@end