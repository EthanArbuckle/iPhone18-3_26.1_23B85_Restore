@interface UPQuiltView
- (CGRect)landscapeWidgetRect;
- (CGRect)originalFrame;
- (CGRect)timeRect;
- (UPQuiltViewDelegate)quiltViewDelegate;
@end

@implementation UPQuiltView

- (UPQuiltViewDelegate)quiltViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quiltViewDelegate);

  return WeakRetained;
}

- (CGRect)timeRect
{
  x = self->_timeRect.origin.x;
  y = self->_timeRect.origin.y;
  width = self->_timeRect.size.width;
  height = self->_timeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)landscapeWidgetRect
{
  x = self->_landscapeWidgetRect.origin.x;
  y = self->_landscapeWidgetRect.origin.y;
  width = self->_landscapeWidgetRect.size.width;
  height = self->_landscapeWidgetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)originalFrame
{
  x = self->_originalFrame.origin.x;
  y = self->_originalFrame.origin.y;
  width = self->_originalFrame.size.width;
  height = self->_originalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end