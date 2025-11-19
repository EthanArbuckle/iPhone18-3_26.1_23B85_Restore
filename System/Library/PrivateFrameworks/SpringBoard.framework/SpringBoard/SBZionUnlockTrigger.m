@interface SBZionUnlockTrigger
- (BOOL)_isRestToOpenAvailable;
- (BOOL)bioUnlock;
- (SBZionUnlockTrigger)initWithUnlockBehaviorConfigurationDelegate:(id)a3;
- (id)succinctDescriptionBuilder;
- (void)_cancelMinTouchIDTimer;
- (void)_cancelRestToOpenTimer;
- (void)_evaluateRestToOpenTimer;
- (void)_startRestToOpenTimer;
- (void)_startRestToOpenTimerWithDuration:(double)a3;
- (void)dealloc;
- (void)fingerOff;
- (void)fingerOn;
- (void)lockButtonDown;
- (void)screenOff;
- (void)screenOn;
@end

@implementation SBZionUnlockTrigger

- (SBZionUnlockTrigger)initWithUnlockBehaviorConfigurationDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBZionUnlockTrigger;
  v5 = [(SBZionUnlockTrigger *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_behaviorConfigurationDelegate, v4);
  }

  return v6;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_restToOpenTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_minTouchIDTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBZionUnlockTrigger;
  [(SBZionUnlockTrigger *)&v3 dealloc];
}

- (id)succinctDescriptionBuilder
{
  v9.receiver = self;
  v9.super_class = SBZionUnlockTrigger;
  v3 = [(SBMesaUnlockTrigger *)&v9 succinctDescriptionBuilder];
  v4 = [v3 appendBool:self->_fingerOn withName:@"fingerOn"];
  v5 = [v3 appendBool:self->_fingerOffSinceWake withName:@"fingerOffSinceWake"];
  v6 = [v3 appendBool:self->_restToOpenTimer != 0 withName:@"restToOpenTimer"];
  v7 = [v3 appendBool:self->_minTouchIDTimer != 0 withName:@"minTouchIDTimer"];

  return v3;
}

- (BOOL)bioUnlock
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
  if ([(SBZionUnlockTrigger *)self _isRestToOpenAvailable])
  {
    v4 = WeakRetained;
    if (self->_fingerOn)
    {
      if ([WeakRetained lockScreenWakeSource] == 1 && !self->_fingerOffSinceWake)
      {
        [(SBZionUnlockTrigger *)self _cancelMinTouchIDTimer];
        objc_initWeak(&location, self);
        v7 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBZionUnlockTrigger.minTouchIDTimer"];
        minTouchIDTimer = self->_minTouchIDTimer;
        self->_minTouchIDTimer = v7;

        v9 = self->_minTouchIDTimer;
        v10 = MEMORY[0x277D85CD0];
        v11 = MEMORY[0x277D85CD0];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __32__SBZionUnlockTrigger_bioUnlock__block_invoke;
        v17[3] = &unk_2783B79D0;
        objc_copyWeak(&v18, &location);
        v17[4] = self;
        [(BSAbsoluteMachTimer *)v9 scheduleWithFireInterval:v10 leewayInterval:v17 queue:0.1 handler:0.0];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __32__SBZionUnlockTrigger_bioUnlock__block_invoke_2;
      v15 = &unk_2783A9398;
      v16 = self;
      v5 = &v12;
      v4 = WeakRetained;
    }

    else
    {
      v5 = 0;
    }

    [v4 startRestToOpenCoachingWithCompletion:{v5, v12, v13, v14, v15, v16}];
  }

LABEL_8:

  return 0;
}

void __32__SBZionUnlockTrigger_bioUnlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = 0.15;
    if (*(*(a1 + 32) + 32))
    {
      v3 = 0.425;
    }

    v4 = WeakRetained;
    [WeakRetained _startRestToOpenTimerWithDuration:v3];
    [v4 _cancelMinTouchIDTimer];
    WeakRetained = v4;
  }
}

- (void)fingerOn
{
  self->_fingerOn = 1;
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  v4 = [v3 hasBeenDismissedSinceKeybagLockAndAuthenticated];

  if ([(SBMesaUnlockTrigger *)self authenticated]&& (v4 & 1) == 0)
  {
    if ([(SBZionUnlockTrigger *)self _isRestToOpenAvailable])
    {
      WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __31__SBZionUnlockTrigger_fingerOn__block_invoke;
      v6[3] = &unk_2783A9398;
      v6[4] = self;
      [WeakRetained startRestToOpenCoachingWithCompletion:v6];
    }
  }
}

- (void)fingerOff
{
  self->_fingerOn = 0;
  self->_fingerOffSinceWake = 1;
  if (self->_restToOpenTimer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
    [WeakRetained resetRestToOpen];
  }

  [(SBZionUnlockTrigger *)self _cancelRestToOpenTimer];
}

- (void)screenOn
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
  self->_hasVisibleContentToReveal = [WeakRetained hasVisibleContentToReveal];
}

- (void)screenOff
{
  self->_hasVisibleContentToReveal = 0;
  self->_fingerOffSinceWake = 0;
  [(SBZionUnlockTrigger *)self _cancelRestToOpenTimer];
}

- (void)lockButtonDown
{
  if (self->_restToOpenTimer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
    [WeakRetained resetRestToOpen];
  }

  [(SBZionUnlockTrigger *)self _cancelRestToOpenTimer];
}

- (void)_startRestToOpenTimer
{
  if (self->_fingerOn)
  {
    [(SBZionUnlockTrigger *)self _startRestToOpenTimerWithDuration:0.375];
  }
}

- (void)_startRestToOpenTimerWithDuration:(double)a3
{
  if (self->_fingerOn)
  {
    [(SBZionUnlockTrigger *)self _cancelRestToOpenTimer];
    objc_initWeak(&location, self);
    v5 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBZionUnlockTrigger.restToOpenTimer"];
    restToOpenTimer = self->_restToOpenTimer;
    self->_restToOpenTimer = v5;

    v7 = self->_restToOpenTimer;
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __57__SBZionUnlockTrigger__startRestToOpenTimerWithDuration___block_invoke;
    v14 = &unk_2783A9918;
    objc_copyWeak(&v15, &location);
    [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:v8 leewayInterval:&v11 queue:a3 handler:0.0];

    WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
    [WeakRetained fillRestToOpenWithDuration:{a3, v11, v12, v13, v14}];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __57__SBZionUnlockTrigger__startRestToOpenTimerWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateRestToOpenTimer];
}

- (void)_evaluateRestToOpenTimer
{
  if (self->_restToOpenTimer && self->_fingerOn && [(SBZionUnlockTrigger *)self _isRestToOpenAvailable])
  {
    v3 = [(SBMesaUnlockTrigger *)self delegate];
    [v3 mesaUnlockTriggerFired:self];
  }

  [(SBZionUnlockTrigger *)self _cancelRestToOpenTimer];
}

- (void)_cancelRestToOpenTimer
{
  restToOpenTimer = self->_restToOpenTimer;
  if (restToOpenTimer)
  {
    [(BSAbsoluteMachTimer *)restToOpenTimer invalidate];
    v4 = self->_restToOpenTimer;
    self->_restToOpenTimer = 0;
  }
}

- (void)_cancelMinTouchIDTimer
{
  minTouchIDTimer = self->_minTouchIDTimer;
  if (minTouchIDTimer)
  {
    [(BSAbsoluteMachTimer *)minTouchIDTimer invalidate];
    v4 = self->_minTouchIDTimer;
    self->_minTouchIDTimer = 0;
  }
}

- (BOOL)_isRestToOpenAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorConfigurationDelegate);
  v3 = [WeakRetained isRestToOpenAvailable];

  return v3;
}

@end