@interface SBFHomeAffordanceView
- (SBFHomeAffordanceView)initWithFrame:(CGRect)frame;
- (UIView)contentViewContainerView;
- (UIView)topLevelContainerView;
- (UIVisualEffectView)visualEffectView;
- (int64_t)_incrementBounceAnimationGenerationCount;
- (int64_t)_incrementGlowAnimationGenerationCount;
- (int64_t)_incrementPulseAnimationGenerationCount;
- (void)_performBounceAnimationWithCompletionHandler:(id)handler;
- (void)_performGlowAnimationWithCompletionHandler:(id)handler;
- (void)_performPulseAnimationWithCompletionHandler:(id)handler;
- (void)addContentView:(id)view;
- (void)cancelHintAnimationWithCompletionHandler:(id)handler;
- (void)insertContentView:(id)view atIndex:(int64_t)index;
- (void)layoutSubviews;
- (void)performHintAnimationWithCompletionHandler:(id)handler;
- (void)removeContentView:(id)view;
- (void)setHintStyle:(unint64_t)style;
@end

@implementation SBFHomeAffordanceView

- (UIVisualEffectView)visualEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_visualEffectView);

  return WeakRetained;
}

- (UIView)contentViewContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewContainerView);

  return WeakRetained;
}

- (UIView)topLevelContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_topLevelContainerView);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = SBFHomeAffordanceView;
  [(SBFHomeAffordanceView *)&v24 layoutSubviews];
  [(SBFHomeAffordanceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
  [topLevelContainerView setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [topLevelContainerView setCenter:?];
  visualEffectView = [(SBFHomeAffordanceView *)self visualEffectView];
  if (visualEffectView)
  {
    [topLevelContainerView bounds];
    [visualEffectView setFrame:?];
    [topLevelContainerView bounds];
    [visualEffectView _setCornerRadius:CGRectGetHeight(v27) * 0.5];
    [topLevelContainerView bringSubviewToFront:visualEffectView];
  }

  contentViewContainerView = [(SBFHomeAffordanceView *)self contentViewContainerView];
  if (contentViewContainerView)
  {
    [topLevelContainerView bounds];
    [contentViewContainerView setFrame:?];
    [topLevelContainerView sendSubviewToBack:contentViewContainerView];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    subviews = [contentViewContainerView subviews];
    v15 = [subviews countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(subviews);
          }

          v19 = *(*(&v20 + 1) + 8 * v18);
          [contentViewContainerView bounds];
          [v19 setFrame:?];
          ++v18;
        }

        while (v16 != v18);
        v16 = [subviews countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }
  }
}

- (SBFHomeAffordanceView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SBFHomeAffordanceView;
  v3 = [(SBFHomeAffordanceView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SBFHomeGrabberDomain rootSettings];
    homeGrabberSettings = v3->_homeGrabberSettings;
    v3->_homeGrabberSettings = v4;

    v6 = +[SBFSiriDomain rootSettings];
    systemAssistantExperienceSettings = [v6 systemAssistantExperienceSettings];
    systemAssistantExperienceSettings = v3->_systemAssistantExperienceSettings;
    v3->_systemAssistantExperienceSettings = systemAssistantExperienceSettings;

    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v12.receiver = v3;
    v12.super_class = SBFHomeAffordanceView;
    [(SBFHomeAffordanceView *)&v12 addSubview:v10];
    objc_storeWeak(&v3->_topLevelContainerView, v10);
  }

  return v3;
}

- (void)setHintStyle:(unint64_t)style
{
  if (self->_hintStyle != style)
  {
    v11[9] = v3;
    v11[10] = v4;
    styleCopy = style;
    self->_hintStyle = style;
    visualEffectView = [(SBFHomeAffordanceView *)self visualEffectView];
    v8 = visualEffectView;
    if ((styleCopy & 2) == 0 || visualEffectView)
    {
      if ((styleCopy & 2) == 0)
      {
        if (visualEffectView)
        {
          [visualEffectView removeFromSuperview];
          [(SBFHomeAffordanceView *)self setVisualEffectView:0];
        }
      }
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69DD298]);
      v8 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
      [topLevelContainerView addSubview:v8];

      [(SBFHomeAffordanceView *)self setVisualEffectView:v8];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __38__SBFHomeAffordanceView_setHintStyle___block_invoke;
      v11[3] = &unk_1E807F178;
      v11[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
    }
  }
}

uint64_t __38__SBFHomeAffordanceView_setHintStyle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)addContentView:(id)view
{
  viewCopy = view;
  contentViewContainerView = [(SBFHomeAffordanceView *)self contentViewContainerView];
  if (!contentViewContainerView)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    contentViewContainerView = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
    [topLevelContainerView addSubview:contentViewContainerView];

    [(SBFHomeAffordanceView *)self setContentViewContainerView:contentViewContainerView];
  }

  [contentViewContainerView addSubview:viewCopy];
}

- (void)insertContentView:(id)view atIndex:(int64_t)index
{
  viewCopy = view;
  contentViewContainerView = [(SBFHomeAffordanceView *)self contentViewContainerView];
  if (!contentViewContainerView)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    contentViewContainerView = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
    [topLevelContainerView addSubview:contentViewContainerView];

    [(SBFHomeAffordanceView *)self setContentViewContainerView:contentViewContainerView];
  }

  [contentViewContainerView insertSubview:viewCopy atIndex:index];
}

- (void)removeContentView:(id)view
{
  viewCopy = view;
  contentViewContainerView = [(SBFHomeAffordanceView *)self contentViewContainerView];
  superview = [viewCopy superview];
  v6 = [superview isEqual:contentViewContainerView];

  if (v6)
  {
    [viewCopy removeFromSuperview];
  }

  subviews = [contentViewContainerView subviews];
  v8 = [subviews count];

  if (!v8)
  {
    [contentViewContainerView removeFromSuperview];
    [(SBFHomeAffordanceView *)self setContentViewContainerView:0];
  }
}

- (void)performHintAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_outstandingGlowOrPulseAnimationCount >= 1)
  {
    v6 = *(handlerCopy + 2);
LABEL_3:
    v6();
    goto LABEL_18;
  }

  hintStyle = [(SBFHomeAffordanceView *)self hintStyle];
  v8 = hintStyle;
  if ((hintStyle & 6) == 0)
  {
    if (hintStyle)
    {
      [(SBFHomeAffordanceView *)self _performBounceAnimationWithCompletionHandler:v5];
      goto LABEL_18;
    }

    v6 = v5[2];
    goto LABEL_3;
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__SBFHomeAffordanceView_performHintAnimationWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E807EFB8;
  objc_copyWeak(&v12, &location);
  v11 = v5;
  v9 = MEMORY[0x1BFB4D9B0](v10);
  if ((v8 & 2) != 0)
  {
    ++self->_outstandingGlowOrPulseAnimationCount;
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_7;
  }

  ++self->_outstandingGlowOrPulseAnimationCount;
  if ((v8 & 2) != 0)
  {
LABEL_13:
    [(SBFHomeAffordanceView *)self _performGlowAnimationWithCompletionHandler:v9];
  }

LABEL_14:
  if ((v8 & 4) != 0)
  {
    [(SBFHomeAffordanceView *)self _performPulseAnimationWithCompletionHandler:v9];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
LABEL_18:
}

void __67__SBFHomeAffordanceView_performHintAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || (v3 = WeakRetained[60], WeakRetained[60] = v3 - 1, v3 <= 1))
  {
    v4 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

- (void)cancelHintAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(SBFHomeAffordanceView *)self _incrementBounceAnimationGenerationCount];
  [(SBFHomeAffordanceView *)self _incrementGlowAnimationGenerationCount];
  [(SBFHomeAffordanceView *)self _incrementPulseAnimationGenerationCount];
  topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
  visualEffectView = [(SBFHomeAffordanceView *)self visualEffectView];
  homeAffordanceHintCancellationAnimationSettings = [(SBFSiriSystemAssistantExperienceSettings *)self->_systemAssistantExperienceSettings homeAffordanceHintCancellationAnimationSettings];
  v8 = MEMORY[0x1E69DD250];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SBFHomeAffordanceView_cancelHintAnimationWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E807F290;
  v15 = visualEffectView;
  v16 = topLevelContainerView;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__SBFHomeAffordanceView_cancelHintAnimationWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E80802C8;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = topLevelContainerView;
  v11 = visualEffectView;
  [v8 sb_animateWithSettings:homeAffordanceHintCancellationAnimationSettings mode:3 animations:v14 completion:v12];
}

uint64_t __66__SBFHomeAffordanceView_cancelHintAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundEffects:MEMORY[0x1E695E0F0]];
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

- (int64_t)_incrementBounceAnimationGenerationCount
{
  bounceAnimationGenerationCount = [(SBFHomeAffordanceView *)self bounceAnimationGenerationCount];
  [(SBFHomeAffordanceView *)self setBounceAnimationGenerationCount:bounceAnimationGenerationCount + 1];
  return bounceAnimationGenerationCount + 1;
}

- (int64_t)_incrementGlowAnimationGenerationCount
{
  glowAnimationGenerationCount = [(SBFHomeAffordanceView *)self glowAnimationGenerationCount];
  [(SBFHomeAffordanceView *)self setGlowAnimationGenerationCount:glowAnimationGenerationCount + 1];
  return glowAnimationGenerationCount + 1;
}

- (int64_t)_incrementPulseAnimationGenerationCount
{
  pulseAnimationGenerationCount = [(SBFHomeAffordanceView *)self pulseAnimationGenerationCount];
  [(SBFHomeAffordanceView *)self setPulseAnimationGenerationCount:pulseAnimationGenerationCount + 1];
  return pulseAnimationGenerationCount + 1;
}

- (void)_performBounceAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  homeGrabberSettings = [(SBFHomeAffordanceView *)self homeGrabberSettings];
  objc_initWeak(&location, self);
  _incrementBounceAnimationGenerationCount = [(SBFHomeAffordanceView *)self _incrementBounceAnimationGenerationCount];
  topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
  bounceAnimationSettings = [homeGrabberSettings bounceAnimationSettings];
  v9 = MEMORY[0x1E69DD250];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E807F290;
  v10 = topLevelContainerView;
  v23 = v10;
  v11 = homeGrabberSettings;
  v24 = v11;
  [v9 sb_animateWithSettings:bounceAnimationSettings mode:3 animations:v22 completion:0];
  [v11 bounceReverseAnimationDelay];
  v13 = dispatch_time(0, (v12 * 1000000000.0));
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke_2;
  v17[3] = &unk_1E80802F0;
  objc_copyWeak(v21, &location);
  v18 = bounceAnimationSettings;
  v19 = v10;
  v21[1] = _incrementBounceAnimationGenerationCount;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = v10;
  v16 = bounceAnimationSettings;
  dispatch_after(v13, MEMORY[0x1E69E96A0], v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

uint64_t __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) bounceTranslation];
  CGAffineTransformMakeTranslation(&v4, 0.0, -v2);
  return [v1 setTransform:&v4];
}

void __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained bounceAnimationGenerationCount];
  v4 = *(a1 + 64);

  if (v3 == v4)
  {
    v5 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_1E807F178;
    v6 = *(a1 + 32);
    v11 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E80802C8;
    v9 = *(a1 + 48);
    [v5 sb_animateWithSettings:v6 mode:3 animations:v10 completion:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

uint64_t __70__SBFHomeAffordanceView__performBounceAnimationWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)_performGlowAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  systemAssistantExperienceSettings = [(SBFHomeAffordanceView *)self systemAssistantExperienceSettings];
  v5 = objc_alloc(MEMORY[0x1E69DD400]);
  sbf_siriIntelligenceLightColors = [MEMORY[0x1E69DC888] sbf_siriIntelligenceLightColors];
  v7 = [sbf_siriIntelligenceLightColors count];
  v8 = arc4random_uniform(v7);
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  if (v7)
  {
    v10 = v8;
    v11 = v7;
    do
    {
      v12 = [sbf_siriIntelligenceLightColors objectAtIndex:v10 % v7];
      [v9 addObject:v12];

      ++v10;
      --v11;
    }

    while (v11);
  }

  v13 = [v5 initWithColors:v9];
  v14 = [objc_alloc(MEMORY[0x1E69DD468]) initWithColorPalette:v13];
  v15 = [MEMORY[0x1E69DD578] directionalLightWithConfiguration:v14];
  v16 = objc_alloc(MEMORY[0x1E69DD570]);
  [systemAssistantExperienceSettings homeAffordanceGlowInnerLightRadius];
  v17 = [v16 initWithLightSource:v15 radius:0 region:?];
  [v17 setActivationTransitionDirection:2];
  v18 = objc_alloc(MEMORY[0x1E69DD570]);
  [systemAssistantExperienceSettings homeAffordanceGlowOuterLightRadius];
  v47 = v15;
  v19 = [v18 initWithLightSource:v15 radius:1 region:?];
  [v19 setActivationTransitionDirection:2];
  v20 = objc_alloc(MEMORY[0x1E69DD580]);
  [systemAssistantExperienceSettings homeAffordanceGlowHighlightThickness];
  v22 = v21;
  v23 = MEMORY[0x1E69DC888];
  [systemAssistantExperienceSettings homeAffordanceGlowHighlightWhiteness];
  v25 = v24;
  [systemAssistantExperienceSettings homeAffordanceGlowHighlightAlpha];
  v27 = [v23 colorWithWhite:v25 alpha:v26];
  [systemAssistantExperienceSettings homeAffordanceGlowHighlightRadius];
  v29 = [v20 initWithThickness:v27 color:2 softRadius:2 region:v22 activationDirection:v28];

  objc_initWeak(location, self);
  _incrementGlowAnimationGenerationCount = [(SBFHomeAffordanceView *)self _incrementGlowAnimationGenerationCount];
  v46 = v13;
  visualEffectView = [(SBFHomeAffordanceView *)self visualEffectView];
  homeAffordanceGlowAnimationSettings = [systemAssistantExperienceSettings homeAffordanceGlowAnimationSettings];
  v33 = MEMORY[0x1E69DD250];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke;
  v55[3] = &unk_1E807F308;
  v34 = visualEffectView;
  v56 = v34;
  v35 = v17;
  v57 = v35;
  v36 = v19;
  v58 = v36;
  v37 = v29;
  v59 = v37;
  [v33 sb_animateWithSettings:homeAffordanceGlowAnimationSettings mode:3 animations:v55 completion:0];
  [systemAssistantExperienceSettings homeAffordanceGlowReverseAnimationDelay];
  v39 = v38;
  UIAnimationDragCoefficient();
  v41 = dispatch_time(0, (v39 * v40 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E8080340;
  objc_copyWeak(v54, location);
  v54[1] = _incrementGlowAnimationGenerationCount;
  v50 = homeAffordanceGlowAnimationSettings;
  v51 = v34;
  v52 = systemAssistantExperienceSettings;
  v53 = handlerCopy;
  v42 = handlerCopy;
  v43 = systemAssistantExperienceSettings;
  v44 = v34;
  v45 = homeAffordanceGlowAnimationSettings;
  dispatch_after(v41, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v54);
  objc_destroyWeak(location);
}

void __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:3];
  [v1 setBackgroundEffects:v2];
}

void __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained glowAnimationGenerationCount];
  v4 = *(a1 + 72);

  if (v3 == v4)
  {
    v5 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke_3;
    v17[3] = &unk_1E807F178;
    v6 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v5 sb_animateWithSettings:v6 mode:3 animations:v17 completion:0];
    [*(a1 + 48) homeAffordanceGlowEffectiveAnimationDuration];
    v8 = v7;
    [*(a1 + 48) homeAffordanceGlowReverseAnimationDelay];
    v10 = v8 - v9;
    UIAnimationDragCoefficient();
    v12 = dispatch_time(0, (v10 * v11 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E8080318;
    objc_copyWeak(v16, (a1 + 64));
    v16[1] = *(a1 + 72);
    v15 = *(a1 + 56);
    dispatch_after(v12, MEMORY[0x1E69E96A0], v14);

    objc_destroyWeak(v16);
  }

  else
  {
    v13 = *(*(a1 + 56) + 16);

    v13();
  }
}

uint64_t __68__SBFHomeAffordanceView__performGlowAnimationWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained glowAnimationGenerationCount];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_performPulseAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  systemAssistantExperienceSettings = [(SBFHomeAffordanceView *)self systemAssistantExperienceSettings];
  objc_initWeak(&location, self);
  _incrementPulseAnimationGenerationCount = [(SBFHomeAffordanceView *)self _incrementPulseAnimationGenerationCount];
  topLevelContainerView = [(SBFHomeAffordanceView *)self topLevelContainerView];
  homeAffordancePulseAnimationSettings = [systemAssistantExperienceSettings homeAffordancePulseAnimationSettings];
  v9 = MEMORY[0x1E69DD250];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke;
  v26[3] = &unk_1E807F290;
  v10 = topLevelContainerView;
  v27 = v10;
  v11 = systemAssistantExperienceSettings;
  v28 = v11;
  [v9 sb_animateWithSettings:homeAffordancePulseAnimationSettings mode:3 animations:v26 completion:0];
  [v11 homeAffordancePulseReverseAnimationDelay];
  v13 = v12;
  UIAnimationDragCoefficient();
  v15 = dispatch_time(0, (v13 * v14 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E8080340;
  objc_copyWeak(v25, &location);
  v25[1] = _incrementPulseAnimationGenerationCount;
  v21 = homeAffordancePulseAnimationSettings;
  v22 = v10;
  v23 = v11;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = v11;
  v18 = v10;
  v19 = homeAffordancePulseAnimationSettings;
  dispatch_after(v15, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

uint64_t __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) homeAffordancePulseXScale];
  v4 = v3;
  [*(a1 + 40) homeAffordancePulseYScale];
  CGAffineTransformMakeScale(&v7, v4, v5);
  return [v2 setTransform:&v7];
}

void __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained pulseAnimationGenerationCount];
  v4 = *(a1 + 72);

  if (v3 == v4)
  {
    v5 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke_3;
    v17[3] = &unk_1E807F178;
    v6 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v5 sb_animateWithSettings:v6 mode:3 animations:v17 completion:0];
    [*(a1 + 48) homeAffordancePulseEffectiveAnimationDuration];
    v8 = v7;
    [*(a1 + 48) homeAffordancePulseReverseAnimationDelay];
    v10 = v8 - v9;
    UIAnimationDragCoefficient();
    v12 = dispatch_time(0, (v10 * v11 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E8080318;
    objc_copyWeak(v16, (a1 + 64));
    v16[1] = *(a1 + 72);
    v15 = *(a1 + 56);
    dispatch_after(v12, MEMORY[0x1E69E96A0], v14);

    objc_destroyWeak(v16);
  }

  else
  {
    v13 = *(*(a1 + 56) + 16);

    v13();
  }
}

uint64_t __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __69__SBFHomeAffordanceView__performPulseAnimationWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pulseAnimationGenerationCount];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

@end