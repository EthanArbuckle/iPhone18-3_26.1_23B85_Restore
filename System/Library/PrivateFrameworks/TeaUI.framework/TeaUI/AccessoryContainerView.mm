@interface AccessoryContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AccessoryContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  AccessoryContainerView.layoutSubviews()();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v10.value.super.isa = self;
  isa = v10.value.super.isa;
  LOBYTE(self) = AccessoryContainerView.point(inside:with:)(__PAIR128__(*&y, *&x), v10);

  return self & 1;
}

@end