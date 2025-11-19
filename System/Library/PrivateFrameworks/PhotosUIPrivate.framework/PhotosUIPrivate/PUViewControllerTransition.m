@interface PUViewControllerTransition
+ (id)interactionControllerForAnimationController:(id)a3;
- (CGRect)finalFromViewFrame;
- (CGRect)finalToViewFrame;
- (CGRect)initialFromViewFrame;
- (CGRect)initialToViewFrame;
- (PUViewControllerTransition)initWithDuration:(double)a3;
- (double)imageModulationIntensity;
- (id)interactiveTransition;
- (void)animationEnded:(BOOL)a3;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)setVisibleInteractiveProgress:(double)a3;
- (void)updateInteractiveTransitionProgress:(double)a3 visibleTransitionProgress:(double)a4;
@end

@implementation PUViewControllerTransition

- (void)animationEnded:(BOOL)a3
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
  v3 = [(PUViewControllerTransition *)self toViewController];
  [(UIViewControllerContextTransitioning *)transitionContext finalFrameForViewController:v3];
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
  v3 = [(PUViewControllerTransition *)self fromViewController];
  [(UIViewControllerContextTransitioning *)transitionContext finalFrameForViewController:v3];
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
  v3 = [(PUViewControllerTransition *)self toViewController];
  [(UIViewControllerContextTransitioning *)transitionContext initialFrameForViewController:v3];
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
  v3 = [(PUViewControllerTransition *)self fromViewController];
  [(UIViewControllerContextTransitioning *)transitionContext initialFrameForViewController:v3];
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
    v3 = [(PUViewControllerTransition *)self _newInteractiveTransition];
    interactiveTransition = self->_interactiveTransition;
    self->_interactiveTransition = v3;
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

- (void)updateInteractiveTransitionProgress:(double)a3 visibleTransitionProgress:(double)a4
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    [(PUViewControllerTransition *)self _setInteractiveProgress:a3];
    v7 = 0.0;
    if (a4 >= 0.0)
    {
      v7 = a4;
    }

    [(PUViewControllerTransition *)self setVisibleInteractiveProgress:fmin(v7, 1.0)];
    v8 = fmin(a3, 0.999000013);
    interactiveTransition = self->_interactiveTransition;

    [(UIPercentDrivenInteractiveTransition *)interactiveTransition updateInteractiveTransition:v8];
  }
}

- (double)imageModulationIntensity
{
  v4 = MEMORY[0x1E69C4058];
  if (![(PUViewControllerTransition *)self isInteractive])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUViewControllerTransition.m" lineNumber:71 description:@"undefined for non-interactive transition"];
  }

  v5 = *v4;
  [(PUViewControllerTransition *)self visibleInteractiveProgress];
  v6 = [(PUViewControllerTransition *)self fromViewController];
  v7 = [(PUViewControllerTransition *)self toViewController];
  v8 = v7;
  if (v6 && v7)
  {
    [v6 px_imageModulationIntensity];
    [v8 px_imageModulationIntensity];
    PXFloatByLinearlyInterpolatingFloats();
    v5 = v9;
  }

  return v5;
}

- (void)setVisibleInteractiveProgress:(double)a3
{
  if (self->_visibleInteractiveProgress != a3)
  {
    self->_visibleInteractiveProgress = a3;
    [(PUViewControllerTransition *)self imageModulationIntensityDidChange];
  }
}

- (PUViewControllerTransition)initWithDuration:(double)a3
{
  v5.receiver = self;
  v5.super_class = PUViewControllerTransition;
  result = [(PUViewControllerTransition *)&v5 init];
  if (result)
  {
    result->_duration = a3;
  }

  return result;
}

+ (id)interactionControllerForAnimationController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 interactiveTransition];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end