@interface SKUINavigationBarContext
- (UIViewController)parentViewController;
@end

@implementation SKUINavigationBarContext

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end