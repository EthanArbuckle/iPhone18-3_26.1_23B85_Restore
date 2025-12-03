@interface OneUpChromeViewController.View
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation OneUpChromeViewController.View

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1B374666C(event, x, y);

  return v10;
}

@end