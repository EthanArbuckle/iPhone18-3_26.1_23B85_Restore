@interface UIActivityContentContext
- (CGSize)hostPortraitWindowSize;
@end

@implementation UIActivityContentContext

- (CGSize)hostPortraitWindowSize
{
  width = self->_hostPortraitWindowSize.width;
  height = self->_hostPortraitWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end