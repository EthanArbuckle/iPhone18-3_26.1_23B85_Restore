@interface SBInteractiveScreenshotGestureRootWindow
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBInteractiveScreenshotGestureRootWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBInteractiveScreenshotGestureRootWindow;
  v5 = [(SBInteractiveScreenshotGestureRootWindow *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  if (self == a5)
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = SBInteractiveScreenshotGestureRootWindow;
    v7 = [(SBInteractiveScreenshotGestureRootWindow *)&v9 _hitTest:a4 withEvent:a3.x windowServerHitTestWindow:a3.y];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end