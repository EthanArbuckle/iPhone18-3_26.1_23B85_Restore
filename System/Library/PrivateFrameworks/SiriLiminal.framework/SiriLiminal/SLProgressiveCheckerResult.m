@interface SLProgressiveCheckerResult
- (SLProgressiveCheckerResult)initWithScore:(float)a3 ofType:(unint64_t)a4 analyzedSamples:(unint64_t)a5 detailedResults:(id)a6;
@end

@implementation SLProgressiveCheckerResult

- (SLProgressiveCheckerResult)initWithScore:(float)a3 ofType:(unint64_t)a4 analyzedSamples:(unint64_t)a5 detailedResults:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SLProgressiveCheckerResult;
  v12 = [(SLProgressiveCheckerResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_score = a3;
    v12->_analyzedSamples = a5;
    objc_storeStrong(&v12->_detailedResult, a6);
    v13->_resultType = a4;
  }

  return v13;
}

@end