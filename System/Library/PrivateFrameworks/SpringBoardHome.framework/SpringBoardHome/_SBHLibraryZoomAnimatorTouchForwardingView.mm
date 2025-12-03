@interface _SBHLibraryZoomAnimatorTouchForwardingView
- (UIView)touchForwardingTargetView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _SBHLibraryZoomAnimatorTouchForwardingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  touchForwardingTargetView = [(_SBHLibraryZoomAnimatorTouchForwardingView *)self touchForwardingTargetView];
  v9 = touchForwardingTargetView;
  if (touchForwardingTargetView)
  {
    v10 = [touchForwardingTargetView hitTest:eventCopy withEvent:{x, y}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _SBHLibraryZoomAnimatorTouchForwardingView;
    v10 = [(_SBHLibraryZoomAnimatorTouchForwardingView *)&v13 hitTest:eventCopy withEvent:x, y];
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