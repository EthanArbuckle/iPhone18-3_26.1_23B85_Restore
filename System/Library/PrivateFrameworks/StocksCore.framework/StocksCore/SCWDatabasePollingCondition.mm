@interface SCWDatabasePollingCondition
- (SCWDatabasePollingCondition)initWithMinIntervalSinceLastSync:(double)sync;
@end

@implementation SCWDatabasePollingCondition

- (SCWDatabasePollingCondition)initWithMinIntervalSinceLastSync:(double)sync
{
  v5.receiver = self;
  v5.super_class = SCWDatabasePollingCondition;
  result = [(SCWDatabasePollingCondition *)&v5 init];
  if (result)
  {
    result->_minIntervalSinceLastSync = sync;
  }

  return result;
}

@end