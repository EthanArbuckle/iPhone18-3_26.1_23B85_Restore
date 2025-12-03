@interface SBHPeopleWidgetPersonDetailFadeAnimator
- (SBHPeopleWidgetPersonDetailFadeAnimator)init;
- (void)_configureForEndpoint:(int64_t)endpoint context:(id)context;
- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion;
- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context;
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
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = userInfo;
  selfCopy = self;
  endpointCopy = endpoint;
  v8 = userInfo;
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

- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  wantsAnimation = [contextCopy wantsAnimation];

  if (wantsAnimation)
  {
    v12 = 2 * (endpoint == 1);
    if ([(SBHPeopleWidgetPersonDetailFadeAnimator *)self isAlreadyAnimating])
    {
      v12 = (2 * (endpoint == 1)) | 4;
    }

    [(SBHPeopleWidgetPersonDetailFadeAnimator *)self setAlreadyAnimating:1];
    platterView = [userInfo platterView];
    layer = [platterView layer];
    [layer setAllowsHitTesting:endpoint == 1];

    backgroundView = [userInfo backgroundView];
    layer2 = [backgroundView layer];
    [layer2 setAllowsHitTesting:endpoint == 1];

    v17 = MEMORY[0x1E698E7D0];
    animationSettings = [(SBHPeopleWidgetPersonDetailFadeAnimator *)self animationSettings];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v27[3] = &unk_1E808A090;
    v28[0] = userInfo;
    v28[1] = endpoint;
    v19 = v28;
    v27[4] = self;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
    v25[3] = &unk_1E808A0B8;
    v26 = completionCopy;
    v20 = userInfo;
    [v17 animateWithSettings:animationSettings options:v12 actions:v27 completion:v25];
  }

  else
  {
    v21 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__SBHPeopleWidgetPersonDetailFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
    v23[3] = &unk_1E808A090;
    v24[0] = userInfo;
    v24[1] = endpoint;
    v19 = v24;
    v23[4] = self;
    v22 = userInfo;
    [v21 performWithoutAnimation:v23];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context
{
  userInfo = [context userInfo];
  [(SBHPeopleWidgetPersonDetailFadeAnimator *)self setAlreadyAnimating:0];
  sourceView = [userInfo sourceView];
  layer = [sourceView layer];
  [layer setShouldRasterize:0];

  sourceView2 = [userInfo sourceView];
  [sourceView2 removeFromSuperview];

  platterView = [userInfo platterView];
  targetView = [userInfo targetView];
  v12 = targetView;
  if (!endpoint)
  {
    [targetView removeFromSuperview];
    [platterView removeFromSuperview];
  }

  layer2 = [platterView layer];
  [layer2 setAllowsHitTesting:1];

  backgroundView = [userInfo backgroundView];
  layer3 = [backgroundView layer];
  [layer3 setAllowsHitTesting:1];

  v16 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__SBHPeopleWidgetPersonDetailFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v18[3] = &unk_1E8088CB8;
  v19 = userInfo;
  endpointCopy = endpoint;
  v17 = userInfo;
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

- (void)_configureForEndpoint:(int64_t)endpoint context:(id)context
{
  contextCopy = context;
  if (endpoint)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    sourceView = [contextCopy sourceView];
    [sourceView setAlpha:1.0 - v5];
  }

  platterView = [contextCopy platterView];
  [platterView setAlpha:v5];

  backgroundView = [contextCopy backgroundView];
  [backgroundView setWeighting:v5];

  backgroundTintView = [contextCopy backgroundTintView];
  [backgroundTintView setAlpha:v5];
}

@end