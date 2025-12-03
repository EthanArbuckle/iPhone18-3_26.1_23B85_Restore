@interface CardDimmingView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CardDimmingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D815A794(event, x, y);

  return v10;
}

@end