@interface TUForwardingTouchNavigationBar
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSArray)accessibilityElements;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setAccessibilityElements:(id)a3;
@end

@implementation TUForwardingTouchNavigationBar

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  ForwardingTouchNavigationBar.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
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
  LOBYTE(v4) = ForwardingTouchNavigationBar.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

- (NSArray)accessibilityElements
{
  v2 = self;
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

- (void)setAccessibilityElements:(id)a3
{
  if (a3)
  {
    v4 = sub_1D8191314();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  ForwardingTouchNavigationBar.accessibilityElements.setter(v4);
}

@end