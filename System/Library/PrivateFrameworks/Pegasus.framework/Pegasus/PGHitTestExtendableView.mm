@interface PGHitTestExtendableView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIView)hitTestExtenderView;
@end

@implementation PGHitTestExtendableView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PGHitTestExtendableView;
  v8 = [(PGHitTestExtendableView *)&v13 pointInside:v7 withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_hitTestExtenderView);
    [(PGHitTestExtendableView *)self convertPoint:v10 toView:x, y];
    v11 = [v10 pointInside:v7 withEvent:?];

    v8 |= v11;
  }

  return v8;
}

- (UIView)hitTestExtenderView
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);

  return WeakRetained;
}

@end