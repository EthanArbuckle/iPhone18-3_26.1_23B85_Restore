@interface CMIColourConstancyConfidenceConfigurationV1
- (CMIColourConstancyConfidenceConfigurationV1)init;
@end

@implementation CMIColourConstancyConfidenceConfigurationV1

- (CMIColourConstancyConfidenceConfigurationV1)init
{
  v3.receiver = self;
  v3.super_class = CMIColourConstancyConfidenceConfigurationV1;
  result = [(CMIColourConstancyConfidenceConfigurationV1 *)&v3 init];
  if (result)
  {
    *&result->_strobeIlluminationZeroThreshold = xmmword_217F0;
    result->_styleTransferAccuracyGammaCorrection = 0.45455;
    *&result->_thumbnailConfidenceMapWidth = 0x1800000020;
    *&result->_centerWeightingGaussianSigmaScale = 0x406000003FC00000;
  }

  return result;
}

@end