@interface _NCFullScreenPresentableViewControllerView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _NCFullScreenPresentableViewControllerView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = _NCFullScreenPresentableViewControllerView;
  v5 = [(_NCFullScreenPresentableViewControllerView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {
    v6 = [(_NCFullScreenPresentableViewControllerView *)self layer];
    v7 = [v6 allowsHitTesting];

    if ((v7 & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end