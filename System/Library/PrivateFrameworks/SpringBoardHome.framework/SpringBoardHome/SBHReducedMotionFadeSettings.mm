@interface SBHReducedMotionFadeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHReducedMotionFadeSettings

- (void)setDefaultValues
{
  v8.receiver = self;
  v8.super_class = SBHReducedMotionFadeSettings;
  [(SBHIconAnimationSettings *)&v8 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setAnimationType:1];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setMass:8.0];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setStiffness:1560.0];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setDamping:600.0];

  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings5 setCurve:0x10000];
}

+ (id)settingsControllerModule
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Reduced Motion Crossfade" delay:0 frameRate:0];
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:@"centralAnimationSettings"];

  v5 = MEMORY[0x1E69C6638];
  v6 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v8 = [v6 rowWithTitle:@"Restore Defaults" action:action];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v10 = [v5 sectionWithRows:v9];

  v11 = MEMORY[0x1E69C6638];
  v15[0] = v4;
  v15[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v13 = [v11 moduleWithTitle:0 contents:v12];

  return v13;
}

@end