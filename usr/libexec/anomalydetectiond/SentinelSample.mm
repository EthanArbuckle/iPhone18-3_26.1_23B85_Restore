@interface SentinelSample
- (SentinelSample)initWithTimestamp:(unint64_t)a3;
@end

@implementation SentinelSample

- (SentinelSample)initWithTimestamp:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SentinelSample;
  result = [(SentinelSample *)&v5 init];
  if (result)
  {
    result->timestamp = a3;
  }

  return result;
}

@end