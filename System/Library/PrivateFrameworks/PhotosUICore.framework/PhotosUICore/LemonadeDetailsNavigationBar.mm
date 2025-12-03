@interface LemonadeDetailsNavigationBar
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02128LemonadeDetailsNavigationBar)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation LemonadeDetailsNavigationBar

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1A44AEBC4(event, x, y);

  return v10;
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02128LemonadeDetailsNavigationBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LemonadeDetailsNavigationBar();
  return [(LemonadeDetailsNavigationBar *)&v8 initWithFrame:x, y, width, height];
}

@end