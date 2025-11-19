@interface TXROptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TXROptions

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[TXROptions allocWithZone:?]];
  *(result + 8) = self->_cubemapFromVerticallyStackedImage;
  *(result + 2) = self->_originOperation;
  *(result + 3) = self->_colorSpaceHandling;
  *(result + 32) = self->_multiplyAlpha;
  return result;
}

@end