@interface SBPresentFloatingDockTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBPresentFloatingDockTestRecipe

- (void)handleVolumeIncrease
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  floatingDockController = [activeDisplayWindowScene floatingDockController];
  [floatingDockController presentFloatingDockIfDismissedAnimated:1 completionHandler:0];
}

- (void)handleVolumeDecrease
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  floatingDockController = [activeDisplayWindowScene floatingDockController];
  [floatingDockController dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
}

@end