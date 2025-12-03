@interface MastheadView
- (UIColor)backgroundColor;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setBackgroundColor:(id)color;
@end

@implementation MastheadView

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_1D813C730();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D813C918(color);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D813CAC8(event, x, y);

  return v10;
}

@end