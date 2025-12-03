@interface CMIColourConstancyStyleTransferConfigurationV1
- (CMIColourConstancyStyleTransferConfigurationV1)initWithSourceThumbnailWidth:(unsigned int)width;
@end

@implementation CMIColourConstancyStyleTransferConfigurationV1

- (CMIColourConstancyStyleTransferConfigurationV1)initWithSourceThumbnailWidth:(unsigned int)width
{
  v5.receiver = self;
  v5.super_class = CMIColourConstancyStyleTransferConfigurationV1;
  result = [(CMIColourConstancyStyleTransferConfigurationV1 *)&v5 init];
  if (result)
  {
    *&result->_speedModeStyleTransferEnabled = 256;
    result->_sourceThumbnailWidth = width;
    *&result->_styleTransferThumbnailWidth = 0xC000000100;
    *&result->_styleTransferThumbnailSharpness = xmmword_217C0;
    result->_globalRGBToneCurveEnabled = 0;
    *&result->_clippingCorrectionTransitionExponent = xmmword_217D0;
  }

  return result;
}

@end