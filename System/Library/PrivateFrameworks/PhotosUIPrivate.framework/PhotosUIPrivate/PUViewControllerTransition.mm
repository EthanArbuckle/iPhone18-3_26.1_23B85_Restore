@interface PUViewControllerTransition
+ (id)interactionControllerForAnimationController:(id)controller;
- (CGRect)finalFromViewFrame;
- (CGRect)finalToViewFrame;
- (CGRect)initialFromViewFrame;
- (CGRect)initialToViewFrame;
- (PUViewControllerTransition)initWithDuration:(double)duration;
- (double)imageModulationIntensity;
- (id)interactiveTransition;
- (void)animationEnded:(BOOL)ended;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)setVisibleInteractiveProgress:(double)progress;
- (void)updateInteractiveTransitionProgress:(double)progress visibleTransitionProgress:(double)transitionProgress;
@end

@implementation PUViewControllerTransition

- (void)animationEnded:(BOOL)ended
{
  transitionContext = self->_transitionContext;
  self->_transitionContext = 0;

  interactiveTransition = self->_interactiveTransition;
  self->_interactiveTransition = 0;

  [(PUViewControllerTransition *)self setStartedInteractively:0];
}

- (CGRect)finalToViewFrame
{
  transitionContext = self->_transitionContext;
  toViewController = [(PUViewControllerTransition *)self toViewController];
  [(UIViewControllerContextTransitioning *)transitionContext finalFrameForViewController:toViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)finalFromViewFrame
{
  transitionContext = self->_transitionContext;
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  [(UIViewControllerContextTransitioning *)transitionContext finalFrameForViewController:fromViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)initialToViewFrame
{
  transitionContext = self->_transitionContext;
  toViewController = [(PUViewControllerTransition *)self toViewController];
  [(UIViewControllerContextTransitioning *)transitionContext initialFrameForViewController:toViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)initialFromViewFrame
{
  transitionContext = self->_transitionContext;
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  [(UIViewControllerContextTransitioning *)transitionContext initialFrameForViewController:fromViewController];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)interactiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive]&& !self->_interactiveTransition)
  {
    _newInteractiveTransition = [(PUViewControllerTransition *)self _newInteractiveTransition];
    interactiveTransition = self->_interactiveTransition;
    self->_interactiveTransition = _newInteractiveTransition;
  }

  v5 = self->_interactiveTransition;

  return v5;
}

- (void)cancelInteractiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    interactiveTransition = self->_interactiveTransition;

    [(UIPercentDrivenInteractiveTransition *)interactiveTransition cancelInteractiveTransition];
  }
}

- (void)finishInteractiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    interactiveTransition = self->_interactiveTransition;

    [(UIPercentDrivenInteractiveTransition *)interactiveTransition finishInteractiveTransition];
  }
}

- (void)updateInteractiveTransitionProgress:(double)progress visibleTransitionProgress:(double)transitionProgress
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    [(PUViewControllerTransition *)self _setInteractiveProgress:progress];
    transitionProgressCopy = 0.0;
    if (transitionProgress >= 0.0)
    {
      transitionProgressCopy = transitionProgress;
    }

    [(PUViewControllerTransition *)self setVisibleInteractiveProgress:fmin(transitionProgressCopy, 1.0)];
    v8 = fmin(progress, 0.999000013);
    interactiveTransition = self->_interactiveTransition;

    [(UIPercentDrivenInteractiveTransition *)interactiveTransition updateInteractiveTransition:v8];
  }
}

- (double)imageModulationIntensity
{
  v4 = MEMORY[0x1E69C4058];
  if (![(PUViewControllerTransition *)self isInteractive])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUViewControllerTransition.m" lineNumber:71 description:@"undefined for non-interactive transition"];
  }

  v5 = *v4;
  [(PUViewControllerTransition *)self visibleInteractiveProgress];
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  toViewController = [(PUViewControllerTransition *)self toViewController];
  v8 = toViewController;
  if (fromViewController && toViewController)
  {
    [fromViewController px_imageModulationIntensity];
    [v8 px_imageModulationIntensity];
    PXFloatByLinearlyInterpolatingFloats();
    v5 = v9;
  }

  return v5;
}

- (void)setVisibleInteractiveProgress:(double)progress
{
  if (self->_visibleInteractiveProgress != progress)
  {
    self->_visibleInteractiveProgress = progress;
    [(PUViewControllerTransition *)self imageModulationIntensityDidChange];
  }
}

- (PUViewControllerTransition)initWithDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = PUViewControllerTransition;
  result = [(PUViewControllerTransition *)&v5 init];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

+ (id)interactionControllerForAnimationController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interactiveTransition = [controllerCopy interactiveTransition];
  }

  else
  {
    interactiveTransition = 0;
  }

  return interactiveTransition;
}

@end