@interface _UISearchControllerDidScrollDelegate
- (UIScrollView)scrollView;
- (_UIScrollViewScrollObserver_Internal)controller;
- (void)_didScroll;
- (void)_observeScrollViewDidScroll:(id)a3;
@end

@implementation _UISearchControllerDidScrollDelegate

- (void)_didScroll
{
  v3 = [(_UISearchControllerDidScrollDelegate *)self controller];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UISearchControllerDidScrollDelegate *)self controller];
    [v5 _didScroll];
  }
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(_UISearchControllerDidScrollDelegate *)self controller];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UISearchControllerDidScrollDelegate *)self controller];
    [v6 _observeScrollViewDidScroll:v7];
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