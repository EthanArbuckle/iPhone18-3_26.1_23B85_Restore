@interface SPUINavigationSwipeRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SPUINavigationController)navigationController;
- (SPUINavigationSwipeRecognizerDelegate)initWithNavigationController:(id)controller;
@end

@implementation SPUINavigationSwipeRecognizerDelegate

- (SPUINavigationSwipeRecognizerDelegate)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SPUINavigationSwipeRecognizerDelegate;
  v5 = [(SPUINavigationSwipeRecognizerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationSwipeRecognizerDelegate *)v5 setNavigationController:controllerCopy];
  }

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  navigationController = [(SPUINavigationSwipeRecognizerDelegate *)self navigationController];
  viewControllers = [navigationController viewControllers];
  if ([viewControllers count] > 1)
  {
    sui_isTransitioning = 1;
  }

  else
  {
    navigationController2 = [(SPUINavigationSwipeRecognizerDelegate *)self navigationController];
    sui_isTransitioning = [navigationController2 sui_isTransitioning];
  }

  return sui_isTransitioning;
}

- (SPUINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end