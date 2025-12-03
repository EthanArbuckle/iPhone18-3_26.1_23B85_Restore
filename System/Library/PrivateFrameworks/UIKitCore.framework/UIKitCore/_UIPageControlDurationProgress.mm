@interface _UIPageControlDurationProgress
- (BOOL)_shouldAdvanceToPage:(int64_t)page;
- (_UIPageControlDurationProgress)initWithPageDuration:(double)duration;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIPageControlDurationProgress

- (_UIPageControlDurationProgress)initWithPageDuration:(double)duration
{
  v4.receiver = self;
  v4.super_class = _UIPageControlDurationProgress;
  return [(UIPageControlTimerProgress *)&v4 initWithPreferredDuration:duration];
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = _UIPageControlDurationProgress;
  delegateCopy = delegate;
  [(UIPageControlTimerProgress *)&v6 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateImplements = *&self->_delegateImplements & 0xFE | v5 & 1;
}

- (BOOL)_shouldAdvanceToPage:(int64_t)page
{
  if (*&self->_delegateImplements)
  {
    delegate = [(UIPageControlProgress *)self delegate];
    v7 = [delegate _pageControlDurationProgress:self shouldAdvanceToPage:page];

    return v7;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIPageControlDurationProgress;
    return [(UIPageControlTimerProgress *)&v8 _shouldAdvanceToPage:page];
  }
}

@end