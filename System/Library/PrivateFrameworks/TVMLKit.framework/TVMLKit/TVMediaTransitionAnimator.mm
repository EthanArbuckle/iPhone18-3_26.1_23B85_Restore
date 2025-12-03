@interface TVMediaTransitionAnimator
- (void)animateTransition:(id)transition;
- (void)migratesMediaControllerFromHost:(id)host toHost:(id)toHost;
@end

@implementation TVMediaTransitionAnimator

- (void)migratesMediaControllerFromHost:(id)host toHost:(id)toHost
{
  toHostCopy = toHost;
  [(TVMediaTransitionAnimator *)self setFromHost:host];
  [(TVMediaTransitionAnimator *)self setToHost:toHostCopy];

  self->_migrates = 1;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  view = [v6 view];
  [containerView bounds];
  [view setFrame:?];
  [view setAlpha:0.0];
  layer = [view layer];
  [layer setShouldRasterize:1];

  layer2 = [view layer];
  [layer2 setRasterizationScale:1.0];

  view2 = [v7 view];
  [containerView insertSubview:view belowSubview:view2];
  layer3 = [view2 layer];
  [layer3 setShouldRasterize:1];

  layer4 = [view2 layer];
  [layer4 setRasterizationScale:1.0];

  if (self->_migrates)
  {
    fromHost = [(TVMediaTransitionAnimator *)self fromHost];
    relinquishOwnership = [fromHost relinquishOwnership];

    view3 = [relinquishOwnership view];
    [containerView insertSubview:view3 atIndex:0];

    toHost = [(TVMediaTransitionAnimator *)self toHost];
    [toHost adoptMediaController:relinquishOwnership];
  }

  else
  {
    relinquishOwnership = 0;
  }

  v18 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__TVMediaTransitionAnimator_animateTransition___block_invoke;
  v28[3] = &unk_279D6E2F8;
  v29 = view;
  v30 = view2;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__TVMediaTransitionAnimator_animateTransition___block_invoke_2;
  v23[3] = &unk_279D6E320;
  v24 = v30;
  v25 = v29;
  v26 = relinquishOwnership;
  v27 = transitionCopy;
  v19 = transitionCopy;
  v20 = relinquishOwnership;
  v21 = v29;
  v22 = v30;
  [v18 animateWithDuration:v28 animations:v23 completion:0.5];
}

uint64_t __47__TVMediaTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __47__TVMediaTransitionAnimator_animateTransition___block_invoke_2(id *a1)
{
  v2 = a1[4];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v3;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v8];
  [a1[4] setAlpha:1.0];
  [a1[4] removeFromSuperview];
  v4 = [a1[4] layer];
  [v4 setShouldRasterize:0];

  v5 = [a1[5] layer];
  [v5 setShouldRasterize:0];

  v6 = [a1[6] view];
  [v6 removeFromSuperview];

  return [a1[7] completeTransition:1];
}

@end