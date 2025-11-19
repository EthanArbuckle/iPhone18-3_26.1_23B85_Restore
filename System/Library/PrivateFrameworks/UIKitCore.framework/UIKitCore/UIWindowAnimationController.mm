@interface UIWindowAnimationController
@end

@implementation UIWindowAnimationController

void __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotView];
  [*(a1 + 40) frame];
  [v2 setFrame:?];
  [v2 setAutoresizingMask:{objc_msgSend(*(a1 + 40), "autoresizingMask")}];
  v3 = [*(a1 + 48) view];
  [v3 insertSubview:v2 belowSubview:*(a1 + 40)];

  [*(a1 + 56) transitionDuration:*(a1 + 64)];
  v5 = v4;
  v6 = [*(a1 + 64) _completionCurve] << 16;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_2;
  v15[3] = &unk_1E70F6228;
  v16 = *(a1 + 72);
  v17 = *(a1 + 64);
  v18 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_3;
  v8[3] = &unk_1E71033A8;
  v9 = *(a1 + 32);
  v7 = *(a1 + 96);
  v12 = *(a1 + 80);
  v13 = v7;
  v14 = *(a1 + 112);
  v10 = *(a1 + 72);
  v11 = *(a1 + 64);
  [UIView animateWithDuration:v6 delay:v15 options:v8 animations:v5 completion:0.0];
}

uint64_t __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v3 viewControllerForKey:@"UITransitionContextToViewController"];
  [v3 finalFrameForViewController:v4];
  [v2 setFrame:?];

  v5 = a1[6];

  return [v5 setAlpha:0.0];
}

uint64_t __98___UIWindowAnimationController__performCrossfadeAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_3(uint64_t a1)
{
  +[UIWindow _synchronizeDrawing];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v3;
  v7[2] = *(a1 + 88);
  [v2 setTransform:v7];
  [*(a1 + 40) setHidden:1];
  v4 = *(a1 + 40);
  v5 = *(v4 + 560);
  *(v4 + 560) = 0;

  [*(a1 + 48) completeTransition:1];
  [*(a1 + 48) _setAnimator:0];
  return [*(a1 + 32) _setAnimationController:0];
}

uint64_t __95___UIWindowAnimationController__performLayoutAnimationWithContext_windowGeometryUpdatingBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 __runAlongsideAnimations];
}

uint64_t __95___UIWindowAnimationController__performLayoutAnimationWithContext_windowGeometryUpdatingBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  [*(a1 + 32) _setAnimator:0];
  v2 = *(a1 + 40);

  return [v2 _setAnimationController:0];
}

@end