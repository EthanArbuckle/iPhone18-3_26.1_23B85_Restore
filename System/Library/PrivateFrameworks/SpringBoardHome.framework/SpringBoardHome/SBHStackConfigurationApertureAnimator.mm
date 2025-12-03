@interface SBHStackConfigurationApertureAnimator
- (BOOL)_shouldUseCenterZoomTransitionForCoordinator:(id)coordinator;
- (SBHStackConfigurationApertureAnimator)init;
- (void)_configureApertureBackgroundViewsForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator;
- (void)_configureForEndpoint:(int64_t)endpoint scroll:(BOOL)scroll withCoordinator:(id)coordinator;
- (void)_configureInnerWidgetBackgroundViewsForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator;
- (void)_configureWidgetStackMatchingBackgroundViewForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator;
- (void)_removeMatchMoveAnimationFromTargetView:(id)view;
- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView;
- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion;
- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context;
@end

@implementation SBHStackConfigurationApertureAnimator

- (SBHStackConfigurationApertureAnimator)init
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationApertureAnimator;
  v2 = [(SBHStackConfigurationApertureAnimator *)&v7 init];
  if (v2)
  {
    v3 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v3 widgetSettings];
    widgetSettings = v2->_widgetSettings;
    v2->_widgetSettings = widgetSettings;
  }

  return v2;
}

- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  sourceIconView = [userInfo sourceIconView];
  v8 = sourceIconView;
  if (!endpoint)
  {
    customIconImageViewController = [sourceIconView customIconImageViewController];
    view = [customIconImageViewController view];

    [view setHidden:1];
  }

  v11 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__SBHStackConfigurationApertureAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v14[3] = &unk_1E808BF50;
  v15 = v8;
  v16 = userInfo;
  selfCopy = self;
  endpointCopy = endpoint;
  v19 = endpoint == 0;
  v12 = userInfo;
  v13 = v8;
  [v11 performWithoutAnimation:v14];
}

void __82__SBHStackConfigurationApertureAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) customIconImageViewController];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 backgroundView];

  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = v10;

  v11 = [*(a1 + 40) widgetStackMatchingBackgroundView];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v19)
  {
    if (v15)
    {
      v16 = [v15 recipe];
      if (v16 != [v19 recipe])
      {
        [v15 setRecipe:{objc_msgSend(v19, "recipe")}];
        [v15 layoutIfNeeded];
      }
    }
  }

  [*(a1 + 48) _configureForEndpoint:*(a1 + 56) scroll:*(a1 + 64) withCoordinator:*(a1 + 40)];
  [*(a1 + 48) _configureApertureBackgroundViewsForEndpoint:*(a1 + 56) withCoordinator:*(a1 + 40)];
  [*(a1 + 48) _configureWidgetStackMatchingBackgroundViewForEndpoint:*(a1 + 56) withCoordinator:*(a1 + 40)];
  v17 = *(a1 + 48);
  v18 = [*(a1 + 40) widgetBackgroundViews];
  [v17 setInnerWidgetBackgroundViews:v18];

  [*(a1 + 48) _configureInnerWidgetBackgroundViewsForEndpoint:*(a1 + 56) withCoordinator:*(a1 + 40)];
}

- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  wantsAnimation = [contextCopy wantsAnimation];

  if (wantsAnimation)
  {
    if ([(SBHStackConfigurationApertureAnimator *)self isAlreadyAnimating])
    {
      v12 = (2 * (endpoint == 1)) | 4;
    }

    else
    {
      v12 = 2 * (endpoint == 1);
    }

    [(SBHStackConfigurationApertureAnimator *)self setAlreadyAnimating:1];
    if (endpoint == 1)
    {
      v13 = 0.3;
    }

    else
    {
      sourceIconView = [userInfo sourceIconView];
      widgetContentContainerView = [userInfo widgetContentContainerView];
      [(SBHStackConfigurationApertureAnimator *)self _setupMatchMoveAnimationWithSourceView:sourceIconView targetView:widgetContentContainerView];

      v13 = 0.8;
    }

    widgetSettings = [(SBHStackConfigurationApertureAnimator *)self widgetSettings];
    [widgetSettings stackConfigurationZoomTransitionDuration];
    v21 = v20;

    v22 = MEMORY[0x1E69DD250];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v35[3] = &unk_1E808A090;
    v35[4] = self;
    v36[1] = endpoint;
    v15 = v36;
    v23 = userInfo;
    v36[0] = v23;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
    v33[3] = &unk_1E808A0B8;
    v34 = completionCopy;
    [v22 animateWithDuration:v12 delay:v35 usingSpringWithDamping:v33 initialSpringVelocity:v21 options:0.0 animations:1.0 completion:0.0];
    v24 = v13 * v21;
    v25 = MEMORY[0x1E69DD250];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_4;
    v30[3] = &unk_1E808A090;
    if (endpoint == 1)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v21 - v24;
    }

    v31 = v23;
    endpointCopy = endpoint;
    v30[4] = self;
    v27 = v23;
    [v25 animateWithDuration:v12 delay:v30 usingSpringWithDamping:0 initialSpringVelocity:v24 options:v26 animations:1.0 completion:0.0];
  }

  else
  {
    v14 = MEMORY[0x1E69DD250];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_6;
    v28[3] = &unk_1E808A090;
    v29[0] = userInfo;
    v29[1] = endpoint;
    v15 = v29;
    v28[4] = self;
    v16 = userInfo;
    [v14 performWithoutAnimation:v28];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke(void *a1)
{
  v2 = MEMORY[0x1E69DD250];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v14.minimum;
  maximum = v14.maximum;
  preferred = v14.preferred;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
  v11[3] = &unk_1E808A090;
  v7 = a1[5];
  v6 = a1[6];
  v11[4] = a1[4];
  v13 = v6;
  v12 = v7;
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114134 updateReason:v11 animations:{v8, v9, v10}];
}

uint64_t __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureForEndpoint:*(a1 + 48) scroll:1 withCoordinator:*(a1 + 40)];
  [*(a1 + 32) _configureWidgetStackMatchingBackgroundViewForEndpoint:*(a1 + 48) withCoordinator:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _configureInnerWidgetBackgroundViewsForEndpoint:v2 withCoordinator:v3];
}

uint64_t __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_4(void *a1)
{
  v2 = MEMORY[0x1E69DD250];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v14.minimum;
  maximum = v14.maximum;
  preferred = v14.preferred;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_5;
  v11[3] = &unk_1E808A090;
  v7 = a1[5];
  v6 = a1[6];
  v11[4] = a1[4];
  v13 = v6;
  v12 = v7;
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114134 updateReason:v11 animations:{v8, v9, v10}];
}

uint64_t __82__SBHStackConfigurationApertureAnimator_animateToEndpoint_withContext_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _configureForEndpoint:*(a1 + 48) scroll:1 withCoordinator:*(a1 + 40)];
  [*(a1 + 32) _configureApertureBackgroundViewsForEndpoint:*(a1 + 48) withCoordinator:*(a1 + 40)];
  [*(a1 + 32) _configureWidgetStackMatchingBackgroundViewForEndpoint:*(a1 + 48) withCoordinator:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _configureInnerWidgetBackgroundViewsForEndpoint:v2 withCoordinator:v3];
}

- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  [(SBHStackConfigurationApertureAnimator *)self setAlreadyAnimating:0];
  sourceIconView = [userInfo sourceIconView];
  v8 = sourceIconView;
  if (!endpoint)
  {
    customIconImageViewController = [sourceIconView customIconImageViewController];
    view = [customIconImageViewController view];

    [view setHidden:0];
    [view setAlpha:1.0];
  }

  v11 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__SBHStackConfigurationApertureAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v13[3] = &unk_1E808A090;
  v14 = userInfo;
  endpointCopy = endpoint;
  v13[4] = self;
  v12 = userInfo;
  [v11 performWithoutAnimation:v13];
  [(SBHStackConfigurationApertureAnimator *)self setInnerWidgetBackgroundViews:0];
}

uint64_t __81__SBHStackConfigurationApertureAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureForEndpoint:*(a1 + 48) scroll:0 withCoordinator:*(a1 + 40)];
  [*(a1 + 32) _configureApertureBackgroundViewsForEndpoint:*(a1 + 48) withCoordinator:*(a1 + 40)];
  [*(a1 + 32) _configureWidgetStackMatchingBackgroundViewForEndpoint:*(a1 + 48) withCoordinator:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _configureInnerWidgetBackgroundViewsForEndpoint:v2 withCoordinator:v3];
}

- (void)_configureForEndpoint:(int64_t)endpoint scroll:(BOOL)scroll withCoordinator:(id)coordinator
{
  scrollCopy = scroll;
  v86 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v9 = coordinatorCopy;
  if (endpoint == 1)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  sourceIconView = [coordinatorCopy sourceIconView];
  materialViews = [v9 materialViews];
  fadingViews = [v9 fadingViews];
  v14 = [(SBHStackConfigurationApertureAnimator *)self _shouldUseCenterZoomTransitionForCoordinator:v9];
  widgetContentContainerView = [v9 widgetContentContainerView];
  [widgetContentContainerView layer];
  v71 = v70 = sourceIconView;
  customIconImageViewController = [sourceIconView customIconImageViewController];
  v17 = objc_opt_class();
  v18 = customIconImageViewController;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v69 = v20;
  if (endpoint == 1)
  {
    v21 = 1.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 1.0;
    v27 = 0;
    v28 = 0.0;
    v29 = 1;
    if (v14)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  backgroundView = [v20 backgroundView];
  v31 = backgroundView;
  v68 = materialViews;
  if (backgroundView)
  {
    view = backgroundView;
  }

  else
  {
    view = [v20 view];
  }

  v33 = view;

  layer = [v33 layer];
  [layer bounds];
  [layer convertRect:v71 toLayer:?];
  v36 = v35;
  v38 = v37;
  v22 = v39;
  v23 = v40;
  pageControl = [v20 pageControl];
  layer2 = [pageControl layer];
  [layer2 bounds];
  [layer2 convertRect:v71 toLayer:?];
  MidX = CGRectGetMidX(v87);
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v45 = v36;
  v46 = v38;
  v47 = v22;
  v48 = v23;
  if (userInterfaceLayoutDirection == 1)
  {
    MinX = CGRectGetMinX(*&v45);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v45);
  }

  v50 = MinX;
  memset(&v81, 0, sizeof(v81));
  if (pageControl)
  {
    [pageControl transform];
  }

  v28 = vabdd_f64(MidX, v50);
  UIRectGetCenter();
  v24 = v51;
  v25 = v52;
  v26 = sqrt(v81.a * v81.a + v81.c * v81.c);
  [pageControl alpha];
  v27 = v53;

  v21 = 1.0;
  v29 = 2;
  materialViews = v68;
  if (!v14)
  {
LABEL_21:
    v81.a = v21;
    v81.b = v22;
    v81.c = v23;
    v81.d = v24;
    v81.tx = v25;
    v81.ty = v26;
    v82 = v27;
    v83 = v28;
    [v9 configureWithStackLayoutMetrics:&v81];
    if (scrollCopy)
    {
      [v9 setScrollPosition:v29];
    }
  }

LABEL_23:
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v54 = materialViews;
  v55 = [v54 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v78;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v78 != v57)
        {
          objc_enumerationMutation(v54);
        }

        [*(*(&v77 + 1) + 8 * i) setWeighting:v10];
      }

      v56 = [v54 countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v56);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v59 = fadingViews;
  v60 = [v59 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v74;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v74 != v62)
        {
          objc_enumerationMutation(v59);
        }

        [*(*(&v73 + 1) + 8 * j) setAlpha:v10];
      }

      v61 = [v59 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v61);
  }

  if (v14)
  {
    memset(&v81, 0, sizeof(v81));
    v64 = v69;
    if (endpoint == 1)
    {
      v65 = *(MEMORY[0x1E695EFD0] + 16);
      *&v81.a = *MEMORY[0x1E695EFD0];
      *&v81.c = v65;
      *&v81.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v81, 0.01, 0.01);
    }

    v67 = v70;
    v72 = v81;
    [widgetContentContainerView setTransform:&v72];
    [widgetContentContainerView setAlpha:v10];
  }

  else
  {
    configurationView = [v9 configurationView];
    [configurationView layoutIfNeeded];

    v64 = v69;
    v67 = v70;
  }
}

- (void)_configureApertureBackgroundViewsForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator
{
  v18 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if (![(SBHStackConfigurationApertureAnimator *)self _shouldUseCenterZoomTransitionForCoordinator:coordinatorCopy])
  {
    if (endpoint == 1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    apertureBackgroundViews = [coordinatorCopy apertureBackgroundViews];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [apertureBackgroundViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(apertureBackgroundViews);
          }

          [*(*(&v13 + 1) + 8 * i) setAlpha:v7];
        }

        v10 = [apertureBackgroundViews countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_configureWidgetStackMatchingBackgroundViewForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (![(SBHStackConfigurationApertureAnimator *)self _shouldUseCenterZoomTransitionForCoordinator:?])
  {
    if (endpoint == 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    widgetStackMatchingBackgroundView = [coordinatorCopy widgetStackMatchingBackgroundView];
    [widgetStackMatchingBackgroundView setAlpha:v6];
  }
}

- (void)_configureInnerWidgetBackgroundViewsForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator
{
  v29 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if (![(SBHStackConfigurationApertureAnimator *)self _shouldUseCenterZoomTransitionForCoordinator:coordinatorCopy])
  {
    if (endpoint == 1)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      sourceIconView = [coordinatorCopy sourceIconView];
      customIconImageViewController = [sourceIconView customIconImageViewController];
      v10 = objc_opt_class();
      v11 = customIconImageViewController;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      clearColor = [v13 backgroundTintingColor];
    }

    innerWidgetBackgroundViews = [(SBHStackConfigurationApertureAnimator *)self innerWidgetBackgroundViews];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [innerWidgetBackgroundViews countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      if (endpoint == 1)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(innerWidgetBackgroundViews);
          }

          v20 = *(*(&v24 + 1) + 8 * v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
            underlyingBackgroundView = [v21 underlyingBackgroundView];
            [underlyingBackgroundView setBackgroundColor:clearColor];

            widgetBackgroundView = [v21 widgetBackgroundView];

            [widgetBackgroundView setAlpha:v18];
          }

          ++v19;
        }

        while (v16 != v19);
        v16 = [innerWidgetBackgroundViews countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }
  }
}

- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69793B8];
  targetViewCopy = targetView;
  viewCopy = view;
  animation = [v5 animation];
  layer = [viewCopy layer];
  [animation setSourceLayer:layer];

  [animation setFillMode:*MEMORY[0x1E69797E0]];
  [animation setRemovedOnCompletion:0];
  [animation setDuration:INFINITY];
  [animation setAppliesY:1];
  [animation setAppliesX:1];
  [targetViewCopy bounds];
  v11 = v10;
  v13 = v12;
  [viewCopy bounds];
  [viewCopy convertRect:targetViewCopy toView:?];
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{v11 * 0.5 - v15, v13 * 0.5 - v17}];
  v21[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [animation setSourcePoints:v19];

  layer2 = [targetViewCopy layer];

  [layer2 addAnimation:animation forKey:@"SBHStackConfigurationIconMatchMoveKey"];
}

- (void)_removeMatchMoveAnimationFromTargetView:(id)view
{
  layer = [view layer];
  [layer removeAnimationForKey:@"SBHStackConfigurationIconMatchMoveKey"];
}

- (BOOL)_shouldUseCenterZoomTransitionForCoordinator:(id)coordinator
{
  sourceIconView = [coordinator sourceIconView];
  icon = [sourceIconView icon];
  v5 = [icon iconDataSourceCount] == 0;

  return v5;
}

@end