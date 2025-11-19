@interface BouncingButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = sub_1D7F2C6F8(x, y);

  return self & 1;
}

@end