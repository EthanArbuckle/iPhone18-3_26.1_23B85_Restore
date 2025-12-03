@interface HDSPSleepDaemon
- (HDSPSleepDaemon)init;
- (HDSPSleepDaemon)initWithBehavior:(id)behavior;
- (id)diagnosticInfo;
- (void)_handleSigterm;
- (void)_setupSigtermHandler;
- (void)start;
@end

@implementation HDSPSleepDaemon

- (HDSPSleepDaemon)init
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [(HDSPSleepDaemon *)self initWithBehavior:mEMORY[0x277CCDD30]];

  return v4;
}

- (HDSPSleepDaemon)initWithBehavior:(id)behavior
{
  v25 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  v20.receiver = self;
  v20.super_class = HDSPSleepDaemon;
  v5 = [(HDSPSleepDaemon *)&v20 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v22 = v7;
      v23 = 2048;
      v24 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    launchDate = v5->_launchDate;
    v5->_launchDate = date;

    if ([behaviorCopy hksp_supportsSleep])
    {
      if (![behaviorCopy hksp_demoMode])
      {
        v15 = +[HDSPEnvironment standardEnvironment];
        environment = v5->_environment;
        v5->_environment = v15;

        diagnostics = [(HDSPEnvironment *)v5->_environment diagnostics];
        [diagnostics addProvider:v5];
        goto LABEL_14;
      }

      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "sleepd entering demo mode", buf, 2u);
      }

      v12 = +[HDSPEnvironment demoModeEnvironment];
    }

    else
    {
      v13 = HKSPLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "sleepd disabled", buf, 2u);
      }

      v12 = +[HDSPEnvironment disabledEnvironment];
    }

    diagnostics = v5->_environment;
    v5->_environment = v12;
LABEL_14:

    v17 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)start
{
  [(HDSPEnvironment *)self->_environment prepare];

  [(HDSPSleepDaemon *)self _setupSigtermHandler];
}

- (void)_setupSigtermHandler
{
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "sleepd setting up sigterm handler", buf, 2u);
  }

  signal(15, 1);
  v4 = dispatch_get_global_queue(21, 0);
  v5 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, v4);
  sigtermSource = self->_sigtermSource;
  self->_sigtermSource = v5;

  objc_initWeak(buf, self);
  v7 = self->_sigtermSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__HDSPSleepDaemon__setupSigtermHandler__block_invoke;
  handler[3] = &unk_279C7C2A8;
  objc_copyWeak(&v9, buf);
  dispatch_source_set_event_handler(v7, handler);
  dispatch_activate(self->_sigtermSource);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __39__HDSPSleepDaemon__setupSigtermHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSigterm];
  xpc_transaction_exit_clean();
}

- (void)_handleSigterm
{
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "sleepd received sigterm", v4, 2u);
  }

  [(HDSPEnvironment *)self->_environment shutdown];
}

- (id)diagnosticInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  launchDate = self->_launchDate;
  v6 = @"Launched";
  v7[0] = launchDate;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end