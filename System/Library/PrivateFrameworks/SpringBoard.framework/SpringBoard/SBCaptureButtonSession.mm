@interface SBCaptureButtonSession
- (SBCaptureButtonSession)initWithInteraction:(id)interaction delegate:(id)delegate appInteractionEventSource:(id)source displayLayoutPublisher:(id)publisher;
- (void)_handleNotification:(id)notification;
- (void)_sealIntentionalLaunch;
- (void)_sealIntentionalMitigation;
- (void)_sealLowConfidenceIntentionalLaunch;
- (void)_sealUnintentionalLaunch;
- (void)_sealWithReason:(id)reason block:(id)block;
- (void)_startCountdown;
- (void)coalesceInteraction:(id)interaction;
- (void)dealloc;
- (void)eventSource:(id)source userTouchedApplication:(id)application;
- (void)invalidate;
- (void)logInteractionIntentions;
- (void)logToCoreAnalytics;
- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition;
@end

@implementation SBCaptureButtonSession

- (SBCaptureButtonSession)initWithInteraction:(id)interaction delegate:(id)delegate appInteractionEventSource:(id)source displayLayoutPublisher:(id)publisher
{
  v33[1] = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  delegateCopy = delegate;
  sourceCopy = source;
  publisherCopy = publisher;
  v32.receiver = self;
  v32.super_class = SBCaptureButtonSession;
  v14 = [(SBCaptureButtonSession *)&v32 init];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v33[0] = interactionCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v17 = [v15 initWithArray:v16];
    interactions = v14->_interactions;
    v14->_interactions = v17;

    context = [interactionCopy context];
    captureAppBundleID = [context captureAppBundleID];
    captureAppBundleID = v14->_captureAppBundleID;
    v14->_captureAppBundleID = captureAppBundleID;

    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_sealed = 0;
    v14->_inCaptureApp = 0;
    v22 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"com.apple.SpringBoard.CaptureButton.SessionTimer"];
    timer = v14->_timer;
    v14->_timer = v22;

    v24 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"com.apple.SpringBoard.CaptureButton.CaptureAppInteractionTimer"];
    captureAppInteractionTimer = v14->_captureAppInteractionTimer;
    v14->_captureAppInteractionTimer = v24;

    [publisherCopy addObserver:v14];
    objc_storeWeak(&v14->_displayLayoutPublisher, publisherCopy);
    objc_storeWeak(&v14->_displayAppInteractionEventSource, sourceCopy);
    [sourceCopy addObserver:v14];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__handleNotification_ name:@"SBVolumeHardwareButtonIncreaseNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v14 selector:sel__handleNotification_ name:@"SBVolumeHardwareButtonDecreaseNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v14 selector:sel__handleNotification_ name:@"SBCaptureHardwareButtonPressNotification" object:0];

    v29 = SBLogCameraCaptureSessionLogs();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
      _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "New capture button interaction session created.", v31, 2u);
    }

    [(SBCaptureButtonSession *)v14 _startCountdown];
  }

  return v14;
}

- (void)dealloc
{
  [(SBCaptureButtonSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBCaptureButtonSession;
  [(SBCaptureButtonSession *)&v3 dealloc];
}

- (void)invalidate
{
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  [(BSAbsoluteMachTimer *)self->_captureAppInteractionTimer invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBVolumeHardwareButtonIncreaseNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"SBVolumeHardwareButtonDecreaseNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:@"SBCaptureHardwareButtonPressNotification" object:0];

  WeakRetained = objc_loadWeakRetained(&self->_displayLayoutPublisher);
  [WeakRetained removeObserver:self];

  v7 = objc_loadWeakRetained(&self->_displayAppInteractionEventSource);
  [v7 removeObserver:self];
}

- (void)coalesceInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (![(SBCaptureButtonSession *)self isActive])
  {
    [(SBCaptureButtonSession *)a2 coalesceInteraction:?];
  }

  v6 = SBLogCameraCaptureSessionLogs();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Coalescing interaction.", v7, 2u);
  }

  [(SBCaptureButtonSession *)self _startCountdown];
  [(NSMutableArray *)self->_interactions addObject:interactionCopy];
}

- (void)logToCoreAnalytics
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_interactions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) logToCoreAnalytics];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = SBLogCameraCaptureSessionLogs();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Session logged to CoreAnalytics.", v8, 2u);
  }
}

- (void)logInteractionIntentions
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_interactions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = SBLogCameraCaptureStudyLogs();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          context = [v7 context];
          machAbsoluteTimestamp = [context machAbsoluteTimestamp];
          intention = [v7 intention];
          *buf = 134218240;
          v18 = machAbsoluteTimestamp;
          v19 = 2048;
          v20 = intention;
          _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "{machAbsoluteTimestamp: %llu, intention: %lu}", buf, 0x16u);
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = SBLogCameraCaptureSessionLogs();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Logged interaction intentions to the serial output.", buf, 2u);
  }
}

- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition
{
  elements = [layout elements];
  lastObject = [elements lastObject];
  bundleIdentifier = [lastObject bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:self->_captureAppBundleID];

  if (self->_inCaptureApp || !v9)
  {
    if (!(v9 & 1 | !self->_inCaptureApp))
    {
      self->_inCaptureApp = 0;
      v11 = SBLogCameraCaptureSessionLogs();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Closed capture app.", v12, 2u);
      }

      [(SBCaptureButtonSession *)self _sealUnintentionalLaunch];
    }
  }

  else
  {
    self->_inCaptureApp = 1;
    [(SBCaptureButtonSession *)self _startCaptureInteractionTimer];
    v10 = SBLogCameraCaptureSessionLogs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Launched capture app.", buf, 2u);
    }
  }
}

- (void)eventSource:(id)source userTouchedApplication:(id)application
{
  if ([application isEqualToString:self->_captureAppBundleID] && self->_inCaptureApp && !-[BSAbsoluteMachTimer isScheduled](self->_captureAppInteractionTimer, "isScheduled"))
  {
    v5 = SBLogCameraCaptureSessionLogs();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Interacted with capture app.", v6, 2u);
    }

    [(SBCaptureButtonSession *)self _sealIntentionalLaunch];
  }
}

- (void)_startCountdown
{
  objc_initWeak(&location, self);
  timer = self->_timer;
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SBCaptureButtonSession__startCountdown__block_invoke;
  v6[3] = &unk_2783A9918;
  objc_copyWeak(&v7, &location);
  [(BSAbsoluteMachTimer *)timer scheduleWithFireInterval:v4 leewayInterval:v6 queue:7.5 handler:0.0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__SBCaptureButtonSession__startCountdown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained isActive])
  {
    v3 = v2[48];
    v4 = SBLogCameraCaptureSessionLogs();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Countdown timer expired while in capture app.", buf, 2u);
      }

      [v2 _sealLowConfidenceIntentionalLaunch];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Countdown timer expired while NOT in capture app.", v6, 2u);
      }

      [v2 _sealIntentionalMitigation];
    }
  }
}

- (void)_handleNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  if (([name isEqualToString:@"SBVolumeHardwareButtonIncreaseNotification"] & 1) == 0)
  {
    name2 = [notificationCopy name];
    if (![name2 isEqualToString:@"SBVolumeHardwareButtonDecreaseNotification"])
    {
      name3 = [notificationCopy name];
      v9 = [name3 isEqualToString:@"SBCaptureHardwareButtonPressNotification"];

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (self->_inCaptureApp)
  {
    v7 = SBLogCameraCaptureSessionLogs();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Interacted with app using hardware buttons.", v10, 2u);
    }

    [(SBCaptureButtonSession *)self _sealIntentionalLaunch];
  }

LABEL_10:
}

- (void)_sealIntentionalLaunch
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__SBCaptureButtonSession__sealIntentionalLaunch__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCaptureButtonSession *)self _sealWithReason:@"intentional launch" block:v2];
}

void __48__SBCaptureButtonSession__sealIntentionalLaunch__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 launched])
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        [v6 setIntention:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_sealLowConfidenceIntentionalLaunch
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SBCaptureButtonSession__sealLowConfidenceIntentionalLaunch__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCaptureButtonSession *)self _sealWithReason:@"low confidence intentional launch" block:v2];
}

void __61__SBCaptureButtonSession__sealLowConfidenceIntentionalLaunch__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 launched])
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }

        [v6 setIntention:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_sealUnintentionalLaunch
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__SBCaptureButtonSession__sealUnintentionalLaunch__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCaptureButtonSession *)self _sealWithReason:@"unintentional launch" block:v2];
}

void __50__SBCaptureButtonSession__sealUnintentionalLaunch__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 launched])
        {
          v7 = 2;
        }

        else
        {
          v7 = 1;
        }

        [v6 setIntention:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_sealIntentionalMitigation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__SBCaptureButtonSession__sealIntentionalMitigation__block_invoke;
  v2[3] = &unk_2783A8C18;
  v2[4] = self;
  [(SBCaptureButtonSession *)self _sealWithReason:@"intentional mitigation" block:v2];
}

void __52__SBCaptureButtonSession__sealIntentionalMitigation__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 8);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ([v6 mitigated])
        {
          [v6 setIntention:1];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_sealWithReason:(id)reason block:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  blockCopy = block;
  v8 = SBLogCameraCaptureSessionLogs();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to seal %{public}@.", &v11, 0xCu);
  }

  if (self->_sealed)
  {
    WeakRetained = SBLogCameraCaptureSessionLogs();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      [SBCaptureButtonSession _sealWithReason:? block:?];
    }
  }

  else
  {
    self->_sealed = 1;
    [(SBCaptureButtonSession *)self invalidate];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    v10 = SBLogCameraCaptureSessionLogs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Sealed %{public}@.", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionDidFinalize:self];
  }
}

- (void)coalesceInteraction:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent coalesce message to a session that is NOT active."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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
    v15 = @"SBCaptureButtonSession.m";
    v16 = 1024;
    v17 = 99;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end