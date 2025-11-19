@interface PHAPrivateFederatedLearningModelTrainerResponse
- (PHAPrivateFederatedLearningModelTrainerResponse)initWithParameterDeltas:(id)a3 trainingLossesPerEpoch:(id)a4 trainingAccuraciesPerEpoch:(id)a5 trainingEpochs:(unint64_t)a6 numberOfTrainingSamples:(unint64_t)a7;
@end

@implementation PHAPrivateFederatedLearningModelTrainerResponse

- (PHAPrivateFederatedLearningModelTrainerResponse)initWithParameterDeltas:(id)a3 trainingLossesPerEpoch:(id)a4 trainingAccuraciesPerEpoch:(id)a5 trainingEpochs:(unint64_t)a6 numberOfTrainingSamples:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = PHAPrivateFederatedLearningModelTrainerResponse;
  v16 = [(PHAPrivateFederatedLearningModelTrainerResponse *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_parameterDeltas, a3);
    objc_storeStrong(&v17->_trainingLossesPerEpoch, a4);
    objc_storeStrong(&v17->_trainingAccuraciesPerEpoch, a5);
    v17->_trainingEpochs = a6;
    v17->_numberOfTrainingSamples = a7;
  }

  return v17;
}

@end