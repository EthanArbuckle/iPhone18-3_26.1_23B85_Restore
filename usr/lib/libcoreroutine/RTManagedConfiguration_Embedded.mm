@interface RTManagedConfiguration_Embedded
- (BOOL)effectiveBoolValueForSetting:(id)setting;
- (BOOL)isDiagnosticsAndUsageAllowed;
- (BOOL)isFindMyCarAllowed;
- (BOOL)isHealthDataSubmissionAllowed;
- (id)stringToManagedConfigurationKey:(id)key;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)setDelegate:(id)delegate;
@end

@implementation RTManagedConfiguration_Embedded

- (BOOL)effectiveBoolValueForSetting:(id)setting
{
  v4 = MEMORY[0x277D262A0];
  settingCopy = setting;
  sharedConnection = [v4 sharedConnection];
  v7 = [(RTManagedConfiguration_Embedded *)self stringToManagedConfigurationKey:settingCopy];

  LOBYTE(settingCopy) = [sharedConnection effectiveBoolValueForSetting:v7] == 1;
  return settingCopy;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(RTManagedConfiguration *)self delegate];
  if (delegate != delegateCopy)
  {
    v8.receiver = self;
    v8.super_class = RTManagedConfiguration_Embedded;
    [(RTManagedConfiguration *)&v8 setDelegate:delegateCopy];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v7 = mEMORY[0x277D262A0];
    if (delegateCopy)
    {
      [mEMORY[0x277D262A0] registerObserver:self];
    }

    else
    {
      [mEMORY[0x277D262A0] unregisterObserver:self];
    }
  }
}

- (void)dealloc
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = RTManagedConfiguration_Embedded;
  [(RTManagedConfiguration_Embedded *)&v4 dealloc];
}

- (id)stringToManagedConfigurationKey:(id)key
{
  keyCopy = key;
  if ([@"RTFeatureDiagnosticsSubmissionAllowed" isEqualToString:keyCopy])
  {
    v4 = MEMORY[0x277D25E58];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([@"RTFeatureFindMyCarAllowed" isEqualToString:keyCopy])
  {
    v4 = MEMORY[0x277D25E98];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v4 = [(RTManagedConfiguration *)self delegate:notification];
  if (objc_opt_respondsToSelector())
  {
    [v4 didReceiveEffectiveSettingsChangedNotification];
  }
}

- (BOOL)isDiagnosticsAndUsageAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isDiagnosticSubmissionAllowed = [mEMORY[0x277D262A0] isDiagnosticSubmissionAllowed];

  return isDiagnosticSubmissionAllowed;
}

- (BOOL)isFindMyCarAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isFindMyCarAllowed = [mEMORY[0x277D262A0] isFindMyCarAllowed];

  return isFindMyCarAllowed;
}

- (BOOL)isHealthDataSubmissionAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isHealthDataSubmissionAllowed = [mEMORY[0x277D262A0] isHealthDataSubmissionAllowed];

  return isHealthDataSubmissionAllowed;
}

@end