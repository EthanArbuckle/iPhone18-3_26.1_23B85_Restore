@interface UIInputActiveSetContainerView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UIInputActiveSetContainerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIInputActiveSetContainerView;
  v5 = [(UIView *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v8 = [(UIView *)self layer];
    v9 = [v8 animationKeys];
    if ([v9 count])
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