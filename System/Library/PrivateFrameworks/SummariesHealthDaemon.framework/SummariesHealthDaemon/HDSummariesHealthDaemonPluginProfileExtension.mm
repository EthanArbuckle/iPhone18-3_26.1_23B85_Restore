@interface HDSummariesHealthDaemonPluginProfileExtension
- (HDPrimaryProfile)profile;
- (HDSummariesHealthDaemonPluginProfileExtension)initWithProfile:(id)a3;
- (void)_handleDismissInstructionWithClient:(id)a3;
- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4;
@end

@implementation HDSummariesHealthDaemonPluginProfileExtension

- (HDSummariesHealthDaemonPluginProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDSummariesHealthDaemonPluginProfileExtension;
  v5 = [(HDSummariesHealthDaemonPluginProfileExtension *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277D107B8]);
    v8 = HKCreateSerialDispatchQueue();
    v9 = [v7 initWithProfile:v4 clientIdentifier:@"SummariesHealthSharingNotificationSyncClientIdentifier" queue:v8];
    notificationSyncClient = v6->_notificationSyncClient;
    v6->_notificationSyncClient = v9;

    [(HDNotificationSyncClient *)v6->_notificationSyncClient setDelegate:v6];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v12 = [WeakRetained healthDaemon];
    [v12 registerDaemonReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC300];
  v8 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKNotificationInstructionAction();
    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_26BCB2000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", &v16, 0x16u);
  }

  if (a4 == 1)
  {
    [(HDSummariesHealthDaemonPluginProfileExtension *)self _handleDismissInstructionWithClient:v6];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [(HDSummariesHealthDaemonPluginProfileExtension *)self notificationSyncClient:a4 didReceiveInstructionWithAction:v13];
    }
  }

  unitTest_didProcessNotificationInstruction = self->_unitTest_didProcessNotificationInstruction;
  if (unitTest_didProcessNotificationInstruction)
  {
    unitTest_didProcessNotificationInstruction[2]();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstructionWithClient:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC300];
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = self;
    _os_log_impl(&dword_26BCB2000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instruction", buf, 0xCu);
  }

  v27 = 0;
  v7 = [v4 pendingNotificationDismissInstructionsWithError:&v27];
  v8 = v27;
  _HKInitializeLogging();
  v9 = *v5;
  v10 = *v5;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [v7 messageIdentifiers];
      *buf = 138543618;
      v29 = v12;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_26BCB2000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notification dismiss instructions with identifiers: %{public}@", buf, 0x16u);
    }

    v15 = [v7 categoryIdentifiers];
    v16 = [v15 allObjects];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v18 = [WeakRetained notificationManager];
    [v18 removeDeliveredNotificationsWithIdentifiers:v16];

    v26 = v8;
    LODWORD(v18) = [v4 markPendingNotificationInstructionsAsProcessed:v7 error:&v26];
    v19 = v26;

    _HKInitializeLogging();
    v20 = *v5;
    v21 = *v5;
    if (v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v20;
        v23 = objc_opt_class();
        *buf = 138543618;
        v29 = v23;
        v30 = 2114;
        v31 = v16;
        v24 = v23;
        _os_log_impl(&dword_26BCB2000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed notifications: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [HDSummariesHealthDaemonPluginProfileExtension _handleDismissInstructionWithClient:v20];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDSummariesHealthDaemonPluginProfileExtension _handleDismissInstructionWithClient:v9];
    }

    v19 = v8;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HDPrimaryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)notificationSyncClient:(os_log_t)log didReceiveInstructionWithAction:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_26BCB2000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected notification instruction received: %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstructionWithClient:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_26BCB2000, v4, v5, "[%{public}@] Mark pending notification instruction as processed failed with error: [%{public}@]", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstructionWithClient:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_26BCB2000, v4, v5, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end