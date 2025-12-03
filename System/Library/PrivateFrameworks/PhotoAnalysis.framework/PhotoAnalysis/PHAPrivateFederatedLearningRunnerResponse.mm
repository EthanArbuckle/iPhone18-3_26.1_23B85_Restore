@interface PHAPrivateFederatedLearningRunnerResponse
- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)package layersToTrain:(id)train trainingLossesPerEpoch:(id)epoch trainingAccuraciesPerEpoch:(id)perEpoch;
- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)package trainingMetrics:(id)metrics;
@end

@implementation PHAPrivateFederatedLearningRunnerResponse

- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)package trainingMetrics:(id)metrics
{
  packageCopy = package;
  metricsCopy = metrics;
  dataPackage = self->_dataPackage;
  self->_dataPackage = packageCopy;
  v9 = packageCopy;

  trainingMetrics = self->_trainingMetrics;
  self->_trainingMetrics = metricsCopy;

  return self;
}

- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)package layersToTrain:(id)train trainingLossesPerEpoch:(id)epoch trainingAccuraciesPerEpoch:(id)perEpoch
{
  v22[3] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_dataPackage, package);
  packageCopy = package;
  perEpochCopy = perEpoch;
  epochCopy = epoch;
  trainCopy = train;
  v20 = epochCopy;
  v21[0] = @"TrainingLosses";
  v19 = @"losses";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v15;
  v22[1] = perEpochCopy;
  v21[1] = @"TrainingAccuracies";
  v21[2] = @"UpdatedModelIndices";
  v22[2] = trainCopy;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  trainingMetrics = self->_trainingMetrics;
  self->_trainingMetrics = v16;

  return self;
}

@end