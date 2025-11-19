@interface PHAPrivateFederatedLearningCoreModelTrainerResponse
- (PHAPrivateFederatedLearningCoreModelTrainerResponse)initWithDataPackage:(id)a3 trainingMetrics:(id)a4;
@end

@implementation PHAPrivateFederatedLearningCoreModelTrainerResponse

- (PHAPrivateFederatedLearningCoreModelTrainerResponse)initWithDataPackage:(id)a3 trainingMetrics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningCoreModelTrainerResponse;
  v9 = [(PHAPrivateFederatedLearningCoreModelTrainerResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataPackage, a3);
    objc_storeStrong(&v10->_trainingMetrics, a4);
  }

  return v10;
}

@end