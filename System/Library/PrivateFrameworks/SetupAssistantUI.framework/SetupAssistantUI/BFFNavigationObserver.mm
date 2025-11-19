@interface BFFNavigationObserver
+ (id)observerWithObserver:(id)a3;
- (BFFNavigationControllerDelegate)observer;
@end

@implementation BFFNavigationObserver

+ (id)observerWithObserver:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObserver:v3];

  return v4;
}

- (BFFNavigationControllerDelegate)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end