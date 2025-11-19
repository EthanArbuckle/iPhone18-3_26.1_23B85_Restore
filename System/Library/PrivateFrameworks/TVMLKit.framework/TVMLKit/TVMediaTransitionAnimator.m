@interface TVMediaTransitionAnimator
- (void)animateTransition:(id)a3;
- (void)migratesMediaControllerFromHost:(id)a3 toHost:(id)a4;
@end

@implementation TVMediaTransitionAnimator

- (void)migratesMediaControllerFromHost:(id)a3 toHost:(id)a4
{
  v6 = a4;
  [(TVMediaTransitionAnimator *)self setFromHost:a3];
  [(TVMediaTransitionAnimator *)self setToHost:v6];

  self->_migrates = 1;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v8 = [v6 view];
  [v5 bounds];
  [v8 setFrame:?];
  [v8 setAlpha:0.0];
  v9 = [v8 layer];
  [v9 setShouldRasterize:1];

  v10 = [v8 layer];
  [v10 setRasterizationScale:1.0];

  v11 = [v7 view];
  [v5 insertSubview:v8 belowSubview:v11];
  v12 = [v11 layer];
  [v12 setShouldRasterize:1];

  v13 = [v11 layer];
  [v13 setRasterizationScale:1.0];

  if (self->_migrates)
  {
    v14 = [(TVMediaTransitionAnimator *)self fromHost];
    v15 = [v14 relinquishOwnership];

    v16 = [v15 view];
    [v5 insertSubview:v16 atIndex:0];

    v17 = [(TVMediaTransitionAnimator *)self toHost];
    [v17 adoptMediaController:v15];
  }

  else
  {
    v15 = 0;
  }

  v18 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__TVMediaTransitionAnimator_animateTransition___block_invoke;
  v28[3] = &unk_279D6E2F8;
  v29 = v8;
  v30 = v11;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__TVMediaTransitionAnimator_animateTransition___block_invoke_2;
  v23[3] = &unk_279D6E320;
  v24 = v30;
  v25 = v29;
  v26 = v15;
  v27 = v4;
  v19 = v4;
  v20 = v15;
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