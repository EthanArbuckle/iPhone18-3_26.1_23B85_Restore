@interface _UISearchControllerTVKeyboardContainerView
- (UIScrollView)observedScrollView;
@end

@implementation _UISearchControllerTVKeyboardContainerView

- (UIScrollView)observedScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_observedScrollView);

  return WeakRetained;
}

@end