@interface _UIScrollsToTopInitiatorView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIScrollsToTopInitiatorView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = _UIScrollsToTopInitiatorView;
  v8 = [(UIView *)&v17 hitTest:eventCopy withEvent:x, y];
  window = [(UIView *)self window];
  v10 = UIApp;
  _screen = [(UIView *)self _screen];
  v12 = [v10 _keyWindowForScreen:_screen];

  if (v8 && [(_UIScrollsToTopInitiatorView *)self _shouldSeekHigherPriorityTouchTarget]&& window != v12)
  {
    [v12 convertPoint:self fromView:{x, y}];
    v13 = [v12 _targetForStolenStatusBarTouchesAtPoint:eventCopy withEvent:window excludingWindow:?];
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v8 = v15;
    }
  }

  return v8;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  allTouches = [eventCopy allTouches];
  v8 = [allTouches count];

  if (v8 == 1)
  {
    anyObject = [endedCopy anyObject];
    [anyObject timestamp];
    v11 = v10;
    [anyObject initialTouchTimestamp];
    if (v11 - v12 <= 0.75)
    {
      window = [(UIView *)self window];
      anyObject2 = [endedCopy anyObject];
      [anyObject2 locationInView:0];
      [window convertPoint:0 toWindow:?];
      v16 = v15;
      window2 = [(UIView *)self window];
      v18 = _UIAdjustedLocationForScreenTouchLocation(window2, v16);
      v20 = v19;

      v21 = UIApp;
      _screen = [(UIView *)self _screen];
      v23 = [v21 _keyWindowForScreen:_screen];
      [v23 _scrollToTopViewsUnderScreenPointIfNecessary:0 resultHandler:{v18, v20}];

      [UIApp _scrollsToTopInitiatorView:self touchesEnded:endedCopy withEvent:eventCopy];
    }
  }
}

@end