@interface UICalloutBar
- (CGPoint)targetPoint;
- (CGRect)targetRect;
- (UIResponder)responderTarget;
- (UIView)targetView;
@end

@implementation UICalloutBar

- (CGPoint)targetPoint
{
  x = self->_targetPoint.x;
  y = self->_targetPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

- (UIResponder)responderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_responderTarget);

  return WeakRetained;
}

@end