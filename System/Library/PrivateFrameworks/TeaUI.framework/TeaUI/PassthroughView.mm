@interface PassthroughView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D800D834(event, x, y);

  return v10;
}

@end