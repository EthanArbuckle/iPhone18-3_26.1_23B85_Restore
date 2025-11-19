@interface SBReachabilityTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBReachabilityTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 deactivateReachability];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 toggleReachability];
}

@end