@interface SBIconFadeAnimator
- (SBIconFadeAnimator)initWithAnimationContainer:(id)a3 crossfadeView:(id)a4;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5;
- (void)_applyAlphaForFraction:(double)a3;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
@end

@implementation SBIconFadeAnimator

- (SBIconFadeAnimator)initWithAnimationContainer:(id)a3 crossfadeView:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SBIconFadeAnimator;
  v8 = [(SBIconAnimator *)&v16 initWithAnimationContainer:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_crossfadeView, a4);
    v9->_fadesReferenceView = 1;
    v10 = [v7 window];

    if (!v10)
    {
      v11 = [(SBIconAnimator *)v9 animationContainer];
      v12 = [v11 fallbackIconContainerView];
      [v12 addSubview:v7];

      v13 = [v7 window];

      if (v13)
      {
        v9->_addedToWindow = 1;
      }

      else if (v7)
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

- (void)_setAnimationFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBIconFadeAnimator;
  [(SBIconAnimator *)&v5 _setAnimationFraction:?];
  [(SBIconFadeAnimator *)self _applyAlphaForFraction:a3];
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
    v4 = [(SBIconAnimator *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 iconAnimator:self canAlterViewHierarchyDuringCleanupUsingBlock:v3])
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

- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5
{
  v8 = a5;
  v9 = [(SBIconAnimator *)self isAnimating];
  v14.receiver = self;
  v14.super_class = SBIconFadeAnimator;
  [(SBIconAnimator *)&v14 _animateToFraction:v8 afterDelay:a3 withSharedCompletion:a4];
  if (v9)
  {
    v10 = 6;
  }

  else
  {
    v10 = 2;
  }

  v11 = MEMORY[0x1E698E7D0];
  v12 = [(SBIconAnimator *)self centralAnimationFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SBIconFadeAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke;
  v13[3] = &unk_1E8088CB8;
  v13[4] = self;
  *&v13[5] = a3;
  [v11 animateWithFactory:v12 additionalDelay:v10 options:v13 actions:v8 completion:a4];
}

- (void)_applyAlphaForFraction:(double)a3
{
  v5 = objc_opt_respondsToSelector();
  crossfadeView = self->_crossfadeView;
  if (v5)
  {
    [(SBIconFadeAnimatorCrossfadeView *)crossfadeView iconFadeAnimator:self wantsToApplyAlpha:a3];
  }

  else
  {
    [(SBIconFadeAnimatorCrossfadeView *)crossfadeView setAlpha:a3];
  }

  if ([(SBIconFadeAnimator *)self fadesReferenceView])
  {
    v7 = [(SBIconAnimator *)self referenceView];
    [v7 setAlpha:1.0 - a3];
  }
}

@end