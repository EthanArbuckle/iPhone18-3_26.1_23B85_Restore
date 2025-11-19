@interface PHAPrivateFederatedLearningLayerParameterDeltas
+ (id)deltasFromLayerParameters:(id)a3 toLayerParameters:(id)a4;
- (PHAPrivateFederatedLearningLayerParameterDeltas)initWithWeightDeltas:(id)a3 biasDeltas:(id)a4;
@end

@implementation PHAPrivateFederatedLearningLayerParameterDeltas

- (PHAPrivateFederatedLearningLayerParameterDeltas)initWithWeightDeltas:(id)a3 biasDeltas:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningLayerParameterDeltas;
  v9 = [(PHAPrivateFederatedLearningLayerParameterDeltas *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weightDeltas, a3);
    objc_storeStrong(&v10->_biasDeltas, a4);
  }

  return v10;
}

+ (id)deltasFromLayerParameters:(id)a3 toLayerParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [v7 weights];
  v10 = [v6 weights];
  v11 = [v9 vectorBySubtractingVector:v10];
  v12 = [v7 bias];

  v13 = [v6 bias];

  v14 = [v12 vectorBySubtractingVector:v13];
  v15 = [v8 initWithWeightDeltas:v11 biasDeltas:v14];

  return v15;
}

@end