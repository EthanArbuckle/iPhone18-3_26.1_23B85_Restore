@interface SBPIPHitTestExtendableView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIView)hitTestExtenderView;
@end

@implementation SBPIPHitTestExtendableView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBPIPHitTestExtendableView;
  v8 = [(SBPIPHitTestExtendableView *)&v11 pointInside:eventCopy withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);
  if (WeakRetained)
  {
    [(SBPIPHitTestExtendableView *)self convertPoint:WeakRetained toView:x, y];
    v8 |= [WeakRetained pointInside:eventCopy withEvent:?];
  }

  return v8;
}

- (UIView)hitTestExtenderView
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);

  return WeakRetained;
}

@end