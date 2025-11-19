@interface CMISmartStyleProcessorStillImageConfigurationV1
- (CGSize)intermediateStyleRendererThumbnailSize;
- (CMISmartStyleProcessorStillImageConfigurationV1)init;
- (NSDictionary)pixelBufferAttributesForSmallLightMap;
- (NSDictionary)pixelBufferAttributesWithCapacityForLearntCoefficients;
- (void)dealloc;
@end

@implementation CMISmartStyleProcessorStillImageConfigurationV1

- (CMISmartStyleProcessorStillImageConfigurationV1)init
{
  v6.receiver = self;
  v6.super_class = CMISmartStyleProcessorStillImageConfigurationV1;
  v2 = [(CMISmartStyleProcessorStillImageConfigurationV1 *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    [CMISmartStyleProcessorStillImageConfigurationV1 init];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMISmartStyleProcessorStillImageConfigurationV1;
  [(CMISmartStyleProcessorStillImageConfigurationV1 *)&v2 dealloc];
}

- (NSDictionary)pixelBufferAttributesWithCapacityForLearntCoefficients
{
  [CMIStyleEngineProcessor coefficientPixelBufferSizeForConfiguration:self->_styleEngineConfiguration float16:1];
  v3 = v2;
  v5 = v4;
  v6 = [NSNumber numberWithUnsignedInt:1278226536, kCVPixelBufferPixelFormatTypeKey];
  v12[0] = v6;
  v11[1] = kCVPixelBufferWidthKey;
  v7 = [NSNumber numberWithDouble:v3];
  v12[1] = v7;
  v11[2] = kCVPixelBufferHeightKey;
  v8 = [NSNumber numberWithDouble:v5];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
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