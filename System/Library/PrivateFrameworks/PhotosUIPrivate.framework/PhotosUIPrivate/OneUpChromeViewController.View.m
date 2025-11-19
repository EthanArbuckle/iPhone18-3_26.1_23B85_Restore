@interface OneUpChromeViewController.View
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation OneUpChromeViewController.View

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1B374666C(a4, x, y);

  return v10;
}

@end