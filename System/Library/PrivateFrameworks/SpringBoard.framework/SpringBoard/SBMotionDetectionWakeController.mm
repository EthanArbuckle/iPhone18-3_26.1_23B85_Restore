@interface SBMotionDetectionWakeController
- (SBMotionDetectionWakeControllerDelegate)delegate;
- (id)acquireMotionDetectionWakeAssertionForReason:(id)a3;
- (void)_evaluateEnablement;
- (void)_setEnabled:(BOOL)a3;
- (void)_setMotionDetected:(BOOL)a3;
- (void)_setRequested:(BOOL)a3;
- (void)dealloc;
- (void)motionDetectionManager:(id)a3 didUpdateMotionDetectionTriggerState:(unint64_t)a4;
- (void)setRequireScreenOff:(BOOL)a3;
@end

@implementation SBMotionDetectionWakeController

- (void)dealloc
{
  [(SBBacklightController *)self->_backlightController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBMotionDetectionWakeController;
  [(SBMotionDetectionWakeController *)&v3 dealloc];
}

- (id)acquireMotionDetectionWakeAssertionForReason:(id)a3
{
  v4 = a3;
  enablementAssertions = self->_enablementAssertions;
  if (!enablementAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __80__SBMotionDetectionWakeController_acquireMotionDetectionWakeAssertionForReason___block_invoke;
    v14 = &unk_2783AD688;
    objc_copyWeak(&v15, &location);
    v7 = [v6 assertionWithIdentifier:@"Motion Detection Wake Enablement" stateDidChangeHandler:&v11];
    v8 = self->_enablementAssertions;
    self->_enablementAssertions = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    enablementAssertions = self->_enablementAssertions;
  }

  v9 = [(BSCompoundAssertion *)enablementAssertions acquireForReason:v4, v11, v12, v13, v14];

  return v9;
}

void __80__SBMotionDetectionWakeController_acquireMotionDetectionWakeAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 isActive];

  [WeakRetained _setRequested:v4];
}

- (void)setRequireScreenOff:(BOOL)a3
{
  if (self->_requireScreenOff != a3)
  {
    self->_requireScreenOff = a3;
    [(SBMotionDetectionWakeController *)self _evaluateEnablement];
  }
}

- (void)_setRequested:(BOOL)a3
{
  if (self->_requested != a3)
  {
    v11 = v3;
    self->_requested = a3;
    backlightController = self->_backlightController;
    if (a3)
    {
      if (!backlightController)
      {
        v9 = +[SBBacklightController sharedInstance];
        v10 = self->_backlightController;
        self->_backlightController = v9;

        backlightController = self->_backlightController;
      }

      [(SBBacklightController *)backlightController addObserver:self, v4, v11, v5];
    }

    else
    {
      [(SBBacklightController *)backlightController removeObserver:self];
    }

    [(SBMotionDetectionWakeController *)self _evaluateEnablement];
  }
}

- (void)_evaluateEnablement
{
  v3 = [(SBMotionDetectionWakeController *)self _isRequested];
  v4 = [(SBBacklightController *)self->_backlightController screenIsOn];
  v5 = v3 && (!self->_requireScreenOff || !v4);

  [(SBMotionDetectionWakeController *)self _setEnabled:v5];
}

- (void)_setEnabled:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    if (a3 && !self->_triggerManager)
    {
      v4 = objc_alloc_init(MEMORY[0x277CEA5E8]);
      triggerManager = self->_triggerManager;
      self->_triggerManager = v4;

      [(AMMotionDetectionTriggerManager *)self->_triggerManager addObserver:self queue:MEMORY[0x277D85CD0]];
    }

    v6 = SBLogBacklight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      enabled = self->_enabled;
      v9[0] = 67109120;
      v9[1] = enabled;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "setting motion detection trigger enabled = %{BOOL}u", v9, 8u);
    }

    [(AMMotionDetectionTriggerManager *)self->_triggerManager setMotionDetectionEnabled:self->_enabled];
    if (self->_enabled)
    {
      v8 = 1;
    }

    else
    {
      [(SBMotionDetectionWakeController *)self _setMotionDetected:0];
      v8 = self->_enabled;
    }

    SBWorkspaceSetPreventIdleSleepForReason(v8, @"motion-to-wake");
  }
}

- (void)_setMotionDetected:(BOOL)a3
{
  if (self->_motionDetected != a3)
  {
    self->_motionDetected = a3;
    v5 = [(SBMotionDetectionWakeController *)self delegate];
    [v5 motionDetectionWakeController:self motionDetectStateChanged:self->_motionDetected];
  }
}

- (void)motionDetectionManager:(id)a3 didUpdateMotionDetectionTriggerState:(unint64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = SBLogBacklight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "didUpdateMotionDetectionTriggerState: 0x%llx", &v8, 0xCu);
  }

  if ([(SBMotionDetectionWakeController *)self _isEnabled])
  {
    if ((a4 & 0xFFFFFFFFFFFFFE31) != 0)
    {
      v7 = SBLogBacklight();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SBMotionDetectionWakeController motionDetectionManager:a4 didUpdateMotionDetectionTriggerState:v7];
      }
    }

    else
    {
      [(SBMotionDetectionWakeController *)self _setMotionDetected:a4 != 0];
    }
  }
}

- (SBMotionDetectionWakeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)motionDetectionManager:(uint64_t)a1 didUpdateMotionDetectionTriggerState:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "received invalid motion detection trigger state 0x%llx", &v2, 0xCu);
}

@end