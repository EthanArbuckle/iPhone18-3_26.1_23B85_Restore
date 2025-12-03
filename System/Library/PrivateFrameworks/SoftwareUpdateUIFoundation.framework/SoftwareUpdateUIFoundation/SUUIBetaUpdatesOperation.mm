@interface SUUIBetaUpdatesOperation
- (BOOL)isActive;
- (SUUIBetaUpdatesOperation)initWithIdentifier:(id)identifier usingBetaManager:(id)manager withCompletionQueue:(id)queue;
- (void)cancel:(id)cancel;
- (void)checkForAvailableBetaPrograms:(id)programs completionHandler:(id)handler;
- (void)checkForAvailableBetaProgramsForDevice:(id)device completionHandler:(id)handler;
- (void)checkForAvailableBetaProgramsWithCompletionHandler:(id)handler;
- (void)enrollDevice:(id)device inBetaProgram:(id)program completionHandler:(id)handler;
- (void)unenrollDevice:(id)device completionHandler:(id)handler;
@end

@implementation SUUIBetaUpdatesOperation

- (SUUIBetaUpdatesOperation)initWithIdentifier:(id)identifier usingBetaManager:(id)manager withCompletionQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v13 = 0;
  objc_storeStrong(&v13, manager);
  v12 = 0;
  objc_storeStrong(&v12, queue);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUUIBetaUpdatesOperation;
  v10 = [(SUUIBetaUpdatesOperation *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    [(SUUIBetaUpdatesOperation *)selfCopy setIdentifier:location[0]];
    [(SUUIBetaUpdatesOperation *)selfCopy setBetaManager:v13];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)enrollDevice:(id)device inBetaProgram:(id)program completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v9 = 0;
  objc_storeStrong(&v9, program);
  v8 = 0;
  objc_storeStrong(&v8, handler);
  betaManager = [(SUUIBetaUpdatesOperation *)selfCopy betaManager];
  [(SDBetaManager *)betaManager enrollDevice:location[0] inBetaProgram:v9 completion:v8];
  MEMORY[0x277D82BD8](betaManager);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)unenrollDevice:(id)device completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v6 = 0;
  objc_storeStrong(&v6, handler);
  betaManager = [(SUUIBetaUpdatesOperation *)selfCopy betaManager];
  [(SDBetaManager *)betaManager unenrollDevice:location[0] completion:v6];
  MEMORY[0x277D82BD8](betaManager);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableBetaProgramsWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  [(SUUIBetaUpdatesOperation *)selfCopy checkForAvailableBetaPrograms:0 completionHandler:location[0]];
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableBetaPrograms:(id)programs completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, programs);
  v41 = 0;
  objc_storeStrong(&v41, handler);
  if (_os_feature_enabled_impl())
  {
    betaManager = [(SUUIBetaUpdatesOperation *)selfCopy betaManager];
    MEMORY[0x277D82BD8](betaManager);
    if (betaManager)
    {
      v32 = 0;
      v11 = 0;
      if (location[0])
      {
        currentSeedingDevice = [location[0] currentSeedingDevice];
        v32 = 1;
        v11 = currentSeedingDevice != 0;
      }

      if (v32)
      {
        MEMORY[0x277D82BD8](currentSeedingDevice);
      }

      if (v11)
      {
        v9 = selfCopy;
        currentSeedingDevice2 = [location[0] currentSeedingDevice];
        [SUUIBetaUpdatesOperation checkForAvailableBetaProgramsForDevice:v9 completionHandler:"checkForAvailableBetaProgramsForDevice:completionHandler:"];
        MEMORY[0x277D82BD8](currentSeedingDevice2);
      }

      else
      {
        v8 = +[SUUILoggingContext betaUpdatesOperationLogger];
        oslog = [v8 oslog];
        MEMORY[0x277D82BD8](v8);
        v30 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v5 = oslog;
          v6 = v30;
          identifier = [(SUUIBetaUpdatesOperation *)selfCopy identifier];
          v29 = MEMORY[0x277D82BE0](identifier);
          __os_log_helper_16_2_2_8_32_8_66(v44, "[SUUIBetaUpdatesOperation checkForAvailableBetaPrograms:completionHandler:]", v29);
          _os_log_impl(&dword_26ADE5000, v5, v6, "%s [%{public}@]: Retrieving the current Seeding device", v44, 0x16u);
          MEMORY[0x277D82BD8](identifier);
          objc_storeStrong(&v29, 0);
        }

        objc_storeStrong(&oslog, 0);
        v4 = MEMORY[0x277D4D320];
        v22 = MEMORY[0x277D85DD0];
        v23 = -1073741824;
        v24 = 0;
        v25 = __76__SUUIBetaUpdatesOperation_checkForAvailableBetaPrograms_completionHandler___block_invoke;
        v26 = &unk_279CC6E40;
        v27 = MEMORY[0x277D82BE0](selfCopy);
        v28 = MEMORY[0x277D82BE0](v41);
        [v4 getCurrentDevice:&v22];
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v27, 0);
      }

      v37 = 0;
    }

    else
    {
      v15 = +[SUUILoggingContext betaUpdatesOperationLogger];
      oslog2 = [v15 oslog];
      MEMORY[0x277D82BD8](v15);
      v35 = 16;
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        v12 = oslog2;
        v13 = v35;
        identifier2 = [(SUUIBetaUpdatesOperation *)selfCopy identifier];
        v34 = MEMORY[0x277D82BE0](identifier2);
        __os_log_helper_16_2_2_8_32_8_66(v45, "[SUUIBetaUpdatesOperation checkForAvailableBetaPrograms:completionHandler:]", v34);
        _os_log_error_impl(&dword_26ADE5000, v12, v13, "%s [%{public}@]: The seeding beta manager was not configured for this scan operation. Skipping.", v45, 0x16u);
        MEMORY[0x277D82BD8](identifier2);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&oslog2, 0);
      (*(v41 + 2))(v41, 0);
      v37 = 1;
    }
  }

  else
  {
    v20 = +[SUUILoggingContext betaUpdatesOperationLogger];
    oslog3 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog3;
      type = v39;
      identifier3 = [(SUUIBetaUpdatesOperation *)selfCopy identifier];
      v38 = MEMORY[0x277D82BE0](identifier3);
      __os_log_helper_16_2_2_8_32_8_66(v46, "[SUUIBetaUpdatesOperation checkForAvailableBetaPrograms:completionHandler:]", v38);
      _os_log_impl(&dword_26ADE5000, log, type, "%s [%{public}@]: The Seeding feature is unavailable.", v46, 0x16u);
      MEMORY[0x277D82BD8](identifier3);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&oslog3, 0);
    (*(v41 + 2))(v41, 0);
    v37 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __76__SUUIBetaUpdatesOperation_checkForAvailableBetaPrograms_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) checkForAvailableBetaProgramsForDevice:location[0] completionHandler:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

- (void)cancel:(id)cancel
{
  selfCopy = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, cancel);
  v6 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(v11);
  v7 = [v4 stringWithFormat:@"%@ is unavailable", v8];
  v9 = [v6 exceptionWithName:v5 reason:? userInfo:?];
  v3 = v9;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_exception_throw(v9);
}

- (BOOL)isActive
{
  v5 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v3 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v6 = [v3 stringWithFormat:@"%@ is unavailable", v7];
  v8 = [v5 exceptionWithName:v4 reason:? userInfo:?];
  v2 = v8;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_exception_throw(v8);
}

- (void)checkForAvailableBetaProgramsForDevice:(id)device completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  v22 = 0;
  objc_storeStrong(&v22, handler);
  v9 = +[SUUILoggingContext betaUpdatesOperationLogger];
  oslog = [v9 oslog];
  MEMORY[0x277D82BD8](v9);
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    type = v20;
    identifier = [(SUUIBetaUpdatesOperation *)selfCopy identifier];
    v19 = MEMORY[0x277D82BE0](identifier);
    __os_log_helper_16_2_2_8_32_8_66(v25, "[SUUIBetaUpdatesOperation checkForAvailableBetaProgramsForDevice:completionHandler:]", v19);
    _os_log_impl(&dword_26ADE5000, log, type, "%s [%{public}@]: Querying the currnet beta programs", v25, 0x16u);
    MEMORY[0x277D82BD8](identifier);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&oslog, 0);
  betaManager = [(SUUIBetaUpdatesOperation *)selfCopy betaManager];
  platform = [location[0] platform];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __85__SUUIBetaUpdatesOperation_checkForAvailableBetaProgramsForDevice_completionHandler___block_invoke;
  v15 = &unk_279CC6E90;
  v16 = MEMORY[0x277D82BE0](selfCopy);
  v18 = MEMORY[0x277D82BE0](v22);
  v17 = MEMORY[0x277D82BE0](location[0]);
  [(SDBetaManager *)betaManager queryProgramsForSystemAccountsWithPlatforms:platform completion:&v11];
  MEMORY[0x277D82BD8](betaManager);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __85__SUUIBetaUpdatesOperation_checkForAvailableBetaProgramsForDevice_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v40 = a3;
  v39[1] = a1;
  if (a3)
  {
    v20 = +[SUUILoggingContext betaUpdatesOperationLogger];
    v39[0] = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v39[0];
      type = v38;
      v19 = [*(a1 + 32) identifier];
      v37 = MEMORY[0x277D82BE0](v19);
      __os_log_helper_16_2_3_8_32_8_66_8_0(v43, "[SUUIBetaUpdatesOperation checkForAvailableBetaProgramsForDevice:completionHandler:]_block_invoke", v37, v40);
      _os_log_impl(&dword_26ADE5000, log, type, "%s [%{public}@]: Could not fetch new beta programs: %ld", v43, 0x20u);
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(&v37, 0);
    }

    objc_storeStrong(v39, 0);
    v14 = (*(a1 + 48) + 16);
    v13 = [SUUIBetaUpdatesOperationScanResults alloc];
    v16 = [*(a1 + 32) identifier];
    v3 = *(a1 + 40);
    v15 = [SUUIBetaUpdatesOperationScanResults initWithIdentifier:v13 currentSeedingDevice:"initWithIdentifier:currentSeedingDevice:betaPrograms:" betaPrograms:?];
    (*v14)();
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v36 = 1;
  }

  else
  {
    v12 = +[SUUILoggingContext betaUpdatesOperationLogger];
    v35 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v35;
      v9 = v34;
      v11 = [*(a1 + 32) identifier];
      v6 = MEMORY[0x277D82BE0](v11);
      v33 = v6;
      v7 = [location[0] count];
      v10 = [location[0] valueForKey:@"programID"];
      v32 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_4_8_32_8_66_8_0_8_64(v42, "[SUUIBetaUpdatesOperation checkForAvailableBetaProgramsForDevice:completionHandler:]_block_invoke", v6, v7, v32);
      _os_log_impl(&dword_26ADE5000, v8, v9, "%s [%{public}@]: Got the device available Beta Programs (count: %ld): %@", v42, 0x2Au);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v5 = [*(a1 + 32) betaManager];
    v4 = *(a1 + 40);
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __85__SUUIBetaUpdatesOperation_checkForAvailableBetaProgramsForDevice_completionHandler___block_invoke_11;
    v27 = &unk_279CC6E68;
    v28 = MEMORY[0x277D82BE0](*(a1 + 32));
    v31 = MEMORY[0x277D82BE0](*(a1 + 48));
    v29 = MEMORY[0x277D82BE0](*(a1 + 40));
    v30 = MEMORY[0x277D82BE0](location[0]);
    [v5 enrolledBetaProgramForDevice:v4 completion:&v23];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v28, 0);
    v36 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __85__SUUIBetaUpdatesOperation_checkForAvailableBetaProgramsForDevice_completionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18[1] = a1;
  v12 = +[SUUILoggingContext betaUpdatesOperationLogger];
  v18[0] = [v12 oslog];
  MEMORY[0x277D82BD8](v12);
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18[0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    v10 = MEMORY[0x277D82BE0](v9);
    v16 = v10;
    v11 = location[0];
    v14 = 0;
    if (location[0])
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "programID")}];
      v14 = 1;
      v8 = v15;
    }

    else
    {
      v8 = @"(null)";
    }

    __os_log_helper_16_2_4_8_32_8_66_8_64_8_66(v20, "[SUUIBetaUpdatesOperation checkForAvailableBetaProgramsForDevice:completionHandler:]_block_invoke", v10, v11, v8);
    _os_log_impl(&dword_26ADE5000, v18[0], v17, "%s [%{public}@]: Refreshed current beta program: %@ (program ID: %{public}@", v20, 0x2Au);
    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(v18, 0);
  v5 = (*(a1 + 56) + 16);
  v4 = [SUUIBetaUpdatesOperationScanResults alloc];
  v7 = [*(a1 + 32) identifier];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = [SUUIBetaUpdatesOperationScanResults initWithIdentifier:v4 currentSeedingDevice:"initWithIdentifier:currentSeedingDevice:betaPrograms:enrolledBetaProgram:" betaPrograms:? enrolledBetaProgram:?];
  (*v5)();
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end