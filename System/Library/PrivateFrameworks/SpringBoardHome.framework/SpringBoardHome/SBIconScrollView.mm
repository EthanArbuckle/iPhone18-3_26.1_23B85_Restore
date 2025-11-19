@interface SBIconScrollView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)cancelTouchTracking;
- (CGPoint)_roundedProposedContentOffset:(CGPoint)a3;
- (CGPoint)lastAnimatedScrollContentOffset;
- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)a3;
- (void)_setContentOffsetWithDecelerationAnimation:(CGPoint)a3;
- (void)setAlpha:(double)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
@end

@implementation SBIconScrollView

- (BOOL)cancelTouchTracking
{
  v3 = [(BSUIScrollView *)self delegate];
  if ([(SBIconScrollView *)self isTracking])
  {
    [v3 iconScrollViewWillCancelTouchTracking:self];
    [(SBIconScrollView *)self _forcePanGestureToEndImmediately];
    [v3 iconScrollViewDidCancelTouchTracking:self];
  }

  else
  {
    [(SBIconScrollView *)self _forcePanGestureToEndImmediately];
  }

  return 1;
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v11 = a3;
  v8 = [(BSUIScrollView *)self delegate];
  v9 = v8;
  if (v8)
  {
    if (![v8 iconScrollView:self shouldSetContentOffset:&v11 animated:v4])
    {
      goto LABEL_7;
    }

    x = v11.x;
    y = v11.y;
  }

  if (v4)
  {
    [(SBIconScrollView *)self setLastAnimatedScrollContentOffset:x, y];
    x = v11.x;
    y = v11.y;
  }

  v10.receiver = self;
  v10.super_class = SBIconScrollView;
  [(BSUIScrollView *)&v10 setContentOffset:v4 animated:x, y];
LABEL_7:
}

- (void)_setContentOffsetWithDecelerationAnimation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SBIconScrollView *)self setLastAnimatedScrollContentOffset:?];
  v6.receiver = self;
  v6.super_class = SBIconScrollView;
  [(SBIconScrollView *)&v6 _setContentOffsetWithDecelerationAnimation:x, y];
}

- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BSUIScrollView *)self delegate];
  v7 = v6;
  if (!v6 || [v6 iconScrollView:self shouldSetAutoscrollContentOffset:{x, y}])
  {
    v8.receiver = self;
    v8.super_class = SBIconScrollView;
    [(SBIconScrollView *)&v8 _autoScrollAssistantUpdateContentOffset:x, y];
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BSUIScrollView *)self delegate];
  v7 = v6;
  v9 = x;
  v10 = y;
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v6 iconScrollView:self shouldSetContentOffset:&v9 animated:0])
  {
    x = v9;
    y = v10;
LABEL_4:
    v8.receiver = self;
    v8.super_class = SBIconScrollView;
    [(BSUIScrollView *)&v8 setContentOffset:x, y];
  }
}

- (CGPoint)_roundedProposedContentOffset:(CGPoint)a3
{
  MEMORY[0x1EEE4DFB0](self, a2, a3, *&a3.y);
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconScrollView;
    v5 = [(SBIconScrollView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)setAlpha:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBIconScrollView;
  [(SBIconScrollView *)&v8 setAlpha:?];
  if (a3 == 0.0 || a3 == 1.0)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = [v6 subarrayWithRange:{0, 3}];
      *buf = 134218243;
      v10 = a3;
      v11 = 2113;
      v12 = v7;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "SBIconScrollView alpha was changed to: %f by: %{private}@", buf, 0x16u);
    }
  }
}

- (CGPoint)lastAnimatedScrollContentOffset
{
  x = self->_lastAnimatedScrollContentOffset.x;
  y = self->_lastAnimatedScrollContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end