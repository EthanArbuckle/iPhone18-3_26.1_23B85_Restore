@interface PKCompactNavigationContainerControllerPresentationAnimator
- (PKCompactNavigationContainerControllerPresentationAnimator)initWithPresenting:(BOOL)a3;
- (void)_updateWithTransitionContext:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation PKCompactNavigationContainerControllerPresentationAnimator

- (PKCompactNavigationContainerControllerPresentationAnimator)initWithPresenting:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKCompactNavigationContainerControllerPresentationAnimator;
  v4 = [(PKCompactNavigationContainerControllerPresentationAnimator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_presenting = a3;
    v6 = v4;
  }

  return v5;
}

- (void)_updateWithTransitionContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_transitionContext, a3);
  v6 = *MEMORY[0x1E69DE768];
  v7 = *MEMORY[0x1E69DE778];
  if (self->_presenting)
  {
    v8 = *MEMORY[0x1E69DE768];
  }

  else
  {
    v8 = *MEMORY[0x1E69DE778];
  }

  v9 = [v5 viewControllerForKey:v8];
  v10 = *MEMORY[0x1E69DE770];
  v11 = *MEMORY[0x1E69DE780];
  if (self->_presenting)
  {
    v12 = *MEMORY[0x1E69DE770];
  }

  else
  {
    v12 = *MEMORY[0x1E69DE780];
  }

  v13 = [v5 viewForKey:v12];
  objc_storeWeak(&self->_presentingVC, v9);
  objc_storeWeak(&self->_presentingView, v13);
  if (self->_presenting)
  {
    v14 = v7;
  }

  else
  {
    v14 = v6;
  }

  v15 = [v5 viewControllerForKey:v14];
  if (self->_presenting)
  {
    v16 = v11;
  }

  else
  {
    v16 = v10;
  }

  v17 = [v5 viewForKey:v16];
  objc_storeWeak(&self->_presentedVC, v15);
  objc_storeWeak(&self->_presentedView, v17);
  v18 = [(UIViewControllerContextTransitioning *)self->_transitionContext containerView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKCompactNavigationContainerControllerPresentationAnimator__updateWithTransitionContext___block_invoke;
  aBlock[3] = &unk_1E801FC60;
  v35 = v5;
  v19 = v5;
  v20 = _Block_copy(aBlock);
  v21 = MEMORY[0x1E69DD250];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __91__PKCompactNavigationContainerControllerPresentationAnimator__updateWithTransitionContext___block_invoke_2;
  v27[3] = &unk_1E801FC88;
  v28 = v13;
  v29 = v9;
  v30 = v17;
  v31 = v15;
  v32 = self;
  v33 = v20;
  v22 = v15;
  v23 = v17;
  v24 = v9;
  v25 = v20;
  v26 = v13;
  [v21 performWithoutAnimation:v27];
  [v18 addSubview:v26];
  [v18 addSubview:v23];
}

double __91__PKCompactNavigationContainerControllerPresentationAnimator__updateWithTransitionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) finalFrameForViewController:v5];
  x = v14.origin.x;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v16.origin.x = *MEMORY[0x1E695F058];
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  if (CGRectEqualToRect(v14, v16))
  {
    [*(a1 + 32) initialFrameForViewController:v5];
    x = v15.origin.x;
    v17.origin.x = v8;
    v17.origin.y = v9;
    v17.size.width = v10;
    v17.size.height = v11;
    if (CGRectEqualToRect(v15, v17))
    {
      [v6 frame];
      x = v12;
    }
  }

  return x;
}

uint64_t __91__PKCompactNavigationContainerControllerPresentationAnimator__updateWithTransitionContext___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 72) + 16))();
  [v2 setFrame:?];
  v3 = *(a1 + 48);
  (*(*(a1 + 72) + 16))();
  [v3 setFrame:?];
  [*(a1 + 56) setPresentingNavigationController:(*(*(a1 + 64) + 16) & 1) == 0];
  [*(a1 + 32) layoutIfNeeded];
  v4 = *(a1 + 48);

  return [v4 layoutIfNeeded];
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  [(PKCompactNavigationContainerControllerPresentationAnimator *)self _updateWithTransitionContext:v4];
  WeakRetained = objc_loadWeakRetained(&self->_presentedVC);
  v6 = objc_loadWeakRetained(&self->_presentedView);
  v7 = MEMORY[0x1E69DD250];
  v12 = v4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKCompactNavigationContainerControllerPresentationAnimator_animateTransition___block_invoke;
  v13[3] = &unk_1E8010A88;
  v14 = WeakRetained;
  v15 = self;
  v16 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PKCompactNavigationContainerControllerPresentationAnimator_animateTransition___block_invoke_2;
  v11[3] = &unk_1E8011D28;
  v8 = v4;
  v9 = v6;
  v10 = WeakRetained;
  [v7 _animateUsingDefaultTimingWithOptions:134 animations:v13 completion:v11];
}

uint64_t __80__PKCompactNavigationContainerControllerPresentationAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentingNavigationController:*(*(a1 + 40) + 16)];
  v2 = *(a1 + 48);

  return [v2 layoutIfNeeded];
}

@end