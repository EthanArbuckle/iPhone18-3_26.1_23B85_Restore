@interface CMISmartStyleProcessorStreamingConfigurationV1
- (CGSize)intermediateStyleRendererThumbnailSize;
- (CMISmartStyleProcessorStreamingConfigurationV1)init;
- (NSDictionary)pixelBufferAttributesForSmallLightMap;
- (NSDictionary)pixelBufferAttributesWithCapacityForLearntCoefficients;
- (void)dealloc;
@end

@implementation CMISmartStyleProcessorStreamingConfigurationV1

- (CMISmartStyleProcessorStreamingConfigurationV1)init
{
  v6.receiver = self;
  v6.super_class = CMISmartStyleProcessorStreamingConfigurationV1;
  v2 = [(CMISmartStyleProcessorStreamingConfigurationV1 *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    [CMISmartStyleProcessorStreamingConfigurationV1 init];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMISmartStyleProcessorStreamingConfigurationV1;
  [(CMISmartStyleProcessorStreamingConfigurationV1 *)&v2 dealloc];
}

- (NSDictionary)pixelBufferAttributesWithCapacityForLearntCoefficients
{
  [CMIStyleEngineProcessor coefficientPixelBufferSizeForConfiguration:self->_styleEngineConfiguration float16:0];
  v3 = v2;
  v9[0] = &off_20920;
  kCVPixelBufferWidthKey = [NSNumber numberWithDouble:kCVPixelBufferPixelFormatTypeKey, kCVPixelBufferWidthKey];
  v9[1] = kCVPixelBufferWidthKey;
  v8[2] = kCVPixelBufferHeightKey;
  v5 = [NSNumber numberWithDouble:v3];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (NSDictionary)pixelBufferAttributesForSmallLightMap
{
  v4[0] = kCVPixelBufferPixelFormatTypeKey;
  v4[1] = kCVPixelBufferWidthKey;
  v5[0] = &off_208F0;
  v5[1] = &off_20908;
  v4[2] = kCVPixelBufferHeightKey;
  v5[2] = &off_20908;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (CGSize)intermediateStyleRendererThumbnailSize
{
  width = self->_intermediateStyleRendererThumbnailSize.width;
  height = self->_intermediateStyleRendererThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end