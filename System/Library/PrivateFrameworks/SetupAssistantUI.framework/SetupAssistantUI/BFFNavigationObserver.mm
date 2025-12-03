@interface BFFNavigationObserver
+ (id)observerWithObserver:(id)observer;
- (BFFNavigationControllerDelegate)observer;
@end

@implementation BFFNavigationObserver

+ (id)observerWithObserver:(id)observer
{
  observerCopy = observer;
  v4 = objc_opt_new();
  [v4 setObserver:observerCopy];

  return v4;
}

- (BFFNavigationControllerDelegate)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end