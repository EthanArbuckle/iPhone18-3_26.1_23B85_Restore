@interface PISliderNetBaseRequest
- (PISliderNetBaseRequest)initWithComposition:(id)a3 sliderNetModel:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_commonInit;
@end

@implementation PISliderNetBaseRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = PISliderNetBaseRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:a3];
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

  v5 = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  colorSpace = self->_colorSpace;
  self->_colorSpace = v5;
}

- (PISliderNetBaseRequest)initWithComposition:(id)a3 sliderNetModel:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = PISliderNetBaseRequest;
  v7 = [(NURenderRequest *)&v10 initWithComposition:a3];
  sliderNetModel = v7->_sliderNetModel;
  v7->_sliderNetModel = v6;

  return v7;
}

@end