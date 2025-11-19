@interface PBFPosterExtensionReloadConfigurationOperation
- (BOOL)hasUniqueSessionInfo;
- (NSString)description;
- (PBFPosterExtensionReloadConfigurationOperation)initWithUpdatingService:(id)a3 sessionInfo:(id)a4 existingConfigurationPath:(id)a5 locationInUse:(BOOL)a6 runtimeAssertionProvider:(id)a7 timeout:(double)a8 powerLogReason:(int64_t)a9;
- (PFPosterPath)postRefreshPosterConfiguration;
- (double)_lock_executionTime;
- (double)executionTime;
- (id)_userInfoForErrors;
- (void)_finishWithError:(id)a3 postRefreshPosterPathsAssertion:(id)a4;
- (void)_fireCompletionObservers:(id)a3 instance:(id)a4 error:(id)a5;
- (void)_setup;
- (void)addCompletionObserver:(id)a3;
- (void)cancelWithError:(id)a3;
- (void)dealloc;
- (void)invalidateAssertionsWithCompletion:(id)a3;
@end

@implementation PBFPosterExtensionReloadConfigurationOperation

- (BOOL)hasUniqueSessionInfo
{
  sessionInfo = self->_sessionInfo;
  if (sessionInfo)
  {
    LOBYTE(sessionInfo) = [(PRSPosterUpdateSessionInfo *)sessionInfo isEmpty]^ 1;
  }

  return sessionInfo;
}

- (PFPosterPath)postRefreshPosterConfiguration
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(PFPosterPathsAssertion *)self->_lock_postRefreshPosterPathsAssertion paths];
  v4 = [v3 firstObject];

  os_unfair_recursive_lock_unlock();

  return v4;
}

- (PBFPosterExtensionReloadConfigurationOperation)initWithUpdatingService:(id)a3 sessionInfo:(id)a4 existingConfigurationPath:(id)a5 locationInUse:(BOOL)a6 runtimeAssertionProvider:(id)a7 timeout:(double)a8 powerLogReason:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = v17;
  if (v20)
  {
    NSClassFromString(&cfstr_Prsposterupdat_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
    }
  }

  v21 = v18;
  NSClassFromString(&cfstr_Pfposterpath.isa);
  if (!v21)
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v22 = v16;
  NSClassFromString(&cfstr_Prupdatingserv.isa);
  if (!v22)
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v23 = v19;
  if (!v23)
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v24 = v23;
  if (([v23 conformsToProtocol:&unk_282D45FB0] & 1) == 0)
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    [PBFPosterExtensionReloadConfigurationOperation initWithUpdatingService:a2 sessionInfo:? existingConfigurationPath:? locationInUse:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v32.receiver = self;
  v32.super_class = PBFPosterExtensionReloadConfigurationOperation;
  v25 = [(NSBlockOperation *)&v32 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_updatingService, a3);
    v27 = [v22 bundleIdentifier];
    extensionBundleIdentifier = v26->_extensionBundleIdentifier;
    v26->_extensionBundleIdentifier = v27;

    objc_storeStrong(&v26->_sessionInfo, a4);
    objc_storeStrong(&v26->_runtimeAssertionProvider, a7);
    [(PBFPosterExtensionReloadConfigurationOperation *)v26 setPreRefreshPosterConfiguration:v21];
    v26->_timeoutInterval = a8;
    v26->_locationInUse = a6;
    v26->_reason = a9;
    v26->_lock = 0;
    [(PBFPosterExtensionReloadConfigurationOperation *)v26 _setup];
  }

  return v26;
}

- (void)invalidateAssertionsWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(RBSAssertion *)self->_lock_posterBoardPosterUpdateRuntimeAssertion invalidate];
  lock_posterBoardPosterUpdateRuntimeAssertion = self->_lock_posterBoardPosterUpdateRuntimeAssertion;
  self->_lock_posterBoardPosterUpdateRuntimeAssertion = 0;

  [(BSInvalidatable *)self->_lock_snapshotterDisabledAssertion invalidate];
  lock_snapshotterDisabledAssertion = self->_lock_snapshotterDisabledAssertion;
  self->_lock_snapshotterDisabledAssertion = 0;

  lock_extensionPosterUpdateRuntimeAssertion = self->_lock_extensionPosterUpdateRuntimeAssertion;
  if (self->_lock_postRefreshPosterPathsAssertion)
  {
    v8 = lock_extensionPosterUpdateRuntimeAssertion;
    v9 = self->_lock_extensionPosterUpdateRuntimeAssertion;
    self->_lock_extensionPosterUpdateRuntimeAssertion = 0;

    v10 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    lock_extensionPosterUpdateEntitledMemoryAssertion = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    self->_lock_extensionPosterUpdateEntitledMemoryAssertion = 0;

    v12 = self->_lock_locationInUseAssertion;
    lock_locationInUseAssertion = self->_lock_locationInUseAssertion;
    self->_lock_locationInUseAssertion = 0;

    if (v8 | v10)
    {
      v14 = MEMORY[0x277CF0B60];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __85__PBFPosterExtensionReloadConfigurationOperation_invalidateAssertionsWithCompletion___block_invoke;
      v26[3] = &unk_2782C7BB0;
      v27 = v8;
      v28 = v10;
      v29 = v4;
      v15 = [v14 responderWithHandler:v26];
      [v15 setTimeout:{dispatch_time(0, 120000000000)}];
      v16 = dispatch_get_global_queue(25, 0);
      [v15 setQueue:v16];
    }

    else
    {
      if (v4)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadConfigurationOperation invalidateAssertionsWithCompletion:]"];
        PBFDispatchAsyncWithString(v22, QOS_CLASS_USER_INITIATED, v4);
      }

      v15 = 0;
    }

    v23 = self->_lock_postRefreshPosterPathsAssertion;
    os_unfair_recursive_lock_unlock();
    if (v12)
    {
      [(CLInUseAssertion *)v12 invalidate];
      v24 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v12;
        _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "invalidating CLInUseAssertion: %{public}@", buf, 0xCu);
      }
    }

    [(PFPosterPathsAssertion *)v23 invalidateWithResponder:v15];

LABEL_19:
    goto LABEL_20;
  }

  if (lock_extensionPosterUpdateRuntimeAssertion)
  {
    v8 = lock_extensionPosterUpdateRuntimeAssertion;
    v17 = self->_lock_extensionPosterUpdateRuntimeAssertion;
    self->_lock_extensionPosterUpdateRuntimeAssertion = 0;

    v10 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    v18 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    self->_lock_extensionPosterUpdateEntitledMemoryAssertion = 0;

    v12 = self->_lock_locationInUseAssertion;
    v19 = self->_lock_locationInUseAssertion;
    self->_lock_locationInUseAssertion = 0;

    os_unfair_recursive_lock_unlock();
    [v8 invalidate];
    [v10 invalidate];
    if (v12)
    {
      [(CLInUseAssertion *)v12 invalidate];
      v20 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v12;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "invalidating CLInUseAssertion: %{public}@", buf, 0xCu);
      }
    }

    if (v4)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadConfigurationOperation invalidateAssertionsWithCompletion:]"];
      PBFDispatchAsyncWithString(v21, QOS_CLASS_USER_INITIATED, v4);
    }

    goto LABEL_19;
  }

  os_unfair_recursive_lock_unlock();
  if (v4)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadConfigurationOperation invalidateAssertionsWithCompletion:]"];
    PBFDispatchAsyncWithString(v25, QOS_CLASS_USER_INITIATED, v4);
  }

LABEL_20:
}

uint64_t __85__PBFPosterExtensionReloadConfigurationOperation_invalidateAssertionsWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)dealloc
{
  v22[4] = *MEMORY[0x277D85DE8];
  [(PBFPosterExtensionReloadConfigurationOperation *)self invalidateAssertionsWithCompletion:0];
  os_unfair_recursive_lock_lock_with_options();
  lock_extensionPosterUpdateRuntimeAssertion = self->_lock_extensionPosterUpdateRuntimeAssertion;
  if (lock_extensionPosterUpdateRuntimeAssertion)
  {
    [(RBSAssertion *)lock_extensionPosterUpdateRuntimeAssertion invalidate];
    v4 = self->_lock_extensionPosterUpdateRuntimeAssertion;
    self->_lock_extensionPosterUpdateRuntimeAssertion = 0;
  }

  lock_extensionPosterUpdateEntitledMemoryAssertion = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
  if (lock_extensionPosterUpdateEntitledMemoryAssertion)
  {
    [(RBSAssertion *)lock_extensionPosterUpdateEntitledMemoryAssertion invalidate];
    v6 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    self->_lock_extensionPosterUpdateEntitledMemoryAssertion = 0;
  }

  lock_locationInUseAssertion = self->_lock_locationInUseAssertion;
  if (lock_locationInUseAssertion)
  {
    [(CLInUseAssertion *)lock_locationInUseAssertion invalidate];
    v8 = self->_lock_locationInUseAssertion;
    self->_lock_locationInUseAssertion = 0;
  }

  if ([(NSMutableArray *)self->_lock_completionObservers count])
  {
    v9 = [(PBFPosterExtensionReloadConfigurationOperation *)self error];
    if (v9)
    {
    }

    else if (!self->_lock_isFinished)
    {
      v21[0] = *MEMORY[0x277CCA470];
      v21[1] = @"extensionBundleIdentifier";
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      if (!extensionBundleIdentifier)
      {
        extensionBundleIdentifier = @"(unknown extension)";
      }

      v22[0] = @"Operation failed to finish in time";
      v22[1] = extensionBundleIdentifier;
      v21[2] = @"operationClass";
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v22[2] = v12;
      v21[3] = @"executionTime";
      v13 = MEMORY[0x277CCABB0];
      [(PBFPosterExtensionReloadConfigurationOperation *)self _lock_executionTime];
      v14 = [v13 numberWithDouble:?];
      v22[3] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

      v16 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:0 userInfo:v15];
      [(PBFPosterExtensionReloadConfigurationOperation *)self setError:v16];
    }

    v17 = [(NSMutableArray *)self->_lock_completionObservers copy];
    v18 = [(PBFPosterExtensionReloadConfigurationOperation *)self error];
    [(PBFPosterExtensionReloadConfigurationOperation *)self _fireCompletionObservers:v17 instance:0 error:v18];

    [(NSMutableArray *)self->_lock_completionObservers removeAllObjects];
    lock_completionObservers = self->_lock_completionObservers;
    self->_lock_completionObservers = 0;
  }

  os_unfair_recursive_lock_unlock();
  v20.receiver = self;
  v20.super_class = PBFPosterExtensionReloadConfigurationOperation;
  [(NSBlockOperation *)&v20 dealloc];
}

- (void)_setup
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__PBFPosterExtensionReloadConfigurationOperation__setup__block_invoke;
  v3[3] = &unk_2782C6D48;
  objc_copyWeak(&v4, &location);
  [(NSBlockOperation *)self addExecutionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__PBFPosterExtensionReloadConfigurationOperation__setup__block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v3, "isFinished") & 1) == 0)
  {
    v4 = [v3 updatingService];
    v5 = v4;
    if (!v4 || ([v4 isValid] & 1) == 0)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [v3 _userInfoForErrors];
      v11 = [v9 pbf_dataStoreErrorWithCode:-2211 userInfo:v10];

      [v3 _finishWithError:v11 postRefreshPosterPathsAssertion:0];
LABEL_35:

      goto LABEL_36;
    }

    v6 = [v5 auditToken];
    if (!v6)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = [v3 _userInfoForErrors];
      v14 = [v12 pbf_dataStoreErrorWithCode:-2210 userInfo:v13];

      [v3 _finishWithError:v14 postRefreshPosterPathsAssertion:0];
LABEL_34:

      goto LABEL_35;
    }

    v7 = [v5 target];
    if (!v7)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v3 _userInfoForErrors];
      v17 = [v15 pbf_dataStoreErrorWithCode:-2209 userInfo:v16];

      [v3 _finishWithError:v17 postRefreshPosterPathsAssertion:0];
LABEL_33:

      goto LABEL_34;
    }

    v54 = [v5 bundleIdentifier];
    os_unfair_recursive_lock_lock_with_options();
    if (*(v3 + 304) == 1)
    {
      os_unfair_recursive_lock_unlock();
      v8 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v58 = v3;
        _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Invalidated before operation started", buf, 0xCu);
      }
    }

    else
    {
      v18 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v3 preRefreshPosterConfiguration];
        v20 = [v19 serverIdentity];
        v21 = [v20 provider];
        *buf = 138543618;
        v58 = v3;
        v59 = 2114;
        v60 = v21;
        _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Starting reload configuration operation for %{public}@", buf, 0x16u);
      }

      BSAbsoluteMachTimeNow();
      *(v3 + 384) = v22;
      v23 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v3 preRefreshPosterConfiguration];
        *buf = 138543618;
        v58 = v3;
        v59 = 2114;
        v60 = v24;
        _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Current understanding of paths: %{public}@", buf, 0x16u);
      }

      v25 = *(v3 + 416);
      v26 = [@"PBFPosterExtensionReloadConfigurationOperation refreshPosterConfiguration" stringByAppendingString:v54];
      v27 = [MEMORY[0x277D47008] currentProcess];
      v28 = [v25 acquirePosterUpdateRuntimeAssertionForReason:v26 target:v27];
      v29 = *(v3 + 352);
      *(v3 + 352) = v28;

      v30 = [*(v3 + 416) acquirePosterUpdateRuntimeAssertionForReason:@"reloadConfiguration" target:v7];
      v31 = *(v3 + 320);
      *(v3 + 320) = v30;

      v32 = [*(v3 + 416) acquirePosterUpdateMemoryAssertionForReason:@"reloadConfiguration entitled update" target:v7 auditToken:v6 posterProviderBundleIdentifier:v54];
      v33 = *(v3 + 328);
      *(v3 + 328) = v32;

      if (*(v3 + 368) == 1)
      {
        v34 = [MEMORY[0x277CBFBF8] newAssertionForBundleIdentifier:v54 withReason:@"background update of in-use poster" level:0];
        v35 = *(v3 + 336);
        *(v3 + 336) = v34;

        v36 = PBFLogReloadConfiguration();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(v3 + 336);
          *buf = 134218242;
          v58 = v37;
          v59 = 2114;
          v60 = v54;
          _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "created CLInUseAssertion=%p for background update of %{public}@", buf, 0x16u);
        }
      }

      v38 = dispatch_group_create();
      v39 = *(v3 + 296);
      *(v3 + 296) = v38;

      v8 = v38;
      dispatch_group_enter(v8);
      os_unfair_recursive_lock_unlock();
      [v5 addUpdatingServiceObserver:v3];
      [PBFPowerLogger logUpdate:2 reason:*(v3 + 360) inServiceOfBundleIdentifier:v54];
      v40 = [v5 invalidationError];
      if (v40)
      {
      }

      else if ([v5 isValid])
      {
        v41 = [v3 preRefreshPosterConfiguration];
        v42 = *(v3 + 288);
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __56__PBFPosterExtensionReloadConfigurationOperation__setup__block_invoke_134;
        v55[3] = &unk_2782C9300;
        v55[4] = v3;
        objc_copyWeak(&v56, (a1 + 32));
        [v5 updateConfiguration:v41 sessionInfo:v42 completion:v55];

        os_unfair_recursive_lock_lock_with_options();
        v43 = *(v3 + 304);
        os_unfair_recursive_lock_unlock();
        if (v43 == 1)
        {
          v44 = PBFLogReloadConfiguration();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v58 = v3;
            _os_log_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Abort timeout check; operation has already finished.", buf, 0xCu);
          }

          objc_destroyWeak(&v56);
        }

        else
        {
          [v3 timeoutInterval];
          v49 = dispatch_time(0, (v48 * 1000000000.0));
          if (dispatch_group_wait(v8, v49))
          {
            v50 = MEMORY[0x277CCA9B8];
            v51 = [v3 _userInfoForErrors];
            v52 = [v50 pbf_dataStoreErrorWithCode:-2221 userInfo:v51];

            v53 = PBFLogReloadConfiguration();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              __56__PBFPosterExtensionReloadConfigurationOperation__setup__block_invoke_cold_1(v3, v53);
            }

            [v3 _finishWithError:v52 postRefreshPosterPathsAssertion:0];
          }

          objc_destroyWeak(&v56);
        }

        goto LABEL_32;
      }

      v45 = [v5 invalidationError];
      if (!v45)
      {
        v46 = MEMORY[0x277CCA9B8];
        v47 = [v3 _userInfoForErrors];
        v45 = [v46 pbf_generalErrorWithCode:3 userInfo:v47];
      }

      [v3 _finishWithError:v45 postRefreshPosterPathsAssertion:0];
    }

LABEL_32:

    goto LABEL_33;
  }

LABEL_36:
}

void __56__PBFPosterExtensionReloadConfigurationOperation__setup__block_invoke_134(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PBFLogReloadConfiguration();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke_122_cold_1(a1, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)  finished with paths %{public}@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithError:v6 postRefreshPosterPathsAssertion:v5];
}

- (void)cancelWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PBFLogReloadConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Cancel with error: %{public}@", buf, 0x16u);
  }

  if (v4)
  {
    [(PBFPosterExtensionReloadConfigurationOperation *)self _finishWithError:v4 postRefreshPosterPathsAssertion:0];
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [(PBFPosterExtensionReloadConfigurationOperation *)self _userInfoForErrors];
    v8 = [v6 pbf_generalErrorWithCode:4 userInfo:v7];
    [(PBFPosterExtensionReloadConfigurationOperation *)self _finishWithError:v8 postRefreshPosterPathsAssertion:0];
  }

  v9.receiver = self;
  v9.super_class = PBFPosterExtensionReloadConfigurationOperation;
  [(PBFPosterExtensionReloadConfigurationOperation *)&v9 cancel];
}

- (double)executionTime
{
  os_unfair_recursive_lock_lock_with_options();
  [(PBFPosterExtensionReloadConfigurationOperation *)self _lock_executionTime];
  v4 = v3;
  os_unfair_recursive_lock_unlock();
  return v4;
}

- (double)_lock_executionTime
{
  lock_executionFinishDate = self->_lock_executionFinishDate;
  if (lock_executionFinishDate == 0.0)
  {
    BSAbsoluteMachTimeNow();
  }

  return lock_executionFinishDate - self->_lock_executionStateDate;
}

- (void)addCompletionObserver:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (self->_lock_isFinished)
    {
      os_unfair_recursive_lock_unlock();
      v5 = _Block_copy(v4);
      v12[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      v7 = [(PBFPosterExtensionReloadConfigurationOperation *)self error];
      [(PBFPosterExtensionReloadConfigurationOperation *)self _fireCompletionObservers:v6 instance:self error:v7];
    }

    else
    {
      lock_completionObservers = self->_lock_completionObservers;
      if (!lock_completionObservers)
      {
        v9 = objc_opt_new();
        v10 = self->_lock_completionObservers;
        self->_lock_completionObservers = v9;

        lock_completionObservers = self->_lock_completionObservers;
      }

      v11 = [v4 copy];
      [(NSMutableArray *)lock_completionObservers addObject:v11];

      os_unfair_recursive_lock_unlock();
    }
  }
}

- (void)_finishWithError:(id)a3 postRefreshPosterPathsAssertion:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_isFinished)
  {
    v8 = 0;
  }

  else
  {
    lock_group = self->_lock_group;
    if (lock_group)
    {
      dispatch_group_leave(lock_group);
      v10 = self->_lock_group;
      self->_lock_group = 0;
    }

    self->_lock_isFinished = 1;
    BSAbsoluteMachTimeNow();
    self->_lock_executionFinishDate = v11;
    v12 = [(PBFPosterExtensionReloadConfigurationOperation *)self updatingService];
    [v12 removeUpdatingServiceObserver:self];

    if (v6 || ([v7 paths], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 != 1) && (v16 = MEMORY[0x277CCA9B8], v34 = *MEMORY[0x277CCA470], objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Extension did not return appropriate path data : %@", v7), v17 = objc_claimAutoreleasedReturnValue(), v35[0] = v17, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v35, &v34, 1), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "pbf_dataStoreErrorWithCode:userInfo:", -2214, v18), v6 = objc_claimAutoreleasedReturnValue(), v18, v17, v6))
    {
      v13 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PBFPosterExtensionReloadDescriptorsOperation *)self _finishWithError:v6 postRefreshPosterPathsAssertion:v13];
      }

      [(PBFPosterExtensionReloadConfigurationOperation *)self setError:v6];
      [(PBFPosterExtensionReloadConfigurationOperation *)self invalidateAssertionsWithCompletion:0];
    }

    else
    {
      v19 = PBFLogReloadConfiguration();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v7 paths];
        v21 = [(PBFPosterExtensionReloadConfigurationOperation *)self preRefreshPosterConfiguration];
        v25 = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        v23 = [v20 isEqual:v22] ^ 1;
        [(PBFPosterExtensionReloadConfigurationOperation *)self executionTime];
        *buf = 138544130;
        v27 = self;
        v28 = 1024;
        v29 = v23;
        v30 = 2114;
        v31 = v7;
        v32 = 2048;
        v33 = v24;
        _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Finished SUCCESSFULLY; Has modified paths? %{BOOL}d -- '%{public}@' -- execution time: %f", buf, 0x26u);
      }

      objc_storeStrong(&self->_lock_postRefreshPosterPathsAssertion, a4);
      v6 = 0;
    }

    v8 = [(NSMutableArray *)self->_lock_completionObservers copy];
    [(NSMutableArray *)self->_lock_completionObservers removeAllObjects];
  }

  os_unfair_recursive_lock_unlock();
  [(PBFPosterExtensionReloadConfigurationOperation *)self _fireCompletionObservers:v8 instance:self error:v6];
}

- (id)_userInfoForErrors
{
  v16[3] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v15[0] = @"extensionBundleIdentifier";
  v3 = [(PBFPosterExtensionReloadConfigurationOperation *)self preRefreshPosterConfiguration];
  v4 = [v3 serverIdentity];
  v5 = [v4 provider];
  v6 = v5;
  v7 = @"(null)";
  if (v5)
  {
    v7 = v5;
  }

  v16[0] = v7;
  v15[1] = @"timeoutInterval";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeoutInterval];
  v16[1] = v8;
  v15[2] = @"preRefreshPosterConfiguration";
  v9 = [(PBFPosterExtensionReloadConfigurationOperation *)self preRefreshPosterConfiguration];
  v10 = [v9 description];
  v11 = v10;
  v12 = @"null";
  if (v10)
  {
    v12 = v10;
  }

  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  os_unfair_recursive_lock_unlock();

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PBFPosterExtensionReloadConfigurationOperation *)self preRefreshPosterConfiguration];
  v7 = [v6 serverIdentity];
  v8 = [v7 provider];
  v9 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v8];

  return v9;
}

- (void)_fireCompletionObservers:(id)a3 instance:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadConfigurationOperation _fireCompletionObservers:instance:error:]"];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __90__PBFPosterExtensionReloadConfigurationOperation__fireCompletionObservers_instance_error___block_invoke;
        v16[3] = &unk_2782C6180;
        v19 = v14;
        v17 = v8;
        v18 = v9;
        PBFDispatchAsyncWithString(v15, QOS_CLASS_DEFAULT, v16);
      }

      v11 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRUpdatingServiceClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFRuntimeAssertionProviding)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"__objc_no == BSFloatLessThanOrEqualToFloat(timeoutInterval, 0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 sessionInfo:existingConfigurationPath:locationInUse:runtimeAssertionProvider:timeout:powerLogReason:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __56__PBFPosterExtensionReloadConfigurationOperation__setup__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "(%{public}@)  Timed out!", &v2, 0xCu);
}

@end