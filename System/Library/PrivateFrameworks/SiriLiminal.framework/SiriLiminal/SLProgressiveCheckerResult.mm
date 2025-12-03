@interface SLProgressiveCheckerResult
- (SLProgressiveCheckerResult)initWithScore:(float)score ofType:(unint64_t)type analyzedSamples:(unint64_t)samples detailedResults:(id)results;
@end

@implementation SLProgressiveCheckerResult

- (SLProgressiveCheckerResult)initWithScore:(float)score ofType:(unint64_t)type analyzedSamples:(unint64_t)samples detailedResults:(id)results
{
  resultsCopy = results;
  v15.receiver = self;
  v15.super_class = SLProgressiveCheckerResult;
  v12 = [(SLProgressiveCheckerResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_score = score;
    v12->_analyzedSamples = samples;
    objc_storeStrong(&v12->_detailedResult, results);
    v13->_resultType = type;
  }

  return v13;
}

@end