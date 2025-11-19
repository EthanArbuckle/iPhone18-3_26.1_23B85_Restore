@interface CMIColourConstancyStyleTransferConfigurationV1
- (CMIColourConstancyStyleTransferConfigurationV1)initWithSourceThumbnailWidth:(unsigned int)a3;
@end

@implementation CMIColourConstancyStyleTransferConfigurationV1

- (CMIColourConstancyStyleTransferConfigurationV1)initWithSourceThumbnailWidth:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = CMIColourConstancyStyleTransferConfigurationV1;
  result = [(CMIColourConstancyStyleTransferConfigurationV1 *)&v5 init];
  if (result)
  {
    *&result->_speedModeStyleTransferEnabled = 256;
    result->_sourceThumbnailWidth = a3;
    *&result->_styleTransferThumbnailWidth = 0xC000000100;
    *&result->_styleTransferThumbnailSharpness = xmmword_217C0;
    result->_globalRGBToneCurveEnabled = 0;
    *&result->_clippingCorrectionTransitionExponent = xmmword_217D0;
  }

  return result;
}

@end