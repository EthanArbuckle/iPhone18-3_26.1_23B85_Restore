@interface SBMainSwitcherTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBMainSwitcherTestRecipe

- (void)handleVolumeIncrease
{
  v2 = [SBApp windowSceneManager];
  v4 = [v2 embeddedDisplayWindowScene];

  v3 = [v4 switcherController];
  [v3 activateMainSwitcherWithSource:0 animated:1];
}

- (void)handleVolumeDecrease
{
  v2 = [SBApp windowSceneManager];
  v4 = [v2 embeddedDisplayWindowScene];

  v3 = [v4 switcherController];
  [v3 dismissMainSwitcherWithSource:0 animated:1];
}

@end