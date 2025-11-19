@interface SiriTTSDurationEstimator
+ (double)roughEstimationWithRequest:(id)a3;
@end

@implementation SiriTTSDurationEstimator

+ (double)roughEstimationWithRequest:(id)a3
{
  v3 = a3;
  v4 = static DurationEstimator.roughEstimation(request:)(v3);

  return v4;
}

@end