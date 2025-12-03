@interface SCLSettingsSyncErrorBehavior
- (SCLSettingsSyncErrorBehavior)initWithRecoveryType:(unint64_t)type retryInterval:(int64_t)interval;
@end

@implementation SCLSettingsSyncErrorBehavior

- (SCLSettingsSyncErrorBehavior)initWithRecoveryType:(unint64_t)type retryInterval:(int64_t)interval
{
  v7.receiver = self;
  v7.super_class = SCLSettingsSyncErrorBehavior;
  result = [(SCLSettingsSyncErrorBehavior *)&v7 init];
  if (result)
  {
    result->_recoveryType = type;
    result->_retryInterval = interval;
  }

  return result;
}

@end