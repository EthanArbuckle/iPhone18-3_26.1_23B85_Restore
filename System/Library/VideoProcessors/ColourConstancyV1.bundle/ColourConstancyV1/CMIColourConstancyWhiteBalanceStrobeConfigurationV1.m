@interface CMIColourConstancyWhiteBalanceStrobeConfigurationV1
- (CMIColourConstancyWhiteBalanceStrobeConfigurationV1)initWithThumbnailWidth:(unsigned int)a3 thumbnailHeight:(unsigned int)a4;
@end

@implementation CMIColourConstancyWhiteBalanceStrobeConfigurationV1

- (CMIColourConstancyWhiteBalanceStrobeConfigurationV1)initWithThumbnailWidth:(unsigned int)a3 thumbnailHeight:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = CMIColourConstancyWhiteBalanceStrobeConfigurationV1;
  result = [(CMIColourConstancyWhiteBalanceStrobeConfigurationV1 *)&v7 init];
  if (result)
  {
    result->_thumbnailWidth = a3;
    result->_thumbnailHeight = a4;
    result->_lowStrobeIlluminationFlashFusionEnabled = 1;
    result->_balanceMatchingMinimumConfidenceWeight = 0.0001;
    *&result->_balanceMatchingThumbnailWidth = 0x1800000020;
    *&result->_balanceMatchingGaussianSigma = 0x40C0000040800000;
    result->_flashToStrobeIntensityFusionMixFactor = 0.7;
  }

  return result;
}

@end