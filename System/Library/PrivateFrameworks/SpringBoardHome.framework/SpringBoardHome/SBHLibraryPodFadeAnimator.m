@interface SBHLibraryPodFadeAnimator
- (SBHLibraryPodFadeAnimator)initWithAnimationContainer:(id)a3 innerFolderController:(id)a4 searchBar:(id)a5;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5;
- (void)_applyAlphaForFraction:(double)a3;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
- (void)cleanup;
@end

@implementation SBHLibraryPodFadeAnimator

- (SBHLibraryPodFadeAnimator)initWithAnimationContainer:(id)a3 innerFolderController:(id)a4 searchBar:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SBHLibraryPodFadeAnimator;
  v11 = [(SBIconAnimator *)&v14 initWithAnimationContainer:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_innerFolderController, a4);
    objc_storeStrong(&v12->_searchBar, a5);
  }

  return v12;
}

- (void)_prepareAnimation
{
  v16.receiver = self;
  v16.super_class = SBHLibraryPodFadeAnimator;
  [(SBIconAnimator *)&v16 _prepareAnimation];
  v3 = [(SBFolderController *)self->_innerFolderController view];
  [v3 setHidden:0];
  v4 = [(SBIconAnimator *)self animationContainer];
  v5 = [v4 containerView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
  v14 = [(SBIconAnimator *)self animationContainer];
  v15 = [v14 containerView];
  [v15 addSubview:v3];
}

- (void)_setAnimationFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodFadeAnimator;
  [(SBIconAnimator *)&v5 _setAnimationFraction:?];
  if (!self->_animationComplete)
  {
    [(SBHLibraryPodFadeAnimator *)self _applyAlphaForFraction:a3];
  }
}

- (void)_applyAlphaForFraction:(double)a3
{
  v5 = [(SBIconAnimator *)self animationContainer];
  [v5 setContentAlpha:1.0 - a3];

  [(UIView *)self->_searchBar setAlpha:1.0 - a3];
  v6 = [(SBFolderController *)self->_innerFolderController view];
  [v6 setAlpha:a3];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodFadeAnimator;
  return [(SBIconAnimator *)&v3 _numberOfSignificantAnimations]+ 1;
}

- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5
{
  v8 = a5;
  v9 = [(SBIconAnimator *)self isAnimating];
  v14.receiver = self;
  v14.super_class = SBHLibraryPodFadeAnimator;
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
  v13[2] = __80__SBHLibraryPodFadeAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke;
  v13[3] = &unk_1E8088CB8;
  v13[4] = self;
  *&v13[5] = a3;
  [v11 animateWithFactory:v12 additionalDelay:v10 options:v13 actions:v8 completion:a4];
}

- (void)cleanup
{
  self->_animationComplete = 1;
  v2.receiver = self;
  v2.super_class = SBHLibraryPodFadeAnimator;
  [(SBIconAnimator *)&v2 cleanup];
}

@end