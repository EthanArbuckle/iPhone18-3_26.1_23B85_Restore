@interface BRCConstantThrottle
- (BRCConstantThrottle)initWithName:(id)a3 andRetryBackoff:(double)a4;
@end

@implementation BRCConstantThrottle

- (BRCConstantThrottle)initWithName:(id)a3 andRetryBackoff:(double)a4
{
  v6.receiver = self;
  v6.super_class = BRCConstantThrottle;
  v4 = [(BRCThrottleBase *)&v6 _initWithName:a3];
  if (v4)
  {
    v4->_retryBackoff = brc_interval_to_nsec();
  }

  return v4;
}

@end