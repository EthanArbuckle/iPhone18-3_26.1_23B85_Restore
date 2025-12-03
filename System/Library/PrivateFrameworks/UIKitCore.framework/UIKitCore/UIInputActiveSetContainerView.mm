@interface UIInputActiveSetContainerView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UIInputActiveSetContainerView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = UIInputActiveSetContainerView;
  v5 = [(UIView *)&v11 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    layer = [(UIView *)self layer];
    animationKeys = [layer animationKeys];
    if ([animationKeys count])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end