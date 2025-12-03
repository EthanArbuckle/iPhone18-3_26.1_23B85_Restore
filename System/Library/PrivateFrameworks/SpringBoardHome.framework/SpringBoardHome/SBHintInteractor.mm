@interface SBHintInteractor
- (SBHintInteractor)initWithInteractionProgress:(id)progress maxHintProgress:(double)hintProgress;
- (void)_updateInteractionPercentComplete:(double)complete;
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
- (void)startInteractiveTransition:(id)transition;
@end

@implementation SBHintInteractor

- (SBHintInteractor)initWithInteractionProgress:(id)progress maxHintProgress:(double)hintProgress
{
  progressCopy = progress;
  v11.receiver = self;
  v11.super_class = SBHintInteractor;
  v8 = [(SBHintInteractor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interactionProgress, progress);
    v9->_hintInterval.start.value = 0.0;
    v9->_hintInterval.start.inclusive = 1;
    *(&v9->_hintInterval.start.inclusive + 1) = 0;
    *(&v9->_hintInterval.start.inclusive + 1) = 0;
    v9->_hintInterval.end.value = hintProgress;
    v9->_hintInterval.end.inclusive = 1;
    *(&v9->_hintInterval.end.inclusive + 1) = 0;
    *(&v9->_hintInterval.end.inclusive + 1) = 0;
  }

  return v9;
}

- (void)startInteractiveTransition:(id)transition
{
  objc_storeStrong(&self->_transitionContext, transition);
  interactionProgress = [(SBHintInteractor *)self interactionProgress];
  [interactionProgress addProgressObserver:self];
  [interactionProgress percentComplete];
  [(SBHintInteractor *)self _updateInteractionPercentComplete:?];
}

- (void)interactionProgressDidUpdate:(id)update
{
  [update percentComplete];

  [(SBHintInteractor *)self _updateInteractionPercentComplete:?];
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  endCopy = end;
  progressCopy = progress;
  if ([(SBViewControllerContextTransitioning *)self->_transitionContext isInteractive])
  {
    [progressCopy removeProgressObserver:self];
    if (endCopy)
    {
      [(SBHintInteractor *)self finishInteractiveTransition];
    }

    else
    {
      [(SBHintInteractor *)self cancelTransition];
    }
  }
}

- (void)_updateInteractionPercentComplete:(double)complete
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