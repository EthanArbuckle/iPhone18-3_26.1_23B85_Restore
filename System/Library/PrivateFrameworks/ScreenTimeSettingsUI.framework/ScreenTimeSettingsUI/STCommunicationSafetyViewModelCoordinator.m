@interface STCommunicationSafetyViewModelCoordinator
- (STCommunicationSafetyViewModelCoordinator)initWithPersistenceController:(id)a3 userDSID:(id)a4 currentAccountIsProto:(BOOL)a5 modelUpdatedHandler:(id)a6;
- (void)_loadViewModel;
- (void)_registerForPersistentStoreNotifications;
- (void)_reportCoreAnalyticsEventCommunicationSafetyEnabled:(BOOL)a3;
- (void)persistCommunicationSafetySettingsWithCompletionHandler:(id)a3;
- (void)saveCommunicationSafetyReceivingRestricted:(BOOL)a3 communicationSafetySendingRestricted:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation STCommunicationSafetyViewModelCoordinator

- (STCommunicationSafetyViewModelCoordinator)initWithPersistenceController:(id)a3 userDSID:(id)a4 currentAccountIsProto:(BOOL)a5 modelUpdatedHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = STCommunicationSafetyViewModelCoordinator;
  v14 = [(STCommunicationSafetyViewModelCoordinator *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistenceController, a3);
    v15->_currentAccountIsProto = a5;
    v16 = [v12 copy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &unk_28769D0D0;
    }

    objc_storeStrong(&v15->_userDSID, v18);

    v19 = _Block_copy(v13);
    modelUpdatedHandler = v15->_modelUpdatedHandler;
    v15->_modelUpdatedHandler = v19;

    v21 = objc_opt_new();
    viewModel = v15->_viewModel;
    v15->_viewModel = v21;

    [(STCommunicationSafetyViewModelCoordinator *)v15 _loadViewModel];
    [(STCommunicationSafetyViewModelCoordinator *)v15 _registerForPersistentStoreNotifications];
  }

  return v15;
}

- (void)_registerForPersistentStoreNotifications
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4B9C8];
  v4 = [MEMORY[0x277D4B980] fetchRequest];
  v5 = [v3 requestWithFetchRequest:v4];

  v6 = objc_alloc(MEMORY[0x277D4B9D0]);
  v7 = [(STCommunicationSafetyViewModelCoordinator *)self persistenceController];
  v8 = [v7 viewContext];
  v11[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [v6 initWithContext:v8 resultsRequests:v9];

  [v10 setDelegate:self];
  [(STCommunicationSafetyViewModelCoordinator *)self setFetchedResultsController:v10];
}

- (void)_loadViewModel
{
  v1 = [a1 userDSID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v2, v3, "Loading viewModel for userDSID %{public}@...", v4, v5, v6, v7, v8);
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke(uint64_t a1, void *a2)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 viewModel];
  v7 = [*v4 userObjectID];

  v8 = *v4;
  if (v7)
  {
    v9 = [v8 userObjectID];
    v10 = [v3 objectWithID:v9];

    v11 = 0;
    if (v10)
    {
LABEL_3:
      v12 = [v10 isCommunicationSafetyReceivingRestricted];
      v13 = [v10 isCommunicationSafetySendingRestricted];
      v14 = [v10 isCommunicationSafetyNotificationEnabled];
      v15 = [v10 isCommunicationSafetyAnalyticsEnabled];
      v16 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_1();
      }

      v17 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_2();
      }

      v18 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_3();
      }

      v19 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_4();
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_51;
      block[3] = &unk_279B7D220;
      v20 = v6;
      v34 = v12;
      v35 = v13;
      v36 = v14;
      v37 = v15;
      v21 = *v4;
      v32 = v20;
      v33 = v21;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v22 = v32;
      v3 = v30;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v10 = [v8 userDSID];
  v22 = [MEMORY[0x277D4B988] fetchRequestForUsersWithDSID:v10];
  v38 = 0;
  v23 = [v22 execute:&v38];
  v11 = v38;
  if (v23)
  {
    v24 = [v23 firstObject];
    v25 = [v24 objectID];
    [*v4 setUserObjectID:v25];

    v10 = v24;
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_14:
    v26 = +[STUILog communicationSafety];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_5(v4, v26);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D4BBD8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"user could not be found";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    [v27 errorWithDomain:v28 code:11 userInfo:v10];
    v11 = v22 = v11;
    goto LABEL_20;
  }

  v29 = +[STUILog communicationSafety];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_6();
  }

LABEL_20:
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_51(uint64_t a1)
{
  [*(a1 + 32) setIsCommunicationSafetyReceivingRestricted:*(a1 + 48)];
  [*(a1 + 32) setIsCommunicationSafetySendingRestricted:*(a1 + 49)];
  [*(a1 + 32) setIsCommunicationSafetyNotificationEnabled:*(a1 + 50)];
  [*(a1 + 32) setIsCommunicationSafetyAnalyticsEnabled:*(a1 + 51)];
  v2 = [*(a1 + 40) modelUpdatedHandler];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)persistCommunicationSafetySettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STCommunicationSafetyViewModelCoordinator *)self persistenceController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B7D298;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBackgroundTaskAndWait:v7];
}

void __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) viewModel];
  v5 = [*(a1 + 32) userObjectID];

  if (v5)
  {
    v6 = [*(a1 + 32) userObjectID];
    v7 = [v3 objectWithID:v6];

    [v7 setIsCommunicationSafetyReceivingRestricted:{objc_msgSend(v4, "isCommunicationSafetyReceivingRestricted")}];
    [v7 setIsCommunicationSafetySendingRestricted:{objc_msgSend(v4, "isCommunicationSafetySendingRestricted")}];
    [v7 setIsCommunicationSafetyNotificationEnabled:{objc_msgSend(v4, "isCommunicationSafetyNotificationEnabled")}];
    [v7 setIsCommunicationSafetyAnalyticsEnabled:{objc_msgSend(v4, "isCommunicationSafetyAnalyticsEnabled")}];
    v8 = [*(a1 + 32) persistenceController];
    v21 = 0;
    v9 = [v8 saveContext:v3 error:&v21];
    v10 = v21;

    if ((v9 & 1) == 0)
    {
      v11 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke_cold_1();
      }
    }

    [*(a1 + 32) _reportCoreAnalyticsEventCommunicationSafetyEnabled:{objc_msgSend(v4, "isCommunicationSafetyReceivingRestricted")}];
    v12 = STSafeErrorFromCoreDataError();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke_54;
    block[3] = &unk_279B7D130;
    v13 = *(a1 + 40);
    v19 = v12;
    v20 = v13;
    v14 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v15 = +[STUILog communicationSafety];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke_cold_2(v15);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke_55;
    v16[3] = &unk_279B7D270;
    v17 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v16);
    v7 = v17;
  }
}

- (void)saveCommunicationSafetyReceivingRestricted:(BOOL)a3 communicationSafetySendingRestricted:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(STCommunicationSafetyViewModelCoordinator *)self persistenceController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __143__STCommunicationSafetyViewModelCoordinator_saveCommunicationSafetyReceivingRestricted_communicationSafetySendingRestricted_completionHandler___block_invoke;
  v11[3] = &unk_279B7D2C0;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 performBackgroundTaskAndWait:v11];
}

void __143__STCommunicationSafetyViewModelCoordinator_saveCommunicationSafetyReceivingRestricted_communicationSafetySendingRestricted_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];

  if (v5)
  {
    v6 = [*(a1 + 32) userObjectID];
    v7 = [v4 objectWithID:v6];

    [v7 setIsCommunicationSafetyReceivingRestricted:*(a1 + 48)];
    [v7 setIsCommunicationSafetySendingRestricted:*(a1 + 49)];
    v8 = [*(a1 + 32) persistenceController];
    v19 = 0;
    v9 = [v8 saveContext:v4 error:&v19];

    v10 = v19;
    if ((v9 & 1) == 0)
    {
      v11 = +[STUILog communicationSafety];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x277D4B898] sharedController];
    [v12 saveContext:v4 error:0];

    v10 = 0;
  }

  [*(a1 + 32) _reportCoreAnalyticsEventCommunicationSafetyEnabled:*(a1 + 48)];
  v13 = STSafeErrorFromCoreDataError();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__STCommunicationSafetyViewModelCoordinator_saveCommunicationSafetyReceivingRestricted_communicationSafetySendingRestricted_completionHandler___block_invoke_57;
  block[3] = &unk_279B7D130;
  v14 = *(a1 + 40);
  v17 = v13;
  v18 = v14;
  v15 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_reportCoreAnalyticsEventCommunicationSafetyEnabled:(BOOL)a3
{
  v3 = [objc_alloc(MEMORY[0x277D4B958]) initWithCommunicationSafetyEnabled:a3];
  [MEMORY[0x277D4B970] reportEvent:v3];
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_1()
{
  v0 = [OUTLINED_FUNCTION_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v1, v2, "Copied isCommunicationSafetyReceivingRestricted from DB to viewModel: %@", v3, v4, v5, v6, v7);
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_2()
{
  v0 = [OUTLINED_FUNCTION_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v1, v2, "Copied isCommunicationSafetySendingRestricted from DB to viewModel: %@", v3, v4, v5, v6, v7);
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_3()
{
  v0 = [OUTLINED_FUNCTION_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v1, v2, "Copied isCommunicationSafetyNotificationEnabled from DB to viewModel: %@", v3, v4, v5, v6, v7);
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_4()
{
  v0 = [OUTLINED_FUNCTION_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_264BA2000, v1, v2, "Copied isCommunicationSafetyAnalyticsEnabled from DB to viewModel: %@", v3, v4, v5, v6, v7);
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_5(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [*a1 userDSID];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "user with DSID could not be found: %{public}@", v4, 0xCu);
}

void __59__STCommunicationSafetyViewModelCoordinator__loadViewModel__block_invoke_cold_6()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_264BA2000, v1, OS_LOG_TYPE_FAULT, "failed to fetch user with DSID %{public}@: %{public}@", v2, 0x16u);
}

void __101__STCommunicationSafetyViewModelCoordinator_persistCommunicationSafetySettingsWithCompletionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_264BA2000, v0, OS_LOG_TYPE_FAULT, "Failed to save Communication Safety settings: %{public}@", v1, 0xCu);
}

@end