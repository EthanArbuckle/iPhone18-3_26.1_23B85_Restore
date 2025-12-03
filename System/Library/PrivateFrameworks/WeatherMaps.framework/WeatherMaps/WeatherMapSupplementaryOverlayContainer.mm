@interface WeatherMapSupplementaryOverlayContainer
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation WeatherMapSupplementaryOverlayContainer

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_220E84598(event, x, y);

  return v10;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220E846B4();
}

@end