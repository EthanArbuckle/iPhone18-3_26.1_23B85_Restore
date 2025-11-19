@interface LemonadeDetailsNavigationBar
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02128LemonadeDetailsNavigationBar)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation LemonadeDetailsNavigationBar

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1A44AEBC4(a4, x, y);

  return v10;
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02128LemonadeDetailsNavigationBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LemonadeDetailsNavigationBar();
  return [(LemonadeDetailsNavigationBar *)&v8 initWithFrame:x, y, width, height];
}

@end