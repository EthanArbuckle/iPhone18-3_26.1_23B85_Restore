@interface SBPPTOperation(PageManagementPPTSupport)
+ (id)embeddedWindowScene;
@end

@implementation SBPPTOperation(PageManagementPPTSupport)

+ (id)embeddedWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  return embeddedDisplayWindowScene;
}

@end