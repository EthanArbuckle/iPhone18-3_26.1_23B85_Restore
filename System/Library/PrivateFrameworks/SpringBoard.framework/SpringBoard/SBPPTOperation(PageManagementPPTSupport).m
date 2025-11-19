@interface SBPPTOperation(PageManagementPPTSupport)
+ (id)embeddedWindowScene;
@end

@implementation SBPPTOperation(PageManagementPPTSupport)

+ (id)embeddedWindowScene
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  return v3;
}

@end