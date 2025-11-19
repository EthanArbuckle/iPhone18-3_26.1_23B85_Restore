@interface SBHUnlockSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHUnlockSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHUnlockSettings;
  [(SBHCenterAppSuspendSettings *)&v3 setDefaultValues];
  [(SBHCenterZoomSettings *)self setZoomViewBelowIcons:1];
}

+ (id)settingsControllerModule
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SBHUnlockSettings;
  v3 = objc_msgSendSuper2(&v9, sel_settingsControllerModule);
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:0];

  v5 = MEMORY[0x1E69C6638];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v5 moduleWithTitle:@"Unlock" contents:v6];

  return v7;
}

@end