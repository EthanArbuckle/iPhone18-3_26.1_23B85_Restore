@interface PISliderNetLiftJob
- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)cacheKey;
- (id)result;
- (id)scalePolicy;
- (void)cleanUp;
@end

@implementation PISliderNetLiftJob

- (void)cleanUp
{
  v5.receiver = self;
  v5.super_class = PISliderNetLiftJob;
  [(NURenderJob *)&v5 cleanUp];
  styleFeatureVectorData = self->_styleFeatureVectorData;
  self->_styleFeatureVectorData = 0;

  contentFeatureVectorData = self->_contentFeatureVectorData;
  self->_contentFeatureVectorData = 0;
}

- (id)result
{
  v3 = objc_alloc_init(_PISliderNetLiftResult);
  [(_PISliderNetLiftResult *)v3 setStyleFeatureVectorData:self->_styleFeatureVectorData];
  [(_PISliderNetLiftResult *)v3 setContentFeatureVectorData:self->_contentFeatureVectorData];

  return v3;
}

- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  request = [(NURenderJob *)self request];
  sliderNetModel = [request sliderNetModel];
  assetScenePrint = [request assetScenePrint];
  v21 = 0;
  v10 = [sliderNetModel predictStylePrintForPixelBuffer:buffer scenePrint:assetScenePrint error:&v21];
  v11 = v21;

  if (v10)
  {
    v20 = 0;
    v12 = 1;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v20];
    request3 = v20;
    styleFeatureVectorData = self->_styleFeatureVectorData;
    self->_styleFeatureVectorData = v13;

    if (!self->_styleFeatureVectorData)
    {
      v16 = MEMORY[0x1E69B3A48];
      request2 = [(NURenderJob *)self request];
      *error = [v16 errorWithCode:1 reason:@"Unable to archive the style Vector data" object:request2 underlyingError:request3];

      v12 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69B3A48];
    request3 = [(NURenderJob *)self request];
    [v18 errorWithCode:1 reason:@"Unable to get a style feature vector from IHK network" object:request3 underlyingError:v11];
    *error = v12 = 0;
  }

  return v12;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  renderNode = [(NURenderJob *)self renderNode];
  [renderNode nu_updateDigest:v3];

  [v3 finalize];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)scalePolicy
{
  request = [(NURenderJob *)self request];
  scalePolicy = [request scalePolicy];

  return scalePolicy;
}

@end