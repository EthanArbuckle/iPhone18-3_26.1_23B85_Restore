@interface SBIconRelayoutRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBIconRelayoutRecipe

- (void)handleVolumeIncrease
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  iconController = [embeddedDisplayWindowScene iconController];

  iconManager = [iconController iconManager];
  [iconManager relayout];
}

- (void)handleVolumeDecrease
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  iconController = [embeddedDisplayWindowScene iconController];

  iconManager = [iconController iconManager];
  [iconManager relayout];
}

@end