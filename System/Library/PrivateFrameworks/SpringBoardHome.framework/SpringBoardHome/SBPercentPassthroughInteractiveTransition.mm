@interface SBPercentPassthroughInteractiveTransition
- (SBPercentPassthroughInteractiveTransition)init;
- (void)cancelTransition;
- (void)finishInteractiveTransition;
- (void)updateTransition:(double)transition;
@end

@implementation SBPercentPassthroughInteractiveTransition

- (SBPercentPassthroughInteractiveTransition)init
{
  v5.receiver = self;
  v5.super_class = SBPercentPassthroughInteractiveTransition;
  v2 = [(SBPercentPassthroughInteractiveTransition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBPercentPassthroughInteractiveTransition *)v2 setCompletionSpeed:1.0];
    [(SBPercentPassthroughInteractiveTransition *)v3 setCompletionCurve:0];
  }

  return v3;
}

- (void)updateTransition:(double)transition
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  [WeakRetained updateInteractiveTransition:transition];
}

- (void)finishInteractiveTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  [WeakRetained finishInteractiveTransition];
}

- (void)cancelTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  [WeakRetained cancelTransition];
}

@end