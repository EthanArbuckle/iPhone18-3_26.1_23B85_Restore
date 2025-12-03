@interface UIPageControllerScrollView
- (unint64_t)_abuttedPagingEdges;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration;
- (void)_scrollViewWillBeginDragging;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation UIPageControllerScrollView

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UIPageController *)self->_pageController _scrollView:self boundsDidChangeToSize:width, height];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v16 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    pageController = self->_pageController;
    [(UIView *)self bounds];
    [(UIPageController *)pageController _scrollView:self boundsDidChangeToSize:v14, v15];
  }
}

- (void)layoutSubviews
{
  if (![(UIWindow *)[(UIView *)self window] isRotating])
  {
    [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:0];
    v3.receiver = self;
    v3.super_class = UIPageControllerScrollView;
    [(UIScrollView *)&v3 layoutSubviews];
  }
}

- (void)_scrollViewWillBeginDragging
{
  [(UIPageController *)self->_pageController _scrollViewWillBeginPaging];
  v3.receiver = self;
  v3.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v3 _scrollViewWillBeginDragging];
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration
{
  decelerationCopy = deceleration;
  if (!deceleration)
  {
    [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:1];
    [(UIPageController *)self->_pageController _scrollViewDidEndPaging];
  }

  v5.receiver = self;
  v5.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v5 _scrollViewDidEndDraggingWithDeceleration:decelerationCopy];
}

- (void)_scrollViewDidEndDecelerating
{
  [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:1];
  [(UIPageController *)self->_pageController _scrollViewDidEndPaging];
  v3.receiver = self;
  v3.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v3 _scrollViewDidEndDecelerating];
}

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  finishedCopy = finished;
  [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:1];
  [(UIPageController *)self->_pageController _scrollViewDidEndPaging];
  v7.receiver = self;
  v7.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v7 _scrollViewAnimationEnded:ended finished:finishedCopy];
}

- (unint64_t)_abuttedPagingEdges
{
  v14.receiver = self;
  v14.super_class = UIPageControllerScrollView;
  _abuttedPagingEdges = [(UIScrollView *)&v14 _abuttedPagingEdges];
  if (![(UIScrollView *)self _isHorizontalBouncing])
  {
    [(UIPageController *)self->_pageController delegate];
    if (objc_opt_respondsToSelector())
    {
      visibleIndex = [(UIPageController *)self->_pageController visibleIndex];
      [(UIScrollView *)self _pageDecelerationTarget];
      v6 = v5;
      [(UIScrollView *)self contentOffset];
      v8 = v7;
      if ([(UIScrollView *)self isDecelerating])
      {
        v9 = vabdd_f64(v6, v8);
        if (v9 >= 2.22044605e-16)
        {
          [(UIView *)self bounds];
          v11 = v9 / v10;
          v12 = ceilf(v11);
          if (COERCE__INT64(v6 - v8) < 0)
          {
            v12 = -v12;
          }

          visibleIndex = (v12 + visibleIndex);
        }
      }

      return _abuttedPagingEdges & 0xFFFFFFFFFFFFFFF5 | (2 * (visibleIndex < 1)) | (8 * (visibleIndex >= [(UIPageController *)self->_pageController pageCount]- 1));
    }
  }

  return _abuttedPagingEdges;
}

@end