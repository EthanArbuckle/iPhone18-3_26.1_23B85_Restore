@interface SBAmbientAuthenticationIdleTimer
- (SBAmbientAuthenticationIdleTimer)init;
- (id)_initWithKeyBag:(id)a3 attentionAwarenessClient:(id)a4;
- (void)_handleAttentionLost:(id)a3;
- (void)_recomputeAuthenticationLimitTimer;
- (void)_reconfigureAttentionClient;
- (void)_setAttentionClientActive:(BOOL)a3;
- (void)_setAuthenticated:(BOOL)a3;
- (void)_updateAttentionClientActive;
- (void)dealloc;
- (void)keybag:(id)a3 extendedStateDidChange:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setIdleTimerDuration:(double)a3;
- (void)setMaximumAuthenticatedInterval:(double)a3;
@end

@implementation SBAmbientAuthenticationIdleTimer

- (SBAmbientAuthenticationIdleTimer)init
{
  v3 = [MEMORY[0x277D65ED8] sharedInstance];
  v4 = objc_opt_new();
  v5 = [(SBAmbientAuthenticationIdleTimer *)self _initWithKeyBag:v3 attentionAwarenessClient:v4];

  return v5;
}

- (id)_initWithKeyBag:(id)a3 attentionAwarenessClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SBAmbientAuthenticationIdleTimer;
  v9 = [(SBAmbientAuthenticationIdleTimer *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keybag, a3);
    *&v10->_maximumAuthenticatedInterval = xmmword_21F8A5E50;
    v10->_authenticated = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v10->_attentionClient, a4);
    [(SBAmbientAuthenticationIdleTimer *)v10 _reconfigureAttentionClient];
    v11 = [(SBFMobileKeyBag *)v10->_keybag state];
    -[SBAmbientAuthenticationIdleTimer _setAuthenticated:](v10, "_setAuthenticated:", [v11 isEffectivelyLocked] ^ 1);

    objc_initWeak(&location, v10);
    attentionClient = v10->_attentionClient;
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SBAmbientAuthenticationIdleTimer__initWithKeyBag_attentionAwarenessClient___block_invoke;
    v16[3] = &unk_2783A9180;
    objc_copyWeak(&v17, &location);
    [(AWAttentionAwarenessClient *)attentionClient setEventHandlerWithQueue:v13 block:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __77__SBAmbientAuthenticationIdleTimer__initWithKeyBag_attentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 eventMask])
  {
    v3 = objc_opt_class();
    v4 = v8;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _handleAttentionLost:v6];
    }
  }
}

- (void)dealloc
{
  [(BSContinuousMachTimer *)self->_authenticationLimitTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBAmbientAuthenticationIdleTimer;
  [(SBAmbientAuthenticationIdleTimer *)&v3 dealloc];
}

- (void)setMaximumAuthenticatedInterval:(double)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_maximumAuthenticatedInterval != a3)
  {
    self->_maximumAuthenticatedInterval = a3;
    v4 = SBLogAmbientAuthentication();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      maximumAuthenticatedInterval = self->_maximumAuthenticatedInterval;
      v6 = 134217984;
      v7 = maximumAuthenticatedInterval;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Maximum authentication interval changed to %f", &v6, 0xCu);
    }

    [(SBAmbientAuthenticationIdleTimer *)self _recomputeAuthenticationLimitTimer];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v4 = SBLogAmbientAuthentication();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      enabled = self->_enabled;
      v8[0] = 67109120;
      v8[1] = enabled;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Enabled state changed to %{BOOL}u", v8, 8u);
    }

    keybag = self->_keybag;
    if (self->_enabled)
    {
      [(SBFMobileKeyBag *)keybag addObserver:self];
      v7 = [(SBFMobileKeyBag *)self->_keybag state];
      -[SBAmbientAuthenticationIdleTimer _setAuthenticated:](self, "_setAuthenticated:", [v7 isEffectivelyLocked] ^ 1);
    }

    else
    {
      [(SBFMobileKeyBag *)keybag removeObserver:self];
    }

    [(SBAmbientAuthenticationIdleTimer *)self _updateAttentionClientActive];
    [(SBAmbientAuthenticationIdleTimer *)self _recomputeAuthenticationLimitTimer];
  }
}

- (void)setIdleTimerDuration:(double)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_idleTimerDuration != a3)
  {
    self->_idleTimerDuration = a3;
    v4 = SBLogAmbientAuthentication();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      idleTimerDuration = self->_idleTimerDuration;
      v6 = 134217984;
      v7 = idleTimerDuration;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Updated idle timer duration to %f", &v6, 0xCu);
    }

    [(SBAmbientAuthenticationIdleTimer *)self _reconfigureAttentionClient];
  }
}

- (void)keybag:(id)a3 extendedStateDidChange:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [v4 isEffectivelyLocked] ^ 1;
  v6 = SBLogAmbientAuthentication();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Extended keybag state did change to %@ isAuthenticated = %{BOOL}u", buf, 0x12u);
  }

  BSDispatchMain();
}

- (void)_setAuthenticated:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = BSSettingFlagForBool();
  if (self->_authenticated != v5)
  {
    self->_authenticated = v5;
    v6 = SBLogAmbientAuthentication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Authentication state changed to %{BOOL}u", v8, 8u);
    }

    if (BSSettingFlagIsYes())
    {
      BSContinuousMachTimeNow();
      self->_lastAuthenticationTime = v7;
    }

    [(SBAmbientAuthenticationIdleTimer *)self _updateAttentionClientActive];
    [(SBAmbientAuthenticationIdleTimer *)self _recomputeAuthenticationLimitTimer];
  }
}

- (void)_updateAttentionClientActive
{
  v3 = self->_enabled && [(SBAmbientAuthenticationIdleTimer *)self _isAuthenticated];

  [(SBAmbientAuthenticationIdleTimer *)self _setAttentionClientActive:v3];
}

- (void)_setAttentionClientActive:(BOOL)a3
{
  if (self->_attentionClientActive != a3)
  {
    v11 = v3;
    v12 = v4;
    v5 = a3;
    self->_attentionClientActive = a3;
    v7 = SBLogAmbientAuthentication();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Resuming attention client", buf, 2u);
      }

      [(AWAttentionAwarenessClient *)self->_attentionClient resumeWithError:0];
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Suspending attention client", v9, 2u);
      }

      [(AWAttentionAwarenessClient *)self->_attentionClient suspendWithError:0];
    }
  }
}

- (void)_recomputeAuthenticationLimitTimer
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(BSContinuousMachTimer *)self->_authenticationLimitTimer isScheduled])
  {
    v3 = SBLogAmbientAuthentication();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating authentication limit timer", buf, 2u);
    }
  }

  [(BSContinuousMachTimer *)self->_authenticationLimitTimer invalidate];
  if ([(SBAmbientAuthenticationIdleTimer *)self _isAuthenticated]&& [(SBAmbientAuthenticationIdleTimer *)self isEnabled])
  {
    BSContinuousMachTimeNow();
    v5 = v4;
    lastAuthenticationTime = self->_lastAuthenticationTime;
    [(SBAmbientAuthenticationIdleTimer *)self maximumAuthenticatedInterval];
    v8 = v7;
    v9 = SBLogAmbientAuthentication();
    v10 = lastAuthenticationTime + v8 - v5;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [(SBAmbientAuthenticationIdleTimer *)self maximumAuthenticatedInterval];
      *buf = 134218240;
      v26 = v11;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Updating authentication limit timer. maxInterval = %f remainingInterval = %f", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__SBAmbientAuthenticationIdleTimer__recomputeAuthenticationLimitTimer__block_invoke;
    v23[3] = &unk_2783A8C68;
    objc_copyWeak(&v24, buf);
    v12 = MEMORY[0x223D6F7F0](v23);
    if (v10 <= 0.0)
    {
      v19 = SBLogAmbientAuthentication();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Authentication limit in the past; locking immediately", v20, 2u);
      }

      v12[2](v12);
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"com.apple.SpringBoard.AmbientAuthentication"];
      authenticationLimitTimer = self->_authenticationLimitTimer;
      p_authenticationLimitTimer = &self->_authenticationLimitTimer;
      *p_authenticationLimitTimer = v13;

      v16 = *p_authenticationLimitTimer;
      v17 = MEMORY[0x277D85CD0];
      v18 = MEMORY[0x277D85CD0];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __70__SBAmbientAuthenticationIdleTimer__recomputeAuthenticationLimitTimer__block_invoke_2;
      v21[3] = &unk_2783AD6D8;
      v22 = v12;
      [(BSContinuousMachTimer *)v16 scheduleWithFireInterval:v17 leewayInterval:v21 queue:v10 handler:1.0];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

void __70__SBAmbientAuthenticationIdleTimer__recomputeAuthenticationLimitTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained isEnabled];
    v2 = v4;
    if (v3)
    {
      [v4[1] lockSkippingGracePeriod:0];
      v2 = v4;
    }
  }
}

uint64_t __70__SBAmbientAuthenticationIdleTimer__recomputeAuthenticationLimitTimer__block_invoke_2(uint64_t a1)
{
  v2 = SBLogAmbientAuthentication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Authentication limit reached. Locking", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_reconfigureAttentionClient
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEF768]);
  [v3 setIdentifier:@"com.apple.SpringBoard.AmbientAuthentication"];
  [v3 setEventMask:4095];
  [v3 setAttentionLostEventMask:0];
  [v3 setSamplingInterval:4.0];
  [(SBAmbientAuthenticationIdleTimer *)self idleTimerDuration];
  [v3 setAttentionLostTimeout:?];
  v4 = SBLogAmbientAuthentication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Updating attention client with configuration %{public}@", &v5, 0xCu);
  }

  [(AWAttentionAwarenessClient *)self->_attentionClient setConfiguration:v3];
}

- (void)_handleAttentionLost:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SBLogAmbientAuthentication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [(SBAmbientAuthenticationIdleTimer *)self isEnabled];
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Attention lost. isEnabled = %{BOOL}u", v6, 8u);
  }

  if ([(SBAmbientAuthenticationIdleTimer *)self isEnabled])
  {
    v5 = SBLogAmbientAuthentication();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Locking due to attention loss", v6, 2u);
    }

    [(SBFMobileKeyBag *)self->_keybag lockSkippingGracePeriod:0];
  }
}

@end