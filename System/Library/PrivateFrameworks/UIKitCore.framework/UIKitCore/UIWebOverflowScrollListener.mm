@interface UIWebOverflowScrollListener
- (UIWebOverflowScrollListener)initWithScrollView:(id)view;
- (void)_didCompleteScrolling;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation UIWebOverflowScrollListener

- (UIWebOverflowScrollListener)initWithScrollView:(id)view
{
  v7.receiver = self;
  v7.super_class = UIWebOverflowScrollListener;
  v4 = [(UIWebOverflowScrollListener *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_scrollView = view;
    [view setDelegate:v4];
  }

  return v5;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  webBrowserView = [(UIWebOverflowScrollView *)self->_scrollView webBrowserView];
  scrollView = self->_scrollView;
  node = [(UIWebOverflowScrollView *)scrollView node];

  [(UIWebBrowserView *)webBrowserView _overflowScrollView:scrollView willStartScrollingForNode:node];
}

- (void)_didCompleteScrolling
{
  [(UIWebBrowserView *)[(UIWebOverflowScrollView *)self->_scrollView webBrowserView] _overflowScrollView:self->_scrollView scrollOffsetChangedForNode:[(UIWebOverflowScrollView *)self->_scrollView node] whileScrolling:0];
  webBrowserView = [(UIWebOverflowScrollView *)self->_scrollView webBrowserView];
  scrollView = self->_scrollView;
  node = [(UIWebOverflowScrollView *)scrollView node];

  [(UIWebBrowserView *)webBrowserView _overflowScrollView:scrollView didEndScrollingForNode:node];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(UIWebOverflowScrollListener *)self _didCompleteScrolling];
  }
}

@end