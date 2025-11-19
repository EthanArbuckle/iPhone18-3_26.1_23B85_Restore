@interface SBSOSClawGestureObserver
- (BOOL)_isAutomaticCallCountdownEnabled;
- (BOOL)_isClawGestureActive;
- (BOOL)isClawActivated;
- (SBSOSClawGestureObserver)init;
- (SBSOSClawGestureObserverDelegate)delegate;
- (id)_currentSOSButtonPressState;
- (id)_initWithSOSManager:(id)a3 workspace:(id)a4;
- (void)_cancelSOSActivity;
- (void)_presentSOSInterface;
- (void)_updateActivePressesForPressType:(int64_t)a3 down:(BOOL)a4 timestamp:(double)a5;
- (void)dealloc;
- (void)noteButtonPress:(int64_t)a3 isDown:(BOOL)a4;
- (void)noteGestureReset;
- (void)setSOSEnabled:(BOOL)a3;
- (void)setSosTriggerTimer:(id)a3;
@end

@implementation SBSOSClawGestureObserver

- (SBSOSClawGestureObserver)init
{
  v3 = [MEMORY[0x277D495A0] sharedInstance];
  v4 = +[SBMainWorkspace sharedInstance];
  v5 = [(SBSOSClawGestureObserver *)self _initWithSOSManager:v3 workspace:v4];

  return v5;
}

- (id)_initWithSOSManager:(id)a3 workspace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = SBSOSClawGestureObserver;
  v9 = [(SBSOSClawGestureObserver *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sosManager, a3);
    objc_storeStrong(&v10->_workspace, a4);
    v11 = +[SBDefaults localDefaults];
    v12 = [v11 sosDefaults];
    sosDefaults = v10->_sosDefaults;
    v10->_sosDefaults = v12;

    v14 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBSOSClawGestureObserver.sosTriggerTimer"];
    sosTriggerTimer = v10->_sosTriggerTimer;
    v10->_sosTriggerTimer = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activePressTypes = v10->_activePressTypes;
    v10->_activePressTypes = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activePressTypeToDownTimestamp = v10->_activePressTypeToDownTimestamp;
    v10->_activePressTypeToDownTimestamp = v18;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_sosEnabled)
  {
    [(SOSManager *)self->_sosManager removeObserver:self];
  }

  [(BSAbsoluteMachTimer *)self->_sosTriggerTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBSOSClawGestureObserver;
  [(SBSOSClawGestureObserver *)&v3 dealloc];
}

- (void)noteButtonPress:(int64_t)a3 isDown:(BOOL)a4
{
  v53 = *MEMORY[0x277D85DE8];
  if ((a3 - 102) >= 3)
  {
    v8 = SBLogButtonsCombo();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSOSClawGestureObserver noteButtonPress:a3 isDown:v8];
    }
  }

  else
  {
    v5 = a4;
    v7 = [(SBSOSClawGestureObserver *)self _isClawGestureActive];
    v8 = [(SBSOSClawGestureObserver *)self activePressTypes];
    BSContinuousMachTimeNow();
    [(SBSOSClawGestureObserver *)self _updateActivePressesForPressType:a3 down:v5 timestamp:?];
    v9 = [v8 allObjects];
    v10 = [v9 bs_map:&__block_literal_global_58];
    v11 = [v10 componentsJoinedByString:{@", "}];

    v12 = [(SBSOSClawGestureObserver *)self _isClawGestureActive];
    v13 = SBLogButtonsCombo();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = off_2783AF7A8[a3 - 102];
      *buf = 138544386;
      v45 = v15;
      v46 = 2114;
      *v47 = v16;
      *&v47[8] = 1024;
      v48 = v12;
      v49 = 1024;
      v50 = v5;
      v51 = 2114;
      v52 = v11;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - button press noted: %{public}@ down: %{BOOL}u active(%{BOOL}u): [%{public}@]", buf, 0x2Cu);
    }

    if ([(SBSOSClawGestureObserver *)self isSOSEnabled])
    {
      v17 = [(SBSOSClawGestureObserver *)self delegate];
      if (v12 || !v7)
      {
        if (!v7 && v12)
        {
          v18 = SBLogButtonsCombo();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = off_2783AF7A8[a3 - 102];
            *buf = 138543618;
            v45 = v20;
            v46 = 2114;
            *v47 = v21;
            _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Claw activated with press %{public}@", buf, 0x16u);
          }

          if ([(SBSOSClawGestureObserver *)self _isSOSActivated])
          {
            if ([(SBSOSClawGestureObserver *)self _isAutomaticCallCountdownEnabled]&& [(SBSOSClawGestureObserver *)self _wasSOSTriggeredByClaw])
            {
              v22 = SBLogButtonsCombo();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = objc_opt_class();
                v24 = NSStringFromClass(v23);
                *buf = 138543362;
                v45 = v24;
                _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting SOS current interactive state to Starting due to claw activation", buf, 0xCu);
              }

              sosManager = self->_sosManager;
              v26 = [(SBSOSClawGestureObserver *)self _currentSOSButtonPressState];
              [(SOSManager *)sosManager setCurrentSOSButtonPressState:v26];

              [(SOSManager *)self->_sosManager setCurrentSOSInteractiveState:1];
              [v17 sosClawAutoCallInteractiveStateChanged:self interacting:1];
            }

            else
            {
              v35 = SBLogButtonsCombo();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = objc_opt_class();
                v37 = NSStringFromClass(v36);
                v38 = [(SBSOSClawGestureObserver *)self _isAutomaticCallCountdownEnabled];
                v39 = [(SBSOSClawGestureObserver *)self _wasSOSTriggeredByClaw];
                *buf = 138543874;
                v45 = v37;
                v46 = 1024;
                *v47 = v38;
                *&v47[4] = 1024;
                *&v47[6] = v39;
                _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ - Claw has been activated, but claw for automatic call down requires automatic call down enabled: %{BOOL}u and SOS was triggered by claw: %{BOOL}u", buf, 0x18u);
              }
            }
          }

          else if (![(BSAbsoluteMachTimer *)self->_sosTriggerTimer isScheduled])
          {
            objc_initWeak(buf, self);
            sosTriggerTimer = self->_sosTriggerTimer;
            v34 = MEMORY[0x277D85CD0];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __51__SBSOSClawGestureObserver_noteButtonPress_isDown___block_invoke_27;
            v42[3] = &unk_2783A9918;
            objc_copyWeak(&v43, buf);
            [(BSAbsoluteMachTimer *)sosTriggerTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v42 queue:1.1 handler:0.0];

            objc_destroyWeak(&v43);
            objc_destroyWeak(buf);
          }

          v40 = [SBApp volumeHardwareButton];
          [v40 addVolumePressBandit:self];

          v41 = +[SBUIController sharedInstanceIfExists];
          [v41 cancelVolumeEvent];

          [v17 sosClawDidBecomeActive:self];
        }
      }

      else
      {
        v29 = SBLogButtonsCombo();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = off_2783AF7A8[a3 - 102];
          *buf = 138543618;
          v45 = v31;
          v46 = 2114;
          *v47 = v32;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ - Claw deactivated with press %{public}@", buf, 0x16u);
        }

        [(SBSOSClawGestureObserver *)self _cancelSOSActivity];
      }
    }

    else
    {
      v17 = SBLogButtonsCombo();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138543362;
        v45 = v28;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - SOS is disabled so nothing left to do", buf, 0xCu);
      }
    }
  }
}

__CFString *__51__SBSOSClawGestureObserver_noteButtonPress_isDown___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if ((v2 - 102) > 2)
  {
    return @"<notSupported>";
  }

  else
  {
    return off_2783AF7A8[v2 - 102];
  }
}

void __51__SBSOSClawGestureObserver_noteButtonPress_isDown___block_invoke_27(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained isSOSEnabled])
  {
    [v4 _presentSOSInterface];
  }

  [v5 cancel];
}

- (void)noteGestureReset
{
  [(NSMutableSet *)self->_activePressTypes removeAllObjects];
  if ([(SBSOSClawGestureObserver *)self isSOSEnabled])
  {

    [(SBSOSClawGestureObserver *)self _cancelSOSActivity];
  }
}

- (void)setSOSEnabled:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_sosEnabled != a3)
  {
    v3 = a3;
    self->_sosEnabled = a3;
    [(NSMutableSet *)self->_activePressTypes removeAllObjects];
    v5 = SBLogButtonsCombo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543618;
      v10 = v7;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Set SOS Claw Gesture Enabled: %{BOOL}u", &v9, 0x12u);
    }

    if (v3)
    {
      v8 = +[SBSOSEventHandler sharedInstance];
      [v8 run];

      [(SOSManager *)self->_sosManager addObserver:self queue:MEMORY[0x277D85CD0]];
    }

    else
    {
      [(SOSManager *)self->_sosManager removeObserver:self];
    }
  }
}

- (BOOL)isClawActivated
{
  v3 = [(SBSOSClawGestureObserver *)self isSOSEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(SBSOSClawGestureObserver *)self _isClawGestureActive];
  }

  return v3;
}

- (void)setSosTriggerTimer:(id)a3
{
  v5 = a3;
  sosTriggerTimer = self->_sosTriggerTimer;
  p_sosTriggerTimer = &self->_sosTriggerTimer;
  v6 = sosTriggerTimer;
  if (sosTriggerTimer != v5)
  {
    v9 = v5;
    [(BSAbsoluteMachTimer *)v6 invalidate];
    objc_storeStrong(p_sosTriggerTimer, a3);
    v5 = v9;
  }
}

- (id)_currentSOSButtonPressState
{
  v3 = objc_alloc(MEMORY[0x277D49598]);
  v4 = [(NSMutableSet *)self->_activePressTypes containsObject:&unk_283370490];
  v5 = [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp objectForKeyedSubscript:&unk_283370490];
  [v5 doubleValue];
  v7 = v6;
  v8 = [(NSMutableSet *)self->_activePressTypes containsObject:&unk_2833704A8];
  v9 = [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp objectForKeyedSubscript:&unk_2833704A8];
  [v9 doubleValue];
  v11 = v10;
  v12 = [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp objectForKeyedSubscript:&unk_2833704C0];
  [v12 doubleValue];
  v14 = [v3 initWithVolumeUpPressed:v4 Timestamp:v8 VolumeDownPressed:v7 Timestamp:v11 LockPressedTimestamp:v13];

  return v14;
}

- (void)_updateActivePressesForPressType:(int64_t)a3 down:(BOOL)a4 timestamp:(double)a5
{
  v6 = a4;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  activePressTypes = self->_activePressTypes;
  if (v6)
  {
    [(NSMutableSet *)activePressTypes addObject:v11];
    activePressTypeToDownTimestamp = self->_activePressTypeToDownTimestamp;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [(NSMutableDictionary *)activePressTypeToDownTimestamp setObject:v10 forKey:v11];
  }

  else
  {
    [(NSMutableSet *)activePressTypes removeObject:v11];
    [(NSMutableDictionary *)self->_activePressTypeToDownTimestamp removeObjectForKey:v11];
  }
}

- (BOOL)_isClawGestureActive
{
  v2 = [(SBSOSClawGestureObserver *)self activePressTypes];
  if ([v2 containsObject:&unk_2833704C0])
  {
    v3 = [v2 count] > 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_cancelSOSActivity
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(SBSOSClawGestureObserver *)self delegate];
  v4 = [(SBSOSClawGestureObserver *)self sosTriggerTimer];
  if ([v4 isScheduled])
  {
    [v4 cancel];
  }

  if ([(SOSManager *)self->_sosManager currentSOSInteractiveState])
  {
    v5 = SBLogButtonsCombo();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting SOS current interactive state to Stopping due to claw release.", &v9, 0xCu);
    }

    [(SOSManager *)self->_sosManager setCurrentSOSInteractiveState:0];
    [v3 sosClawAutoCallInteractiveStateChanged:self interacting:0];
  }

  v8 = [SBApp volumeHardwareButton];
  [v8 removeVolumePressBandit:self];

  [v3 sosClawDidBecomeInactive:self];
}

- (void)_presentSOSInterface
{
  v3 = [SBApp HUDController];
  [v3 dismissHUDs:1];

  v4 = [SBApp ringerControl];
  [(SBRingerControl *)v4 dismissRingerHUD];

  v5 = [(SBSOSClawGestureObserver *)self delegate];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke;
  v6[3] = &unk_2783A9398;
  v6[4] = self;
  [v5 sosClawDidTriggerSOS:self completion:v6];
}

void __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    BSDispatchMain();
  }

  else
  {
    v3 = SBLogButtonsCombo();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke_cold_1(a1, v3);
    }
  }
}

uint64_t __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _setWasSOSTriggeredByClaw:1];
  result = [*(a1 + 32) isClawActivated];
  if (result)
  {
    result = [*(a1 + 32) _isAutomaticCallCountdownEnabled];
    if (result)
    {
      v3 = SBLogButtonsCombo();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting SOS current interactive state to Starting upon SOS presentation.", &v9, 0xCu);
      }

      v6 = *(a1 + 32);
      v7 = v6[1];
      v8 = [v6 _currentSOSButtonPressState];
      [v7 setCurrentSOSButtonPressState:v8];

      return [*(*(a1 + 32) + 8) setCurrentSOSInteractiveState:1];
    }
  }

  return result;
}

- (BOOL)_isAutomaticCallCountdownEnabled
{
  v2 = [(SBSOSClawGestureObserver *)self sosDefaults];
  v3 = [v2 isAutomaticCallCountdownEnabled];

  return v3;
}

void __63__SBSOSClawGestureObserver_didUpdateCurrentSOSInitiationState___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogButtonsCombo();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [*(a1 + 32) _isSOSActivated];
    v6 = 138543618;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - SOS UI initiation state changed. SOS activated: %{BOOL}u", &v6, 0x12u);
  }

  if (!*(a1 + 40))
  {
    [*(a1 + 32) _setWasSOSTriggeredByClaw:0];
  }
}

- (SBSOSClawGestureObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)noteButtonPress:(int)a1 isDown:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "must be a volume or lock button press, not %d", v2, 8u);
}

void __48__SBSOSClawGestureObserver__presentSOSInterface__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@ - Claw triggered SOS, but SOS responded without success.", &v5, 0xCu);
}

@end