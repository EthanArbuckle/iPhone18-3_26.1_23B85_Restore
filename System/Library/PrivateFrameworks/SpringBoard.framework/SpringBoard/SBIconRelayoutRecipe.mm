@interface SBIconRelayoutRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBIconRelayoutRecipe

- (void)handleVolumeIncrease
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v5 = [v3 iconController];

  v4 = [v5 iconManager];
  [v4 relayout];
}

- (void)handleVolumeDecrease
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v5 = [v3 iconController];

  v4 = [v5 iconManager];
  [v4 relayout];
}

@end