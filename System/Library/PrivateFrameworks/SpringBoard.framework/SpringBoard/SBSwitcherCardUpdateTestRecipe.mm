@interface SBSwitcherCardUpdateTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSwitcherCardUpdateTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v2 _insertCardForDisplayIdentifier:@"com.apple.mobilesafari" atIndex:1];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v2 _removeCardForDisplayIdentifier:@"com.apple.mobilesafari"];
}

@end