@interface SBSpotlightTransitionInteractor
- (SBSpotlightTransitionInteractor)init;
- (SBSpotlightTransitionInteractor)initWithAnimator:(id)animator;
- (void)startInteractiveTransition:(id)transition;
@end

@implementation SBSpotlightTransitionInteractor

- (SBSpotlightTransitionInteractor)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSpotlightTransitionAnimator.m" lineNumber:374 description:@"use initWithAnimator:..."];

  return 0;
}

- (SBSpotlightTransitionInteractor)initWithAnimator:(id)animator
{
  animatorCopy = animator;
  v8.receiver = self;
  v8.super_class = SBSpotlightTransitionInteractor;
  v5 = [(SBSpotlightTransitionInteractor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animator, animatorCopy);
    [(SBSpotlightTransitionInteractor *)v6 setCompletionSpeed:1.0];
    [(SBSpotlightTransitionInteractor *)v6 setCompletionCurve:0];
  }

  return v6;
}

- (void)startInteractiveTransition:(id)transition
{
  objc_storeStrong(&self->_transitionContext, transition);
  transitionCopy = transition;
  WeakRetained = objc_loadWeakRetained(&self->_animator);
  [WeakRetained animateTransition:self->_transitionContext];
}

@end