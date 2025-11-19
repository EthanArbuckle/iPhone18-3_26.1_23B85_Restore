@interface UIPageControlProgress
- (UIPageControl)pageControl;
- (UIPageControlProgress)init;
- (float)_initialProgressForPage:(int64_t)a3;
- (id)delegate;
- (void)_didChangeCurrentPage;
- (void)_progressVisibilityChanged:(BOOL)a3;
- (void)setCurrentProgress:(float)currentProgress;
- (void)setDelegate:(id)delegate;
- (void)setPageControl:(id)a3;
@end

@implementation UIPageControlProgress

- (UIPageControlProgress)init
{
  v5.receiver = self;
  v5.super_class = UIPageControlProgress;
  v2 = [(UIPageControlProgress *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIPageControlProgress *)v2 _didChangeCurrentPage];
  }

  return v3;
}

- (void)setCurrentProgress:(float)currentProgress
{
  v4 = fmax(fmin(currentProgress, 1.0), 0.0);
  if (self->_currentProgress != v4)
  {
    self->_currentProgress = v4;
    v5 = [(UIPageControlProgress *)self pageControl];
    [v5 _updateCurrentPageProgress];
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  objc_storeWeak(&self->_delegate, v4);
  *&self->_delegateImplements = *&self->_delegateImplements & 0xFE | objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *&self->_delegateImplements = *&self->_delegateImplements & 0xFD | v6;
}

- (void)_progressVisibilityChanged:(BOOL)a3
{
  self->_progressVisible = a3;
  if ((*&self->_delegateImplements & 2) != 0)
  {
    v5 = [(UIPageControlProgress *)self delegate];
    [v5 pageControlProgressVisibilityDidChange:self];
  }
}

- (void)_didChangeCurrentPage
{
  v3 = [(UIPageControlProgress *)self pageControl];
  -[UIPageControlProgress _initialProgressForPage:](self, "_initialProgressForPage:", [v3 currentPage]);
  [(UIPageControlProgress *)self setCurrentProgress:?];

  v4 = [(UIPageControlProgress *)self pageControl];
  [v4 _updateCurrentPageProgress];
}

- (float)_initialProgressForPage:(int64_t)a3
{
  if ((*&self->_delegateImplements & 1) == 0)
  {
    return 0.0;
  }

  v6 = [(UIPageControlProgress *)self delegate];
  [v6 pageControlProgress:self initialProgressForPage:a3];
  v8 = v7;

  return v8;
}

- (void)setPageControl:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pageControl);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pageControl, obj);
    v5 = obj;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIPageControl)pageControl
{
  WeakRetained = objc_loadWeakRetained(&self->_pageControl);

  return WeakRetained;
}

@end