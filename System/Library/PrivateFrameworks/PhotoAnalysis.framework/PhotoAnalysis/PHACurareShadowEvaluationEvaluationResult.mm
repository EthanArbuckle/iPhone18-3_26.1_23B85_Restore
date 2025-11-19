@interface PHACurareShadowEvaluationEvaluationResult
- (PHACurareShadowEvaluationEvaluationResult)initWithModelPath:(id)a3 isPositiveData:(BOOL)a4 numberOfTotalSamples:(id)a5 numberOfCorrectSamples:(id)a6 meanPredictionValue:(id)a7 stddevPredictionValue:(id)a8;
@end

@implementation PHACurareShadowEvaluationEvaluationResult

- (PHACurareShadowEvaluationEvaluationResult)initWithModelPath:(id)a3 isPositiveData:(BOOL)a4 numberOfTotalSamples:(id)a5 numberOfCorrectSamples:(id)a6 meanPredictionValue:(id)a7 stddevPredictionValue:(id)a8
{
  v14 = a3;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v15 = a8;
  v24.receiver = self;
  v24.super_class = PHACurareShadowEvaluationEvaluationResult;
  v16 = [(PHACurareShadowEvaluationEvaluationResult *)&v24 init];
  if (v16)
  {
    v17 = [v14 lastPathComponent];
    v18 = [v17 stringByDeletingPathExtension];
    modelName = v16->_modelName;
    v16->_modelName = v18;

    v16->_isPositiveData = a4;
    objc_storeStrong(&v16->_numberOfTotalSamples, a5);
    objc_storeStrong(&v16->_numberOfCorrectSamples, a6);
    objc_storeStrong(&v16->_meanPredictionValue, a7);
    objc_storeStrong(&v16->_stddevPredictionValue, a8);
  }

  return v16;
}

@end