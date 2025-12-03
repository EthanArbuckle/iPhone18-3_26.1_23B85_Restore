@interface CMIColourConstancyWhiteBalanceStrobeConfigurationV1
- (CMIColourConstancyWhiteBalanceStrobeConfigurationV1)initWithThumbnailWidth:(unsigned int)width thumbnailHeight:(unsigned int)height;
@end

@implementation CMIColourConstancyWhiteBalanceStrobeConfigurationV1

- (CMIColourConstancyWhiteBalanceStrobeConfigurationV1)initWithThumbnailWidth:(unsigned int)width thumbnailHeight:(unsigned int)height
{
  v7.receiver = self;
  v7.super_class = CMIColourConstancyWhiteBalanceStrobeConfigurationV1;
  result = [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)&v7 init];
  if (result)
  {
    result->_thumbnailWidth = width;
    result->_thumbnailHeight = height;
    result->_lowStrobeIlluminationFlashFusionEnabled = 1;
    result->_balanceMatchingMinimumConfidenceWeight = 0.0001;
    *&result->_balanceMatchingThumbnailWidth = 0x1800000020;
    *&result->_balanceMatchingGaussianSigma = 0x40C0000040800000;
    result->_flashToStrobeIntensityFusionMixFactor = 0.7;
  }

  return result;
}

@end