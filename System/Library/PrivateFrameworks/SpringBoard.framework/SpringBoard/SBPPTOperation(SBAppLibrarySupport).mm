@interface SBPPTOperation(SBAppLibrarySupport)
+ (id)_mainDisplayWindowScene;
@end

@implementation SBPPTOperation(SBAppLibrarySupport)

+ (id)_mainDisplayWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v4 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_110_0];

  return v4;
}

@end