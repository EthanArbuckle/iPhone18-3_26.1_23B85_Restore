@interface TXROptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TXROptions

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[TXROptions allocWithZone:?]];
  *(result + 8) = self->_cubemapFromVerticallyStackedImage;
  *(result + 2) = self->_originOperation;
  *(result + 3) = self->_colorSpaceHandling;
  *(result + 32) = self->_multiplyAlpha;
  return result;
}

@end