@interface UIWebOverflowScrollListener
- (UIWebOverflowScrollListener)initWithScrollView:(id)a3;
- (void)_didCompleteScrolling;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
@end

@implementation UIWebOverflowScrollListener

- (UIWebOverflowScrollListener)initWithScrollView:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIWebOverflowScrollListener;
  v4 = [(UIWebOverflowScrollListener *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_scrollView = a3;
    [a3 setDelegate:v4];
  }

  return v5;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(UIWebOverflowScrollView *)self->_scrollView webBrowserView];
  scrollView = self->_scrollView;
  v6 = [(UIWebOverflowScrollView *)scrollView node];

  [(UIWebBrowserView *)v4 _overflowScrollView:scrollView willStartScrollingForNode:v6];
}

- (void)_didCompleteScrolling
{
  [(UIWebBrowserView *)[(UIWebOverflowScrollView *)self->_scrollView webBrowserView] _overflowScrollView:self->_scrollView scrollOffsetChangedForNode:[(UIWebOverflowScrollView *)self->_scrollView node] whileScrolling:0];
  v3 = [(UIWebOverflowScrollView *)self->_scrollView webBrowserView];
  scrollView = self->_scrollView;
  v5 = [(UIWebOverflowScrollView *)scrollView node];

  [(UIWebBrowserView *)v3 _overflowScrollView:scrollView didEndScrollingForNode:v5];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(UIWebOverflowScrollListener *)self _didCompleteScrolling];
  }
}

@end