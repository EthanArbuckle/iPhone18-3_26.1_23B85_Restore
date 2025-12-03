@interface PISliderNetBaseRequest
- (PISliderNetBaseRequest)initWithComposition:(id)composition sliderNetModel:(id)model;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_commonInit;
@end

@implementation PISliderNetBaseRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PISliderNetBaseRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 22, self->_sliderNetModel);
    objc_storeStrong(v5 + 20, self->_scalePolicy);
    objc_storeStrong(v5 + 21, self->_colorSpace);
    objc_storeStrong(v5 + 23, self->_assetScenePrint);
  }

  return v5;
}

- (void)_commonInit
{
  v7.receiver = self;
  v7.super_class = PISliderNetBaseRequest;
  [(NURenderRequest *)&v7 _commonInit];
  v3 = [objc_alloc(MEMORY[0x1E69B3A68]) initWithTargetPixelSize:{256, 256}];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;

  sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  colorSpace = self->_colorSpace;
  self->_colorSpace = sRGBColorSpace;
}

- (PISliderNetBaseRequest)initWithComposition:(id)composition sliderNetModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = PISliderNetBaseRequest;
  v7 = [(NURenderRequest *)&v10 initWithComposition:composition];
  sliderNetModel = v7->_sliderNetModel;
  v7->_sliderNetModel = modelCopy;

  return v7;
}

@end