@interface SBHintInteractor
- (SBHintInteractor)initWithInteractionProgress:(id)a3 maxHintProgress:(double)a4;
- (void)_updateInteractionPercentComplete:(double)a3;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)startInteractiveTransition:(id)a3;
@end

@implementation SBHintInteractor

- (SBHintInteractor)initWithInteractionProgress:(id)a3 maxHintProgress:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBHintInteractor;
  v8 = [(SBHintInteractor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interactionProgress, a3);
    v9->_hintInterval.start.value = 0.0;
    v9->_hintInterval.start.inclusive = 1;
    *(&v9->_hintInterval.start.inclusive + 1) = 0;
    *(&v9->_hintInterval.start.inclusive + 1) = 0;
    v9->_hintInterval.end.value = a4;
    v9->_hintInterval.end.inclusive = 1;
    *(&v9->_hintInterval.end.inclusive + 1) = 0;
    *(&v9->_hintInterval.end.inclusive + 1) = 0;
  }

  return v9;
}

- (void)startInteractiveTransition:(id)a3
{
  objc_storeStrong(&self->_transitionContext, a3);
  v4 = [(SBHintInteractor *)self interactionProgress];
  [v4 addProgressObserver:self];
  [v4 percentComplete];
  [(SBHintInteractor *)self _updateInteractionPercentComplete:?];
}

- (void)interactionProgressDidUpdate:(id)a3
{
  [a3 percentComplete];

  [(SBHintInteractor *)self _updateInteractionPercentComplete:?];
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SBViewControllerContextTransitioning *)self->_transitionContext isInteractive])
  {
    [v6 removeProgressObserver:self];
    if (v4)
    {
      [(SBHintInteractor *)self finishInteractiveTransition];
    }

    else
    {
      [(SBHintInteractor *)self cancelTransition];
    }
  }
}

- (void)_updateInteractionPercentComplete:(double)a3
{
  hintInterval = self->_hintInterval;
  BSIntervalValueForFraction();
  v5 = v4;
  [(SBViewControllerContextTransitioning *)self->_transitionContext percentComplete:*&hintInterval.start];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if ([(SBViewControllerContextTransitioning *)self->_transitionContext isInteractive])
    {
      [(SBHintInteractor *)self updateTransition:v5];
    }
  }
}

@end