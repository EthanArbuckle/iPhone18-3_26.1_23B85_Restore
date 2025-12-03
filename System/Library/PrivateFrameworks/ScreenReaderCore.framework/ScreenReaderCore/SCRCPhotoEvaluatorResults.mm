@interface SCRCPhotoEvaluatorResults
- (SCRCPhotoEvaluatorResults)initWithBlurResult:(id)result colorResult:(id)colorResult luminanceResult:(id)luminanceResult;
@end

@implementation SCRCPhotoEvaluatorResults

- (SCRCPhotoEvaluatorResults)initWithBlurResult:(id)result colorResult:(id)colorResult luminanceResult:(id)luminanceResult
{
  resultCopy = result;
  colorResultCopy = colorResult;
  luminanceResultCopy = luminanceResult;
  v16.receiver = self;
  v16.super_class = SCRCPhotoEvaluatorResults;
  v12 = [(SCRCPhotoEvaluatorResults *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_blurResult, result);
    objc_storeStrong(&v13->_colorResult, colorResult);
    objc_storeStrong(&v13->_luminanceResult, luminanceResult);
    v14 = v13;
  }

  return v13;
}

@end