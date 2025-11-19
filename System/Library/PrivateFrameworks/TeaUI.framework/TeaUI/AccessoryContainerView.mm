@interface AccessoryContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation AccessoryContainerView

- (void)layoutSubviews
{
  v2 = self;
  AccessoryContainerView.layoutSubviews()();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10.value.super.isa = self;
  isa = v10.value.super.isa;
  LOBYTE(self) = AccessoryContainerView.point(inside:with:)(__PAIR128__(*&y, *&x), v10);

  return self & 1;
}

@end