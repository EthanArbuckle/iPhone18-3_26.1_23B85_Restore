@interface PHAPrivateFederatedLearningCoreModelTrainerResponse
- (PHAPrivateFederatedLearningCoreModelTrainerResponse)initWithDataPackage:(id)package trainingMetrics:(id)metrics;
@end

@implementation PHAPrivateFederatedLearningCoreModelTrainerResponse

- (PHAPrivateFederatedLearningCoreModelTrainerResponse)initWithDataPackage:(id)package trainingMetrics:(id)metrics
{
  packageCopy = package;
  metricsCopy = metrics;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningCoreModelTrainerResponse;
  v9 = [(PHAPrivateFederatedLearningCoreModelTrainerResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataPackage, package);
    objc_storeStrong(&v10->_trainingMetrics, metrics);
  }

  return v10;
}

@end