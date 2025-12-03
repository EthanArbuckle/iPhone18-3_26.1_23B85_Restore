@interface SBHLibraryPodImmediateAnimator
- (SBHLibraryPodImmediateAnimator)initWithAnimationContainer:(id)container innerFolderController:(id)controller searchBar:(id)bar;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion;
- (void)_configureForFraction:(double)fraction;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
- (void)cleanup;
@end

@implementation SBHLibraryPodImmediateAnimator

- (SBHLibraryPodImmediateAnimator)initWithAnimationContainer:(id)container innerFolderController:(id)controller searchBar:(id)bar
{
  controllerCopy = controller;
  barCopy = bar;
  v14.receiver = self;
  v14.super_class = SBHLibraryPodImmediateAnimator;
  v11 = [(SBIconAnimator *)&v14 initWithAnimationContainer:container];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_innerFolderController, controller);
    objc_storeStrong(&v12->_searchBar, bar);
  }

  return v12;
}

- (void)_prepareAnimation
{
  v16.receiver = self;
  v16.super_class = SBHLibraryPodImmediateAnimator;
  [(SBIconAnimator *)&v16 _prepareAnimation];
  view = [(SBFolderController *)self->_innerFolderController view];
  [view setHidden:0];
  animationContainer = [(SBIconAnimator *)self animationContainer];
  containerView = [animationContainer containerView];
  [containerView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [view setFrame:{v7, v9, v11, v13}];
  [view setNeedsLayout];
  [view layoutIfNeeded];
  animationContainer2 = [(SBIconAnimator *)self animationContainer];
  containerView2 = [animationContainer2 containerView];
  [containerView2 addSubview:view];
}

- (void)_setAnimationFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodImmediateAnimator;
  [(SBIconAnimator *)&v5 _setAnimationFraction:?];
  if (!self->_animationComplete)
  {
    [(SBHLibraryPodImmediateAnimator *)self _configureForFraction:fraction];
  }
}

- (void)_configureForFraction:(double)fraction
{
  animationContainer = [(SBIconAnimator *)self animationContainer];
  [animationContainer setContentAlpha:1.0 - fraction];

  [(UIView *)self->_searchBar setAlpha:1.0 - fraction];
  view = [(SBFolderController *)self->_innerFolderController view];
  [view setAlpha:fraction];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodImmediateAnimator;
  return [(SBIconAnimator *)&v3 _numberOfSignificantAnimations]+ 1;
}

- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion
{
  completionCopy = completion;
  v10.receiver = self;
  v10.super_class = SBHLibraryPodImmediateAnimator;
  [(SBIconAnimator *)&v10 _animateToFraction:completionCopy afterDelay:fraction withSharedCompletion:delay];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__SBHLibraryPodImmediateAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke;
  v9[3] = &unk_1E8088CB8;
  v9[4] = self;
  *&v9[5] = fraction;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)cleanup
{
  self->_animationComplete = 1;
  v2.receiver = self;
  v2.super_class = SBHLibraryPodImmediateAnimator;
  [(SBIconAnimator *)&v2 cleanup];
}

@end