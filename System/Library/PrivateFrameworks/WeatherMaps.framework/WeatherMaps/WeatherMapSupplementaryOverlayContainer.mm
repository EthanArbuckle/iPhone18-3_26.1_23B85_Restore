@interface WeatherMapSupplementaryOverlayContainer
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation WeatherMapSupplementaryOverlayContainer

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_220E84598(a4, x, y);

  return v10;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_220E846B4();
}

@end