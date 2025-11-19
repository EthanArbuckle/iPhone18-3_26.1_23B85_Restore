@interface SBUIContinuitySession
- (NSSet)externallyBlockedReasons;
- (NSSet)stepReasons;
- (SBUIContinuitySession)init;
- (SBUIContinuitySession)initWithConnectionFactory:(id)a3 connectionQueue:(id)a4;
- (SBUIContinuitySessionAppearanceSettings)appearanceSettings;
- (SBUIContinuitySessionDelegate)delegate;
- (id)acquireScreenRecordingAssertion;
- (int64_t)hostedInterfaceOrientation;
- (unint64_t)step;
- (void)activate;
- (void)dealloc;
- (void)didSetDisplayHardwareIdentifier:(id)a3;
- (void)didUpdateContinuitySessionStep:(id)a3 reasons:(id)a4;
- (void)didUpdateCurrentInterfaceOrientation:(id)a3 supportedInterfaceOrientations:(id)a4;
- (void)handleContinuityButtonEvent:(unint64_t)a3;
- (void)handleLaunchEventOfType:(id)a3 payload:(id)a4;
- (void)invalidate;
- (void)noteHIDServicesConfigured;
- (void)noteScreenshotCaptured;
- (void)setExternallyBlockedReasons:(id)a3;
- (void)setHostedInterfaceOrientation:(int64_t)a3;
- (void)staging_adoptedMacDrivenScreenCaptureNotifications;
- (void)updateAppearanceSettings:(id)a3 withCompletion:(id)a4;
@end

@implementation SBUIContinuitySession

- (SBUIContinuitySession)init
{
  v3 = BSDispatchQueueCreateWithQualityOfService();
  v4 = objc_alloc_init(SBUIBSServiceConnectionWrapper);
  v5 = [(SBUIContinuitySession *)self initWithConnectionFactory:v4 connectionQueue:v3];

  return v5;
}

- (SBUIContinuitySession)initWithConnectionFactory:(id)a3 connectionQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = SBUIContinuitySession;
  v8 = [(SBUIContinuitySession *)&v40 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_lock_clientCalledActivate = 0;
    objc_storeStrong(&v8->_connectionQueue, a4);
    v9->_lock_serverStep = 0;
    v10 = [MEMORY[0x1E695DFD8] set];
    lock_serverBlockedReasons = v9->_lock_serverBlockedReasons;
    v9->_lock_serverBlockedReasons = v10;

    v12 = [MEMORY[0x1E695DFD8] set];
    lock_clientBlockedReasons = v9->_lock_clientBlockedReasons;
    v9->_lock_clientBlockedReasons = v12;

    v9->_lock_hostedInterfaceOrientation = 0;
    v14 = objc_alloc_init(SBUIContinuitySessionAppearanceSettings);
    appearanceSettings = v9->_appearanceSettings;
    v9->_appearanceSettings = v14;

    objc_initWeak(&location, v9);
    v16 = MEMORY[0x1E698E658];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke;
    v37[3] = &unk_1E789FF40;
    objc_copyWeak(&v38, &location);
    v19 = [v16 assertionWithIdentifier:v18 stateDidChangeHandler:v37];
    screenRecordingAssertions = v9->_screenRecordingAssertions;
    v9->_screenRecordingAssertions = v19;

    v21 = v9->_screenRecordingAssertions;
    v22 = SBLogContinuitySessionService();
    [(BSCompoundAssertion *)v21 setLog:v22];

    v23 = MEMORY[0x1E698F498];
    v24 = [MEMORY[0x1E698F498] defaultShellMachName];
    v25 = +[SBUIContinuitySessionServiceSpecification identifier];
    v26 = [v23 endpointForMachName:v24 service:v25 instance:0];

    v27 = [v6 connectionWithEndpoint:v26];
    connection = v9->_connection;
    v9->_connection = v27;

    v29 = v9->_connection;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_11;
    v35[3] = &unk_1E789FF90;
    v30 = v9;
    v36 = v30;
    [(BSServiceConnection *)v29 configureConnection:v35];
    connectionQueue = v9->_connectionQueue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_2_16;
    v33[3] = &unk_1E789DA38;
    v34 = v30;
    dispatch_sync(connectionQueue, v33);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 6);
    v6 = BYTE1(v5[7]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v5 + 6);
    if (v6 == 1)
    {
      v7 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 isActive];
        v9 = @"stop";
        if (v8)
        {
          v9 = @"start";
        }

        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring call to %{public}@ screen recording because the session has already ended", &v13, 0xCu);
      }
    }

    else
    {
      v10 = [v3 isActive];
      v11 = SBLogContinuitySessionService();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Screen recording started", &v13, 2u);
        }

        v7 = [*&v5[2]._os_unfair_lock_opaque remoteTarget];
        [v7 didStartScreenRecording];
      }

      else
      {
        if (v12)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Screen recording stopped", &v13, 2u);
        }

        v7 = [*&v5[2]._os_unfair_lock_opaque remoteTarget];
        [v7 didStopScreenRecording];
      }
    }
  }
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBUIContinuitySessionServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBUIContinuitySessionServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_2;
  v6[3] = &unk_1E789FF68;
  v7 = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_2(uint64_t a1)
{
  v2 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Ending session - server invalidated", buf, 2u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 24));
  *(*(a1 + 32) + 29) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  BSDispatchMain();
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_12(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"serverInvalidated"];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  v5 = v2;

  *(*(a1 + 32) + 40) = 7;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v6 = [*(a1 + 32) delegate];
  [v6 continuitySession:*(a1 + 32) didUpdateContinuitySessionStep:7 reasons:v5];
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_screenRecordingAssertions invalidate];
  screenRecordingAssertions = self->_screenRecordingAssertions;
  self->_screenRecordingAssertions = 0;

  v4.receiver = self;
  v4.super_class = SBUIContinuitySession;
  [(SBUIContinuitySession *)&v4 dealloc];
}

- (void)activate
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already activated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBUIContinuitySession.m";
    v16 = 1024;
    v17 = 165;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A9A79000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setExternallyBlockedReasons:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  if (([(NSSet *)self->_lock_clientBlockedReasons isEqual:v6]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [v6 copy];
    lock_clientBlockedReasons = self->_lock_clientBlockedReasons;
    self->_lock_clientBlockedReasons = v7;

    lock_sessionEnded = self->_lock_sessionEnded;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_sessionEnded)
    {
      v10 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, "Sending updated externally blocked reasons: %{public}@", &v12, 0xCu);
      }

      v11 = [(BSServiceConnection *)self->_connection remoteTarget];
      [v11 didUpdateExternalBlockedReasons:v6];
    }
  }
}

- (NSSet)externallyBlockedReasons
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_lock_clientBlockedReasons copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)step
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_serverStep = self->_lock_serverStep;
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_sessionEnded && lock_serverStep != 7)
  {
    v6 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSBUIContinuitySessionStep(lock_serverStep);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "overriding current state (%{public}@ to invalid because the session has ended", &v9, 0xCu);
    }

    return 7;
  }

  return lock_serverStep;
}

- (NSSet)stepReasons
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_lock_serverBlockedReasons copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)noteHIDServicesConfigured
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  hidServicesConfigured = self->_hidServicesConfigured;
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (hidServicesConfigured)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate notification that HID services were configured.  I already told SB that...", v7, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Sending note that HID services were configured", buf, 2u);
    }

    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 noteHIDServicesConfigured];

    self->_hidServicesConfigured = 1;
  }
}

- (void)handleLaunchEventOfType:(id)a3 payload:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  v9 = SBLogContinuitySessionService();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (lock_sessionEnded)
  {
    if (v10)
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring call to handleLaunchEventOfType - %{public}@ because the session has ended", &v11, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Sending launch event: %{public}@", &v11, 0xCu);
    }

    v9 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v9 handleLaunchEventOfType:v6 payload:v7];
  }
}

- (void)updateAppearanceSettings:(id)a3 withCompletion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke;
  v30[3] = &unk_1E789FFB8;
  v8 = v7;
  v31 = v8;
  v9 = MEMORY[0x1AC58E960](v30);
  os_unfair_lock_lock(&self->_lock);
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_sessionEnded)
  {
    v11 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring call to updateAppearanceSettings because the session has ended", buf, 2u);
    }

    v18 = SBUIContinuitySessionErrorCreate(0xFFFFFFFFFFFFF82FLL, @"Session has ended", v12, v13, v14, v15, v16, v17, v28[0]);
    (v9)[2](v9, 0, v18);
  }

  else
  {
    v18 = self->_appearanceSettings;
    v19 = [(SBUIContinuitySessionAppearanceSettings *)v18 mutableCopy];
    v20 = objc_alloc_init(SBUIContinuitySessionTransitionContext);
    if (v6)
    {
      v6[2](v6, v19, v20);
      v21 = [v19 copy];
      if ([(SBUIContinuitySessionAppearanceSettings *)v18 isEqual:v21])
      {
        v22 = SBLogContinuitySessionService();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v33 = v18;
          _os_log_impl(&dword_1A9A79000, v22, OS_LOG_TYPE_DEFAULT, "Appearance settings not changed from %{public}@ - firing completion now", buf, 0xCu);
        }

        v9[2](v9, 1, 0);
      }

      else
      {
        v24 = [v19 copy];
        appearanceSettings = self->_appearanceSettings;
        self->_appearanceSettings = v24;

        v26 = SBLogContinuitySessionService();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v33 = v18;
          v34 = 2114;
          v35 = v21;
          _os_log_impl(&dword_1A9A79000, v26, OS_LOG_TYPE_DEFAULT, "Appearance settings changed from %{public}@ to %{public}@ - sending appearance update", buf, 0x16u);
        }

        v27 = [(BSServiceConnection *)self->_connection remoteTarget];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke_32;
        v28[3] = &unk_1E78A0008;
        v29 = v9;
        [v27 updatedAppearanceSettings:v21 transitionContext:v20 completion:v28];
      }
    }

    else
    {
      v23 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v23, OS_LOG_TYPE_DEFAULT, "No updater block provided, firing completion now", buf, 2u);
      }

      v9[2](v9, 1, 0);
    }
  }
}

uint64_t __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

uint64_t __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) BOOLValue];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (SBUIContinuitySessionAppearanceSettings)appearanceSettings
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  appearanceSettings = self->_appearanceSettings;

  return appearanceSettings;
}

- (void)handleContinuityButtonEvent:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_clientCalledActivate = self->_lock_clientCalledActivate;
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_clientCalledActivate)
  {
    v7 = SBLogContinuitySessionService();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!lock_sessionEnded)
    {
      if (v8)
      {
        v11 = NSStringFromSBUIContinuityButtonEventType(a3);
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Sending button event: %{public}@", &v12, 0xCu);
      }

      v7 = [(BSServiceConnection *)self->_connection remoteTarget];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v7 handleContinuityButtonEvent:v9];
      goto LABEL_11;
    }

    if (v8)
    {
      v9 = NSStringFromSBUIContinuityButtonEventType(a3);
      v12 = 138543362;
      v13 = v9;
      v10 = "Ignoring call to handleContinuityButtonEvent - %{public}@ because the session has ended";
LABEL_7:
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
LABEL_11:
    }
  }

  else
  {
    v7 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSBUIContinuityButtonEventType(a3);
      v12 = 138543362;
      v13 = v9;
      v10 = "Ignoring call to handleContinuityButtonEvent - %{public}@ because the session hasn't been activated by the client";
      goto LABEL_7;
    }
  }
}

- (int64_t)hostedInterfaceOrientation
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_hostedInterfaceOrientation = self->_lock_hostedInterfaceOrientation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_hostedInterfaceOrientation;
}

- (void)setHostedInterfaceOrientation:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_clientCalledActivate)
  {
    lock_sessionEnded = self->_lock_sessionEnded;
    self->_lock_hostedInterfaceOrientation = a3;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_sessionEnded)
    {
      v6 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = BSInterfaceOrientationDescription();
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Setting hosted interface orientation: %{public}@", &v10, 0xCu);
      }

      v8 = [(BSServiceConnection *)self->_connection remoteTarget];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [v8 setHostedInterfaceOrientation:v9];
      goto LABEL_9;
    }
  }

  else
  {
    self->_lock_hostedInterfaceOrientation = a3;
    os_unfair_lock_unlock(&self->_lock);
  }

  v8 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = BSInterfaceOrientationDescription();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Pending call to set the hosted interface orientation: %{public}@ because the session hasn't been activated by the client or has ended", &v10, 0xCu);
LABEL_9:
  }
}

- (void)noteScreenshotCaptured
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_clientCalledActivate = self->_lock_clientCalledActivate;
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_clientCalledActivate)
  {
    v5 = SBLogContinuitySessionService();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (lock_sessionEnded)
    {
      if (v6)
      {
        v10 = 0;
        v7 = "Ignoring call to note screenshot captured because the session has ended";
        v8 = &v10;
LABEL_7:
        _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *v9 = 0;
        _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Noting screenshot captured", v9, 2u);
      }

      v5 = [(BSServiceConnection *)self->_connection remoteTarget];
      [v5 didCaptureScreenshot];
    }
  }

  else
  {
    v5 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Ignoring call to note screenshot captured because the session hasn't been activated by the client";
      v8 = buf;
      goto LABEL_7;
    }
  }
}

- (id)acquireScreenRecordingAssertion
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  screenRecordingAssertions = self->_screenRecordingAssertions;
  v5 = [v3 UUIDString];
  v6 = [(BSCompoundAssertion *)screenRecordingAssertions acquireForReason:v5];

  return v6;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_sessionEnded)
  {
    v3 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Ending session - client manually invalidated session", v8, 2u);
    }

    v4 = [MEMORY[0x1E695DFD8] set];
    lock_serverBlockedReasons = self->_lock_serverBlockedReasons;
    self->_lock_serverBlockedReasons = v4;

    self->_lock_serverStep = 7;
  }

  self->_lock_sessionEnded = 1;
  [(SBUIContinuitySession *)self _invalidateOrientations];
  os_unfair_lock_unlock(&self->_lock);
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  [(BSCompoundAssertion *)self->_screenRecordingAssertions invalidate];
  screenRecordingAssertions = self->_screenRecordingAssertions;
  self->_screenRecordingAssertions = 0;
}

- (void)didSetDisplayHardwareIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v5 = v4;
  BSDispatchMain();
}

void __57__SBUIContinuitySession_didSetDisplayHardwareIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Received display hardware identifier: %{public}@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 96), *(a1 + 32));
}

- (void)didUpdateContinuitySessionStep:(id)a3 reasons:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v10 = v7;
  v8 = v7;
  v9 = v6;
  BSDispatchMain();
}

void __64__SBUIContinuitySession_didUpdateContinuitySessionStep_reasons___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] intValue];
  os_unfair_lock_lock(a1[5] + 6);
  v3 = BSEqualObjects();
  v4 = a1[5];
  v5 = *(v4 + 5);
  objc_storeStrong(v4 + 6, a1[6]);
  *(a1[5] + 5) = v2;
  os_unfair_lock_unlock(a1[5] + 6);
  if (v5 == v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v8 = &stru_1F1D7ED48;
    }

    else
    {
      v8 = @"updated";
    }

    v9 = NSStringFromSBUIContinuitySessionStep(v2);
    v10 = [a1[6] bs_array];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Received %{public}@ state: %{public}@ reasons: %{public}@", &v12, 0x20u);
  }

  if ((v6 & 1) == 0)
  {
    v11 = [a1[5] delegate];
    [v11 continuitySession:a1[5] didUpdateContinuitySessionStep:v2 reasons:a1[6]];
  }
}

- (void)didUpdateCurrentInterfaceOrientation:(id)a3 supportedInterfaceOrientations:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v10 = v7;
  v8 = v7;
  v9 = v6;
  BSDispatchMain();
}

void __93__SBUIContinuitySession_didUpdateCurrentInterfaceOrientation_supportedInterfaceOrientations___block_invoke(id *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] unsignedIntValue];
  v3 = [a1[5] unsignedIntValue];
  v4 = [a1[6] delegate];
  os_unfair_lock_lock(a1[6] + 6);
  v5 = [a1[6] interfaceOrientation];
  v6 = [a1[6] supportedInterfaceOrientations];
  [a1[6] setInterfaceOrientation:v2];
  [a1[6] setSupportedInterfaceOrientations:v3];
  os_unfair_lock_unlock(a1[6] + 6);
  if (v5 != v2 || v6 != v3)
  {
    v7 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = BSInterfaceOrientationDescription();
      v9 = BSInterfaceOrientationMaskDescription();
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Received interfaceOrientation: %{public}@ supportedOrientations: %{public}@", &v10, 0x16u);
    }

    [v4 continuitySession:a1[6] didUpdateCurrentInterfaceOrientation:v2 supportedInterfaceOrientations:v3];
  }
}

- (SBUIContinuitySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)staging_adoptedMacDrivenScreenCaptureNotifications
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (lock_sessionEnded)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring client telling me they adopted screen capture notifications because the session has ended", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Client has adopted screen capture notifications", v6, 2u);
    }

    v4 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v4 clientHasAdoptedScreenCaptureNotifications];
  }
}

@end