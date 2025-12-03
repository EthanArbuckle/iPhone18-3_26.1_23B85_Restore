@interface TouchInsetsButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation TouchInsetsButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_1D7FED0C0(x, y);

  return self & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7FED1C8();
}

@end