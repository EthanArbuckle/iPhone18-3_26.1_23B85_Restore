@interface _UISceneResizeFinishedAction
+ (id)resizeFinishedActionWithAnimationFence:(id)a3;
- (BKSAnimationFenceHandle)animationFence;
@end

@implementation _UISceneResizeFinishedAction

+ (id)resizeFinishedActionWithAnimationFence:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E698E700];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    [v6 setObject:v5 forSetting:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v7;
}

- (BKSAnimationFenceHandle)animationFence
{
  v2 = [(_UISceneResizeFinishedAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

@end