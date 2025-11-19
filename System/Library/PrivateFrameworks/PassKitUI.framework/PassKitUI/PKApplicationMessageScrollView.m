@interface PKApplicationMessageScrollView
- (CGRect)frameForPointInside;
@end

@implementation PKApplicationMessageScrollView

- (CGRect)frameForPointInside
{
  x = self->_frameForPointInside.origin.x;
  y = self->_frameForPointInside.origin.y;
  width = self->_frameForPointInside.size.width;
  height = self->_frameForPointInside.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end