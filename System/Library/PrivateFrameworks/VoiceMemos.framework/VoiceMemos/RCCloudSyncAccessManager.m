@interface RCCloudSyncAccessManager
- (ACMonitoredAccountStore)accountStore;
- (BOOL)cloudSyncIsAvailable;
- (RCCloudSyncAccessManagerDelegate)delegate;
- (int)tccCloudAccess;
- (void)_availabilityChanged;
- (void)_startMonitoringAccountChanges;
- (void)dealloc;
- (void)setTccCloudAccess:(int)a3;
- (void)startMonitoringAccountChanges;
- (void)tccCloudAccess;
@end

@implementation RCCloudSyncAccessManager

- (BOOL)cloudSyncIsAvailable
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RCCloudSyncAccessManager *)v2 accountStore];
  if ([v3 aa_isUsingiCloud])
  {
    v4 = +[RCManagedConfigurationHelper cloudSyncIsAllowed];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);
  return v4;
}

- (ACMonitoredAccountStore)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CB8BA0]];
    v5 = [objc_alloc(MEMORY[0x277CB8F80]) initWithAccountTypes:v4 delegate:self];
    v6 = self->_accountStore;
    self->_accountStore = v5;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)startMonitoringAccountChanges
{
  v3 = dispatch_queue_create("com.apple.RCCloudSyncAccessManagerStartQueue", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RCCloudSyncAccessManager_startMonitoringAccountChanges__block_invoke;
  block[3] = &unk_279E43B20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startMonitoringAccountChanges
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_monitoringAccountChanges)
  {
    v2->_monitoringAccountChanges = 1;
    v3 = [(RCCloudSyncAccessManager *)v2 accountStore];
    [v3 registerWithCompletion:&__block_literal_global_12];

    v4 = objc_opt_new();
    managedConfigurationHelper = v2->_managedConfigurationHelper;
    v2->_managedConfigurationHelper = v4;

    [(RCManagedConfigurationHelper *)v2->_managedConfigurationHelper setDelegate:v2];
    objc_initWeak(&location, v2);
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__RCCloudSyncAccessManager__startMonitoringAccountChanges__block_invoke_2;
    v8[3] = &unk_279E44830;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch("com.apple.tcc.access.changed", &v2->_tccNotifyToken, v6, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);
}

void __58__RCCloudSyncAccessManager__startMonitoringAccountChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v2 tccCloudAccessChanged];
    }

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  tccNotifyToken = self->_tccNotifyToken;
  if (tccNotifyToken)
  {
    notify_cancel(tccNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = RCCloudSyncAccessManager;
  [(RCCloudSyncAccessManager *)&v4 dealloc];
}

- (int)tccCloudAccess
{
  v2 = TCCAccessCopyInformationForBundleId();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      goto LABEL_14;
    }

    v5 = Count;
    v6 = 0;
    v7 = MEMORY[0x277D6C0E8];
    v8 = MEMORY[0x277D6C190];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      Value = CFDictionaryGetValue(ValueAtIndex, *v7);
      if (CFEqual(Value, *v8))
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_14;
      }
    }

    v13 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277D6C0D0]);
    if (v13)
    {
      if (CFBooleanGetValue(v13))
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
LABEL_14:
      v12 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v11 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(RCCloudSyncAccessManager *)v11 tccCloudAccess];
    }

    return 0;
  }

  return v12;
}

- (void)setTccCloudAccess:(int)a3
{
  if (a3 == 2)
  {
    if (![(RCCloudSyncAccessManager *)self cloudSyncIsAvailable])
    {
      v7 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(RCCloudSyncAccessManager *)self setTccCloudAccess:v7];
      }

      goto LABEL_14;
    }

    v5 = *MEMORY[0x277D6C190];
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v8 = *MEMORY[0x277D6C190];
LABEL_11:
    if (TCCAccessSetForBundleId())
    {
      return;
    }

    goto LABEL_12;
  }

  if (a3 || (v6 = *MEMORY[0x277D6C190], !TCCAccessResetForBundleId()))
  {
LABEL_12:
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RCCloudSyncAccessManager *)a3 setTccCloudAccess:v7];
    }

LABEL_14:
  }
}

- (void)_availabilityChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RCCloudSyncAccessManager__availabilityChanged__block_invoke;
  block[3] = &unk_279E43B20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__RCCloudSyncAccessManager__availabilityChanged__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  if (v1)
  {
    v3 = v1;
    if (objc_opt_respondsToSelector())
    {
      [v3 cloudSyncAvailabilityChanged];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (RCCloudSyncAccessManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tccCloudAccess
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[RCCloudSyncAccessManager tccCloudAccess]";
  _os_log_error_impl(&dword_272442000, log, OS_LOG_TYPE_ERROR, "%s -- TCCAccessCopyInformationForBundleId failed", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setTccCloudAccess:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a1 accountStore];
  if ([v3 aa_isUsingiCloud])
  {
    v4 = @"is";
  }

  else
  {
    v4 = @"is not";
  }

  v5 = +[RCManagedConfigurationHelper cloudSyncIsAllowed];
  v6 = @"does not";
  v9 = "[RCCloudSyncAccessManager setTccCloudAccess:]";
  v8 = 136315650;
  v10 = 2112;
  v11 = v4;
  if (v5)
  {
    v6 = @"does";
  }

  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Attempting to enable cloud sync when not available - User %@ logged in, Managed Configuration %@ allow cloud sync", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setTccCloudAccess:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RCCloudSyncAccessManager setTccCloudAccess:]";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to set TCCCloudAccess to %i\n", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end