@interface SBStatusBarForcedHiddenTestRecipe
- (void)_toggleWithAnimationSettings:(id)settings;
- (void)handleVolumeIncrease;
@end

@implementation SBStatusBarForcedHiddenTestRecipe

- (void)handleVolumeIncrease
{
  v3 = [MEMORY[0x277CF0B70] settingsWithDuration:0.4];
  [(SBStatusBarForcedHiddenTestRecipe *)self _toggleWithAnimationSettings:v3];
}

- (void)_toggleWithAnimationSettings:(id)settings
{
  _toggleWithAnimationSettings__enabled ^= 1u;
  settingsCopy = settings;
  v4 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  layoutStatePrimaryElement = [v4 layoutStatePrimaryElement];
  workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];

  v8 = _toggleWithAnimationSettings__enabled;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [sceneHandle setStatusBarForceHidden:v8 forReason:v10 animationSettings:settingsCopy];
}

@end