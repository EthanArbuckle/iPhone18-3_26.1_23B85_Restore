@interface SBPrototypeHeightFittingSizeView
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation SBPrototypeHeightFittingSizeView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = fits.height + -16.0;
  v4 = fits.height + -16.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end