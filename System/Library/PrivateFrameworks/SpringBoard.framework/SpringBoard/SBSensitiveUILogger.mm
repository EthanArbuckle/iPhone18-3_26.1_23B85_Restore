@interface SBSensitiveUILogger
+ (id)sharedInstance;
- (SBSensitiveUILogger)init;
- (void)_queue_logSensitiveUIState;
- (void)dealloc;
@end

@implementation SBSensitiveUILogger

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SBSensitiveUILogger sharedInstance];
  }

  v3 = sharedInstance___shared;

  return v3;
}

void __37__SBSensitiveUILogger_sharedInstance__block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = objc_alloc_init(SBSensitiveUILogger);
    v1 = sharedInstance___shared;
    sharedInstance___shared = v0;
  }
}

- (SBSensitiveUILogger)init
{
  v26.receiver = self;
  v26.super_class = SBSensitiveUILogger;
  v2 = [(SBSensitiveUILogger *)&v26 init];
  if (v2)
  {
    v3 = +[SBDefaults localDefaults];
    miscellaneousDefaults = [v3 miscellaneousDefaults];
    miscellaneousDefaults = v2->_miscellaneousDefaults;
    v2->_miscellaneousDefaults = miscellaneousDefaults;

    serial = [MEMORY[0x277CF0C18] serial];
    v7 = [serial serviceClass:17];
    v8 = BSDispatchQueueCreate();
    queue = v2->_queue;
    v2->_queue = v8;

    objc_initWeak(&location, v2);
    v10 = v2->_miscellaneousDefaults;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sensitiveUIEnabled"];
    v12 = v2->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __27__SBSensitiveUILogger_init__block_invoke;
    v23[3] = &unk_2783A8C68;
    objc_copyWeak(&v24, &location);
    v13 = [(SBMiscellaneousDefaults *)v10 observeDefault:v11 onQueue:v12 withBlock:v23];
    defaultObserverToken = v2->_defaultObserverToken;
    v2->_defaultObserverToken = v13;

    v15 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__SBSensitiveUILogger_init__block_invoke_2;
    block[3] = &unk_2783A8C18;
    v16 = v2;
    v22 = v16;
    dispatch_sync(v15, block);
    v20 = v16;
    v17 = BSLogAddStateCaptureBlockWithTitle();
    stateDumpToken = v20->_stateDumpToken;
    v20->_stateDumpToken = v17;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__SBSensitiveUILogger_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_logSensitiveUIState];
}

id __27__SBSensitiveUILogger_init__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  [*(*(a1 + 32) + 8) sensitiveUIEnabled];
  v2 = NSStringFromBOOL();
  v3 = [v1 stringWithFormat:@"Sensitive UI enabled: %@", v2];

  return v3;
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_defaultObserverToken invalidate];
  [(BSInvalidatable *)self->_stateDumpToken invalidate];
  v3.receiver = self;
  v3.super_class = SBSensitiveUILogger;
  [(SBSensitiveUILogger *)&v3 dealloc];
}

- (void)_queue_logSensitiveUIState
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBLogSensitiveUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sensitiveUIEnabled = [(SBMiscellaneousDefaults *)self->_miscellaneousDefaults sensitiveUIEnabled];
    v5[0] = 67109120;
    v5[1] = sensitiveUIEnabled;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Sensitive UI enabled: %{BOOL}u", v5, 8u);
  }
}

@end