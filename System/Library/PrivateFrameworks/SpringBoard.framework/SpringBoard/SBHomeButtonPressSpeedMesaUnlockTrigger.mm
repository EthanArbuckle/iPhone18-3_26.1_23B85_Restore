@interface SBHomeButtonPressSpeedMesaUnlockTrigger
- (BOOL)bioUnlock;
- (SBHomeButtonPressSpeedMesaUnlockTrigger)init;
- (id)succinctDescriptionBuilder;
- (void)_evaluateUnlock;
- (void)_invalidateTimer;
- (void)_startTimer;
- (void)_timerFired;
- (void)dealloc;
- (void)fingerOff;
- (void)menuButtonDown;
- (void)menuButtonUp;
- (void)screenOff;
@end

@implementation SBHomeButtonPressSpeedMesaUnlockTrigger

- (SBHomeButtonPressSpeedMesaUnlockTrigger)init
{
  v7.receiver = self;
  v7.super_class = SBHomeButtonPressSpeedMesaUnlockTrigger;
  v2 = [(SBHomeButtonPressSpeedMesaUnlockTrigger *)&v7 init];
  if (v2)
  {
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    mesaSettings = [rootSettings mesaSettings];
    [mesaSettings slowPressDuration];
    v2->_slowPressDuration = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_slowPressTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBHomeButtonPressSpeedMesaUnlockTrigger;
  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)&v3 dealloc];
}

- (id)succinctDescriptionBuilder
{
  v11.receiver = self;
  v11.super_class = SBHomeButtonPressSpeedMesaUnlockTrigger;
  succinctDescriptionBuilder = [(SBMesaUnlockTrigger *)&v11 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendTimeInterval:@"slowPressDuration" withName:0 decomposeUnits:self->_slowPressDuration];
  v5 = [succinctDescriptionBuilder appendBool:self->_buttonIsDown withName:@"buttonIsDown"];
  v6 = [succinctDescriptionBuilder appendBool:self->_fingerIsOn withName:@"fingerIsOn"];
  v7 = [succinctDescriptionBuilder appendBool:self->_bioUnlockOccurred withName:@"bioUnlockOccurred"];
  v8 = [succinctDescriptionBuilder appendBool:self->_timerFired withName:@"timerFired"];
  v9 = [succinctDescriptionBuilder appendBool:-[SBHomeButtonPressSpeedMesaUnlockTrigger _isTimerRunning](self withName:{"_isTimerRunning"), @"isTimerRunning"}];

  return succinctDescriptionBuilder;
}

- (BOOL)bioUnlock
{
  v13 = *MEMORY[0x277D85DE8];
  self->_bioUnlockOccurred = 1;
  if ([(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _isTimerRunning])
  {
    v3 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] not unlocking because the timer is running", v8, 2u);
    }

    LOBYTE(_isPrimed) = 0;
  }

  else
  {
    _isPrimed = [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _isPrimed];
    v3 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      buttonIsDown = self->_buttonIsDown;
      fingerIsOn = self->_fingerIsOn;
      v8[0] = 67109632;
      v8[1] = _isPrimed;
      v9 = 1024;
      v10 = buttonIsDown;
      v11 = 1024;
      v12 = fingerIsOn;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] timer isn't running, unlocking: %d (button is down: %d finger is on: %d)", v8, 0x14u);
    }
  }

  return _isPrimed;
}

- (void)screenOff
{
  v3 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] screen off - resetting state", v4, 2u);
  }

  self->_bioUnlockOccurred = 0;
  self->_buttonIsDown = 0;
  self->_fingerIsOn = 0;
  self->_timerFired = 0;
  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _invalidateTimer];
}

- (void)menuButtonDown
{
  v3 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] menu button down - starting timer for unlock and priming", v4, 2u);
  }

  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _startTimer];
  self->_buttonIsDown = 1;
  self->_fingerIsOn = 1;
}

- (void)menuButtonUp
{
  v3 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] menu button up - priming", v4, 2u);
  }

  self->_buttonIsDown = 0;
  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _evaluateUnlock];
}

- (void)fingerOff
{
  v3 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] finger off - no longer primed", v4, 2u);
  }

  self->_fingerIsOn = 0;
}

- (void)_startTimer
{
  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _invalidateTimer];
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBHomeButtonPressSpeedMesaUnlockTrigger.slowPressTimer"];
  slowPressTimer = self->_slowPressTimer;
  self->_slowPressTimer = v3;

  v5 = self->_slowPressTimer;
  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self slowPressDuration];
  v7 = v6;
  v8 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SBHomeButtonPressSpeedMesaUnlockTrigger__startTimer__block_invoke;
  v10[3] = &unk_2783A9918;
  objc_copyWeak(&v11, &location);
  [(BSAbsoluteMachTimer *)v5 scheduleWithFireInterval:v8 leewayInterval:v10 queue:v7 handler:0.0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__SBHomeButtonPressSpeedMesaUnlockTrigger__startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (void)_invalidateTimer
{
  [(BSAbsoluteMachTimer *)self->_slowPressTimer invalidate];
  slowPressTimer = self->_slowPressTimer;
  self->_slowPressTimer = 0;
}

- (void)_timerFired
{
  self->_timerFired = 1;
  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _evaluateUnlock];

  [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _invalidateTimer];
}

- (void)_evaluateUnlock
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_bioUnlockOccurred && self->_timerFired && [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _isPrimed])
  {
    v3 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] unlocking | match occurred, timer fired, button is up, and finger is still on", v10, 2u);
    }

    delegate = [(SBMesaUnlockTrigger *)self delegate];
    [delegate mesaUnlockTriggerFired:self];

    [(SBHomeButtonPressSpeedMesaUnlockTrigger *)self _invalidateTimer];
  }

  else
  {
    v5 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      bioUnlockOccurred = self->_bioUnlockOccurred;
      timerFired = self->_timerFired;
      buttonIsDown = self->_buttonIsDown;
      fingerIsOn = self->_fingerIsOn;
      v10[0] = 67109888;
      v10[1] = bioUnlockOccurred;
      v11 = 1024;
      v12 = timerFired;
      v13 = 1024;
      v14 = buttonIsDown;
      v15 = 1024;
      v16 = fingerIsOn;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "[SBHomeButtonPressSpeedMesaUnlockTrigger] not unlocking | match occurred: %d timer fired: %d button is still down: %d finger is still on: %d", v10, 0x1Au);
    }
  }
}

@end