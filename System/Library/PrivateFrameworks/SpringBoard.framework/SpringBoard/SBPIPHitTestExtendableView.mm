@interface SBPIPHitTestExtendableView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIView)hitTestExtenderView;
@end

@implementation SBPIPHitTestExtendableView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBPIPHitTestExtendableView;
  v8 = [(SBPIPHitTestExtendableView *)&v11 pointInside:v7 withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);
  if (WeakRetained)
  {
    [(SBPIPHitTestExtendableView *)self convertPoint:WeakRetained toView:x, y];
    v8 |= [WeakRetained pointInside:v7 withEvent:?];
  }

  return v8;
}

- (UIView)hitTestExtenderView
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);

  return WeakRetained;
}

@end