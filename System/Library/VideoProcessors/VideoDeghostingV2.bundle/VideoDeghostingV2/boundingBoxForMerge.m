@interface boundingBoxForMerge
- (CGRect)extendBBox;
@end

@implementation boundingBoxForMerge

- (CGRect)extendBBox
{
  x = self->_extendBBox.origin.x;
  y = self->_extendBBox.origin.y;
  width = self->_extendBBox.size.width;
  height = self->_extendBBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end