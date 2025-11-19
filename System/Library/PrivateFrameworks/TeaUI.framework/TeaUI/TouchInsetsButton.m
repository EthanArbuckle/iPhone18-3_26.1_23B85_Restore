@interface TouchInsetsButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation TouchInsetsButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  LOBYTE(self) = sub_1D7FED0C0(x, y);

  return self & 1;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7FED1C8();
}

@end