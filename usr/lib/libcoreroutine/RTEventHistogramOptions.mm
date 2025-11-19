@interface RTEventHistogramOptions
- (RTEventHistogramOptions)init;
@end

@implementation RTEventHistogramOptions

- (RTEventHistogramOptions)init
{
  v3.receiver = self;
  v3.super_class = RTEventHistogramOptions;
  result = [(RTEventHistogramOptions *)&v3 init];
  if (result)
  {
    *&result->_highProbabilityItemMinProbability = xmmword_230B014C0;
    result->_highProbabilityItemMinNumOfEvents = 3;
    result->_allowPredictionsToHome = 0;
  }

  return result;
}

@end