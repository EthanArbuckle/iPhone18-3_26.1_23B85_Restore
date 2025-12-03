@interface STEyeReliefViewModelCoordinator
- (STEyeReliefViewModelCoordinator)initWithPersistenceController:(id)controller userDSID:(id)d currentAccountIsProto:(BOOL)proto;
- (void)_loadViewModel;
- (void)_loadViewModelWithContext:(id)context;
- (void)_registerForPersistentStoreNotifications;
- (void)persistEyeReliefState:(BOOL)state;
- (void)persistEyeReliefState:(BOOL)state withCompletionHandler:(id)handler;
@end

@implementation STEyeReliefViewModelCoordinator

- (STEyeReliefViewModelCoordinator)initWithPersistenceController:(id)controller userDSID:(id)d currentAccountIsProto:(BOOL)proto
{
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = STEyeReliefViewModelCoordinator;
  dCopy = d;
  v10 = [(STEyeReliefViewModelCoordinator *)&v23 init];
  persistenceController = v10->_persistenceController;
  v10->_persistenceController = controllerCopy;
  v12 = controllerCopy;

  v10->_currentAccountIsProto = proto;
  v13 = [dCopy copy];

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

  persistenceController = [(STEyeReliefViewModelCoordinator *)v10 persistenceController];
  viewContext = [persistenceController viewContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__STEyeReliefViewModelCoordinator_initWithPersistenceController_userDSID_currentAccountIsProto___block_invoke;
  v21[3] = &unk_279B7C998;
  v19 = v10;
  v22 = v19;
  [viewContext performBlockAndWait:v21];

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
  fetchRequest = [MEMORY[0x277D4B980] fetchRequest];
  v5 = [v3 requestWithFetchRequest:fetchRequest];

  v6 = objc_alloc(MEMORY[0x277D4B9D0]);
  persistenceController = [(STEyeReliefViewModelCoordinator *)self persistenceController];
  viewContext = [persistenceController viewContext];
  v11[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = [v6 initWithContext:viewContext resultsRequests:v9];

  [v10 setDelegate:self];
  [(STEyeReliefViewModelCoordinator *)self setFetchedResultsController:v10];
}

- (void)_loadViewModel
{
  persistenceController = [(STEyeReliefViewModelCoordinator *)self persistenceController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__STEyeReliefViewModelCoordinator__loadViewModel__block_invoke;
  v4[3] = &unk_279B7D248;
  v4[4] = self;
  [persistenceController performBackgroundTask:v4];
}

- (void)_loadViewModelWithContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userDSID = [(STEyeReliefViewModelCoordinator *)self userDSID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = userDSID;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Loading EyeRelief viewModel for userDSID %{public}@...", &buf, 0xCu);
  }

  viewModel = [(STEyeReliefViewModelCoordinator *)self viewModel];
  userDSID2 = [(STEyeReliefViewModelCoordinator *)self userDSID];
  userObjectID = [(STEyeReliefViewModelCoordinator *)self userObjectID];
  if (userObjectID)
  {
    v10 = [contextCopy objectWithID:userObjectID];
    v11 = 0;
    if (v10)
    {
LABEL_5:
      isEyeReliefEnabled = [v10 isEyeReliefEnabled];
      v13 = +[STUILog eyeRelief];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithBool:isEyeReliefEnabled];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_264BA2000, v13, OS_LOG_TYPE_DEFAULT, "Copied isEyeReliefEnabled from DM to viewModel: %{public}@", &buf, 0xCu);
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v29 = __61__STEyeReliefViewModelCoordinator__loadViewModelWithContext___block_invoke;
      v30 = &unk_279B7D090;
      v31 = viewModel;
      v32 = isEyeReliefEnabled;
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

  v10 = [MEMORY[0x277D4B988] fetchRequestForUsersWithDSID:userDSID2];
  v33 = 0;
  v16 = [v10 execute:&v33];
  v11 = v33;
  if (v16)
  {
    firstObject = [v16 firstObject];
    [firstObject objectID];
    v18 = v11;
    v19 = viewModel;
    v20 = userDSID2;
    v22 = v21 = contextCopy;
    [(STEyeReliefViewModelCoordinator *)self setUserObjectID:v22];

    contextCopy = v21;
    userDSID2 = v20;
    viewModel = v19;
    v11 = v18;

    v10 = firstObject;
    if (firstObject)
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

- (void)persistEyeReliefState:(BOOL)state
{
  stateCopy = state;
  v9 = *MEMORY[0x277D85DE8];
  v5 = +[STUILog eyeRelief];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:stateCopy];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Setting Eye Distance on viewModel: %{public}@", &v7, 0xCu);
  }

  [(STEyeReliefViewModelCoordinator *)self persistEyeReliefState:stateCopy withCompletionHandler:&__block_literal_global_23];
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

- (void)persistEyeReliefState:(BOOL)state withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceController = [(STEyeReliefViewModelCoordinator *)self persistenceController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__STEyeReliefViewModelCoordinator_persistEyeReliefState_withCompletionHandler___block_invoke;
  v9[3] = &unk_279B7D5A0;
  stateCopy = state;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [persistenceController performBackgroundTaskAndWait:v9];
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