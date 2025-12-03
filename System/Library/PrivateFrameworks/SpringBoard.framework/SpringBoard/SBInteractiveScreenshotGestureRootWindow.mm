@interface SBInteractiveScreenshotGestureRootWindow
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBInteractiveScreenshotGestureRootWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBInteractiveScreenshotGestureRootWindow;
  v5 = [(SBInteractiveScreenshotGestureRootWindow *)&v10 hitTest:event withEvent:test.x, test.y];
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

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  if (self == window)
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = SBInteractiveScreenshotGestureRootWindow;
    v7 = [(SBInteractiveScreenshotGestureRootWindow *)&v9 _hitTest:event withEvent:test.x windowServerHitTestWindow:test.y];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end