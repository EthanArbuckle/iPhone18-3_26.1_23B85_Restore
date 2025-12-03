@interface SBDismissEmergencyCallRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBDismissEmergencyCallRecipe

- (void)handleVolumeIncrease
{
  v5 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v5 lockScreenEnvironment];
  callController = [lockScreenEnvironment callController];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"blah" code:0 userInfo:0];
  [callController emergencyDialerExitedWithError:v4];
}

- (void)handleVolumeDecrease
{
  v4 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v4 lockScreenEnvironment];
  callController = [lockScreenEnvironment callController];
  [callController exitEmergencyDialerAnimated:1];
}

@end