@interface UIPageControllerScrollView
- (unint64_t)_abuttedPagingEdges;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3;
- (void)_scrollViewWillBeginDragging;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation UIPageControllerScrollView

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:1];
    [(UIPageController *)self->_pageController _scrollViewDidEndPaging];
  }

  v5.receiver = self;
  v5.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v5 _scrollViewDidEndDraggingWithDeceleration:v3];
}

- (void)_scrollViewDidEndDecelerating
{
  [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:1];
  [(UIPageController *)self->_pageController _scrollViewDidEndPaging];
  v3.receiver = self;
  v3.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v3 _scrollViewDidEndDecelerating];
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  [(UIPageController *)self->_pageController _scrollViewDidScroll:self forceUpdate:1];
  [(UIPageController *)self->_pageController _scrollViewDidEndPaging];
  v7.receiver = self;
  v7.super_class = UIPageControllerScrollView;
  [(UIScrollView *)&v7 _scrollViewAnimationEnded:a3 finished:v4];
}

- (unint64_t)_abuttedPagingEdges
{
  v14.receiver = self;
  v14.super_class = UIPageControllerScrollView;
  v3 = [(UIScrollView *)&v14 _abuttedPagingEdges];
  if (![(UIScrollView *)self _isHorizontalBouncing])
  {
    [(UIPageController *)self->_pageController delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(UIPageController *)self->_pageController visibleIndex];
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

          v4 = (v12 + v4);
        }
      }

      return v3 & 0xFFFFFFFFFFFFFFF5 | (2 * (v4 < 1)) | (8 * (v4 >= [(UIPageController *)self->_pageController pageCount]- 1));
    }
  }

  return v3;
}

@end