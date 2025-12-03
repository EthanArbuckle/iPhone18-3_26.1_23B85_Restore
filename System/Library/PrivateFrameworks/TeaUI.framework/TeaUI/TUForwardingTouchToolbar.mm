@interface TUForwardingTouchToolbar
- (BOOL)accessibilityElementsHidden;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)accessibilityContainerType;
@end

@implementation TUForwardingTouchToolbar

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  ForwardingTouchToolbar.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
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
  LOBYTE(eventCopy) = ForwardingTouchToolbar.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  v3 = ForwardingTouchToolbar.accessibilityContainerType.getter();

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = ForwardingTouchToolbar.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  v3 = ForwardingTouchToolbar.accessibilityElementsHidden.getter();

  return v3 & 1;
}

@end