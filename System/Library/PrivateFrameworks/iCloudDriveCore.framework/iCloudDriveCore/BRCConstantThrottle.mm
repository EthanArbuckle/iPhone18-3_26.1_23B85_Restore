@interface BRCConstantThrottle
- (BRCConstantThrottle)initWithName:(id)name andRetryBackoff:(double)backoff;
@end

@implementation BRCConstantThrottle

- (BRCConstantThrottle)initWithName:(id)name andRetryBackoff:(double)backoff
{
  v6.receiver = self;
  v6.super_class = BRCConstantThrottle;
  v4 = [(BRCThrottleBase *)&v6 _initWithName:name];
  if (v4)
  {
    v4->_retryBackoff = brc_interval_to_nsec();
  }

  return v4;
}

@end