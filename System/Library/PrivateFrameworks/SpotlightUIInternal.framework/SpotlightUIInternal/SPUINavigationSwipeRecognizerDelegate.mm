@interface SPUINavigationSwipeRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (SPUINavigationController)navigationController;
- (SPUINavigationSwipeRecognizerDelegate)initWithNavigationController:(id)a3;
@end

@implementation SPUINavigationSwipeRecognizerDelegate

- (SPUINavigationSwipeRecognizerDelegate)initWithNavigationController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPUINavigationSwipeRecognizerDelegate;
  v5 = [(SPUINavigationSwipeRecognizerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPUINavigationSwipeRecognizerDelegate *)v5 setNavigationController:v4];
  }

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [(SPUINavigationSwipeRecognizerDelegate *)self navigationController];
  v5 = [v4 viewControllers];
  if ([v5 count] > 1)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(SPUINavigationSwipeRecognizerDelegate *)self navigationController];
    v7 = [v6 sui_isTransitioning];
  }

  return v7;
}

- (SPUINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end