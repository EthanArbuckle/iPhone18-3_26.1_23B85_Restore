@interface _NCFullScreenPresentableViewControllerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _NCFullScreenPresentableViewControllerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _NCFullScreenPresentableViewControllerView;
  v5 = [(_NCFullScreenPresentableViewControllerView *)&v9 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    layer = [(_NCFullScreenPresentableViewControllerView *)self layer];
    allowsHitTesting = [layer allowsHitTesting];

    if ((allowsHitTesting & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end