@interface _UISearchControllerDidScrollDelegate
- (UIScrollView)scrollView;
- (_UIScrollViewScrollObserver_Internal)controller;
- (void)_didScroll;
- (void)_observeScrollViewDidScroll:(id)scroll;
@end

@implementation _UISearchControllerDidScrollDelegate

- (void)_didScroll
{
  controller = [(_UISearchControllerDidScrollDelegate *)self controller];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    controller2 = [(_UISearchControllerDidScrollDelegate *)self controller];
    [controller2 _didScroll];
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  controller = [(_UISearchControllerDidScrollDelegate *)self controller];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    controller2 = [(_UISearchControllerDidScrollDelegate *)self controller];
    [controller2 _observeScrollViewDidScroll:scrollCopy];
  }
}

- (_UIScrollViewScrollObserver_Internal)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end