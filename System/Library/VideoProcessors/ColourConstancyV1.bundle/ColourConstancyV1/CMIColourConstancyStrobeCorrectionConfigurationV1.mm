@interface CMIColourConstancyStrobeCorrectionConfigurationV1
- (CMIColourConstancyStrobeCorrectionConfigurationV1)init;
@end

@implementation CMIColourConstancyStrobeCorrectionConfigurationV1

- (CMIColourConstancyStrobeCorrectionConfigurationV1)init
{
  v3.receiver = self;
  v3.super_class = CMIColourConstancyStrobeCorrectionConfigurationV1;
  result = [(CMIColourConstancyStrobeCorrectionConfigurationV1 *)&v3 init];
  if (result)
  {
    *&result->_strobeBeamProfileScaleMinimum = xmmword_21890;
  }

  return result;
}

@end