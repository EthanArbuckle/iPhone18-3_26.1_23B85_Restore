@interface SBMainSwitcherTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBMainSwitcherTestRecipe

- (void)handleVolumeIncrease
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  switcherController = [embeddedDisplayWindowScene switcherController];
  [switcherController activateMainSwitcherWithSource:0 animated:1];
}

- (void)handleVolumeDecrease
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  switcherController = [embeddedDisplayWindowScene switcherController];
  [switcherController dismissMainSwitcherWithSource:0 animated:1];
}

@end