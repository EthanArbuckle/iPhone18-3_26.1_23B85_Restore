@interface SCRCPhotoEvaluatorResults
- (SCRCPhotoEvaluatorResults)initWithBlurResult:(id)a3 colorResult:(id)a4 luminanceResult:(id)a5;
@end

@implementation SCRCPhotoEvaluatorResults

- (SCRCPhotoEvaluatorResults)initWithBlurResult:(id)a3 colorResult:(id)a4 luminanceResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = SCRCPhotoEvaluatorResults;
  v12 = [(SCRCPhotoEvaluatorResults *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_blurResult, a3);
    objc_storeStrong(&v13->_colorResult, a4);
    objc_storeStrong(&v13->_luminanceResult, a5);
    v14 = v13;
  }

  return v13;
}

@end