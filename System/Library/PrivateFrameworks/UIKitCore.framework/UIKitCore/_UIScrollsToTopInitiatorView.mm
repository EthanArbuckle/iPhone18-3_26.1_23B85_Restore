@interface _UIScrollsToTopInitiatorView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIScrollsToTopInitiatorView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _UIScrollsToTopInitiatorView;
  v8 = [(UIView *)&v17 hitTest:v7 withEvent:x, y];
  v9 = [(UIView *)self window];
  v10 = UIApp;
  v11 = [(UIView *)self _screen];
  v12 = [v10 _keyWindowForScreen:v11];

  if (v8 && [(_UIScrollsToTopInitiatorView *)self _shouldSeekHigherPriorityTouchTarget]&& v9 != v12)
  {
    [v12 convertPoint:self fromView:{x, y}];
    v13 = [v12 _targetForStolenStatusBarTouchesAtPoint:v7 withEvent:v9 excludingWindow:?];
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v8 = v15;
    }
  }

  return v8;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [v6 allTouches];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v24 anyObject];
    [v9 timestamp];
    v11 = v10;
    [v9 initialTouchTimestamp];
    if (v11 - v12 <= 0.75)
    {
      v13 = [(UIView *)self window];
      v14 = [v24 anyObject];
      [v14 locationInView:0];
      [v13 convertPoint:0 toWindow:?];
      v16 = v15;
      v17 = [(UIView *)self window];
      v18 = _UIAdjustedLocationForScreenTouchLocation(v17, v16);
      v20 = v19;

      v21 = UIApp;
      v22 = [(UIView *)self _screen];
      v23 = [v21 _keyWindowForScreen:v22];
      [v23 _scrollToTopViewsUnderScreenPointIfNecessary:0 resultHandler:{v18, v20}];

      [UIApp _scrollsToTopInitiatorView:self touchesEnded:v24 withEvent:v6];
    }
  }
}

@end