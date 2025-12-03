@interface PHAPrivateFederatedLearningModelTrainerResponse
- (PHAPrivateFederatedLearningModelTrainerResponse)initWithParameterDeltas:(id)deltas trainingLossesPerEpoch:(id)epoch trainingAccuraciesPerEpoch:(id)perEpoch trainingEpochs:(unint64_t)epochs numberOfTrainingSamples:(unint64_t)samples;
@end

@implementation PHAPrivateFederatedLearningModelTrainerResponse

- (PHAPrivateFederatedLearningModelTrainerResponse)initWithParameterDeltas:(id)deltas trainingLossesPerEpoch:(id)epoch trainingAccuraciesPerEpoch:(id)perEpoch trainingEpochs:(unint64_t)epochs numberOfTrainingSamples:(unint64_t)samples
{
  deltasCopy = deltas;
  epochCopy = epoch;
  perEpochCopy = perEpoch;
  v19.receiver = self;
  v19.super_class = PHAPrivateFederatedLearningModelTrainerResponse;
  v16 = [(PHAPrivateFederatedLearningModelTrainerResponse *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_parameterDeltas, deltas);
    objc_storeStrong(&v17->_trainingLossesPerEpoch, epoch);
    objc_storeStrong(&v17->_trainingAccuraciesPerEpoch, perEpoch);
    v17->_trainingEpochs = epochs;
    v17->_numberOfTrainingSamples = samples;
  }

  return v17;
}

@end