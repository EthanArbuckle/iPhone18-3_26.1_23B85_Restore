@interface FBScene(UIKitAdditions)
- (void)_performUpdateWithoutActivation:()UIKitAdditions;
- (void)ui_performBlock:()UIKitAdditions withTransitionContext:;
@end

@implementation FBScene(UIKitAdditions)

- (void)_performUpdateWithoutActivation:()UIKitAdditions
{
  v4 = a3;
  if ([a1 isActive])
  {
    [a1 performUpdate:v4];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__FBScene_UIKitAdditions___performUpdateWithoutActivation___block_invoke;
    v5[3] = &unk_1E7122EA8;
    v6 = v4;
    [a1 updateSettings:v5];
  }
}

- (void)ui_performBlock:()UIKitAdditions withTransitionContext:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 parentScene];

  if (v7 && v8)
  {
    v9 = [v7 animationFence];

    if (v9)
    {
      v10 = [v7 animationFence];
      [UIScene _synchronizeDrawingWithFence:v10];
    }

    v11 = MEMORY[0x1E698E608];
    v12 = [v7 animationSettings];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__FBScene_UIKitAdditions__ui_performBlock_withTransitionContext___block_invoke;
    v13[3] = &unk_1E70F3608;
    v14 = v6;
    [v11 tryAnimatingWithSettings:v12 actions:v13 completion:0];
  }

  else
  {
    v6[2](v6);
  }
}

@end