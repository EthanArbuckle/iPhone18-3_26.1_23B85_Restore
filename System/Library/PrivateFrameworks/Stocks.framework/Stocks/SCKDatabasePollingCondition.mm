@interface SCKDatabasePollingCondition
- (SCKDatabasePollingCondition)initWithMinIntervalSinceLastSync:(double)sync;
@end

@implementation SCKDatabasePollingCondition

- (SCKDatabasePollingCondition)initWithMinIntervalSinceLastSync:(double)sync
{
  v5.receiver = self;
  v5.super_class = SCKDatabasePollingCondition;
  result = [(SCKDatabasePollingCondition *)&v5 init];
  if (result)
  {
    result->_minIntervalSinceLastSync = sync;
  }

  return result;
}

@end