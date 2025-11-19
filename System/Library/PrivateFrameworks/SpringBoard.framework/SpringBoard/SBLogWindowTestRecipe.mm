@interface SBLogWindowTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBLogWindowTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBLogWindowController sharedInstance];
  [v2 show];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBLogWindowController sharedInstance];
  [v2 hide];
}

@end