@interface SBToggleClassroomPluginTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBToggleClassroomPluginTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 lockScreenEnvironment];
  v5 = [v3 pluginPresenter];

  v4 = [MEMORY[0x277D67958] contextWithName:@"ClassroomLockScreen"];
  [v5 enableLockScreenPluginWithContext:v4];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 lockScreenEnvironment];
  v5 = [v3 pluginPresenter];

  v4 = [MEMORY[0x277D67958] contextWithName:@"ClassroomLockScreen"];
  [v5 disableLockScreenPluginWithContext:v4];
}

@end