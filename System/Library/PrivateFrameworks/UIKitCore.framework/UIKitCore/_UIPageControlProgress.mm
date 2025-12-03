@interface _UIPageControlProgress
- (void)_pausePageProgress;
- (void)_progressVisibilityChanged:(BOOL)changed;
- (void)_resumePageProgress;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIPageControlProgress

- (void)setDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = _UIPageControlProgress;
  delegateCopy = delegate;
  [(UIPageControlProgress *)&v8 setDelegate:delegateCopy];
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

- (void)_progressVisibilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v5.receiver = self;
  v5.super_class = _UIPageControlProgress;
  [(UIPageControlProgress *)&v5 _progressVisibilityChanged:?];
  if (changedCopy)
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
    delegate = [(UIPageControlProgress *)self delegate];
    [delegate _pageControlProgressDidPause:self];
  }
}

- (void)_resumePageProgress
{
  if ((*&self->_delegateImplements & 4) != 0)
  {
    delegate = [(UIPageControlProgress *)self delegate];
    [delegate _pageControlProgressDidResume:self];
  }
}

@end