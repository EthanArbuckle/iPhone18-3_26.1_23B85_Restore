@interface ForwardingTouchView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ForwardingTouchView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v11.value.super.isa = v4;
  LOBYTE(v4) = ForwardingTouchView.point(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

@end