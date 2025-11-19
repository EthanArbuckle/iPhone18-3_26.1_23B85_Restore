@interface RBLaunchManager
- (BOOL)_checkLaunchForBackoff:(id)a3 error:(id *)a4;
- (RBLaunchManager)init;
- (RBLaunchManager)initWithJobManager:(id)a3 timeProvider:(id)a4 delegate:(id)a5;
- (id)_resolveNewProcessForInstance:(id)a3 requestIdentity:(id)a4 context:(id)a5 withError:(id *)a6;
- (id)executeLaunchRequest:(id)a3 existingProcess:(id)a4 requestIdentity:(id)a5 withError:(id *)a6;
- (void)_validateBundleIDForProcess:(id)a3 launchedWithContext:(id)a4;
@end

@implementation RBLaunchManager

- (RBLaunchManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBLaunchManager.m" lineNumber:114 description:@"-init is not allowed on RBProcessManager"];

  return 0;
}

- (RBLaunchManager)initWithJobManager:(id)a3 timeProvider:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = RBLaunchManager;
  v12 = [(RBLaunchManager *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_jobManager, a3);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = [[RBLaunchTracker alloc] initWithTimeProvider:v10];
    launchTracker = v13->_launchTracker;
    v13->_launchTracker = v14;

    v16 = v13;
  }

  return v13;
}

- (void)_validateBundleIDForProcess:(id)a3 launchedWithContext:(id)a4
{
  v5 = a3;
  v6 = [a4 bundleIdentifier];
  v7 = [v5 bundleProperties];

  v8 = [v7 bundleIdentifier];

  if (v6 && v8 && ([v8 isEqualToString:v6] & 1) == 0)
  {
    v9 = rbs_process_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchManager _validateBundleIDForProcess:launchedWithContext:];
    }
  }
}

- (BOOL)_checkLaunchForBackoff:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(RBLaunchTracker *)self->_launchTracker nextAllowedLaunchOfIdentity:v6];
  v8 = v7;
  if (v7 != 0.0)
  {
    v9 = rbs_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(RBLaunchManager *)v6 _checkLaunchForBackoff:v9 error:v8];
    }

    if (a4)
    {
      v10 = *MEMORY[0x277D47088];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __48__RBLaunchManager__checkLaunchForBackoff_error___block_invoke;
      v15[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
      *&v15[4] = v8;
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v11 setObject:@"Launch Request throttled." forKey:*MEMORY[0x277CCA470]];
      __48__RBLaunchManager__checkLaunchForBackoff_error___block_invoke(v15, v11);
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:6 userInfo:v11];

      v13 = v12;
      *a4 = v12;
    }
  }

  return v8 == 0.0;
}

void __48__RBLaunchManager__checkLaunchForBackoff_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithDouble:v3];
  [v4 setObject:v5 forKey:*MEMORY[0x277D470A0]];
}

- (id)_resolveNewProcessForInstance:(id)a3 requestIdentity:(id)a4 context:(id)a5 withError:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 identifier];
  v14 = +[RBLaunchdProperties propertiesForPid:](RBLaunchdProperties, "propertiesForPid:", [v13 pid]);

  if (!v14)
  {
    v15 = rbs_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchManager _resolveNewProcessForInstance:requestIdentity:context:withError:];
    }
  }

  if ([v14 hasBackoff])
  {
    launchTracker = self->_launchTracker;
    v17 = [v10 identity];
    [(RBLaunchTracker *)launchTracker trackLaunchOfIdentity:v17];
  }

  if ([v11 osServiceType] == 3 && v14 && (objc_msgSend(v14, "isAngel") & 1) == 0)
  {
    v29 = rbs_general_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchManager _resolveNewProcessForInstance:requestIdentity:context:withError:];
    }

    [(RBLaunchdJobManager *)self->_jobManager removeJobWithInstance:v10 error:0];
    if (a6)
    {
      v30 = *MEMORY[0x277D47088];
      v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v31 setObject:@"Unsupported Angel launch request." forKey:*MEMORY[0x277CCA470]];
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:v30 code:5 userInfo:v31];

      v33 = v32;
      v19 = 0;
      *a6 = v32;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = [WeakRetained _lifecycleQueue_addProcessWithInstance:v10 properties:v14];

    if (v19)
    {
      [(RBLaunchManager *)self _validateBundleIDForProcess:v19 launchedWithContext:v12];
      v20 = [v12 launchAssertionIdentifier];
      [v19 setLaunchAssertionIdentifier:v20];

      v21 = v19;
    }

    else
    {
      v22 = rbs_general_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138543362;
        v35 = v10;
        _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "Failed to create process object for %{public}@", &v34, 0xCu);
      }

      [(RBLaunchdJobManager *)self->_jobManager removeJobWithInstance:v10 error:0];
      if (a6)
      {
        v23 = *MEMORY[0x277D47088];
        v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v24 setObject:@"Launched process exited during launch." forKey:*MEMORY[0x277CCA470]];
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:5 userInfo:v24];

        v26 = v25;
        *a6 = v25;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)executeLaunchRequest:(id)a3 existingProcess:(id)a4 requestIdentity:(id)a5 withError:(id *)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 isExtension];
  if (v11 && (v13 & 1) == 0)
  {
    v14 = rbs_process_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v54 = v12;
      v55 = 2114;
      v56 = v11;
      _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_INFO, "%{public}@ is already running as %{public}@", buf, 0x16u);
    }

    if (a6)
    {
      v15 = *MEMORY[0x277D47088];
      v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v16 setObject:@"The process was already running." forKey:*MEMORY[0x277CCA470]];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:2 userInfo:v16];

      v18 = v17;
      *a6 = v17;
    }

    v19 = v11;
    goto LABEL_40;
  }

  v20 = v12;
  if (([v20 isEmbeddedApplication] & 1) != 0 || (objc_msgSend(v20, "hasConsistentLaunchdJob") & 1) != 0 || objc_msgSend(v20, "isExtension"))
  {
  }

  else
  {
    v41 = [v20 isDext];

    if ((v41 & 1) == 0)
    {
      v42 = rbs_process_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v54 = v20;
        _os_log_impl(&dword_262485000, v42, OS_LOG_TYPE_INFO, "%{public}@ could not be launched", buf, 0xCu);
      }

      if (a6)
      {
        v43 = *MEMORY[0x277D47088];
        v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v44 setObject:@"Launch prevented due to invalid parameters; only apps forKey:{extensions or daemons can be launched by RunningBoard", *MEMORY[0x277CCA470]}];
        v45 = [MEMORY[0x277CCA9B8] errorWithDomain:v43 code:1 userInfo:v44];

        v46 = v45;
        v19 = 0;
        *a6 = v45;
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (!v11 && ![(RBLaunchManager *)self _checkLaunchForBackoff:v20 error:a6])
  {
LABEL_37:
    v19 = 0;
    goto LABEL_40;
  }

  v21 = [v10 _additionalEnvironment];
  v22 = RBSStringForKey();

  if (v22)
  {
    [v10 setHomeDirectory:v22];
  }

  v51 = v12;
  v23 = [v10 _additionalEnvironment];
  v24 = RBSStringForKey();

  if (v24)
  {
    [v10 setTmpDirectory:v24];
  }

  jobManager = self->_jobManager;
  v52 = 0;
  v26 = [(RBLaunchdJobManager *)jobManager createAndLaunchWithIdentity:v20 context:v10 error:&v52];
  v27 = v52;
  v28 = v27;
  if (v26)
  {
    v50 = v27;
    if (!v11)
    {
      goto LABEL_26;
    }

    [v11 identifier];
    v29 = v24;
    v31 = v30 = a6;
    [v26 identifier];
    v32 = v49 = v22;
    v33 = [v31 isEqual:v32];

    v22 = v49;
    a6 = v30;
    v24 = v29;
    if (v33)
    {
      v34 = rbs_process_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [v11 identifier];
        *buf = 138543618;
        v54 = v20;
        v55 = 2114;
        v56 = v35;
        _os_log_impl(&dword_262485000, v34, OS_LOG_TYPE_INFO, "returning existing extension %{public}@ already running as pid %{public}@", buf, 0x16u);
      }

      v12 = v51;
      if (a6)
      {
        v36 = *MEMORY[0x277D47088];
        v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v37 setObject:@"The process was already running." forKey:*MEMORY[0x277CCA470]];
        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:v36 code:2 userInfo:v37];

        v22 = v49;
        v39 = v38;
        *a6 = v38;
      }

      v19 = v11;
    }

    else
    {
LABEL_26:
      v19 = [(RBLaunchManager *)self _resolveNewProcessForInstance:v26 requestIdentity:v20 context:v10 withError:a6];
      v12 = v51;
    }

    v28 = v50;
  }

  else
  {
    v40 = rbs_general_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchManager executeLaunchRequest:existingProcess:requestIdentity:withError:];
    }

    if (a6)
    {
      _errorWithRequestCodeAndInfoBuilder(*MEMORY[0x277D47088], 5, @"Launch failed.", v28, 0);
      *a6 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_40:
  v47 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_validateBundleIDForProcess:launchedWithContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_262485000, v1, OS_LOG_TYPE_FAULT, "RunningBoard launch requested for identifier %{public}@ launched process with different identifier %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_checkLaunchForBackoff:(double)a3 error:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Launch throttled for %{public}@ until %lf", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_resolveNewProcessForInstance:requestIdentity:context:withError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_262485000, v0, OS_LOG_TYPE_ERROR, "New process launch resulted in nil properties for %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_resolveNewProcessForInstance:requestIdentity:context:withError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_262485000, v0, OS_LOG_TYPE_FAULT, "Angel launch attempted for non-angel %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)executeLaunchRequest:existingProcess:requestIdentity:withError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_262485000, v0, OS_LOG_TYPE_ERROR, "Launch failed with %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end