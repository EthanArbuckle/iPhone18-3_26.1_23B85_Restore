@interface RTManagedConfiguration_Embedded
- (BOOL)effectiveBoolValueForSetting:(id)a3;
- (BOOL)isDiagnosticsAndUsageAllowed;
- (BOOL)isFindMyCarAllowed;
- (BOOL)isHealthDataSubmissionAllowed;
- (id)stringToManagedConfigurationKey:(id)a3;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation RTManagedConfiguration_Embedded

- (BOOL)effectiveBoolValueForSetting:(id)a3
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v6 = [v4 sharedConnection];
  v7 = [(RTManagedConfiguration_Embedded *)self stringToManagedConfigurationKey:v5];

  LOBYTE(v5) = [v6 effectiveBoolValueForSetting:v7] == 1;
  return v5;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(RTManagedConfiguration *)self delegate];
  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = RTManagedConfiguration_Embedded;
    [(RTManagedConfiguration *)&v8 setDelegate:v4];
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = v6;
    if (v4)
    {
      [v6 registerObserver:self];
    }

    else
    {
      [v6 unregisterObserver:self];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = RTManagedConfiguration_Embedded;
  [(RTManagedConfiguration_Embedded *)&v4 dealloc];
}

- (id)stringToManagedConfigurationKey:(id)a3
{
  v3 = a3;
  if ([@"RTFeatureDiagnosticsSubmissionAllowed" isEqualToString:v3])
  {
    v4 = MEMORY[0x277D25E58];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([@"RTFeatureFindMyCarAllowed" isEqualToString:v3])
  {
    v4 = MEMORY[0x277D25E98];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = [(RTManagedConfiguration *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v4 didReceiveEffectiveSettingsChangedNotification];
  }
}

- (BOOL)isDiagnosticsAndUsageAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isDiagnosticSubmissionAllowed];

  return v3;
}

- (BOOL)isFindMyCarAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isFindMyCarAllowed];

  return v3;
}

- (BOOL)isHealthDataSubmissionAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isHealthDataSubmissionAllowed];

  return v3;
}

@end