@interface TSKiOSUnhittableView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TSKiOSUnhittableView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSKiOSUnhittableView;
  result = [(TSKiOSUnhittableView *)&v6 hitTest:event withEvent:test.x, test.y];
  if (result == self)
  {
    return 0;
  }

  return result;
}

@end