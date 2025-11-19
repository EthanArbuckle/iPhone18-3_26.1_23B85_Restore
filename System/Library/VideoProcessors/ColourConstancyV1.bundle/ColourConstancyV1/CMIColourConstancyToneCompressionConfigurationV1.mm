@interface CMIColourConstancyToneCompressionConfigurationV1
- (CMIColourConstancyToneCompressionConfigurationV1)init;
@end

@implementation CMIColourConstancyToneCompressionConfigurationV1

- (CMIColourConstancyToneCompressionConfigurationV1)init
{
  v3.receiver = self;
  v3.super_class = CMIColourConstancyToneCompressionConfigurationV1;
  result = [(CMIColourConstancyToneCompressionConfigurationV1 *)&v3 init];
  if (result)
  {
    result->_numIntensityHistogramBins = 128;
    *&result->_balanceDenseToSparseExponentFactor = xmmword_217E0;
  }

  return result;
}

@end