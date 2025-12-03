@interface ForwardingTouchView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation ForwardingTouchView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  v11.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = ForwardingTouchView.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

@end