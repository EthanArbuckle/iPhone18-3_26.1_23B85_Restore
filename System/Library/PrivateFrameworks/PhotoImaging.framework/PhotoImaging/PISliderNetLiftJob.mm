@interface PISliderNetLiftJob
- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
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

- (BOOL)networkProcessingWithResultingPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v7 = [(NURenderJob *)self request];
  v8 = [v7 sliderNetModel];
  v9 = [v7 assetScenePrint];
  v21 = 0;
  v10 = [v8 predictStylePrintForPixelBuffer:a3 scenePrint:v9 error:&v21];
  v11 = v21;

  if (v10)
  {
    v20 = 0;
    v12 = 1;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v20];
    v14 = v20;
    styleFeatureVectorData = self->_styleFeatureVectorData;
    self->_styleFeatureVectorData = v13;

    if (!self->_styleFeatureVectorData)
    {
      v16 = MEMORY[0x1E69B3A48];
      v17 = [(NURenderJob *)self request];
      *a4 = [v16 errorWithCode:1 reason:@"Unable to archive the style Vector data" object:v17 underlyingError:v14];

      v12 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69B3A48];
    v14 = [(NURenderJob *)self request];
    [v18 errorWithCode:1 reason:@"Unable to get a style feature vector from IHK network" object:v14 underlyingError:v11];
    *a4 = v12 = 0;
  }

  return v12;
}

- (id)cacheKey
{
  v3 = objc_alloc_init(MEMORY[0x1E69B3A38]);
  v4 = [(NURenderJob *)self renderNode];
  [v4 nu_updateDigest:v3];

  [v3 finalize];
  v5 = [v3 stringValue];

  return v5;
}

- (id)scalePolicy
{
  v2 = [(NURenderJob *)self request];
  v3 = [v2 scalePolicy];

  return v3;
}

@end