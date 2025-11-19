@interface slicMetalParameters
- (CGSize)inputImageSize;
- (CGSize)mapSize;
@end

@implementation slicMetalParameters

- (CGSize)inputImageSize
{
  width = self->_inputImageSize.width;
  height = self->_inputImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)mapSize
{
  width = self->_mapSize.width;
  height = self->_mapSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end