@interface SBToggleClassroomPluginTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBToggleClassroomPluginTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v2 lockScreenEnvironment];
  pluginPresenter = [lockScreenEnvironment pluginPresenter];

  v4 = [MEMORY[0x277D67958] contextWithName:@"ClassroomLockScreen"];
  [pluginPresenter enableLockScreenPluginWithContext:v4];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v2 lockScreenEnvironment];
  pluginPresenter = [lockScreenEnvironment pluginPresenter];

  v4 = [MEMORY[0x277D67958] contextWithName:@"ClassroomLockScreen"];
  [pluginPresenter disableLockScreenPluginWithContext:v4];
}

@end