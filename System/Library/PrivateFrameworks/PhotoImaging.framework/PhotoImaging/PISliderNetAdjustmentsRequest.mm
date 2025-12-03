@interface PISliderNetAdjustmentsRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (void)_commonInit;
@end

@implementation PISliderNetAdjustmentsRequest

- (id)newRenderJob
{
  v3 = [PISliderNetAdjustmentsJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = PISliderNetAdjustmentsRequest;
  v4 = [(PISliderNetBaseRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 24, self->_styleFeatureVectorData);
    objc_storeStrong(v5 + 25, self->_contentFeatureVectorData);
    v5[26] = *&self->_similarityGatingThreshold;
  }

  return v5;
}

- (void)_commonInit
{
  v3.receiver = self;
  v3.super_class = PISliderNetAdjustmentsRequest;
  [(PISliderNetBaseRequest *)&v3 _commonInit];
  self->_similarityGatingThreshold = -1.0;
}

@end