@interface PHAPrivateFederatedLearningRunnerResponse
- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)a3 layersToTrain:(id)a4 trainingLossesPerEpoch:(id)a5 trainingAccuraciesPerEpoch:(id)a6;
- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)a3 trainingMetrics:(id)a4;
@end

@implementation PHAPrivateFederatedLearningRunnerResponse

- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)a3 trainingMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  dataPackage = self->_dataPackage;
  self->_dataPackage = v6;
  v9 = v6;

  trainingMetrics = self->_trainingMetrics;
  self->_trainingMetrics = v7;

  return self;
}

- (PHAPrivateFederatedLearningRunnerResponse)initWithDataPackage:(id)a3 layersToTrain:(id)a4 trainingLossesPerEpoch:(id)a5 trainingAccuraciesPerEpoch:(id)a6
{
  v22[3] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_dataPackage, a3);
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v20 = v13;
  v21[0] = @"TrainingLosses";
  v19 = @"losses";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v15;
  v22[1] = v12;
  v21[1] = @"TrainingAccuracies";
  v21[2] = @"UpdatedModelIndices";
  v22[2] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  trainingMetrics = self->_trainingMetrics;
  self->_trainingMetrics = v16;

  return self;
}

@end