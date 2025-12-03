@interface SVAutomaticFullscreenVideoPlaybackBehaviorManager
- (BOOL)fullscreenPlaybackRequiredForCurrentConditions;
- (CGRect)videoBounds;
- (SVAutomaticFullscreenVideoPlaybackBehaviorManagerDelegate)delegate;
- (void)conditionsChanged;
- (void)setBehavior:(unint64_t)behavior;
- (void)setVideoBounds:(CGRect)bounds;
@end

@implementation SVAutomaticFullscreenVideoPlaybackBehaviorManager

- (void)setVideoBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(bounds, self->_videoBounds))
  {
    self->_videoBounds.origin.x = x;
    self->_videoBounds.origin.y = y;
    self->_videoBounds.size.width = width;
    self->_videoBounds.size.height = height;

    [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self conditionsChanged];
  }
}

- (void)setBehavior:(unint64_t)behavior
{
  if (self->_behavior != behavior)
  {
    self->_behavior = behavior;
    [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self conditionsChanged];
  }
}

- (BOOL)fullscreenPlaybackRequiredForCurrentConditions
{
  v3 = [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self behavior]== 2;
  if ([(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self behavior]== 1)
  {
    [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self videoBounds];
    if (!CGRectIsEmpty(v6))
    {
      [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self videoBounds];
      Width = CGRectGetWidth(v7);
      [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self videoBounds];
      return Width / CGRectGetHeight(v8) < 0.95;
    }
  }

  return v3;
}

- (void)conditionsChanged
{
  if ([(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self fullscreenPlaybackRequiredForCurrentConditions])
  {
    delegate = [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)self delegate];
      [delegate2 fullscreenBehaviorManagerRequiresFullscreenPlayback:self];
    }
  }
}

- (CGRect)videoBounds
{
  x = self->_videoBounds.origin.x;
  y = self->_videoBounds.origin.y;
  width = self->_videoBounds.size.width;
  height = self->_videoBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SVAutomaticFullscreenVideoPlaybackBehaviorManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end