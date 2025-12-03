@interface BouncingButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)touchInsets;
@end

@implementation BouncingButton

- (UIEdgeInsets)touchInsets
{
  v2 = sub_1D7F2C104();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = sub_1D7F2C6F8(x, y);

  return self & 1;
}

@end