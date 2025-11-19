@interface SCWDatabasePollingCondition
- (SCWDatabasePollingCondition)initWithMinIntervalSinceLastSync:(double)a3;
@end

@implementation SCWDatabasePollingCondition

- (SCWDatabasePollingCondition)initWithMinIntervalSinceLastSync:(double)a3
{
  v5.receiver = self;
  v5.super_class = SCWDatabasePollingCondition;
  result = [(SCWDatabasePollingCondition *)&v5 init];
  if (result)
  {
    result->_minIntervalSinceLastSync = a3;
  }

  return result;
}

@end