@interface SBHCenterAppZoomSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHCenterAppZoomSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHCenterAppZoomSettings;
  [(SBHCenterZoomSettings *)&v3 setDefaultValues];
  [(SBHCenterZoomSettings *)self setZoomViewBelowIcons:0];
}

+ (id)settingsControllerModule
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v25.receiver = self;
  v25.super_class = &OBJC_METACLASS___SBHCenterAppZoomSettings;
  v3 = objc_msgSendSuper2(&v25, sel_settingsControllerModule);
  v24 = [v2 submoduleWithModule:v3 childSettingsKeyPath:0];

  v4 = [MEMORY[0x1E69C6618] rowWithTitle:@"App head-start (seconds)" valueKeyPath:@"appHeadStart"];
  v5 = [v4 between:-1.0 and:1.0];
  v28[0] = v5;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

  v6 = [MEMORY[0x1E69C6638] sectionWithRows:v23 title:@"App Zoom Animation"];
  v7 = MEMORY[0x1E69C6638];
  v8 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:0 delay:0 frameRate:1];
  v9 = [v7 submoduleWithModule:v8 childSettingsKeyPath:@"appZoomSettings"];

  v10 = MEMORY[0x1E69C6638];
  v11 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"App Fade" delay:1 frameRate:0];
  v12 = [v10 submoduleWithModule:v11 childSettingsKeyPath:@"appFadeSettings"];

  v13 = MEMORY[0x1E69C6638];
  v14 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v16 = [v14 rowWithTitle:@"Restore Defaults" action:action];
  v27 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v18 = [v13 sectionWithRows:v17];

  v19 = MEMORY[0x1E69C6638];
  v26[0] = v24;
  v26[1] = v6;
  v26[2] = v9;
  v26[3] = v12;
  v26[4] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  v21 = [v19 moduleWithTitle:@"Center Zoom" contents:v20];

  return v21;
}

@end