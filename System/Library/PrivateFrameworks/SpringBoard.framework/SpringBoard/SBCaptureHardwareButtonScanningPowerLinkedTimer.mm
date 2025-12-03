@interface SBCaptureHardwareButtonScanningPowerLinkedTimer
- (SBCaptureHardwareButtonScanningPowerLinkedTimer)initWithIdentifier:(id)identifier timeout:(double)timeout existingRequest:(id)request scanModeResource:(id)resource handler:(id)handler;
- (void)_didTimeoutWithHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBCaptureHardwareButtonScanningPowerLinkedTimer

- (SBCaptureHardwareButtonScanningPowerLinkedTimer)initWithIdentifier:(id)identifier timeout:(double)timeout existingRequest:(id)request scanModeResource:(id)resource handler:(id)handler
{
  identifierCopy = identifier;
  requestCopy = request;
  resourceCopy = resource;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = SBCaptureHardwareButtonScanningPowerLinkedTimer;
  v16 = [(SBCaptureHardwareButtonScanningPowerLinkedTimer *)&v29 init];
  if (v16)
  {
    if (requestCopy)
    {
      v17 = requestCopy;
    }

    else
    {
      v17 = [resourceCopy requestActiveScanningModeForReason:identifierCopy];
    }

    buttonPowerRequest = v16->_buttonPowerRequest;
    v16->_buttonPowerRequest = v17;

    objc_initWeak(&location, v16);
    v19 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:identifierCopy];
    timer = v16->_timer;
    v16->_timer = v19;

    v21 = v16->_timer;
    v22 = MEMORY[0x277D85CD0];
    v23 = MEMORY[0x277D85CD0];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __119__SBCaptureHardwareButtonScanningPowerLinkedTimer_initWithIdentifier_timeout_existingRequest_scanModeResource_handler___block_invoke;
    v25[3] = &unk_2783BD5A0;
    objc_copyWeak(&v27, &location);
    v26 = handlerCopy;
    [(BSAbsoluteMachTimer *)v21 scheduleWithFireInterval:v22 leewayInterval:v25 queue:timeout handler:0.0];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __119__SBCaptureHardwareButtonScanningPowerLinkedTimer_initWithIdentifier_timeout_existingRequest_scanModeResource_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didTimeoutWithHandler:*(a1 + 32)];
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"must -invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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
    v15 = @"SBCaptureHardwareButtonAppActivator.m";
    v16 = 1024;
    v17 = 118;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  if (!self->_invalid)
  {
    self->_invalid = 1;
    [(BSAbsoluteMachTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    [(BSInvalidatable *)self->_buttonPowerRequest invalidate];
    buttonPowerRequest = self->_buttonPowerRequest;
    self->_buttonPowerRequest = 0;
  }
}

- (void)_didTimeoutWithHandler:(id)handler
{
  timer = self->_timer;
  handlerCopy = handler;
  [(BSAbsoluteMachTimer *)timer invalidate];
  v6 = self->_timer;
  self->_timer = 0;

  handlerCopy[2](handlerCopy, self);
  [(BSInvalidatable *)self->_buttonPowerRequest invalidate];
  buttonPowerRequest = self->_buttonPowerRequest;
  self->_buttonPowerRequest = 0;
}

@end