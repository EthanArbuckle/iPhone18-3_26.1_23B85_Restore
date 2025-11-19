@interface TouchInsetsLabel
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation TouchInsetsLabel

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = sub_1D8069E08(x, y);

  return self & 1;
}

@end