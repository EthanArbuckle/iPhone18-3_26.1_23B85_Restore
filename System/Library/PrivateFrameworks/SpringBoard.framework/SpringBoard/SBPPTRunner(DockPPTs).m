@interface SBPPTRunner(DockPPTs)
- (id)_mainDisplayWindowScene;
@end

@implementation SBPPTRunner(DockPPTs)

- (id)_mainDisplayWindowScene
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 connectedWindowScenes];
  v4 = [v3 bs_firstObjectPassingTest:&__block_literal_global_251];

  return v4;
}

@end