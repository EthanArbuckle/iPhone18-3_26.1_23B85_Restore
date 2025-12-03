@interface PUNavigationTransition
+ (BOOL)shouldCrossFadeBottomBarsForNavigationController:(id)controller;
+ (id)animationControllerForOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController inNavigationController:(id)navigationController;
- (PUNavigationTransition)initWithPushDuration:(double)duration popDuration:(double)popDuration;
- (UINavigationController)navigationController;
- (UIViewController)expectedDestinationOnPop;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)transition;
- (void)didCompleteTransitionAnimation;
- (void)finishInteractiveTransition;
- (void)imageModulationIntensityDidChange;
- (void)transitionWillStartOperation:(int64_t)operation animated:(BOOL)animated interactive:(BOOL)interactive;
@end

@implementation PUNavigationTransition

- (UIViewController)expectedDestinationOnPop
{
  WeakRetained = objc_loadWeakRetained(&self->_expectedDestinationOnPop);

  return WeakRetained;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (void)transitionWillStartOperation:(int64_t)operation animated:(BOOL)animated interactive:(BOOL)interactive
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

  [(PUNavigationTransition *)self setWasStatusBarHiddenBeforeTransition:isStatusBarHidden];
}

- (void)animateTransition:(id)transition
{
  v5.receiver = self;
  v5.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v5 animateTransition:transition];
  operation = self->__operation;
  if (operation == 2)
  {
    [(PUNavigationTransition *)self animatePopTransition];
  }

  else if (operation == 1)
  {
    [(PUNavigationTransition *)self animatePushTransition];
  }
}

- (double)transitionDuration:(id)duration
{
  _operation = [(PUNavigationTransition *)self _operation];
  if (_operation >= 2)
  {
    if (_operation == 2)
    {

      [(PUNavigationTransition *)self popDuration];
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(PUViewControllerTransition *)self duration];
  }

  return result;
}

- (void)completeTransition:(BOOL)transition
{
  transitionCopy = transition;
  navigationController = [(PUNavigationTransition *)self navigationController];
  [navigationController pu_navigationTransitionWillEnd:self];
  [(PUNavigationTransition *)self _setOperation:0];
  v6.receiver = self;
  v6.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v6 completeTransition:transitionCopy];
  [navigationController pu_navigationTransitionDidEnd:self];
}

- (void)didCompleteTransitionAnimation
{
  v4.receiver = self;
  v4.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v4 didCompleteTransitionAnimation];
  navigationController = [(PUNavigationTransition *)self navigationController];
  [navigationController ppt_notifyTransitionAnimationDidComplete];
}

- (void)cancelInteractiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    [(PUNavigationTransition *)self completeInteractiveOperation:[(PUNavigationTransition *)self _operation] finished:0];
  }

  v3.receiver = self;
  v3.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v3 cancelInteractiveTransition];
}

- (void)finishInteractiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    [(PUNavigationTransition *)self completeInteractiveOperation:[(PUNavigationTransition *)self _operation] finished:1];
  }

  v3.receiver = self;
  v3.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v3 finishInteractiveTransition];
}

- (void)imageModulationIntensityDidChange
{
  v4.receiver = self;
  v4.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v4 imageModulationIntensityDidChange];
  navigationController = [(PUNavigationTransition *)self navigationController];
  [navigationController px_setNeedsImageModulationIntensityUpdate];
}

- (PUNavigationTransition)initWithPushDuration:(double)duration popDuration:(double)popDuration
{
  v7.receiver = self;
  v7.super_class = PUNavigationTransition;
  result = [(PUViewControllerTransition *)&v7 initWithDuration:?];
  if (result)
  {
    result->_pushDuration = duration;
    result->_popDuration = popDuration;
  }

  return result;
}

+ (BOOL)shouldCrossFadeBottomBarsForNavigationController:(id)controller
{
  topViewController = [controller topViewController];
  pu_navigationTransition = [topViewController pu_navigationTransition];
  v5 = [pu_navigationTransition _operation] != 0;

  return v5;
}

+ (id)animationControllerForOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController inNavigationController:(id)navigationController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  navigationControllerCopy = navigationController;
  if (operation == 1)
  {
    pu_navigationTransition = [viewControllerCopy pu_navigationTransition];
    expectedDestinationOnPop = [pu_navigationTransition expectedDestinationOnPop];

    if (!expectedDestinationOnPop)
    {
      [pu_navigationTransition setExpectedDestinationOnPop:controllerCopy];
    }
  }

  else if (operation == 2)
  {
    pu_navigationTransition = [controllerCopy pu_navigationTransition];
    expectedDestinationOnPop2 = [pu_navigationTransition expectedDestinationOnPop];
    v14 = expectedDestinationOnPop2;
    if (expectedDestinationOnPop2 && expectedDestinationOnPop2 != viewControllerCopy)
    {

      pu_navigationTransition = 0;
    }
  }

  else
  {
    pu_navigationTransition = 0;
  }

  [pu_navigationTransition setNavigationController:navigationControllerCopy];
  [pu_navigationTransition transitionWillAnimateOperation:operation interactive:{objc_msgSend(pu_navigationTransition, "isInteractive")}];
  [pu_navigationTransition _setOperation:operation];
  [navigationControllerCopy pu_navigationTransitionWillStart:pu_navigationTransition];

  return pu_navigationTransition;
}

@end