@interface _UIWindowSystemOverlayWindow
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIWindowSystemOverlayWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy _isInteractionBehaviorInactive] || objc_msgSend(eventCopy, "type") == 9 || +[_UIPassthroughScrollInteraction _shouldEventBePassedThrough:](_UIPassthroughScrollInteraction, "_shouldEventBePassedThrough:", eventCopy))
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end