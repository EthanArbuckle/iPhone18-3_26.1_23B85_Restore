@interface UIMorphingLabelImage
- (CGRect)contentsRect;
- (CGSize)size;
@end

@implementation UIMorphingLabelImage

- (CGSize)size
{
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end