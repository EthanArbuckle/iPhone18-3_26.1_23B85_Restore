@interface SBSCaptureApplicationService
+ (id)sharedInstance;
- (SBSCaptureApplicationService)init;
- (void)applicationDidCompleteTransition;
- (void)beginDelayingAppearance;
- (void)dealloc;
- (void)endDelayingAppearance;
- (void)invalidate;
@end

@implementation SBSCaptureApplicationService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBSCaptureApplicationService sharedInstance];
  }

  v3 = sharedInstance_service;

  return v3;
}

uint64_t __46__SBSCaptureApplicationService_sharedInstance__block_invoke()
{
  sharedInstance_service = objc_alloc_init(SBSCaptureApplicationService);

  return MEMORY[0x1EEE66BB8]();
}

- (SBSCaptureApplicationService)init
{
  v14.receiver = self;
  v14.super_class = SBSCaptureApplicationService;
  v2 = [(SBSCaptureApplicationService *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = MEMORY[0x1E698F498];
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v6 = +[SBSCaptureApplicationServiceSpecification identifier];
    v7 = [v4 endpointForMachName:defaultShellMachName service:v6 instance:0];

    if (v7)
    {
      v8 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
      lock_connection = v3->_lock_connection;
      v3->_lock_connection = v8;

      v10 = v3->_lock_connection;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __36__SBSCaptureApplicationService_init__block_invoke;
      v12[3] = &unk_1E735ED88;
      v13 = v3;
      [(BSServiceConnection *)v10 configureConnection:v12];
      [(BSServiceConnection *)v3->_lock_connection activate];
    }
  }

  return v3;
}

void __36__SBSCaptureApplicationService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSCaptureApplicationServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  [v3 setInterruptionHandler:&__block_literal_global_7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SBSCaptureApplicationService_init__block_invoke_8;
  v6[3] = &unk_1E735ED60;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __36__SBSCaptureApplicationService_init__block_invoke_2()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_19169D000, v0, OS_LOG_TYPE_DEFAULT, "SBSCaptureApplicationService: interrupted", v1, 2u);
  }
}

void __36__SBSCaptureApplicationService_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "SBSCaptureApplicationService: remotely invalidated", v4, 2u);
  }

  os_unfair_lock_lock(WeakRetained + 2);
  [*(WeakRetained + 2) invalidate];
  v3 = *(WeakRetained + 2);
  *(WeakRetained + 2) = 0;

  os_unfair_lock_unlock(WeakRetained + 2);
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSCaptureApplicationService must be invalidated before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSCaptureApplicationService.m";
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

- (void)applicationDidCompleteTransition
{
  os_unfair_lock_lock(&self->_lock);
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureApplicationService: Sending applicationDidCompleteTransition signal", v5, 2u);
  }

  remoteTarget = [(BSServiceConnection *)self->_lock_connection remoteTarget];
  [remoteTarget applicationDidCompleteTransition];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)beginDelayingAppearance
{
  os_unfair_lock_lock(&self->_lock);
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureApplicationService: Sending beginDelayingAppearance signal", v5, 2u);
  }

  remoteTarget = [(BSServiceConnection *)self->_lock_connection remoteTarget];
  [remoteTarget beginDelayingAppearance];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)endDelayingAppearance
{
  os_unfair_lock_lock(&self->_lock);
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureApplicationService: Sending endDelayingAppearance signal", v5, 2u);
  }

  remoteTarget = [(BSServiceConnection *)self->_lock_connection remoteTarget];
  [remoteTarget endDelayingAppearance];

  os_unfair_lock_unlock(&self->_lock);
}

@end