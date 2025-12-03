@interface _UISceneResizeFinishedAction
+ (id)resizeFinishedActionWithAnimationFence:(id)fence;
- (BKSAnimationFenceHandle)animationFence;
@end

@implementation _UISceneResizeFinishedAction

+ (id)resizeFinishedActionWithAnimationFence:(id)fence
{
  if (fence)
  {
    v4 = MEMORY[0x1E698E700];
    fenceCopy = fence;
    v6 = objc_alloc_init(v4);
    [v6 setObject:fenceCopy forSetting:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[self alloc] initWithInfo:v6 responder:0];

  return v7;
}

- (BKSAnimationFenceHandle)animationFence
{
  info = [(_UISceneResizeFinishedAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

@end