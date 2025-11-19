@interface RTVisitHyperParameterBatchMode
- (RTVisitHyperParameterBatchMode)init;
@end

@implementation RTVisitHyperParameterBatchMode

- (RTVisitHyperParameterBatchMode)init
{
  v6.receiver = self;
  v6.super_class = RTVisitHyperParameterBatchMode;
  v2 = [(RTVisitHyperParameterBatchMode *)&v6 init];
  v3 = v2;
  if (v2)
  {
    uuid = v2->super._uuid;
    v2->super._version = 0;
    v2->super._uuid = @"b3418fd9-c85d-4955-a6dc-cf1bc41d3b34";

    v3->super._maxBurstNoiseLength = 5;
    *&v3->super._maxHorizontalAccuracy = xmmword_230AFDA60;
    *&v3->super._minNoiseToLeftFlankDistance = xmmword_230AFDA70;
    *&v3->super._smootherKernelWidth = xmmword_230AFDA80;
    v3->super._maxDistanceBetweenAdjacentPoints = 500;
    v3->super._minSpeedToFilter = 10.0;
    *&v3->super._movingWindowSizeForSpeed = xmmword_230AFDA90;
    *&v3->super._decoderEntryCost = xmmword_230AFDAA0;
    v3->super._featureDimension = 3;
    *&v3->super._featureDistanceMax = xmmword_230AFDAB0;
    *&v3->super._featureDwellnessLogMax = xmmword_230AFDAC0;
    v3->super._featurePaddingValue = 0;
    *&v3->super._featureRadiusMax = xmmword_230AFDAD0;
    v3->super._maxSequenceLength = 60;
    *&v3->super._minEntryProbability = vdupq_n_s64(0x3F747AE147AE147BuLL);
    v3->super._minInferenceInterval = 300;
    v3->super._minNoVisitProbability = 0.005;
    *&v3->super._minSequenceLength = xmmword_230AFDAE0;
    *&v3->super._numOfSlide = xmmword_230AFDAF0;
    v3->super._numOfTimeStepForDwellness = 5;
    *&v3->super._numOfTimeStepForRadius = xmmword_230AFDB00;
    *&v3->super._onDeviceInferenceBatchSize = xmmword_230AFDB10;
    *&v3->super._referenceSize = vdupq_n_s64(4uLL);
    *&v3->super._timeStepInterval = xmmword_230AFDB20;
    *&v3->super._windowInterval = xmmword_230AFDB30;
    *&v3->super._binSize = xmmword_230AFDB40;
  }

  return v3;
}

@end