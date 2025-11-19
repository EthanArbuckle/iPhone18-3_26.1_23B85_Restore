@interface BRCRetryCounter
- (BRCRetryCounter)initWithThrottleHash:(int64_t)a3;
- (void)incrementRetry;
@end

@implementation BRCRetryCounter

- (void)incrementRetry
{
  ++self->_retryCount;
  self->_latestRetry = brc_current_date_nsec();
  self->_scheduled = 0;
}

- (BRCRetryCounter)initWithThrottleHash:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = BRCRetryCounter;
  v4 = [(BRCRetryCounter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_throttleHash = a3;
    [(BRCRetryCounter *)v4 incrementRetry];
  }

  return v5;
}

@end