@interface SBHStackConfigurationFadeAnimator
- (SBHStackConfigurationFadeAnimator)init;
- (void)_configureForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator;
- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView;
- (void)_updateSourceSnapshotViewUsingSourceIconView:(BOOL)view withCoordinator:(id)coordinator;
- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion;
- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context;
@end

@implementation SBHStackConfigurationFadeAnimator

- (SBHStackConfigurationFadeAnimator)init
{
  v10.receiver = self;
  v10.super_class = SBHStackConfigurationFadeAnimator;
  v2 = [(SBHStackConfigurationFadeAnimator *)&v10 init];
  if (v2)
  {
    v3 = +[SBHHomeScreenDomain rootSettings];
    iconAnimationSettings = [v3 iconAnimationSettings];

    reducedMotionSettings = [iconAnimationSettings reducedMotionSettings];
    centralAnimationSettings = [reducedMotionSettings centralAnimationSettings];

    bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];
    animationSettings = v2->_animationSettings;
    v2->_animationSettings = bSAnimationSettings;
  }

  return v2;
}

- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  widgetStackMatchingBackgroundView = [userInfo widgetStackMatchingBackgroundView];
  [widgetStackMatchingBackgroundView setHidden:1];
  v8 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SBHStackConfigurationFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v10[3] = &unk_1E808A090;
  v11 = userInfo;
  endpointCopy = endpoint;
  v10[4] = self;
  v9 = userInfo;
  [v8 performWithoutAnimation:v10];
}

uint64_t __78__SBHStackConfigurationFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    [*(a1 + 32) _updateSourceSnapshotViewUsingSourceIconView:1 withCoordinator:*(a1 + 40)];
    v2 = *(a1 + 48);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _configureForEndpoint:v2 withCoordinator:v4];
}

- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  wantsAnimation = [contextCopy wantsAnimation];

  if (wantsAnimation)
  {
    if ([(SBHStackConfigurationFadeAnimator *)self isAlreadyAnimating])
    {
      v12 = (2 * (endpoint == 1)) | 4;
    }

    else
    {
      v12 = 2 * (endpoint == 1);
    }

    [(SBHStackConfigurationFadeAnimator *)self setAlreadyAnimating:1];
    if (endpoint != 1)
    {
      v13 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke;
      v26[3] = &unk_1E8088F18;
      v26[4] = self;
      v27 = userInfo;
      [v13 performWithoutAnimation:v26];
    }

    v14 = MEMORY[0x1E698E7D0];
    animationSettings = [(SBHStackConfigurationFadeAnimator *)self animationSettings];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
    v24[3] = &unk_1E808A090;
    v25[0] = userInfo;
    v25[1] = endpoint;
    v16 = v25;
    v24[4] = self;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
    v22[3] = &unk_1E808A0B8;
    v23 = completionCopy;
    v17 = userInfo;
    [v14 animateWithSettings:animationSettings options:v12 actions:v24 completion:v22];
  }

  else
  {
    v18 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_4;
    v20[3] = &unk_1E808A090;
    v21[0] = userInfo;
    v21[1] = endpoint;
    v16 = v21;
    v20[4] = self;
    v19 = userInfo;
    [v18 performWithoutAnimation:v20];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSourceSnapshotViewUsingSourceIconView:0 withCoordinator:*(a1 + 40)];
  v2 = [*(a1 + 32) sourceSnapshotView];
  if (v2)
  {
    v5 = v2;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sourceIconView];
    [v3 _setupMatchMoveAnimationWithSourceView:v4 targetView:v5];

    v2 = v5;
  }
}

uint64_t __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  [(SBHStackConfigurationFadeAnimator *)self setAlreadyAnimating:0];
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__SBHStackConfigurationFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = userInfo;
  endpointCopy = endpoint;
  v9[4] = self;
  v8 = userInfo;
  [v7 performWithoutAnimation:v9];
}

uint64_t __77__SBHStackConfigurationFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureForEndpoint:*(a1 + 48) withCoordinator:*(a1 + 40)];
  v2 = [*(a1 + 32) sourceSnapshotView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setSourceSnapshotView:0];
}

- (void)_configureForEndpoint:(int64_t)endpoint withCoordinator:(id)coordinator
{
  v37 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v7 = coordinatorCopy;
  if (endpoint == 1)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  fadingViews = [coordinatorCopy fadingViews];
  widgetContentContainerView = [v7 widgetContentContainerView];
  v11 = [fadingViews setByAddingObject:widgetContentContainerView];

  materialViews = [v7 materialViews];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [materialViews countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(materialViews);
        }

        [*(*(&v31 + 1) + 8 * i) setWeighting:v8];
      }

      v14 = [materialViews countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v27 + 1) + 8 * j) setAlpha:{v8, v27}];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  if (endpoint == 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.0;
  }

  sourceIconView = [v7 sourceIconView];
  customIconImageViewController = [sourceIconView customIconImageViewController];
  view = [customIconImageViewController view];

  [view setAlpha:v22];
  sourceSnapshotView = [(SBHStackConfigurationFadeAnimator *)self sourceSnapshotView];
  [sourceSnapshotView setAlpha:v22];
}

- (void)_updateSourceSnapshotViewUsingSourceIconView:(BOOL)view withCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  sourceSnapshotView = [(SBHStackConfigurationFadeAnimator *)self sourceSnapshotView];
  v7 = sourceSnapshotView;
  if (sourceSnapshotView)
  {
    [sourceSnapshotView removeFromSuperview];
    layer = [v7 layer];
    presentationLayer = [layer presentationLayer];
    v10 = presentationLayer;
    if (presentationLayer)
    {
      layer2 = presentationLayer;
    }

    else
    {
      layer2 = [v7 layer];
    }

    v13 = layer2;

    [v13 opacity];
    v12 = v14;
  }

  else
  {
    v12 = 0.0;
  }

  sourceIconView = [coordinatorCopy sourceIconView];
  v16 = sourceIconView;
  if (viewCopy)
  {
    [sourceIconView iconImageSnapshotView];
  }

  else
  {
    [coordinatorCopy visiblyActiveDataSourceSnapshotView];
  }
  v17 = ;
  [(SBHStackConfigurationFadeAnimator *)self setSourceSnapshotView:v17];
  if (v17)
  {
    configurationView = [coordinatorCopy configurationView];
    [v16 iconImageFrame];
    [v16 convertRect:configurationView toView:?];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [configurationView insertSubview:v17 atIndex:0];
    [v17 setFrame:{v20, v22, v24, v26}];
    [v17 setAlpha:v12];
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

  [layer2 addAnimation:animation forKey:0];
}

@end