@interface SBSystemAperturePillImageView
- (CGSize)systemApertureSize;
@end

@implementation SBSystemAperturePillImageView

- (CGSize)systemApertureSize
{
  width = self->_systemApertureSize.width;
  height = self->_systemApertureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end