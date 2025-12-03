@interface SBHWidgetConfigurationFadeAnimator
- (SBHWidgetConfigurationFadeAnimator)init;
- (void)_configureForEndpoint:(int64_t)endpoint context:(id)context;
- (void)animateToEndpoint:(int64_t)endpoint withContext:(id)context completion:(id)completion;
- (void)finalizeAnimationAtEndpoint:(int64_t)endpoint withContext:(id)context;
- (void)prepareToAnimateFromEndpoint:(int64_t)endpoint withContext:(id)context;
@end

@implementation SBHWidgetConfigurationFadeAnimator

- (SBHWidgetConfigurationFadeAnimator)init
{
  v10.receiver = self;
  v10.super_class = SBHWidgetConfigurationFadeAnimator;
  v2 = [(SBHWidgetConfigurationFadeAnimator *)&v10 init];
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
  v9[2] = __79__SBHWidgetConfigurationFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke;
  v9[3] = &unk_1E808A090;
  v10 = userInfo;
  selfCopy = self;
  endpointCopy = endpoint;
  v8 = userInfo;
  [v7 performWithoutAnimation:v9];
}

void __79__SBHWidgetConfigurationFadeAnimator_prepareToAnimateFromEndpoint_withContext___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) sourceView];
  v2 = [*(a1 + 32) backgroundView];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) backgroundTintView];
  }

  v5 = v4;

  v6 = [*(a1 + 32) containerView];
  [v6 insertSubview:v8 belowSubview:v5];

  [*(a1 + 32) sourceContentFrame];
  UIRectGetCenter();
  [v8 setCenter:?];
  v7 = [*(a1 + 32) referenceView];
  [v7 setAlpha:0.0];

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
    if ([(SBHWidgetConfigurationFadeAnimator *)self isAlreadyAnimating])
    {
      v12 = (2 * (endpoint == 1)) | 4;
    }

    [(SBHWidgetConfigurationFadeAnimator *)self setAlreadyAnimating:1];
    targetView = [userInfo targetView];
    layer = [targetView layer];
    [layer setAllowsHitTesting:endpoint == 1];

    backgroundView = [userInfo backgroundView];
    layer2 = [backgroundView layer];
    [layer2 setAllowsHitTesting:endpoint == 1];

    v17 = MEMORY[0x1E698E7D0];
    animationSettings = [(SBHWidgetConfigurationFadeAnimator *)self animationSettings];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__SBHWidgetConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke;
    v27[3] = &unk_1E808A090;
    v28[0] = userInfo;
    v28[1] = endpoint;
    v19 = v28;
    v27[4] = self;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__SBHWidgetConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2;
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
    v23[2] = __79__SBHWidgetConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_3;
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

uint64_t __79__SBHWidgetConfigurationFadeAnimator_animateToEndpoint_withContext_completion___block_invoke_2(uint64_t a1)
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
  [(SBHWidgetConfigurationFadeAnimator *)self setAlreadyAnimating:0];
  sourceView = [userInfo sourceView];
  [sourceView removeFromSuperview];

  targetView = [userInfo targetView];
  layer = [targetView layer];
  [layer setAllowsHitTesting:1];

  backgroundView = [userInfo backgroundView];
  layer2 = [backgroundView layer];
  [layer2 setAllowsHitTesting:1];

  v12 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__SBHWidgetConfigurationFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke;
  v14[3] = &unk_1E8088CB8;
  v15 = userInfo;
  endpointCopy = endpoint;
  v13 = userInfo;
  [v12 performWithoutAnimation:v14];
}

void __78__SBHWidgetConfigurationFadeAnimator_finalizeAnimationAtEndpoint_withContext___block_invoke(uint64_t a1)
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

  targetView = [contextCopy targetView];
  [targetView setAlpha:v5];

  backgroundView = [contextCopy backgroundView];
  [backgroundView setWeighting:v5];

  backgroundTintView = [contextCopy backgroundTintView];
  [backgroundTintView setAlpha:v5];
}

@end