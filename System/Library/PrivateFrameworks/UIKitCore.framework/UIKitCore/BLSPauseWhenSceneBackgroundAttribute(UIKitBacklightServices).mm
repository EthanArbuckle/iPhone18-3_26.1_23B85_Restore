@interface BLSPauseWhenSceneBackgroundAttribute(UIKitBacklightServices)
+ (id)pauseWhenBackgroundScene:()UIKitBacklightServices;
@end

@implementation BLSPauseWhenSceneBackgroundAttribute(UIKitBacklightServices)

+ (id)pauseWhenBackgroundScene:()UIKitBacklightServices
{
  v4 = a3;
  v5 = [self alloc];
  _FBSScene = [v4 _FBSScene];

  v7 = [v5 initWithFBSScene:_FBSScene];

  return v7;
}

@end