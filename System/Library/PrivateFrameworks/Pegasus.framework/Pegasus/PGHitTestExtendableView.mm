@interface PGHitTestExtendableView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIView)hitTestExtenderView;
@end

@implementation PGHitTestExtendableView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = PGHitTestExtendableView;
  v8 = [(PGHitTestExtendableView *)&v13 pointInside:eventCopy withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_hitTestExtenderView);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_hitTestExtenderView);
    [(PGHitTestExtendableView *)self convertPoint:v10 toView:x, y];
    v11 = [v10 pointInside:eventCopy withEvent:?];

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