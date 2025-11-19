@interface SBHLibraryFadeAnimator
- (SBHLibraryFadeAnimator)init;
- (void)_configureIndicatorViewsForEndpoint:(int64_t)a3 withContext:(id)a4;
- (void)_configurePrimaryViewsForEndpoint:(int64_t)a3 finalizing:(BOOL)a4 withContext:(id)a5;
- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5;
- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4;
- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4;
@end

@implementation SBHLibraryFadeAnimator

- (SBHLibraryFadeAnimator)init
{
  v10.receiver = self;
  v10.super_class = SBHLibraryFadeAnimator;
  v2 = [(SBHLibraryFadeAnimator *)&v10 init];
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
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SBHLibraryFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performWithoutAnimation:v9];
}

- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 userInfo];
  v11 = [(SBHLibraryFadeAnimator *)self animationSettings];
  [v11 duration];
  v13 = v12;
  if ([v9 wantsAnimation])
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v10 noteWillAnimateToEndpoint:a3 withAnimationDuration:v14];
  v15 = [v9 wantsAnimation];

  if (v15)
  {
    if ([(SBHLibraryFadeAnimator *)self isAlreadyAnimating])
    {
      v16 = (2 * (a3 == 1)) | 4;
    }

    else
    {
      v16 = 2 * (a3 == 1);
    }

    [(SBHLibraryFadeAnimator *)self setAlreadyAnimating:1];
    v17 = MEMORY[0x1E698E7D0];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __67__SBHLibraryFadeAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v36[3] = &unk_1E808A090;
    v36[4] = self;
    v37[1] = a3;
    v18 = v10;
    v37[0] = v18;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __67__SBHLibraryFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
    v34[3] = &unk_1E808A0B8;
    v35 = v8;
    [v17 animateWithSettings:v11 options:v16 actions:v36 completion:v34];
    v19 = v37;
    v20 = v13 / 3.0;
    v21 = v13 / 5.0;
    if (a3 == 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v13 / 3.0;
    }

    if (a3 == 1)
    {
      v23 = 0x20000;
    }

    else
    {
      v23 = 0x10000;
    }

    v24 = MEMORY[0x1E69DD250];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __67__SBHLibraryFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
    v31[3] = &unk_1E808A090;
    v32 = v18;
    v33 = a3;
    if (a3 == 1)
    {
      v25 = v21;
    }

    else
    {
      v25 = v20;
    }

    v31[4] = self;
    v26 = v18;
    [v24 animateWithDuration:v23 | v16 delay:v31 options:0 animations:v25 completion:v22];
  }

  else
  {
    v27 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__SBHLibraryFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_4;
    v29[3] = &unk_1E808A090;
    v30[0] = v10;
    v30[1] = a3;
    v19 = v30;
    v29[4] = self;
    v28 = v10;
    [v27 performWithoutAnimation:v29];
    if (v8)
    {
      v8[2](v8);
    }
  }
}

uint64_t __67__SBHLibraryFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __67__SBHLibraryFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _configurePrimaryViewsForEndpoint:*(a1 + 48) finalizing:0 withContext:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _configureIndicatorViewsForEndpoint:v2 withContext:v3];
}

- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4
{
  v6 = [a4 userInfo];
  [(SBHLibraryFadeAnimator *)self setAlreadyAnimating:0];
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SBHLibraryFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performWithoutAnimation:v9];
}

uint64_t __66__SBHLibraryFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configurePrimaryViewsForEndpoint:*(a1 + 48) finalizing:1 withContext:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 _configureIndicatorViewsForEndpoint:v2 withContext:v3];
}

- (void)_configurePrimaryViewsForEndpoint:(int64_t)a3 finalizing:(BOOL)a4 withContext:(id)a5
{
  v5 = a3 == 1 || a4;
  if (a3 == 1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = a5;
  v9 = [v8 libraryView];
  [v9 setAlpha:v7];

  v10 = [v8 backgroundView];

  [v10 setWeighting:v6];
}

- (void)_configureIndicatorViewsForEndpoint:(int64_t)a3 withContext:(id)a4
{
  if (a3 == 1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (a3 == 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v8 = [a4 libraryIconViewController];
  v6 = [v8 categoryStackView];
  [v6 setAlpha:v5];

  v7 = [v8 dismissalView];
  [v7 setAlpha:v4];
}

@end