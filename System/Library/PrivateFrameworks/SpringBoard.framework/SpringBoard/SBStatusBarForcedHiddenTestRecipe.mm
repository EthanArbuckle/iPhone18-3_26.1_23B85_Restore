@interface SBStatusBarForcedHiddenTestRecipe
- (void)_toggleWithAnimationSettings:(id)a3;
- (void)handleVolumeIncrease;
@end

@implementation SBStatusBarForcedHiddenTestRecipe

- (void)handleVolumeIncrease
{
  v3 = [MEMORY[0x277CF0B70] settingsWithDuration:0.4];
  [(SBStatusBarForcedHiddenTestRecipe *)self _toggleWithAnimationSettings:v3];
}

- (void)_toggleWithAnimationSettings:(id)a3
{
  _toggleWithAnimationSettings__enabled ^= 1u;
  v3 = a3;
  v4 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v5 = [v4 layoutStatePrimaryElement];
  v6 = [v5 workspaceEntity];
  v7 = [v6 applicationSceneEntity];
  v11 = [v7 sceneHandle];

  v8 = _toggleWithAnimationSettings__enabled;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v11 setStatusBarForceHidden:v8 forReason:v10 animationSettings:v3];
}

@end