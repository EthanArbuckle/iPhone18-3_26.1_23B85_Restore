@interface SBHStackConfigurationFadeAnimator
- (SBHStackConfigurationFadeAnimator)init;
- (void)_configureForEndpoint:(int64_t)a3 withCoordinator:(id)a4;
- (void)_setupMatchMoveAnimationWithSourceView:(id)a3 targetView:(id)a4;
- (void)_updateSourceSnapshotViewUsingSourceIconView:(BOOL)a3 withCoordinator:(id)a4;
- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5;
- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4;
- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4;
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
    v4 = [v3 iconAnimationSettings];

    v5 = [v4 reducedMotionSettings];
    v6 = [v5 centralAnimationSettings];

    v7 = [v6 BSAnimationSettings];
    animationSettings = v2->_animationSettings;
    v2->_animationSettings = v7;
  }

  return v2;
}

- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4
{
  v6 = [a4 userInfo];
  v7 = [v6 widgetStackMatchingBackgroundView];
  [v7 setHidden:1];
  v8 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SBHStackConfigurationFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v10[3] = &unk_1E808A090;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v9 = v6;
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

- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 userInfo];
  v11 = [v9 wantsAnimation];

  if (v11)
  {
    if ([(SBHStackConfigurationFadeAnimator *)self isAlreadyAnimating])
    {
      v12 = (2 * (a3 == 1)) | 4;
    }

    else
    {
      v12 = 2 * (a3 == 1);
    }

    [(SBHStackConfigurationFadeAnimator *)self setAlreadyAnimating:1];
    if (a3 != 1)
    {
      v13 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke;
      v26[3] = &unk_1E8088F18;
      v26[4] = self;
      v27 = v10;
      [v13 performWithoutAnimation:v26];
    }

    v14 = MEMORY[0x1E698E7D0];
    v15 = [(SBHStackConfigurationFadeAnimator *)self animationSettings];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
    v24[3] = &unk_1E808A090;
    v25[0] = v10;
    v25[1] = a3;
    v16 = v25;
    v24[4] = self;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
    v22[3] = &unk_1E808A0B8;
    v23 = v8;
    v17 = v10;
    [v14 animateWithSettings:v15 options:v12 actions:v24 completion:v22];
  }

  else
  {
    v18 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__SBHStackConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_4;
    v20[3] = &unk_1E808A090;
    v21[0] = v10;
    v21[1] = a3;
    v16 = v21;
    v20[4] = self;
    v19 = v10;
    [v18 performWithoutAnimation:v20];
    if (v8)
    {
      v8[2](v8);
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

- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4
{
  v6 = [a4 userInfo];
  [(SBHStackConfigurationFadeAnimator *)self setAlreadyAnimating:0];
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__SBHStackConfigurationFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
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

- (void)_configureForEndpoint:(int64_t)a3 withCoordinator:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 == 1)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v6 fadingViews];
  v10 = [v7 widgetContentContainerView];
  v11 = [v9 setByAddingObject:v10];

  v12 = [v7 materialViews];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v12);
        }

        [*(*(&v31 + 1) + 8 * i) setWeighting:v8];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
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

  if (a3 == 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.0;
  }

  v23 = [v7 sourceIconView];
  v24 = [v23 customIconImageViewController];
  v25 = [v24 view];

  [v25 setAlpha:v22];
  v26 = [(SBHStackConfigurationFadeAnimator *)self sourceSnapshotView];
  [v26 setAlpha:v22];
}

- (void)_updateSourceSnapshotViewUsingSourceIconView:(BOOL)a3 withCoordinator:(id)a4
{
  v4 = a3;
  v27 = a4;
  v6 = [(SBHStackConfigurationFadeAnimator *)self sourceSnapshotView];
  v7 = v6;
  if (v6)
  {
    [v6 removeFromSuperview];
    v8 = [v7 layer];
    v9 = [v8 presentationLayer];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v7 layer];
    }

    v13 = v11;

    [v13 opacity];
    v12 = v14;
  }

  else
  {
    v12 = 0.0;
  }

  v15 = [v27 sourceIconView];
  v16 = v15;
  if (v4)
  {
    [v15 iconImageSnapshotView];
  }

  else
  {
    [v27 visiblyActiveDataSourceSnapshotView];
  }
  v17 = ;
  [(SBHStackConfigurationFadeAnimator *)self setSourceSnapshotView:v17];
  if (v17)
  {
    v18 = [v27 configurationView];
    [v16 iconImageFrame];
    [v16 convertRect:v18 toView:?];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v18 insertSubview:v17 atIndex:0];
    [v17 setFrame:{v20, v22, v24, v26}];
    [v17 setAlpha:v12];
  }
}

- (void)_setupMatchMoveAnimationWithSourceView:(id)a3 targetView:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69793B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 animation];
  v9 = [v7 layer];
  [v8 setSourceLayer:v9];

  [v8 setFillMode:*MEMORY[0x1E69797E0]];
  [v8 setRemovedOnCompletion:0];
  [v8 setDuration:INFINITY];
  [v8 setAppliesY:1];
  [v8 setAppliesX:1];
  [v6 bounds];
  v11 = v10;
  v13 = v12;
  [v7 bounds];
  [v7 convertRect:v6 toView:?];
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{v11 * 0.5 - v15, v13 * 0.5 - v17}];
  v21[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v8 setSourcePoints:v19];

  v20 = [v6 layer];

  [v20 addAnimation:v8 forKey:0];
}

@end