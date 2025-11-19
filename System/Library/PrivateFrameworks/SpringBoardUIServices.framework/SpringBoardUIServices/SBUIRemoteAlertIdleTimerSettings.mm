@interface SBUIRemoteAlertIdleTimerSettings
- (SBUIRemoteAlertIdleTimerSettings)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBUIRemoteAlertIdleTimerSettings

- (SBUIRemoteAlertIdleTimerSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBUIRemoteAlertIdleTimerSettings;
  v5 = [(SBUIRemoteAlertIdleTimerSettings *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"autoLockTimeout"];
    v5->_autoLockTimeout = v6;
    v5->_disablesWarn = [v4 decodeBoolForKey:@"disablesWarn"];
    v5->_usesLockScreenRules = [v4 decodeBoolForKey:@"usesLockScreenRules"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  autoLockTimeout = self->_autoLockTimeout;
  v5 = a3;
  [v5 encodeDouble:@"autoLockTimeout" forKey:autoLockTimeout];
  [v5 encodeBool:self->_disablesWarn forKey:@"disablesWarn"];
  [v5 encodeBool:self->_usesLockScreenRules forKey:@"usesLockScreenRules"];
}

@end