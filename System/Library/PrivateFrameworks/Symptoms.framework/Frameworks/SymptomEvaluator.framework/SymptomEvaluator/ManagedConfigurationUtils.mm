@interface ManagedConfigurationUtils
+ (id)sharedInstance;
- (ManagedConfigurationUtils)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation ManagedConfigurationUtils

+ (id)sharedInstance
{
  if (sharedInstance_pred_35 != -1)
  {
    +[ManagedConfigurationUtils sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_35;

  return v3;
}

uint64_t __43__ManagedConfigurationUtils_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ManagedConfigurationUtils);
  v1 = sharedInstance_sharedInstance_35;
  sharedInstance_sharedInstance_35 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ManagedConfigurationUtils)init
{
  v11.receiver = self;
  v11.super_class = ManagedConfigurationUtils;
  v2 = [(ManagedConfigurationUtils *)&v11 init];
  if (v2)
  {
    v3 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 4);
    v2->_managedConfigurationDylibHandle = v3;
    if (v3)
    {
      Class = objc_getClass("MCProfileConnection");
      sMCProfileConnectionClass = Class;
      if (Class)
      {
        class = [(objc_class *)Class sharedConnection];
        [class registerObserver:v2];
        v6 = [class installedProfileIdentifiersWithFilterFlags:1];
        [(ManagedConfigurationUtils *)v2 setInstalledVisibleProfileIdentifiers:v6];

        -[ManagedConfigurationUtils setDiagnosticsAndUsageEnabled:](v2, "setDiagnosticsAndUsageEnabled:", [class isDiagnosticSubmissionAllowed]);
        return v2;
      }

      v7 = configurationLogHandle;
      if (!os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      *v10 = 0;
      v8 = "Couldn't load MCProfileConnection";
    }

    else
    {
      v7 = configurationLogHandle;
      if (!os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
      {
        return v2;
      }

      *v10 = 0;
      v8 = "Couldn't load ManagedConfiguration framework";
    }

    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v8, v10, 2u);
  }

  return v2;
}

- (void)dealloc
{
  sharedConnection = [sMCProfileConnectionClass sharedConnection];
  [sharedConnection unregisterObserver:self];

  managedConfigurationDylibHandle = self->_managedConfigurationDylibHandle;
  if (managedConfigurationDylibHandle)
  {
    dlclose(managedConfigurationDylibHandle);
  }

  v5.receiver = self;
  v5.super_class = ManagedConfigurationUtils;
  [(ManagedConfigurationUtils *)&v5 dealloc];
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [notification installedProfileIdentifiersWithFilterFlags:{1, info}];
  v6 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Received ProfileListChangedNotification with installed visible profiles: %@", &v11, 0xCu);
  }

  installedVisibleProfileIdentifiers = [(ManagedConfigurationUtils *)self installedVisibleProfileIdentifiers];
  v8 = [installedVisibleProfileIdentifiers isEqualToArray:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 copy];
    [(ManagedConfigurationUtils *)self setInstalledVisibleProfileIdentifiers:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  isDiagnosticSubmissionAllowed = [notification isDiagnosticSubmissionAllowed];
  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"OFF";
    if (isDiagnosticSubmissionAllowed)
    {
      v7 = @"ON";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "MCProfile Settings Changed to %@", &v9, 0xCu);
  }

  if (isDiagnosticSubmissionAllowed != [(ManagedConfigurationUtils *)self diagnosticsAndUsageEnabled])
  {
    [(ManagedConfigurationUtils *)self setDiagnosticsAndUsageEnabled:isDiagnosticSubmissionAllowed];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end