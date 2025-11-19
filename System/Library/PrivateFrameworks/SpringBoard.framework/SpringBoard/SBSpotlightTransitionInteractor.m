@interface SBSpotlightTransitionInteractor
- (SBSpotlightTransitionInteractor)init;
- (SBSpotlightTransitionInteractor)initWithAnimator:(id)a3;
- (void)startInteractiveTransition:(id)a3;
@end

@implementation SBSpotlightTransitionInteractor

- (SBSpotlightTransitionInteractor)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSpotlightTransitionAnimator.m" lineNumber:374 description:@"use initWithAnimator:..."];

  return 0;
}

- (SBSpotlightTransitionInteractor)initWithAnimator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBSpotlightTransitionInteractor;
  v5 = [(SBSpotlightTransitionInteractor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animator, v4);
    [(SBSpotlightTransitionInteractor *)v6 setCompletionSpeed:1.0];
    [(SBSpotlightTransitionInteractor *)v6 setCompletionCurve:0];
  }

  return v6;
}

- (void)startInteractiveTransition:(id)a3
{
  objc_storeStrong(&self->_transitionContext, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_animator);
  [WeakRetained animateTransition:self->_transitionContext];
}

@end