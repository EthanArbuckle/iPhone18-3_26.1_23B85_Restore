@interface PHACurareShadowEvaluationEvaluationResult
- (PHACurareShadowEvaluationEvaluationResult)initWithModelPath:(id)path isPositiveData:(BOOL)data numberOfTotalSamples:(id)samples numberOfCorrectSamples:(id)correctSamples meanPredictionValue:(id)value stddevPredictionValue:(id)predictionValue;
@end

@implementation PHACurareShadowEvaluationEvaluationResult

- (PHACurareShadowEvaluationEvaluationResult)initWithModelPath:(id)path isPositiveData:(BOOL)data numberOfTotalSamples:(id)samples numberOfCorrectSamples:(id)correctSamples meanPredictionValue:(id)value stddevPredictionValue:(id)predictionValue
{
  pathCopy = path;
  samplesCopy = samples;
  correctSamplesCopy = correctSamples;
  valueCopy = value;
  predictionValueCopy = predictionValue;
  v24.receiver = self;
  v24.super_class = PHACurareShadowEvaluationEvaluationResult;
  v16 = [(PHACurareShadowEvaluationEvaluationResult *)&v24 init];
  if (v16)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    modelName = v16->_modelName;
    v16->_modelName = stringByDeletingPathExtension;

    v16->_isPositiveData = data;
    objc_storeStrong(&v16->_numberOfTotalSamples, samples);
    objc_storeStrong(&v16->_numberOfCorrectSamples, correctSamples);
    objc_storeStrong(&v16->_meanPredictionValue, value);
    objc_storeStrong(&v16->_stddevPredictionValue, predictionValue);
  }

  return v16;
}

@end