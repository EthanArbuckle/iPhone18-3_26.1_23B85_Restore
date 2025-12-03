@interface SBUIRemoteAlertIdleTimerSettings
- (SBUIRemoteAlertIdleTimerSettings)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBUIRemoteAlertIdleTimerSettings

- (SBUIRemoteAlertIdleTimerSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SBUIRemoteAlertIdleTimerSettings;
  v5 = [(SBUIRemoteAlertIdleTimerSettings *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"autoLockTimeout"];
    v5->_autoLockTimeout = v6;
    v5->_disablesWarn = [coderCopy decodeBoolForKey:@"disablesWarn"];
    v5->_usesLockScreenRules = [coderCopy decodeBoolForKey:@"usesLockScreenRules"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  autoLockTimeout = self->_autoLockTimeout;
  coderCopy = coder;
  [coderCopy encodeDouble:@"autoLockTimeout" forKey:autoLockTimeout];
  [coderCopy encodeBool:self->_disablesWarn forKey:@"disablesWarn"];
  [coderCopy encodeBool:self->_usesLockScreenRules forKey:@"usesLockScreenRules"];
}

@end