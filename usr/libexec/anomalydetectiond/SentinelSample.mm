@interface SentinelSample
- (SentinelSample)initWithTimestamp:(unint64_t)timestamp;
@end

@implementation SentinelSample

- (SentinelSample)initWithTimestamp:(unint64_t)timestamp
{
  v5.receiver = self;
  v5.super_class = SentinelSample;
  result = [(SentinelSample *)&v5 init];
  if (result)
  {
    result->timestamp = timestamp;
  }

  return result;
}

@end