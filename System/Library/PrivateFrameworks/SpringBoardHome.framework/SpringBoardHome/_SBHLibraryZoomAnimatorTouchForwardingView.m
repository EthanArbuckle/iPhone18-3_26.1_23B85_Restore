@interface _SBHLibraryZoomAnimatorTouchForwardingView
- (UIView)touchForwardingTargetView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _SBHLibraryZoomAnimatorTouchForwardingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_SBHLibraryZoomAnimatorTouchForwardingView *)self touchForwardingTargetView];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 hitTest:v7 withEvent:{x, y}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SBHLibraryZoomAnimatorTouchForwardingView;
    v10 = [(_SBHLibraryZoomAnimatorTouchForwardingView *)&v13 hitTest:v7 withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (UIView)touchForwardingTargetView
{
  WeakRetained = objc_loadWeakRetained(&self->_touchForwardingTargetView);

  return WeakRetained;
}

@end