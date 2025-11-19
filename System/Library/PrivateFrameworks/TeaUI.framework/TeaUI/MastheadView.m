@interface MastheadView
- (UIColor)backgroundColor;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setBackgroundColor:(id)a3;
@end

@implementation MastheadView

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = sub_1D813C730();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D813C918(a3);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1D813CAC8(a4, x, y);

  return v10;
}

@end