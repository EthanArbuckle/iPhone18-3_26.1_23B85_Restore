@interface SBIconScrollView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)cancelTouchTracking;
- (CGPoint)_roundedProposedContentOffset:(CGPoint)offset;
- (CGPoint)lastAnimatedScrollContentOffset;
- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)offset;
- (void)_setContentOffsetWithDecelerationAnimation:(CGPoint)animation;
- (void)setAlpha:(double)alpha;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
@end

@implementation SBIconScrollView

- (BOOL)cancelTouchTracking
{
  delegate = [(BSUIScrollView *)self delegate];
  if ([(SBIconScrollView *)self isTracking])
  {
    [delegate iconScrollViewWillCancelTouchTracking:self];
    [(SBIconScrollView *)self _forcePanGestureToEndImmediately];
    [delegate iconScrollViewDidCancelTouchTracking:self];
  }

  else
  {
    [(SBIconScrollView *)self _forcePanGestureToEndImmediately];
  }

  return 1;
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  offsetCopy = offset;
  delegate = [(BSUIScrollView *)self delegate];
  v9 = delegate;
  if (delegate)
  {
    if (![delegate iconScrollView:self shouldSetContentOffset:&offsetCopy animated:animatedCopy])
    {
      goto LABEL_7;
    }

    x = offsetCopy.x;
    y = offsetCopy.y;
  }

  if (animatedCopy)
  {
    [(SBIconScrollView *)self setLastAnimatedScrollContentOffset:x, y];
    x = offsetCopy.x;
    y = offsetCopy.y;
  }

  v10.receiver = self;
  v10.super_class = SBIconScrollView;
  [(BSUIScrollView *)&v10 setContentOffset:animatedCopy animated:x, y];
LABEL_7:
}

- (void)_setContentOffsetWithDecelerationAnimation:(CGPoint)animation
{
  y = animation.y;
  x = animation.x;
  [(SBIconScrollView *)self setLastAnimatedScrollContentOffset:?];
  v6.receiver = self;
  v6.super_class = SBIconScrollView;
  [(SBIconScrollView *)&v6 _setContentOffsetWithDecelerationAnimation:x, y];
}

- (void)_autoScrollAssistantUpdateContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  delegate = [(BSUIScrollView *)self delegate];
  v7 = delegate;
  if (!delegate || [delegate iconScrollView:self shouldSetAutoscrollContentOffset:{x, y}])
  {
    v8.receiver = self;
    v8.super_class = SBIconScrollView;
    [(SBIconScrollView *)&v8 _autoScrollAssistantUpdateContentOffset:x, y];
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  delegate = [(BSUIScrollView *)self delegate];
  v7 = delegate;
  v9 = x;
  v10 = y;
  if (!delegate)
  {
    goto LABEL_4;
  }

  if ([delegate iconScrollView:self shouldSetContentOffset:&v9 animated:0])
  {
    x = v9;
    y = v10;
LABEL_4:
    v8.receiver = self;
    v8.super_class = SBIconScrollView;
    [(BSUIScrollView *)&v8 setContentOffset:x, y];
  }
}

- (CGPoint)_roundedProposedContentOffset:(CGPoint)offset
{
  MEMORY[0x1EEE4DFB0](self, a2, offset, *&offset.y);
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconScrollView;
    v5 = [(SBIconScrollView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setAlpha:(double)alpha
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBIconScrollView;
  [(SBIconScrollView *)&v8 setAlpha:?];
  if (alpha == 0.0 || alpha == 1.0)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = [callStackSymbols subarrayWithRange:{0, 3}];
      *buf = 134218243;
      alphaCopy = alpha;
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