@interface SBDoubleClickSleepWakeHardwareButtonInteraction
- (BOOL)consumeInitialPressDown;
- (BOOL)consumeInitialPressUp;
- (SBDoubleClickSleepWakeHardwareButtonInteraction)initWithProximitySensorManager:(id)a3;
- (void)_performSleep;
- (void)_performWake;
- (void)_resumeProxAfterMultiplePressIntervalForReason:(id)a3;
- (void)_resumeProxForReason:(id)a3;
- (void)_suspendProx;
- (void)observeFinalPressUp;
@end

@implementation SBDoubleClickSleepWakeHardwareButtonInteraction

- (SBDoubleClickSleepWakeHardwareButtonInteraction)initWithProximitySensorManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  v6 = [(SBSleepWakeHardwareButtonInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proximitySensorManager, a3);
  }

  return v7;
}

- (BOOL)consumeInitialPressDown
{
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"Initial press down - stuck request?"];
  v4.receiver = self;
  v4.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  return [(SBSleepWakeHardwareButtonInteraction *)&v4 consumeInitialPressDown];
}

- (BOOL)consumeInitialPressUp
{
  v3 = [(SBSleepWakeHardwareButtonInteraction *)self inhibitNextSinglePressUp];
  if (v3)
  {
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "wake/sleep x2 inital press up inhibited";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    if (![(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity])
    {
      [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _suspendProx];
      [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxAfterMultiplePressIntervalForReason:@"Multiple press timeout"];
      return v3;
    }

    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "wake/sleep x2 not suspending prox because objectInProximity";
      v6 = &v8;
      goto LABEL_7;
    }
  }

  return v3;
}

- (void)observeFinalPressUp
{
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"final press up"];

  [(SBSleepWakeHardwareButtonInteraction *)self setInhibitNextSinglePressUp:1];
}

- (void)_performSleep
{
  v3.receiver = self;
  v3.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  [(SBSleepWakeHardwareButtonInteraction *)&v3 _performSleep];
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"sleeping"];
}

- (void)_performWake
{
  v3.receiver = self;
  v3.super_class = SBDoubleClickSleepWakeHardwareButtonInteraction;
  [(SBSleepWakeHardwareButtonInteraction *)&v3 _performWake];
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _resumeProxForReason:@"waking"];
}

- (void)_suspendProx
{
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _cancelPreviousResumeProxRequests];
  if (!self->_proxLockAssertion)
  {
    v3 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "wake/sleep x2 suspend prox", v7, 2u);
    }

    v4 = [(SBSleepWakeHardwareButtonInteraction *)self sensorModeController];
    v5 = [v4 suspendProximityDetectionForSource:0 reason:@"double-click interval"];
    proxLockAssertion = self->_proxLockAssertion;
    self->_proxLockAssertion = v5;
  }
}

- (void)_resumeProxForReason:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self _cancelPreviousResumeProxRequests];
  if (self->_proxLockAssertion)
  {
    v5 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "wake/sleep x2 resume prox: %{public}@", &v7, 0xCu);
    }

    [(BSInvalidatable *)self->_proxLockAssertion invalidate];
    proxLockAssertion = self->_proxLockAssertion;
    self->_proxLockAssertion = 0;
  }
}

- (void)_resumeProxAfterMultiplePressIntervalForReason:(id)a3
{
  v4 = MEMORY[0x277D82BB8];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self];
  [(SBSleepWakeHardwareButtonInteraction *)self multiplePressTimeInterval];
  [(SBDoubleClickSleepWakeHardwareButtonInteraction *)self performSelector:sel__resumeProxForReason_ withObject:v5 afterDelay:?];
}

@end