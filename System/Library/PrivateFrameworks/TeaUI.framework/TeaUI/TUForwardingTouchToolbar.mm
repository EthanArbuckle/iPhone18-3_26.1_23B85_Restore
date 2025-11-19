@interface TUForwardingTouchToolbar
- (BOOL)accessibilityElementsHidden;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)accessibilityContainerType;
@end

@implementation TUForwardingTouchToolbar

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  ForwardingTouchToolbar.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v11.value.super.isa = v4;
  LOBYTE(v4) = ForwardingTouchToolbar.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

- (int64_t)accessibilityContainerType
{
  v2 = self;
  v3 = ForwardingTouchToolbar.accessibilityContainerType.getter();

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = ForwardingTouchToolbar.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)accessibilityElementsHidden
{
  v2 = self;
  v3 = ForwardingTouchToolbar.accessibilityElementsHidden.getter();

  return v3 & 1;
}

@end