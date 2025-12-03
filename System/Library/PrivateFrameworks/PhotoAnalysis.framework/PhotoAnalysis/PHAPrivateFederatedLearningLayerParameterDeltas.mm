@interface PHAPrivateFederatedLearningLayerParameterDeltas
+ (id)deltasFromLayerParameters:(id)parameters toLayerParameters:(id)layerParameters;
- (PHAPrivateFederatedLearningLayerParameterDeltas)initWithWeightDeltas:(id)deltas biasDeltas:(id)biasDeltas;
@end

@implementation PHAPrivateFederatedLearningLayerParameterDeltas

- (PHAPrivateFederatedLearningLayerParameterDeltas)initWithWeightDeltas:(id)deltas biasDeltas:(id)biasDeltas
{
  deltasCopy = deltas;
  biasDeltasCopy = biasDeltas;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningLayerParameterDeltas;
  v9 = [(PHAPrivateFederatedLearningLayerParameterDeltas *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weightDeltas, deltas);
    objc_storeStrong(&v10->_biasDeltas, biasDeltas);
  }

  return v10;
}

+ (id)deltasFromLayerParameters:(id)parameters toLayerParameters:(id)layerParameters
{
  layerParametersCopy = layerParameters;
  parametersCopy = parameters;
  v8 = [self alloc];
  weights = [parametersCopy weights];
  weights2 = [layerParametersCopy weights];
  v11 = [weights vectorBySubtractingVector:weights2];
  bias = [parametersCopy bias];

  bias2 = [layerParametersCopy bias];

  v14 = [bias vectorBySubtractingVector:bias2];
  v15 = [v8 initWithWeightDeltas:v11 biasDeltas:v14];

  return v15;
}

@end