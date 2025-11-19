@interface CLKUILayerHostView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIView)superviewDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CLKUILayerHostView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CLKUILayerHostView *)self superviewDelegate];
  v9 = [v8 hitTest:v7 withEvent:{x, y}];

  return v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CLKUILayerHostView *)self superviewDelegate];
  v9 = [v8 pointInside:v7 withEvent:{x, y}];

  return v9;
}

- (UIView)superviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_superviewDelegate);

  return WeakRetained;
}

@end