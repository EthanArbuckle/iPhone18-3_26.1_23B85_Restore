@interface SBPPTRunner(DockPPTs)
- (id)_mainDisplayWindowScene;
@end

@implementation SBPPTRunner(DockPPTs)

- (id)_mainDisplayWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v4 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_251];

  return v4;
}

@end