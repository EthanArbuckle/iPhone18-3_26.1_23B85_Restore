@interface _UIPageControlProgress
- (void)_pausePageProgress;
- (void)_progressVisibilityChanged:(BOOL)a3;
- (void)_resumePageProgress;
- (void)setDelegate:(id)a3;
@end

@implementation _UIPageControlProgress

- (void)setDelegate:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIPageControlProgress;
  v4 = a3;
  [(UIPageControlProgress *)&v8 setDelegate:v4];
  *&self->_delegateImplements = *&self->_delegateImplements & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateImplements = *&self->_delegateImplements & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateImplements = *&self->_delegateImplements & 0xFB | v7;
}

- (void)_progressVisibilityChanged:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIPageControlProgress;
  [(UIPageControlProgress *)&v5 _progressVisibilityChanged:?];
  if (v3)
  {
    [(_UIPageControlProgress *)self _resumePageProgress];
  }

  else
  {
    [(_UIPageControlProgress *)self _pausePageProgress];
  }
}

- (void)_pausePageProgress
{
  if ((*&self->_delegateImplements & 2) != 0)
  {
    v4 = [(UIPageControlProgress *)self delegate];
    [v4 _pageControlProgressDidPause:self];
  }
}

- (void)_resumePageProgress
{
  if ((*&self->_delegateImplements & 4) != 0)
  {
    v4 = [(UIPageControlProgress *)self delegate];
    [v4 _pageControlProgressDidResume:self];
  }
}

@end