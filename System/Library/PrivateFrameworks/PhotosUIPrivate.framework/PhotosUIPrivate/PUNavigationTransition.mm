@interface PUNavigationTransition
+ (BOOL)shouldCrossFadeBottomBarsForNavigationController:(id)a3;
+ (id)animationControllerForOperation:(int64_t)a3 fromViewController:(id)a4 toViewController:(id)a5 inNavigationController:(id)a6;
- (PUNavigationTransition)initWithPushDuration:(double)a3 popDuration:(double)a4;
- (UINavigationController)navigationController;
- (UIViewController)expectedDestinationOnPop;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)a3;
- (void)didCompleteTransitionAnimation;
- (void)finishInteractiveTransition;
- (void)imageModulationIntensityDidChange;
- (void)transitionWillStartOperation:(int64_t)a3 animated:(BOOL)a4 interactive:(BOOL)a5;
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

- (void)transitionWillStartOperation:(int64_t)a3 animated:(BOOL)a4 interactive:(BOOL)a5
{
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 isStatusBarHidden];

  [(PUNavigationTransition *)self setWasStatusBarHiddenBeforeTransition:v7];
}

- (void)animateTransition:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v5 animateTransition:a3];
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

- (double)transitionDuration:(id)a3
{
  v4 = [(PUNavigationTransition *)self _operation];
  if (v4 >= 2)
  {
    if (v4 == 2)
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

- (void)completeTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUNavigationTransition *)self navigationController];
  [v5 pu_navigationTransitionWillEnd:self];
  [(PUNavigationTransition *)self _setOperation:0];
  v6.receiver = self;
  v6.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v6 completeTransition:v3];
  [v5 pu_navigationTransitionDidEnd:self];
}

- (void)didCompleteTransitionAnimation
{
  v4.receiver = self;
  v4.super_class = PUNavigationTransition;
  [(PUViewControllerTransition *)&v4 didCompleteTransitionAnimation];
  v3 = [(PUNavigationTransition *)self navigationController];
  [v3 ppt_notifyTransitionAnimationDidComplete];
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
  v3 = [(PUNavigationTransition *)self navigationController];
  [v3 px_setNeedsImageModulationIntensityUpdate];
}

- (PUNavigationTransition)initWithPushDuration:(double)a3 popDuration:(double)a4
{
  v7.receiver = self;
  v7.super_class = PUNavigationTransition;
  result = [(PUViewControllerTransition *)&v7 initWithDuration:?];
  if (result)
  {
    result->_pushDuration = a3;
    result->_popDuration = a4;
  }

  return result;
}

+ (BOOL)shouldCrossFadeBottomBarsForNavigationController:(id)a3
{
  v3 = [a3 topViewController];
  v4 = [v3 pu_navigationTransition];
  v5 = [v4 _operation] != 0;

  return v5;
}

+ (id)animationControllerForOperation:(int64_t)a3 fromViewController:(id)a4 toViewController:(id)a5 inNavigationController:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (a3 == 1)
  {
    v12 = [v10 pu_navigationTransition];
    v15 = [v12 expectedDestinationOnPop];

    if (!v15)
    {
      [v12 setExpectedDestinationOnPop:v9];
    }
  }

  else if (a3 == 2)
  {
    v12 = [v9 pu_navigationTransition];
    v13 = [v12 expectedDestinationOnPop];
    v14 = v13;
    if (v13 && v13 != v10)
    {

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  [v12 setNavigationController:v11];
  [v12 transitionWillAnimateOperation:a3 interactive:{objc_msgSend(v12, "isInteractive")}];
  [v12 _setOperation:a3];
  [v11 pu_navigationTransitionWillStart:v12];

  return v12;
}

@end