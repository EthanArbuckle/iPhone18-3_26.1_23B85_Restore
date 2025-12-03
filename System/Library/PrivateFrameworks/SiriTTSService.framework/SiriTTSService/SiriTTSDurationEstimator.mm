@interface SiriTTSDurationEstimator
+ (double)roughEstimationWithRequest:(id)request;
@end

@implementation SiriTTSDurationEstimator

+ (double)roughEstimationWithRequest:(id)request
{
  requestCopy = request;
  v4 = static DurationEstimator.roughEstimation(request:)(requestCopy);

  return v4;
}

@end