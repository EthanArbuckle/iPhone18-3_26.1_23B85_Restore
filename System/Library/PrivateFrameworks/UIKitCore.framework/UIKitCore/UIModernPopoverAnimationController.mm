@interface UIModernPopoverAnimationController
@end

@implementation UIModernPopoverAnimationController

uint64_t __57___UIModernPopoverAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

uint64_t __57___UIModernPopoverAnimationController_animateTransition___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    memset(&v7, 0, sizeof(v7));
    if ([*(a1 + 32) isPresenting])
    {
      v2 = *(MEMORY[0x1E695EFD0] + 16);
      *&v7.a = *MEMORY[0x1E695EFD0];
      *&v7.c = v2;
      *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v7, 0.01, 0.01);
    }

    [*(a1 + 32) isPresenting];
    v3 = *(a1 + 64);
    if ([*(a1 + 32) isPresenting])
    {
      v4 = *(a1 + 72);
    }

    else
    {
      v4 = 100.0;
    }

    [*(a1 + 40) setBounds:{0.0, 0.0, v3, v4}];
    v6 = v7;
    [*(a1 + 40) setTransform:&v6];
    [*(a1 + 40) setAnimationOvershootHeight:0.0];
    [*(a1 + 40) setContentSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  }

  [*(a1 + 40) setChromeHidden:{objc_msgSend(*(a1 + 32), "isPresenting") ^ 1}];
  return [*(a1 + 40) layoutIfNeeded];
}

uint64_t __57___UIModernPopoverAnimationController_animateTransition___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) _frameIgnoringLayerTransform];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*(a1 + 32) setAnchorPoint:{0.5, 0.5}];
    if ([*(a1 + 40) isPresenting])
    {
      [*(a1 + 32) _setFrameIgnoringLayerTransform:{v3, v5, v7, v9}];
      [*(a1 + 32) layoutIfNeeded];
    }
  }

  v10 = *(a1 + 48);
  v11 = [v10 transitionWasCancelled] ^ 1;

  return [v10 completeTransition:v11];
}

@end