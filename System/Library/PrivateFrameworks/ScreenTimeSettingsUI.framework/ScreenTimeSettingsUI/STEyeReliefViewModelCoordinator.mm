@interface STEyeReliefViewModelCoordinator
- (STEyeReliefViewModelCoordinator)initWithPersistenceController:(id)a3 userDSID:(id)a4 currentAccountIsProto:(BOOL)a5;
- (void)_loadViewModel;
- (void)_loadViewModelWithContext:(id)a3;
- (void)_registerForPersistentStoreNotifications;
- (void)persistEyeReliefState:(BOOL)a3;
- (void)persistEyeReliefState:(BOOL)a3 withCompletionHandler:(id)a4;
@end

@implementation STEyeReliefViewModelCoordinator

- (STEyeReliefViewModelCoordinator)initWithPersistenceController:(id)a3 userDSID:(id)a4 currentAccountIsProto:(BOOL)a5
{
  v8 = a3;
  v23.receiver = self;
  v23.super_class = STEyeReliefViewModelCoordinator;
  v9 = a4;
  v10 = [(STEyeReliefViewModelCoordinator *)&v23 init];
  persistenceController = v10->_persistenceController;
  v10->_persistenceController = v8;
  v12 = v8;

  v10->_currentAccountIsProto = a5;
  v13 = [v9 copy];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_28769D5F8;
  }

  objc_storeStrong(&v10->_userDSID, v14);

  v15 = objc_opt_new();
  viewModel = v10->_viewModel;
  v10->_viewModel = v15;

  v17 = [(STEyeReliefViewModelCoordinator *)v10 persistenceController];
  v18 = [v17 viewContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__STEyeReliefViewModelCoordinator_initWithPersistenceController_userDSID_currentAccountIsProto___block_invoke;
  v21[3] = &unk_279B7C998;
  v19 = v10;
  v22 = v19;
  [v18 performBlockAndWait:v21];

  [(STEyeReliefViewModelCoordinator *)v19 _registerForPersistentStoreNotifications];
  return v19;
}

void __96__STEyeReliefViewModelCoordinator_initWithPersistenceController_userDSID_currentAccountIsProto___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 persistenceController];
  v2 = [v3 viewContext];
  [v1 _loadViewModelWithContext:v2];
}

- (void)_registerForPersistentStoreNotifications
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4B9C8];
  v4 = [MEMORY[0x277D4B980] fetchRequest];
  v5 = [v3 requestWithFetchRequest:v4];

  v6 = objc_alloc(MEMORY[0x277D4B9D0]);
  v7 = [(STEyeReliefViewModelCoordinator *)self persistenceController];
  v8 = [v7 viewContext];
  v11[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [v6 initWithContext:v8 resultsRequests:v9];

  [v10 setDelegate:self];
  [(STEyeReliefViewModelCoordinator *)self setFetchedResultsController:v10];
}

- (void)_loadViewModel
{
  v3 = [(STEyeReliefViewModelCoordinator *)self persistenceController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__STEyeReliefViewModelCoordinator__loadViewModel__block_invoke;
  v4[3] = &unk_279B7D248;
  v4[4] = self;
  [v3 performBackgroundTask:v4];
}

- (void)_loadViewModelWithContext:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(STEyeReliefViewModelCoordinator *)self userDSID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Loading EyeRelief viewModel for userDSID %{public}@...", &buf, 0xCu);
  }

  v7 = [(STEyeReliefViewModelCoordinator *)self viewModel];
  v8 = [(STEyeReliefViewModelCoordinator *)self userDSID];
  v9 = [(STEyeReliefViewModelCoordinator *)self userObjectID];
  if (v9)
  {
    v10 = [v4 objectWithID:v9];
    v11 = 0;
    if (v10)
    {
LABEL_5:
      v12 = [v10 isEyeReliefEnabled];
      v13 = +[STUILog eyeRelief];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_264BA2000, v13, OS_LOG_TYPE_DEFAULT, "Copied isEyeReliefEnabled from DM to viewModel: %{public}@", &buf, 0xCu);
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v29 = __61__STEyeReliefViewModelCoordinator__loadViewModelWithContext___block_invoke;
      v30 = &unk_279B7D090;
      v31 = v7;
      v32 = v12;
      v15 = v28;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (v29)(v15, 0);
      }

      else
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v37 = __STUICallCompletionHandlerOnMainThread_block_invoke_3;
        v38 = &unk_279B7D130;
        v27 = v15;
        v39 = 0;
        v40 = v27;
        dispatch_async(MEMORY[0x277D85CD0], &buf);
      }

      v26 = v31;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277D4B988] fetchRequestForUsersWithDSID:v8];
  v33 = 0;
  v16 = [v10 execute:&v33];
  v11 = v33;
  if (v16)
  {
    v17 = [v16 firstObject];
    [v17 objectID];
    v18 = v11;
    v19 = v7;
    v20 = v8;
    v22 = v21 = v4;
    [(STEyeReliefViewModelCoordinator *)self setUserObjectID:v22];

    v4 = v21;
    v8 = v20;
    v7 = v19;
    v11 = v18;

    v10 = v17;
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = +[STUILog eyeRelief];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [STEyeReliefViewModelCoordinator _loadViewModelWithContext:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D4BBD8];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"user could not be found";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v24 errorWithDomain:v25 code:11 userInfo:v10];
    v11 = v26 = v11;
    goto LABEL_16;
  }

  v26 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [STEyeReliefViewModelCoordinator _loadViewModelWithContext:];
  }

LABEL_16:
}

- (void)persistEyeReliefState:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Setting Eye Distance on viewModel: %{public}@", &v7, 0xCu);
  }

  [(STEyeReliefViewModelCoordinator *)self persistEyeReliefState:v3 withCompletionHandler:&__block_literal_global_23];
}

void __57__STEyeReliefViewModelCoordinator_persistEyeReliefState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STUILog eyeRelief];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__STEyeReliefViewModelCoordinator_persistEyeReliefState___block_invoke_cold_1();
    }
  }
}

- (void)persistEyeReliefState:(BOOL)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(STEyeReliefViewModelCoordinator *)self persistenceController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__STEyeReliefViewModelCoordinator_persistEyeReliefState_withCompletionHandler___block_invoke;
  v9[3] = &unk_279B7D5A0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performBackgroundTaskAndWait:v9];
}

void __79__STEyeReliefViewModelCoordinator_persistEyeReliefState_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];
  v6 = [v4 objectWithID:v5];

  [v6 setIsEyeReliefEnabled:*(a1 + 48)];
  v7 = [*(a1 + 32) persistenceController];
  v21 = 0;
  v8 = [v7 saveContext:v4 error:&v21];

  v9 = v21;
  if ((v8 & 1) == 0)
  {
    v10 = +[STUILog eyeRelief];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __79__STEyeReliefViewModelCoordinator_persistEyeReliefState_withCompletionHandler___block_invoke_cold_1();
    }
  }

  v11 = MEMORY[0x277D4B970];
  v12 = [objc_alloc(MEMORY[0x277D4B9B8]) initWithEyeReliefEnabled:*(a1 + 48)];
  [v11 reportEvent:v12];

  v13 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 isEyeReliefEnabled];
    *buf = 67240192;
    v23 = v14;
    _os_log_impl(&dword_264BA2000, v13, OS_LOG_TYPE_DEFAULT, "Successfully saved Eye Relief state: %{public}d", buf, 8u);
  }

  v15 = STSafeErrorFromCoreDataError();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__STEyeReliefViewModelCoordinator_persistEyeReliefState_withCompletionHandler___block_invoke_55;
  block[3] = &unk_279B7D130;
  v16 = *(a1 + 40);
  v19 = v15;
  v20 = v16;
  v17 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_loadViewModelWithContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_264BA2000, v0, OS_LOG_TYPE_FAULT, "User with DSID could not be found: %{public}@", v1, 0xCu);
}

- (void)_loadViewModelWithContext:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_264BA2000, v1, OS_LOG_TYPE_FAULT, "Failed to fetch user with DSID %{public}@:%{public}@", v2, 0x16u);
}

void __57__STEyeReliefViewModelCoordinator_persistEyeReliefState___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_264BA2000, v0, OS_LOG_TYPE_ERROR, "Could not save Eye Relief setting: %{public}@", v1, 0xCu);
}

void __79__STEyeReliefViewModelCoordinator_persistEyeReliefState_withCompletionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_264BA2000, v0, OS_LOG_TYPE_FAULT, "Failed to save Eye Relief state: %{public}@", v1, 0xCu);
}

@end