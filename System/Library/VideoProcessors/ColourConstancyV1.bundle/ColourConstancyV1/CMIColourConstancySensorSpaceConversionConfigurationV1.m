@interface CMIColourConstancySensorSpaceConversionConfigurationV1
- (CMIColourConstancySensorSpaceConversionConfigurationV1)init;
@end

@implementation CMIColourConstancySensorSpaceConversionConfigurationV1

- (CMIColourConstancySensorSpaceConversionConfigurationV1)init
{
  v3.receiver = self;
  v3.super_class = CMIColourConstancySensorSpaceConversionConfigurationV1;
  result = [(CMIColourConstancySensorSpaceConversionConfigurationV1 *)&v3 init];
  if (result)
  {
    *&result->_clippedConfidenceLikelihoodScale = 0x40E0000041400000;
  }

  return result;
}

@end