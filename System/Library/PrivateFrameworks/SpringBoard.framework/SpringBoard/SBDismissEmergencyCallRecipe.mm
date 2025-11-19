@interface SBDismissEmergencyCallRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBDismissEmergencyCallRecipe

- (void)handleVolumeIncrease
{
  v5 = +[SBLockScreenManager sharedInstance];
  v2 = [v5 lockScreenEnvironment];
  v3 = [v2 callController];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"blah" code:0 userInfo:0];
  [v3 emergencyDialerExitedWithError:v4];
}

- (void)handleVolumeDecrease
{
  v4 = +[SBLockScreenManager sharedInstance];
  v2 = [v4 lockScreenEnvironment];
  v3 = [v2 callController];
  [v3 exitEmergencyDialerAnimated:1];
}

@end