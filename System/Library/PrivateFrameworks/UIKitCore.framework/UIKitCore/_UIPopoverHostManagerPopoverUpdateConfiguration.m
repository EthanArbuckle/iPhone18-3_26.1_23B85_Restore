@interface _UIPopoverHostManagerPopoverUpdateConfiguration
- (CGRect)sourceRectInParentUIWindow;
- (CGSize)contentSize;
@end

@implementation _UIPopoverHostManagerPopoverUpdateConfiguration

- (CGRect)sourceRectInParentUIWindow
{
  x = self->_sourceRectInParentUIWindow.origin.x;
  y = self->_sourceRectInParentUIWindow.origin.y;
  width = self->_sourceRectInParentUIWindow.size.width;
  height = self->_sourceRectInParentUIWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end