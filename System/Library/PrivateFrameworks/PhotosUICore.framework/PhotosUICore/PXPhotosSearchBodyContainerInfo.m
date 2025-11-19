@interface PXPhotosSearchBodyContainerInfo
- (CGSize)containerSize;
- (void)setContainerSize:(CGSize)a3;
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

- (void)setContainerSize:(CGSize)a3
{
  if (self->_containerSize.width != a3.width || self->_containerSize.height != a3.height)
  {
    self->_containerSize = a3;
    containerSizeDidChange = self->_containerSizeDidChange;
    if (containerSizeDidChange)
    {
      containerSizeDidChange[2]();
    }
  }
}

@end