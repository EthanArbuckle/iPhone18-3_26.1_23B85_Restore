@interface PHAPrivateFederatedLearningLayerParameters
- (PHAPrivateFederatedLearningLayerParameters)initWithWeights:(id)weights bias:(id)bias;
@end

@implementation PHAPrivateFederatedLearningLayerParameters

- (PHAPrivateFederatedLearningLayerParameters)initWithWeights:(id)weights bias:(id)bias
{
  weightsCopy = weights;
  biasCopy = bias;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningLayerParameters;
  v9 = [(PHAPrivateFederatedLearningLayerParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weights, weights);
    objc_storeStrong(&v10->_bias, bias);
  }

  return v10;
}

@end