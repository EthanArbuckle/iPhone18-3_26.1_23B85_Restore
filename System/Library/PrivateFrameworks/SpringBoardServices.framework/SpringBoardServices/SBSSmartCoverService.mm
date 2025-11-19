@interface SBSSmartCoverService
+ (id)sharedInstance;
- (SBSSmartCoverService)init;
- (id)registerSmartCoverStateObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)observeSmartCoverStateDidChange:(id)a3;
@end

@implementation SBSSmartCoverService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SBSSmartCoverService sharedInstance];
  }

  v3 = sharedInstance_service_0;

  return v3;
}

uint64_t __38__SBSSmartCoverService_sharedInstance__block_invoke()
{
  sharedInstance_service_0 = objc_alloc_init(SBSSmartCoverService);

  return MEMORY[0x1EEE66BB8]();
}

- (SBSSmartCoverService)init
{
  v23.receiver = self;
  v23.super_class = SBSSmartCoverService;
  v2 = [(SBSSmartCoverService *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698E658];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __28__SBSSmartCoverService_init__block_invoke;
    v21[3] = &unk_1E735F198;
    v5 = v2;
    v22 = v5;
    v6 = [v4 assertionWithIdentifier:@"SBSSmartCoverObserver" stateDidChangeHandler:v21];
    observerAssertion = v5->_observerAssertion;
    v5->_observerAssertion = v6;

    v8 = MEMORY[0x1E698F498];
    v9 = [MEMORY[0x1E698F498] defaultShellMachName];
    v10 = +[SBSSmartCoverServiceSpecification identifier];
    v11 = [v8 endpointForMachName:v9 service:v10 instance:0];

    if (v11)
    {
      v12 = [MEMORY[0x1E698F490] connectionWithEndpoint:v11];
      lock_connection = v5->_lock_connection;
      v5->_lock_connection = v12;

      v14 = v5->_lock_connection;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __28__SBSSmartCoverService_init__block_invoke_2;
      v19 = &unk_1E735ED88;
      v20 = v5;
      [(BSServiceConnection *)v14 configureConnection:&v16];
      [(BSServiceConnection *)v5->_lock_connection activate:v16];
    }
  }

  return v3;
}

void __28__SBSSmartCoverService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 2);
  v5 = [*(*(a1 + 32) + 16) remoteTarget];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 isActive];

  v8 = [v6 numberWithBool:v7];
  [v5 setWantsSmartCoverStateChanges:v8];

  v9 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v9);
}

void __28__SBSSmartCoverService_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSSmartCoverServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__SBSSmartCoverService_init__block_invoke_3;
  v8[3] = &unk_1E735ED60;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__SBSSmartCoverService_init__block_invoke_26;
  v6[3] = &unk_1E735ED60;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __28__SBSSmartCoverService_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "SBSSmartCoverService: interrupted - resyncing state", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[3] isActive];
    [v3 activate];
    if (v7)
    {
      v8 = [v3 remoteTarget];
      [v8 setWantsSmartCoverStateChanges:MEMORY[0x1E695E118]];
    }
  }
}

void __28__SBSSmartCoverService_init__block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "SBSSmartCoverService: invalidated remotely", v4, 2u);
  }

  os_unfair_lock_lock(WeakRetained + 2);
  [*(WeakRetained + 2) invalidate];
  v3 = *(WeakRetained + 2);
  *(WeakRetained + 2) = 0;

  os_unfair_lock_unlock(WeakRetained + 2);
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate SBSSmartCoverService before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSSmartCoverService.m";
    v16 = 1024;
    v17 = 110;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(BSServiceConnection *)self->_lock_connection invalidate];
  lock_connection = self->_lock_connection;
  self->_lock_connection = 0;

  os_unfair_lock_lock(&self->_lock);
}

- (id)registerSmartCoverStateObserver:(id)a3
{
  observerAssertion = self->_observerAssertion;
  v4 = a3;
  v5 = [objc_opt_class() description];
  v6 = [(BSCompoundAssertion *)observerAssertion acquireForReason:v5 withContext:v4];

  return v6;
}

- (void)observeSmartCoverStateDidChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 integerValue];
  v5 = [(BSCompoundAssertion *)self->_observerAssertion context];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) smartCoverStateDidChange:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end