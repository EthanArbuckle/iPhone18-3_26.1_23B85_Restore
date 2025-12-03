@interface PXPhotosSearchBodyContainerInfo
- (CGSize)containerSize;
- (void)setContainerSize:(CGSize)size;
@end

@implementation PXPhotosSearchBodyContainerInfo

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setContainerSize:(CGSize)size
{
  if (self->_containerSize.width != size.width || self->_containerSize.height != size.height)
  {
    self->_containerSize = size;
    containerSizeDidChange = self->_containerSizeDidChange;
    if (containerSizeDidChange)
    {
      containerSizeDidChange[2]();
    }
  }
}

@end