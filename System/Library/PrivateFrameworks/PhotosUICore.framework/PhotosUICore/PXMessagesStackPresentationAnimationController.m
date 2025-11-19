@interface PXMessagesStackPresentationAnimationController
- (PXMessagesStackPresentationAnimationController)initWithStackView:(id)a3;
- (id)_bestAssetReferenceForStack:(uint64_t)a1;
- (void)_animateCrossfadeFallback:(void *)a3 gridViewController:;
- (void)animateTransition:(id)a3;
@end

@implementation PXMessagesStackPresentationAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    PXAssertGetLog();
  }

  v6 = [v5 topViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v4 containerView];
  [v4 finalFrameForViewController:v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v5 view];
  [v7 addSubview:v16];

  v17 = [v5 view];
  [v17 setFrame:{v9, v11, v13, v15}];

  v18 = [v6 view];
  [v18 setAlpha:0.0];

  v19 = [v5 view];
  [v19 layoutIfNeeded];

  v20 = [(PXMessagesStackPresentationAnimationController *)self stackView];
  v21 = [(PXMessagesStackPresentationAnimationController *)self _bestAssetReferenceForStack:v20];
  objc_initWeak(location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__PXMessagesStackPresentationAnimationController_animateTransition___block_invoke;
  v24[3] = &unk_1E774B5E0;
  objc_copyWeak(&v28, location);
  v25 = v4;
  v22 = v6;
  v26 = v22;
  v23 = v21;
  v27 = v23;
  [v22 scrollToCenterAssetReference:v23 completion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(location);
}

- (void)_animateCrossfadeFallback:(void *)a3 gridViewController:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 viewControllerForKey:*MEMORY[0x1E69DE778]];
    v8 = [v5 containerView];
    [v5 finalFrameForViewController:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v7 view];
    [v8 addSubview:v17];

    v18 = [v7 view];
    [v18 setFrame:{v10, v12, v14, v16}];

    v19 = [v7 view];
    [v19 setAlpha:0.0];

    v20 = *(a1 + 24);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__PXMessagesStackPresentationAnimationController__animateCrossfadeFallback_gridViewController___block_invoke;
    v26[3] = &unk_1E774C648;
    v27 = v7;
    v21 = v7;
    [v20 addAnimations:v26];
    v22 = *(a1 + 24);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__PXMessagesStackPresentationAnimationController__animateCrossfadeFallback_gridViewController___block_invoke_2;
    v23[3] = &unk_1E774B608;
    v24 = v5;
    v25 = v6;
    [v22 addCompletion:v23];
    [*(a1 + 24) startAnimation];
  }
}

- (id)_bestAssetReferenceForStack:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 currentAssetReference];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
LABEL_17:

      goto LABEL_18;
    }

    v8 = [v4 currentIndex];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v9 = v8;
    v10 = [v4 dataSourceManager];
    v11 = [v10 dataSource];

    if ([v11 numberOfSections] >= 1)
    {
      v12 = [v4 dataSourceManager];
      v13 = [v12 dataSource];
      v14 = [v13 numberOfItemsInSection:0];

      if (v9 >= v14 && v14 >= 1)
      {
        v17 = 0u;
        v18 = 0u;
        if (v11)
        {
          [v11 lastItemIndexPath];
        }

LABEL_14:
        v16[0] = v17;
        v16[1] = v18;
        v7 = [v11 assetReferenceAtItemIndexPath:v16];
LABEL_16:

        goto LABEL_17;
      }

      if (v14 >= 1)
      {
        v17 = 0u;
        v18 = 0u;
        if (v11)
        {
          [v11 firstItemIndexPath];
        }

        goto LABEL_14;
      }
    }

    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_18:

  return v7;
}

void __68__PXMessagesStackPresentationAnimationController_animateTransition___block_invoke(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v3;
    if (!WeakRetained)
    {
LABEL_19:

      return;
    }

    v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
    v7 = [v6 topViewController];
    v8 = [WeakRetained stackView];
    v9 = v5;
    v10 = [(PXMessagesStackPresentationAnimationController *)WeakRetained _bestAssetReferenceForStack:v8];
    if (v10)
    {
      v11 = v10;
      v12 = [v8 dataSourceManager];
      v13 = [v12 dataSource];

      LOBYTE(v12) = [(PXPhotosGridStackTransitionHelper *)*(WeakRetained + 2) prepareForTransitionFromEndpoint:v8 toEndpoint:v9 withPrimaryAssetReference:v11 dataSource:v13];
      if (v12)
      {
        v14 = *(WeakRetained + 2);
        v15 = [v6 view];
        v16 = [v7 view];
        v17 = [(PXPhotosGridStackTransitionHelper *)v14 setInitialTransitionStateInContainerView:v15 aboveView:v16];

        v18 = [v9 hiddenAssetReferences];
        v35 = v17;
        if ([v18 count])
        {
          v19 = [v17 setByAddingObjectsFromSet:v18];
        }

        else
        {
          v19 = v17;
        }

        v34 = v19;
        [v9 setHiddenAssetReferences:v19];
        v33 = [v8 isHidden];
        [v8 setHidden:1];
        v27 = *(WeakRetained + 2);
        v28 = *(WeakRetained + 3);
        v29 = [v6 view];
        [(PXPhotosGridStackTransitionHelper *)v27 addTransitionAnimationsToAnimator:v28 inContainerView:v29];

        v30 = *(WeakRetained + 3);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __88__PXMessagesStackPresentationAnimationController__animateTransition_gridViewController___block_invoke;
        v37[3] = &unk_1E774C648;
        v38 = v7;
        [v30 addAnimations:v37];
        [(PXPhotosGridStackTransitionHelper *)*(WeakRetained + 2) addTransitionCompletionsToAnimator:?];
        v31 = *(WeakRetained + 3);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v40 = __88__PXMessagesStackPresentationAnimationController__animateTransition_gridViewController___block_invoke_2;
        v41 = &unk_1E774B630;
        v42 = v9;
        v43 = v18;
        v44 = v8;
        v46 = v33;
        v45 = v4;
        v32 = v18;
        [v31 addCompletion:&buf];
        [*(WeakRetained + 3) startAnimation];

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
      v24 = PLUIGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, "The stack doesn't have a current asset for transitioning", &buf, 2u);
      }
    }

    v25 = PLUIGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_ERROR, "Failed to prepare for stack transition. Falling back to cross fade", &buf, 2u);
    }

    v26 = [v7 view];
    [v26 setAlpha:1.0];

    [(PXMessagesStackPresentationAnimationController *)WeakRetained _animateCrossfadeFallback:v4 gridViewController:v9];
    goto LABEL_18;
  }

  v20 = PLUIGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a1 + 48);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v21;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Cross fading due to failure to scroll to asset reference for transition: %@", &buf, 0xCu);
  }

  v22 = [*(a1 + 40) view];
  [v22 setAlpha:1.0];

  v23 = objc_loadWeakRetained((a1 + 56));
  [(PXMessagesStackPresentationAnimationController *)v23 _animateCrossfadeFallback:*(a1 + 40) gridViewController:?];
}

void __88__PXMessagesStackPresentationAnimationController__animateTransition_gridViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t __88__PXMessagesStackPresentationAnimationController__animateTransition_gridViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHiddenAssetReferences:*(a1 + 40) animationType:2];
  [*(a1 + 48) setHidden:*(a1 + 64)];
  [*(a1 + 56) completeTransition:{objc_msgSend(*(a1 + 56), "transitionWasCancelled") ^ 1}];
  v2 = *(a1 + 32);

  return [v2 ensureSwipeDismissalInteraction];
}

void __95__PXMessagesStackPresentationAnimationController__animateCrossfadeFallback_gridViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t __95__PXMessagesStackPresentationAnimationController__animateCrossfadeFallback_gridViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v2 = *(a1 + 40);

  return [v2 ensureSwipeDismissalInteraction];
}

- (PXMessagesStackPresentationAnimationController)initWithStackView:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PXMessagesStackPresentationAnimationController;
  v6 = [(PXMessagesStackPresentationAnimationController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stackView, a3);
    v8 = +[PXMessagesUISettings sharedInstance];
    [v8 transitionDuration];
    v7->_transitionDuration = v9;
    [v8 transitionSpringDamping];
    v11 = v10;
    [v8 transitionSpringVelocity];
    v13 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:v11 initialVelocity:{v12, v12}];
    v14 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:v7->_transitionDuration];
    propertyAnimator = v7->_propertyAnimator;
    v7->_propertyAnimator = v14;

    v16 = -[PXPhotosGridStackTransitionHelper initWithStackItemsCount:]([PXPhotosGridStackTransitionHelper alloc], [v8 transitionItemsCount]);
    transitionHelper = v7->_transitionHelper;
    v7->_transitionHelper = v16;
  }

  return v7;
}

@end