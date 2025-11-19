@interface SBSCaptureIntentService
+ (id)sharedInstance;
- (SBSCaptureIntentService)init;
- (id)context;
- (void)dealloc;
- (void)invalidate;
- (void)setContext:(id)a3;
@end

@implementation SBSCaptureIntentService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SBSCaptureIntentService sharedInstance];
  }

  v3 = sharedInstance_service_1;

  return v3;
}

uint64_t __41__SBSCaptureIntentService_sharedInstance__block_invoke()
{
  sharedInstance_service_1 = objc_alloc_init(SBSCaptureIntentService);

  return MEMORY[0x1EEE66BB8]();
}

- (SBSCaptureIntentService)init
{
  v14.receiver = self;
  v14.super_class = SBSCaptureIntentService;
  v2 = [(SBSCaptureIntentService *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698F498];
    v5 = [MEMORY[0x1E698F498] defaultShellMachName];
    v6 = +[SBSCaptureIntentServiceSpecification identifier];
    v7 = [v4 endpointForMachName:v5 service:v6 instance:0];

    if (v7)
    {
      v8 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
      lock_connection = v3->_lock_connection;
      v3->_lock_connection = v8;

      v10 = v3->_lock_connection;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __31__SBSCaptureIntentService_init__block_invoke;
      v12[3] = &unk_1E735ED88;
      v13 = v3;
      [(BSServiceConnection *)v10 configureConnection:v12];
      [(BSServiceConnection *)v3->_lock_connection activate];
    }
  }

  return v3;
}

void __31__SBSCaptureIntentService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSCaptureIntentServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  [v3 setInterruptionHandler:&__block_literal_global_7_1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__SBSCaptureIntentService_init__block_invoke_8;
  v6[3] = &unk_1E735ED60;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __31__SBSCaptureIntentService_init__block_invoke_2()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_19169D000, v0, OS_LOG_TYPE_DEFAULT, "SBSCaptureIntentService: interrupted", v1, 2u);
  }
}

void __31__SBSCaptureIntentService_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "SBSCaptureIntentService: remotely invalidated", v4, 2u);
  }

  os_unfair_lock_lock(WeakRetained + 2);
  [*(WeakRetained + 2) invalidate];
  v3 = *(WeakRetained + 2);
  *(WeakRetained + 2) = 0;

  os_unfair_lock_unlock(WeakRetained + 2);
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSCaptureIntentService must be invalidated before dealloc"];
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
    v15 = @"SBSCaptureIntentService.m";
    v16 = 1024;
    v17 = 67;
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

- (void)setContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSCaptureIntentService: Setting capture intent context for bundle identifier", v7, 2u);
  }

  v6 = [(BSServiceConnection *)self->_lock_connection remoteTarget];
  [v6 setCaptureIntentContext:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)context
{
  os_unfair_lock_lock(&self->_lock);
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureIntentService: Retrieving capture intent context for bundle identifier", v7, 2u);
  }

  v4 = [(BSServiceConnection *)self->_lock_connection remoteTarget];
  v5 = [v4 captureIntentContext];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end