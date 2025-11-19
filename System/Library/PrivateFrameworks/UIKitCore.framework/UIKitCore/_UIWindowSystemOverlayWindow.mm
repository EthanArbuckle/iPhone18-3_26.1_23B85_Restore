@interface _UIWindowSystemOverlayWindow
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIWindowSystemOverlayWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v5 = a4;
  if (![v5 _isInteractionBehaviorInactive] || objc_msgSend(v5, "type") == 9 || +[_UIPassthroughScrollInteraction _shouldEventBePassedThrough:](_UIPassthroughScrollInteraction, "_shouldEventBePassedThrough:", v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = self;
  }

  return v6;
}

@end