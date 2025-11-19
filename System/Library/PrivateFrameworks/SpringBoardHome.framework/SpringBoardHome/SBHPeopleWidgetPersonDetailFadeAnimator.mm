@interface SBHPeopleWidgetPersonDetailFadeAnimator
- (SBHPeopleWidgetPersonDetailFadeAnimator)init;
- (void)_configureForEndpoint:(int64_t)a3 context:(id)a4;
- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5;
- (void)finalizeAnimationAtEndpoint:(int64_t)a3 withContext:(id)a4;
- (void)prepareToAnimateFromEndpoint:(int64_t)a3 withContext:(id)a4;
@end

@implementation SBHPeopleWidgetPersonDetailFadeAnimator

- (SBHPeopleWidgetPersonDetailFadeAnimator)init
{
  v10.receiver = self;
  v10.super_class = SBHPeopleWidgetPersonDetailFadeAnimator;
  v2 = [(SBHPeopleWidgetPersonDetailFadeAnimator *)&v10 init];
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
  v9[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  [v7 performWithoutAnimation:v9];
}

void __84__SBHPeopleWidgetPersonDetailFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) sourceView];
  v2 = [*(a1 + 32) containerView];
  v3 = [*(a1 + 32) backgroundView];
  [v2 insertSubview:v9 belowSubview:v3];

  [*(a1 + 32) sourceContentFrame];
  [v9 setFrame:?];
  v4 = [*(a1 + 32) platterView];
  [*(a1 + 32) targetContentFrame];
  [v4 setFrame:?];
  [v2 addSubview:v4];
  v5 = [*(a1 + 32) targetView];
  [v4 bounds];
  [v5 setFrame:?];
  [v4 addSubview:v5];
  [*(a1 + 32) targetContentCornerRadius];
  [v4 _setContinuousCornerRadius:?];
  v6 = [v9 layer];
  v7 = [v9 traitCollection];
  [v7 displayScale];
  [v6 setRasterizationScale:?];

  v8 = [v9 layer];
  [v8 setShouldRasterize:1];

  [*(a1 + 40) _configureForEndpoint:*(a1 + 48) context:*(a1 + 32)];
}

- (void)animateToEndpoint:(int64_t)a3 withContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 userInfo];
  v11 = [v9 wantsAnimation];

  if (v11)
  {
    v12 = 2 * (a3 == 1);
    if ([(SBHPeopleWidgetPersonDetailFadeAnimator *)self isAlreadyAnimating])
    {
      v12 = (2 * (a3 == 1)) | 4;
    }

    [(SBHPeopleWidgetPersonDetailFadeAnimator *)self setAlreadyAnimating:1];
    v13 = [v10 platterView];
    v14 = [v13 layer];
    [v14 setAllowsHitTesting:a3 == 1];

    v15 = [v10 backgroundView];
    v16 = [v15 layer];
    [v16 setAllowsHitTesting:a3 == 1];

    v17 = MEMORY[0x1E698E7D0];
    v18 = [(SBHPeopleWidgetPersonDetailFadeAnimator *)self animationSettings];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v27[3] = &unk_1E808A090;
    v28[0] = v10;
    v28[1] = a3;
    v19 = v28;
    v27[4] = self;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
    v25[3] = &unk_1E808A0B8;
    v26 = v8;
    v20 = v10;
    [v17 animateWithSettings:v18 options:v12 actions:v27 completion:v25];
  }

  else
  {
    v21 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
    v23[3] = &unk_1E808A090;
    v24[0] = v10;
    v24[1] = a3;
    v19 = v24;
    v23[4] = self;
    v22 = v10;
    [v21 performWithoutAnimation:v23];
    if (v8)
    {
      v8[2](v8);
    }
  }
}

uint64_t __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2(uint64_t a1)
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
  [(SBHPeopleWidgetPersonDetailFadeAnimator *)self setAlreadyAnimating:0];
  v7 = [v6 sourceView];
  v8 = [v7 layer];
  [v8 setShouldRasterize:0];

  v9 = [v6 sourceView];
  [v9 removeFromSuperview];

  v10 = [v6 platterView];
  v11 = [v6 targetView];
  v12 = v11;
  if (!a3)
  {
    [v11 removeFromSuperview];
    [v10 removeFromSuperview];
  }

  v13 = [v10 layer];
  [v13 setAllowsHitTesting:1];

  v14 = [v6 backgroundView];
  v15 = [v14 layer];
  [v15 setAllowsHitTesting:1];

  v16 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__SBHPeopleWidgetPersonDetailFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v18[3] = &unk_1E8088CB8;
  v19 = v6;
  v20 = a3;
  v17 = v6;
  [v16 performWithoutAnimation:v18];
}

void __83__SBHPeopleWidgetPersonDetailFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referenceView];
  v4 = v2;
  v3 = 1.0;
  if (*(a1 + 40) == 1)
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
}

- (void)_configureForEndpoint:(int64_t)a3 context:(id)a4
{
  v10 = a4;
  if (a3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = [v10 sourceView];
    [v6 setAlpha:1.0 - v5];
  }

  v7 = [v10 platterView];
  [v7 setAlpha:v5];

  v8 = [v10 backgroundView];
  [v8 setWeighting:v5];

  v9 = [v10 backgroundTintView];
  [v9 setAlpha:v5];
}

@end