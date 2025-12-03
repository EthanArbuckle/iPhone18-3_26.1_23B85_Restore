@interface TUForwardingTouchNavigationBar
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSArray)accessibilityElements;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setAccessibilityElements:(id)elements;
@end

@implementation TUForwardingTouchNavigationBar

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  ForwardingTouchNavigationBar.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  v11.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = ForwardingTouchNavigationBar.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = ForwardingTouchNavigationBar.accessibilityElements.getter();

  if (v3)
  {
    v4 = sub_1D8191304();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityElements:(id)elements
{
  if (elements)
  {
    v4 = sub_1D8191314();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  ForwardingTouchNavigationBar.accessibilityElements.setter(v4);
}

@end