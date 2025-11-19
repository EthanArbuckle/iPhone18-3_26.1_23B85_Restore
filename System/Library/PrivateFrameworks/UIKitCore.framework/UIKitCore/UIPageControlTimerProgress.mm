@interface UIPageControlTimerProgress
- (BOOL)_canInstallTimer;
- (BOOL)_shouldAdvanceToPage:(int64_t)a3;
- (NSTimeInterval)durationForPage:(NSInteger)page;
- (UIPageControlTimerProgress)initWithPreferredDuration:(NSTimeInterval)preferredDuration;
- (void)_didChangeCurrentPage;
- (void)_displayLinkTicked:(id)a3;
- (void)_progressVisibilityChanged:(BOOL)a3;
- (void)_updateTimer;
- (void)dealloc;
- (void)setCurrentProgress:(float)a3;
- (void)setDelegate:(id)delegate;
- (void)setDuration:(NSTimeInterval)duration forPage:(NSInteger)page;
- (void)setPageControl:(id)a3;
- (void)setPreferredDuration:(NSTimeInterval)preferredDuration;
@end

@implementation UIPageControlTimerProgress

- (UIPageControlTimerProgress)initWithPreferredDuration:(NSTimeInterval)preferredDuration
{
  if (preferredDuration <= 0.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIPageControlProgress.m" lineNumber:110 description:{@"preferredDuration (%f) must be greater than zero.", *&preferredDuration}];
  }

  v8.receiver = self;
  v8.super_class = UIPageControlTimerProgress;
  result = [(UIPageControlProgress *)&v8 init];
  if (result)
  {
    result->_preferredDuration = preferredDuration;
  }

  return result;
}

- (void)setPageControl:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v4 setPageControl:a3];
  [(UIPageControlTimerProgress *)self _updateTimer];
}

- (void)setCurrentProgress:(float)a3
{
  v6.receiver = self;
  v6.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v6 setCurrentProgress:?];
  currentDuration = self->_currentDuration;
  [(UIPageControlProgress *)self currentProgress];
  self->_currentDurationProgress = currentDuration * v5;
}

- (void)setDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = UIPageControlTimerProgress;
  v4 = delegate;
  [(UIPageControlProgress *)&v7 setDelegate:v4];
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

- (void)setPreferredDuration:(NSTimeInterval)preferredDuration
{
  if (preferredDuration <= 0.0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIPageControlProgress.m" lineNumber:138 description:{@"preferredDuration (%f) must be greater than zero.", *&preferredDuration}];
  }

  self->_preferredDuration = preferredDuration;

  [(UIPageControlTimerProgress *)self _updateTimer];
}

- (void)setDuration:(NSTimeInterval)duration forPage:(NSInteger)page
{
  customDurationByPage = self->_customDurationByPage;
  if (duration <= 0.0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:page];
    [(NSMutableDictionary *)customDurationByPage removeObjectForKey:?];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:page];
    [(NSMutableDictionary *)customDurationByPage setObject:v7 forKey:v6];
  }
}

- (NSTimeInterval)durationForPage:(NSInteger)page
{
  customDurationByPage = self->_customDurationByPage;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:page];
  v6 = [(NSMutableDictionary *)customDurationByPage objectForKey:v5];

  if (v6)
  {
    [v6 doubleValue];
  }

  else
  {
    [(UIPageControlTimerProgress *)self preferredDuration];
  }

  v8 = v7;

  return v8;
}

- (void)_didChangeCurrentPage
{
  v3 = [(UIPageControlProgress *)self pageControl];
  -[UIPageControlTimerProgress durationForPage:](self, "durationForPage:", [v3 currentPage]);
  self->_currentDuration = v4;

  v5.receiver = self;
  v5.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v5 _didChangeCurrentPage];
}

- (BOOL)_canInstallTimer
{
  v3 = [(UIPageControlProgress *)self pageControl];
  v4 = [v3 window];
  v5 = v4 && [(UIPageControlProgress *)self isProgressVisible]&& [(UIPageControlTimerProgress *)self enableTimer];

  return v5;
}

- (void)_updateTimer
{
  v3 = [(UIPageControlTimerProgress *)self _canInstallTimer];
  v4 = [(UIPageControlTimerProgress *)self displayLink];

  if (v3)
  {
    if (!v4)
    {
      v5 = [(UIPageControlProgress *)self pageControl];
      v6 = [v5 _screen];
      v12 = [v6 displayLinkWithTarget:self selector:sel__displayLinkTicked_];

      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v12 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

      v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v12 addToRunLoop:v8 forMode:@"UITrackingRunLoopMode"];

      [(UIPageControlTimerProgress *)self setDisplayLink:v12];
      self->_previousTime = CFAbsoluteTimeGetCurrent();
      v9 = [(UIPageControlProgress *)self pageControl];
      -[UIPageControlTimerProgress durationForPage:](self, "durationForPage:", [v9 currentPage]);
      self->_currentDuration = v10;
    }
  }

  else if (v4)
  {
    v11 = [(UIPageControlTimerProgress *)self displayLink];
    [v11 invalidate];

    [(UIPageControlTimerProgress *)self setDisplayLink:0];
  }
}

- (void)_displayLinkTicked:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - self->_previousTime;
  v6 = [(UIPageControlProgress *)self pageControl];
  v7 = v5 + self->_currentDurationProgress;
  v10 = v6;
  if (v7 >= self->_currentDuration)
  {
    v9 = [v6 currentPage] + 1;
    if (v9 == [v10 numberOfPages] && -[UIPageControlTimerProgress resetsToInitialPageAfterEnd](self, "resetsToInitialPageAfterEnd"))
    {
      v9 = 0;
    }

    if (v9 < [v10 numberOfPages] && -[UIPageControlTimerProgress _shouldAdvanceToPage:](self, "_shouldAdvanceToPage:", v9))
    {
      [v10 _setPage:v9 interactionState:1];
    }

    else
    {
      [(UIPageControlTimerProgress *)self pauseTimer];
    }
  }

  else
  {
    self->_currentDurationProgress = v7;
    v8 = v7 / self->_currentDuration;
    *&v8 = v8;
    [(UIPageControlTimerProgress *)self setCurrentProgress:v8];
  }

  self->_previousTime = Current;
}

- (BOOL)_shouldAdvanceToPage:(int64_t)a3
{
  if ((*&self->_delegateImplements & 2) == 0)
  {
    return 1;
  }

  v6 = [(UIPageControlProgress *)self delegate];
  LOBYTE(a3) = [v6 pageControlTimerProgress:self shouldAdvanceToPage:a3];

  return a3;
}

- (void)_progressVisibilityChanged:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v4 _progressVisibilityChanged:a3];
  [(UIPageControlTimerProgress *)self _updateTimer];
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = UIPageControlTimerProgress;
  [(UIPageControlTimerProgress *)&v3 dealloc];
}

@end