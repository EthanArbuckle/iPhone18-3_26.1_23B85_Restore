@interface PHAPrivateFederatedLearningLayerParameters
- (PHAPrivateFederatedLearningLayerParameters)initWithWeights:(id)a3 bias:(id)a4;
@end

@implementation PHAPrivateFederatedLearningLayerParameters

- (PHAPrivateFederatedLearningLayerParameters)initWithWeights:(id)a3 bias:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningLayerParameters;
  v9 = [(PHAPrivateFederatedLearningLayerParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weights, a3);
    objc_storeStrong(&v10->_bias, a4);
  }

  return v10;
}

@end