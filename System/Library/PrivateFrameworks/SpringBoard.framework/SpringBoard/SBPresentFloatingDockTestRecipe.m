@interface SBPresentFloatingDockTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBPresentFloatingDockTestRecipe

- (void)handleVolumeIncrease
{
  v4 = [SBApp windowSceneManager];
  v2 = [v4 activeDisplayWindowScene];
  v3 = [v2 floatingDockController];
  [v3 presentFloatingDockIfDismissedAnimated:1 completionHandler:0];
}

- (void)handleVolumeDecrease
{
  v4 = [SBApp windowSceneManager];
  v2 = [v4 activeDisplayWindowScene];
  v3 = [v2 floatingDockController];
  [v3 dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
}

@end