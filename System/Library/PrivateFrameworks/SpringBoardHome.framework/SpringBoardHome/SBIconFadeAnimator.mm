@interface SBIconFadeAnimator
- (SBIconFadeAnimator)initWithAnimationContainer:(id)container crossfadeView:(id)view;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion;
- (void)_applyAlphaForFraction:(double)fraction;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
@end

@implementation SBIconFadeAnimator

- (SBIconFadeAnimator)initWithAnimationContainer:(id)container crossfadeView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = SBIconFadeAnimator;
  v8 = [(SBIconAnimator *)&v16 initWithAnimationContainer:container];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_crossfadeView, view);
    v9->_fadesReferenceView = 1;
    window = [viewCopy window];

    if (!window)
    {
      animationContainer = [(SBIconAnimator *)v9 animationContainer];
      fallbackIconContainerView = [animationContainer fallbackIconContainerView];
      [fallbackIconContainerView addSubview:viewCopy];

      window2 = [viewCopy window];

      if (window2)
      {
        v9->_addedToWindow = 1;
      }

      else if (viewCopy)
      {
        v14 = SBLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SBIconFadeAnimator initWithAnimationContainer:v14 crossfadeView:?];
        }
      }
    }
  }

  return v9;
}

- (void)_prepareAnimation
{
  [(SBIconFadeAnimatorCrossfadeView *)self->_crossfadeView setHidden:0];
  v3.receiver = self;
  v3.super_class = SBIconFadeAnimator;
  [(SBIconAnimator *)&v3 _prepareAnimation];
}

- (void)_setAnimationFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = SBIconFadeAnimator;
  [(SBIconAnimator *)&v5 _setAnimationFraction:?];
  [(SBIconFadeAnimator *)self _applyAlphaForFraction:fraction];
}

- (void)_cleanupAnimation
{
  if (self->_addedToWindow)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__SBIconFadeAnimator__cleanupAnimation__block_invoke;
    aBlock[3] = &unk_1E8088C90;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    delegate = [(SBIconAnimator *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate iconAnimator:self canAlterViewHierarchyDuringCleanupUsingBlock:v3])
    {
      v3[2](v3);
    }
  }

  [(SBIconFadeAnimator *)self _applyAlphaForFraction:1.0];
  v5.receiver = self;
  v5.super_class = SBIconFadeAnimator;
  [(SBIconAnimator *)&v5 _cleanupAnimation];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBIconFadeAnimator;
  return [(SBIconAnimator *)&v3 _numberOfSignificantAnimations]+ 1;
}

- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion
{
  completionCopy = completion;
  isAnimating = [(SBIconAnimator *)self isAnimating];
  v14.receiver = self;
  v14.super_class = SBIconFadeAnimator;
  [(SBIconAnimator *)&v14 _animateToFraction:completionCopy afterDelay:fraction withSharedCompletion:delay];
  if (isAnimating)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  v11 = MEMORY[0x1E698E7D0];
  centralAnimationFactory = [(SBIconAnimator *)self centralAnimationFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SBIconFadeAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke;
  v13[3] = &unk_1E8088CB8;
  v13[4] = self;
  *&v13[5] = fraction;
  [v11 animateWithFactory:centralAnimationFactory additionalDelay:v10 options:v13 actions:completionCopy completion:delay];
}

- (void)_applyAlphaForFraction:(double)fraction
{
  v5 = objc_opt_respondsToSelector();
  crossfadeView = self->_crossfadeView;
  if (v5)
  {
    [(SBIconFadeAnimatorCrossfadeView *)crossfadeView iconFadeAnimator:self wantsToApplyAlpha:fraction];
  }

  else
  {
    [(SBIconFadeAnimatorCrossfadeView *)crossfadeView setAlpha:fraction];
  }

  if ([(SBIconFadeAnimator *)self fadesReferenceView])
  {
    referenceView = [(SBIconAnimator *)self referenceView];
    [referenceView setAlpha:1.0 - fraction];
  }
}

@end