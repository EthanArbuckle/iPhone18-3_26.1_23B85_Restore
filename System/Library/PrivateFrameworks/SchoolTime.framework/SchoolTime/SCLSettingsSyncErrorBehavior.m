@interface SCLSettingsSyncErrorBehavior
- (SCLSettingsSyncErrorBehavior)initWithRecoveryType:(unint64_t)a3 retryInterval:(int64_t)a4;
@end

@implementation SCLSettingsSyncErrorBehavior

- (SCLSettingsSyncErrorBehavior)initWithRecoveryType:(unint64_t)a3 retryInterval:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SCLSettingsSyncErrorBehavior;
  result = [(SCLSettingsSyncErrorBehavior *)&v7 init];
  if (result)
  {
    result->_recoveryType = a3;
    result->_retryInterval = a4;
  }

  return result;
}

@end