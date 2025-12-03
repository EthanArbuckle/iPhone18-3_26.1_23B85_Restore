@interface UIPageControlTimerProgress
- (BOOL)_canInstallTimer;
- (BOOL)_shouldAdvanceToPage:(int64_t)page;
- (NSTimeInterval)durationForPage:(NSInteger)page;
- (UIPageControlTimerProgress)initWithPreferredDuration:(NSTimeInterval)preferredDuration;
- (void)_didChangeCurrentPage;
- (void)_displayLinkTicked:(id)ticked;
- (void)_progressVisibilityChanged:(BOOL)changed;
- (void)_updateTimer;
- (void)dealloc;
- (void)setCurrentProgress:(float)progress;
- (void)setDelegate:(id)delegate;
- (void)setDuration:(NSTimeInterval)duration forPage:(NSInteger)page;
- (void)setPageControl:(id)control;
- (void)setPreferredDuration:(NSTimeInterval)preferredDuration;
@end

@implementation UIPageControlTimerProgress

- (UIPageControlTimerProgress)initWithPreferredDuration:(NSTimeInterval)preferredDuration
{
  if (preferredDuration <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControlProgress.m" lineNumber:110 description:{@"preferredDuration (%f) must be greater than zero.", *&preferredDuration}];
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

- (void)setPageControl:(id)control
{
  v4.receiver = self;
  v4.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v4 setPageControl:control];
  [(UIPageControlTimerProgress *)self _updateTimer];
}

- (void)setCurrentProgress:(float)progress
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPageControlProgress.m" lineNumber:138 description:{@"preferredDuration (%f) must be greater than zero.", *&preferredDuration}];
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
  pageControl = [(UIPageControlProgress *)self pageControl];
  -[UIPageControlTimerProgress durationForPage:](self, "durationForPage:", [pageControl currentPage]);
  self->_currentDuration = v4;

  v5.receiver = self;
  v5.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v5 _didChangeCurrentPage];
}

- (BOOL)_canInstallTimer
{
  pageControl = [(UIPageControlProgress *)self pageControl];
  window = [pageControl window];
  v5 = window && [(UIPageControlProgress *)self isProgressVisible]&& [(UIPageControlTimerProgress *)self enableTimer];

  return v5;
}

- (void)_updateTimer
{
  _canInstallTimer = [(UIPageControlTimerProgress *)self _canInstallTimer];
  displayLink = [(UIPageControlTimerProgress *)self displayLink];

  if (_canInstallTimer)
  {
    if (!displayLink)
    {
      pageControl = [(UIPageControlProgress *)self pageControl];
      _screen = [pageControl _screen];
      v12 = [_screen displayLinkWithTarget:self selector:sel__displayLinkTicked_];

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v12 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v12 addToRunLoop:mainRunLoop2 forMode:@"UITrackingRunLoopMode"];

      [(UIPageControlTimerProgress *)self setDisplayLink:v12];
      self->_previousTime = CFAbsoluteTimeGetCurrent();
      pageControl2 = [(UIPageControlProgress *)self pageControl];
      -[UIPageControlTimerProgress durationForPage:](self, "durationForPage:", [pageControl2 currentPage]);
      self->_currentDuration = v10;
    }
  }

  else if (displayLink)
  {
    displayLink2 = [(UIPageControlTimerProgress *)self displayLink];
    [displayLink2 invalidate];

    [(UIPageControlTimerProgress *)self setDisplayLink:0];
  }
}

- (void)_displayLinkTicked:(id)ticked
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - self->_previousTime;
  pageControl = [(UIPageControlProgress *)self pageControl];
  v7 = v5 + self->_currentDurationProgress;
  v10 = pageControl;
  if (v7 >= self->_currentDuration)
  {
    v9 = [pageControl currentPage] + 1;
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

- (BOOL)_shouldAdvanceToPage:(int64_t)page
{
  if ((*&self->_delegateImplements & 2) == 0)
  {
    return 1;
  }

  delegate = [(UIPageControlProgress *)self delegate];
  LOBYTE(page) = [delegate pageControlTimerProgress:self shouldAdvanceToPage:page];

  return page;
}

- (void)_progressVisibilityChanged:(BOOL)changed
{
  v4.receiver = self;
  v4.super_class = UIPageControlTimerProgress;
  [(UIPageControlProgress *)&v4 _progressVisibilityChanged:changed];
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