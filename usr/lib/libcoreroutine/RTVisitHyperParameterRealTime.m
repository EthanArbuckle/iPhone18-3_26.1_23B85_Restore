@interface RTVisitHyperParameterRealTime
- (RTVisitHyperParameterRealTime)init;
@end

@implementation RTVisitHyperParameterRealTime

- (RTVisitHyperParameterRealTime)init
{
  v6.receiver = self;
  v6.super_class = RTVisitHyperParameterRealTime;
  v2 = [(RTVisitHyperParameterRealTime *)&v6 init];
  v3 = v2;
  if (v2)
  {
    uuid = v2->super._uuid;
    v2->super._version = 0;
    v2->super._uuid = @"a21bbfb6-0419-4389-8d87-a01d27873461";

    v3->super._maxBurstNoiseLength = 2;
    *&v3->super._maxHorizontalAccuracy = xmmword_230B00FE0;
    *&v3->super._minNoiseToLeftFlankDistance = xmmword_230B00FF0;
    *&v3->super._smootherKernelWidth = xmmword_230B01000;
    v3->super._maxDistanceBetweenAdjacentPoints = 500;
    v3->super._minSpeedToFilter = 10.0;
    *&v3->super._movingWindowSizeForSpeed = xmmword_230AFDA90;
    *&v3->super._decoderEntryCost = xmmword_230AFDAA0;
    v3->super._featureDimension = 3;
    *&v3->super._featureDistanceMax = xmmword_230AFDAB0;
    *&v3->super._featureDwellnessLogMax = xmmword_230AFDAC0;
    v3->super._featurePaddingValue = 1;
    *&v3->super._featureRadiusMax = xmmword_230AFDAD0;
    v3->super._maxSequenceLength = 60;
    *&v3->super._minEntryProbability = xmmword_230B01010;
    v3->super._minInferenceInterval = 300;
    v3->super._minNoVisitProbability = 0.5;
    *&v3->super._minSequenceLength = xmmword_230AFDAE0;
    *&v3->super._numOfSlide = xmmword_230AFDAF0;
    v3->super._numOfTimeStepForDwellness = 5;
    *&v3->super._numOfTimeStepForRadius = xmmword_230AFDB00;
    *&v3->super._onDeviceInferenceBatchSize = xmmword_230AFDB10;
    *&v3->super._referenceSize = vdupq_n_s64(0xCuLL);
    *&v3->super._timeStepInterval = xmmword_230AFDB20;
    *&v3->super._windowInterval = xmmword_230B01020;
    *&v3->super._binSize = vdupq_n_s64(0xAuLL);
  }

  return v3;
}

@end