@interface SBFluidDismissalState
- (CGRect)contentRect;
- (CGRect)homeGrabberContentRect;
@end

@implementation SBFluidDismissalState

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)homeGrabberContentRect
{
  x = self->_homeGrabberContentRect.origin.x;
  y = self->_homeGrabberContentRect.origin.y;
  width = self->_homeGrabberContentRect.size.width;
  height = self->_homeGrabberContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end