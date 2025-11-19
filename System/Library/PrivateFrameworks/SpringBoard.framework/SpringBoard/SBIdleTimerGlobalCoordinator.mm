@interface SBIdleTimerGlobalCoordinator
+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3;
- (BOOL)_areIdleTimerDisableAssertionsPrevented;
- (BOOL)_hasIdleTimerDisableAssertions;
- (BOOL)_updateIdleTimerForReason:(id)a3;
- (BOOL)isIdleTimerDisabled;
- (SBIdleTimerGlobalCoordinator)init;
- (SBIdleTimerGlobalCoordinatorDelegate)delegate;
- (SBIdleTimerProviding)_idleTimerProvider;
- (id)_activeIdleTimerProvider;
- (id)_stateCaptureDescription;
- (id)_updateIdleTimerForProvider:(id)a3 behavior:(id)a4 descriptor:(id)a5 forReason:(id)a6;
- (id)_updateIdleTimerForProvider:(id)a3 behavior:(id)a4 forReason:(id)a5;
- (id)acquireIdleTimerDisableAssertionForReason:(id)a3;
- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5;
- (void)_addStateCaptureHandlers;
- (void)_applyActiveIdleTimerDescriptorForReason:(id)a3;
- (void)_logEffectiveLockTimeout;
- (void)_logTelemetryForIdleTimerUpdatedFromTimer:(id)a3 toTimer:(id)a4 withReason:(id)a5;
- (void)_registerClientDisableAssertionsTestRecipe;
- (void)_registerInternalDisableAssertionsTestRecipe;
- (void)_registerTestRecipes;
- (void)_setIdleTimerProvider:(id)a3;
- (void)_setIdleTimerSourceEnabled:(BOOL)a3 forReason:(id)a4;
- (void)_setIdleTimerWithDescriptor:(id)a3 forReason:(id)a4;
- (void)_unregisterTestRecipes;
- (void)_updateGlobalStateDisableAssertions;
- (void)dealloc;
- (void)idleTimerDidRefresh:(id)a3;
- (void)idleTimerDidResetForUserAttention:(id)a3;
- (void)idleTimerGlobalStateMonitor:(id)a3 changedForReason:(id)a4;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
- (void)resetIdleTimerForReason:(id)a3;
- (void)resetIdleTimerIfCurrentIdealDurationAtLeast:(int64_t)a3 forReason:(id)a4;
- (void)resetIdleTimerIfNonConsecutiveSource:(id)a3 forReason:(id)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)start;
@end

@implementation SBIdleTimerGlobalCoordinator

void __37__SBIdleTimerGlobalCoordinator_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained layoutMonitor:v11 didUpdateDisplayLayout:v7 withContext:v8];
  }
}

- (id)_activeIdleTimerProvider
{
  v2 = +[SBControlCenterCoordinator sharedInstanceIfExists];
  if (+[SBAssistantController isVisible])
  {
    v3 = SBAssistantController;
  }

  else
  {
    v4 = +[SBSyncController sharedInstance];
    v5 = [v4 isInUse];

    if (!v5)
    {
      if ([v2 isVisible])
      {
        [v2 visibleControlCenterController];
      }

      else
      {
        +[SBWorkspace mainWorkspace];
      }
      v6 = ;
      goto LABEL_6;
    }

    v3 = SBSyncController;
  }

  v6 = [(__objc2_class *)v3 sharedInstance];
LABEL_6:
  v7 = v6;

  return v7;
}

- (BOOL)isIdleTimerDisabled
{
  v2 = [(SBIdleTimerGlobalCoordinator *)self idleTimer];
  v3 = [v2 isDisabled];

  return v3;
}

- (void)_updateGlobalStateDisableAssertions
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _updateGlobalStateDisableAssertions]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (SBIdleTimerProviding)_idleTimerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerProvider);

  return WeakRetained;
}

- (SBIdleTimerGlobalCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3
{
  if (a3 && _sharedInstanceCreateIfNeeded__onceToken != -1)
  {
    +[SBIdleTimerGlobalCoordinator _sharedInstanceCreateIfNeeded:];
  }

  v4 = _sharedInstanceCreateIfNeeded__coordinator;

  return v4;
}

void __62__SBIdleTimerGlobalCoordinator__sharedInstanceCreateIfNeeded___block_invoke()
{
  v0 = objc_alloc_init(SBIdleTimerGlobalCoordinator);
  v1 = _sharedInstanceCreateIfNeeded__coordinator;
  _sharedInstanceCreateIfNeeded__coordinator = v0;
}

- (SBIdleTimerGlobalCoordinator)init
{
  v19.receiver = self;
  v19.super_class = SBIdleTimerGlobalCoordinator;
  v2 = [(SBIdleTimerGlobalCoordinator *)&v19 init];
  if (v2)
  {
    v3 = +[SBIdleTimerGlobalStateMonitor sharedInstance];
    globalStateMonitor = v2->_globalStateMonitor;
    v2->_globalStateMonitor = v3;

    v5 = [[SBIdleTimerDescriptorFactory alloc] initWithGlobalStateMonitor:v2->_globalStateMonitor];
    idleTimerDescriptorFactory = v2->_idleTimerDescriptorFactory;
    v2->_idleTimerDescriptorFactory = v5;

    objc_storeWeak(&v2->_idleTimerProvider, 0);
    v7 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:0];
    idleTimerCoordinatorHelper = v2->_idleTimerCoordinatorHelper;
    v2->_idleTimerCoordinatorHelper = v7;

    v2->_idleTimerSourceEnabled = 1;
    v9 = [[SBIdleTimerProxy alloc] initWithIdleTimerSource:0];
    idleTimerProxy = v2->_idleTimerProxy;
    v2->_idleTimerProxy = v9;

    [(SBIdleTimerBase *)v2->_idleTimerProxy addIdleTimerObserver:v2];
    v11 = objc_alloc_init(SBIdleTimerTelemetryEmitter);
    idleTimerTelemetryEmitter = v2->_idleTimerTelemetryEmitter;
    v2->_idleTimerTelemetryEmitter = v11;

    currentDisablingClientBundleIdentifier = v2->_currentDisablingClientBundleIdentifier;
    v2->_currentDisablingClientBundleIdentifier = 0;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    idleTimerDisableAssertions = v2->_idleTimerDisableAssertions;
    v2->_idleTimerDisableAssertions = v14;

    v16 = +[SBIdleTimerDomain rootSettings];
    idleTimerPrototypeSettings = v2->_idleTimerPrototypeSettings;
    v2->_idleTimerPrototypeSettings = v16;

    [(PTSettings *)v2->_idleTimerPrototypeSettings addKeyObserver:v2];
    [(SBIdleTimerGlobalCoordinator *)v2 _addStateCaptureHandlers];
    [(SBIdleTimerGlobalCoordinator *)v2 _registerTestRecipes];
  }

  return v2;
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  [(SBIdleTimerGlobalCoordinator *)self _unregisterTestRecipes];
  v5.receiver = self;
  v5.super_class = SBIdleTimerGlobalCoordinator;
  [(SBIdleTimerGlobalCoordinator *)&v5 dealloc];
}

- (void)start
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerGlobalCoordinator.m" lineNumber:151 description:@"Cannot start if already started."];
}

- (void)resetIdleTimerForReason:(id)a3
{
  v6 = a3;
  if (![v6 length])
  {
    [(SBIdleTimerGlobalCoordinator *)a2 resetIdleTimerForReason:?];
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator resetIdleTimerForReason:];
  }

  if (![(SBIdleTimerGlobalCoordinator *)self _updateIdleTimerForReason:v6])
  {
    v5 = [(SBIdleTimerGlobalCoordinator *)self idleTimer];
    [v5 reset];
  }
}

- (void)resetIdleTimerIfNonConsecutiveSource:(id)a3 forReason:(id)a4
{
  v10 = a3;
  v8 = a4;
  v9 = v10;
  if (!v10)
  {
    [SBIdleTimerGlobalCoordinator resetIdleTimerIfNonConsecutiveSource:a2 forReason:self];
    v9 = 0;
  }

  if (self->_lastResetSource != v9)
  {
    [(SBIdleTimerGlobalCoordinator *)self resetIdleTimerForReason:v8];
    objc_storeStrong(&self->_lastResetSource, a3);
  }
}

- (void)resetIdleTimerIfCurrentIdealDurationAtLeast:(int64_t)a3 forReason:(id)a4
{
  v9 = a4;
  v6 = [(SBIdleTimerGlobalCoordinator *)self _activeIdleTimerProvider];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 coordinatorRequestedIdleTimerBehavior:self];
    if ([v8 idleTimerDuration] >= a3)
    {
      [(SBIdleTimerGlobalCoordinator *)self resetIdleTimerForReason:v9];
    }
  }
}

- (id)acquireIdleTimerDisableAssertionForReason:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator acquireIdleTimerDisableAssertionForReason:];
  }

  idleTimerDisableAssertions = self->_idleTimerDisableAssertions;
  if (!idleTimerDisableAssertions || ([(NSMutableDictionary *)idleTimerDisableAssertions objectForKey:v4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x277CF0CE8]);
    v9 = MEMORY[0x277D85CD0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__SBIdleTimerGlobalCoordinator_acquireIdleTimerDisableAssertionForReason___block_invoke;
    v21[3] = &unk_2783AEA48;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    v6 = [v8 initWithIdentifier:@"DisableIdleTimer" forReason:v4 queue:MEMORY[0x277D85CD0] invalidationBlock:v21];

    v10 = [(SBIdleTimerGlobalCoordinator *)self _idleTimerDisableAssertions];
    v11 = [v10 count];
    [v10 setObject:v6 forKey:v4];
    if (v11)
    {
      v12 = SBLogIdleTimer();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v25 = v14;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Idle timer disable assertion: Added a new idle timer disable assertion for reason: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (![(SBIdleTimerGlobalCoordinator *)self _areIdleTimerDisableAssertionsPrevented])
      {
        v18 = SBLogIdleTimer();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138543618;
          v25 = v20;
          v26 = 2114;
          v27 = v4;
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Idle timer disable assertion: Disabling idle timer for reason: %{public}@", buf, 0x16u);
        }

        [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerSourceEnabled:0 forReason:v4];
        goto LABEL_15;
      }

      v12 = SBLogIdleTimer();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543618;
        v25 = v16;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Idle timer disable assertion: Added a new idle timer disable assertion for reason: %{public}@ but disable is prevented.", buf, 0x16u);
      }
    }

LABEL_15:
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  v7 = SBLogIdleTimer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SBIdleTimerGlobalCoordinator *)self acquireIdleTimerDisableAssertionForReason:v4, v7];
  }

LABEL_16:

  return v6;
}

void __74__SBIdleTimerGlobalCoordinator_acquireIdleTimerDisableAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 reason];
    v6 = [WeakRetained _idleTimerDisableAssertions];
    [v6 removeObjectForKey:v5];
    v7 = [v6 count];
    v8 = SBLogIdleTimer();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v14 = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Idle timer disable assertion: Removed an idle timer disable assertion for reason: %{public}@", &v14, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138543618;
        v15 = v13;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Idle timer disable assertion: Reenabling idle timer as last disable assertion removed for reason: %{public}@", &v14, 0x16u);
      }

      [WeakRetained _setIdleTimerSourceEnabled:1 forReason:v5];
    }
  }
}

- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator idleTimerProvider:didProposeBehavior:forReason:];
  }

  v11 = [(SBIdleTimerGlobalCoordinator *)self _activeIdleTimerProvider];
  if (v11 == v8)
  {
    v14 = [SBIdleTimerBehavior behaviorForBehaviorProvider:v9];
    v13 = [(SBIdleTimerGlobalCoordinator *)self _updateIdleTimerForProvider:v8 behavior:v14 forReason:v10];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_idleTimerProvider);

    if (v11 != WeakRetained)
    {
      [(SBIdleTimerGlobalCoordinator *)self _updateIdleTimerForReason:@"ActiveProviderChanged"];
    }

    v13 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:v8 behavior:v9 reason:v10];
  }

  return v13;
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = SBLogIdleTimer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%{public}@ - layoutMonitor:didUpdateDisplayLayout]", buf, 0xCu);
  }

  BSDispatchMain();
}

void __81__SBIdleTimerGlobalCoordinator_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeIdleTimerProvider];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 coordinatorRequestedIdleTimerBehavior:*(a1 + 32)];
    v4 = [SBIdleTimerBehavior behaviorForBehaviorProvider:v3];
    v5 = [*(*(a1 + 32) + 8) idleTimerDescriptorForBehavior:v4];
    if (([v5 isEqual:*(*(a1 + 32) + 40)] & 1) == 0)
    {
      [*(a1 + 32) _setIdleTimerProvider:v7];
      v6 = [*(a1 + 32) _updateIdleTimerForProvider:v7 behavior:v4 descriptor:v5 forReason:@"LayoutMonitorDidUpdateDisplayLayout"];
    }

    v2 = v7;
  }
}

- (void)_logEffectiveLockTimeout
{
  if (![(SBIdleTimerGlobalCoordinator *)self isIdleTimerDisabled])
  {
    enabledIdleTimerDescriptor = self->_enabledIdleTimerDescriptor;
    if (enabledIdleTimerDescriptor)
    {
      [(SBIdleTimerDescriptor *)enabledIdleTimerDescriptor totalInterval];
    }
  }

  AnalyticsSendEventLazy();
}

id __56__SBIdleTimerGlobalCoordinator__logEffectiveLockTimeout__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"lockTimeout";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)_hasIdleTimerDisableAssertions
{
  v2 = [(SBIdleTimerGlobalCoordinator *)self _idleTimerDisableAssertions];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_areIdleTimerDisableAssertionsPrevented
{
  v2 = [(SBIdleTimerGlobalStateMonitor *)self->_globalStateMonitor aggregatedClientConfiguration];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 maxExpirationTimeoutSettings];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 highestPrecedence] > 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_updateIdleTimerForReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _updateIdleTimerForReason:];
  }

  v5 = SBLogIdleTimer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - updateIdleTimerForReason:%{public}@]", &v17, 0x16u);
  }

  [(SBIdleTimerGlobalCoordinator *)self _updateGlobalStateDisableAssertions];
  v8 = [(SBIdleTimerGlobalCoordinator *)self _activeIdleTimerProvider];
  if (v8)
  {
    v9 = [(SBIdleTimerGlobalCoordinator *)self _idleTimerProvider];

    if (v8 != v9)
    {
      [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerProvider:v8];
    }

    v10 = [v8 coordinatorRequestedIdleTimerBehavior:self];
    v11 = [SBIdleTimerBehavior behaviorForBehaviorProvider:v10];
    v12 = [(SBIdleTimerDescriptorFactory *)self->_idleTimerDescriptorFactory idleTimerDescriptorForBehavior:v11];
    v13 = v12;
    if (v8 == v9 && ([v12 isEqual:self->_enabledIdleTimerDescriptor] & 1) != 0)
    {
      v14 = 0;
    }

    else
    {
      v15 = [(SBIdleTimerGlobalCoordinator *)self _updateIdleTimerForProvider:v8 behavior:v11 descriptor:v13 forReason:v4];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setIdleTimerProvider:(id)a3
{
  obj = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _setIdleTimerProvider:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_idleTimerProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_idleTimerProvider, obj);
    v5 = obj;
  }
}

- (id)_updateIdleTimerForProvider:(id)a3 behavior:(id)a4 descriptor:(id)a5 forReason:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _updateIdleTimerForProvider:behavior:descriptor:forReason:];
  }

  [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerProvider:v10];
  v14 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper idleTimerProxyForProvider:v10];
  if (v14)
  {
    v15 = v14;
    v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:v10 behavior:v11 reason:v13];
  }

  else
  {
    v15 = [[SBIdleTimerProxy alloc] initWithIdleTimerSource:0];
    [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper bindProvider:v10 toSourceTimer:v15 behavior:v11 forReason:v13];
  }

  [(SBIdleTimerProxy *)self->_enabledIdleTimerProxy setSourceTimer:0];
  objc_storeStrong(&self->_enabledIdleTimerProxy, v15);
  objc_storeStrong(&self->_enabledIdleTimerDescriptor, a5);
  idleTimerSourceEnabled = self->_idleTimerSourceEnabled;
  v18 = SBLogIdleTimer();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (idleTimerSourceEnabled)
  {
    if (v19)
    {
      enabledIdleTimerDescriptor = self->_enabledIdleTimerDescriptor;
      v23 = 138543618;
      v24 = enabledIdleTimerDescriptor;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "applying updated idle timer descriptor: %{public}@ reason:%{public}@", &v23, 0x16u);
    }

    [(SBIdleTimerGlobalCoordinator *)self _applyActiveIdleTimerDescriptorForReason:v13];
  }

  else
  {
    if (v19)
    {
      v21 = self->_enabledIdleTimerDescriptor;
      v23 = 138543618;
      v24 = v21;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "not applying updated idle timer descriptor: %{public}@ reason:%{public}@", &v23, 0x16u);
    }
  }

  return v15;
}

- (id)_updateIdleTimerForProvider:(id)a3 behavior:(id)a4 forReason:(id)a5
{
  v8 = MEMORY[0x277CCACC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (([v8 isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _updateIdleTimerForProvider:behavior:forReason:];
  }

  v12 = [(SBIdleTimerDescriptorFactory *)self->_idleTimerDescriptorFactory idleTimerDescriptorForBehavior:v10];
  v13 = [(SBIdleTimerGlobalCoordinator *)self _updateIdleTimerForProvider:v11 behavior:v10 descriptor:v12 forReason:v9];

  return v13;
}

- (void)_setIdleTimerSourceEnabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _setIdleTimerSourceEnabled:forReason:];
  }

  if (self->_idleTimerSourceEnabled != v4)
  {
    self->_idleTimerSourceEnabled = v4;
    [(SBIdleTimerGlobalCoordinator *)self _applyActiveIdleTimerDescriptorForReason:v6];
  }
}

- (void)_applyActiveIdleTimerDescriptorForReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _applyActiveIdleTimerDescriptorForReason:];
  }

  idleTimerSourceEnabled = self->_idleTimerSourceEnabled;
  v6 = SBLogIdleTimer();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (idleTimerSourceEnabled)
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "_applyActiveIdleTimerDescriptorForReason:%{public}@ enabled", &v9, 0xCu);
    }

    [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerWithDescriptor:self->_enabledIdleTimerDescriptor forReason:v4];
    [(SBIdleTimerProxy *)self->_enabledIdleTimerProxy setSourceTimer:self->_idleTimerProxy];
  }

  else
  {
    if (v7)
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "_applyActiveIdleTimerDescriptorForReason:%{public}@ disabled", &v9, 0xCu);
    }

    [(SBIdleTimerProxy *)self->_enabledIdleTimerProxy setSourceTimer:0];
    v8 = +[SBIdleTimerDescriptorFactory disabledIdleTimerDescriptor];
    [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerWithDescriptor:v8 forReason:v4];
  }
}

- (void)_setIdleTimerWithDescriptor:(id)a3 forReason:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBIdleTimerGlobalCoordinator _setIdleTimerWithDescriptor:forReason:];
  }

  v8 = SBLogIdleTimer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "_setIdleTimerWithDescriptor:%{public}@ reason:%{public}@]", &v14, 0x16u);
  }

  v9 = [(SBIdleTimerGlobalCoordinator *)self _activeIdleTimerProvider];
  [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerProvider:v9];

  v10 = [(SBIdleTimerGlobalCoordinator *)self idleTimer];
  LOBYTE(v14) = 0;
  v11 = [SBIdleTimerFactory idleTimerForDescriptor:v6 didLogDescriptor:&v14];
  if (v11 == v10)
  {
    v13 = SBLogIdleTimer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(SBIdleTimerGlobalCoordinator *)self _setIdleTimerWithDescriptor:v11 forReason:v13];
    }
  }

  else
  {
    if ((v14 & 1) == 0)
    {
      v12 = SBLogIdleTimer();
      [v6 logAuditReasons:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setActivated:0];
    }

    [(SBIdleTimerProxy *)self->_idleTimerProxy setSourceTimer:v11];
    if (objc_opt_respondsToSelector())
    {
      [v11 setActivated:1];
    }

    v13 = [(SBIdleTimerGlobalCoordinator *)self delegate];
    [v13 idleTimerGlobalCoordinator:self didActivateIdleTimer:v11];
  }

  [(SBIdleTimerGlobalCoordinator *)self _logTelemetryForIdleTimerUpdatedFromTimer:v10 toTimer:v11 withReason:v7];
  [v11 reset];
}

- (void)_addStateCaptureHandlers
{
  v5 = self;
  v2 = v5;
  v3 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = v2->_stateCaptureAssertion;
  v2->_stateCaptureAssertion = v3;
}

__CFString *__56__SBIdleTimerGlobalCoordinator__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 _stateCaptureDescription];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

- (id)_stateCaptureDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__SBIdleTimerGlobalCoordinator__stateCaptureDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  v5 = [v4 build];

  return v5;
}

void __56__SBIdleTimerGlobalCoordinator__stateCaptureDescription__block_invoke(uint64_t a1)
{
  v10 = [*(*(a1 + 32) + 160) allValues];
  [*(a1 + 40) appendArraySection:v10 withName:@"DisabledAssertions" skipIfEmpty:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) idleTimer];
  v4 = [*(a1 + 40) activeMultilinePrefix];
  v5 = [v3 stateCaptureDescriptionWithMultilinePrefix:v4];
  v6 = [v2 appendObject:v5 withName:@"IdleTimer"];

  v7 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  v9 = [v7 appendObject:WeakRetained withName:@"IdleTimerProvider"];
}

- (void)_logTelemetryForIdleTimerUpdatedFromTimer:(id)a3 toTimer:(id)a4 withReason:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 isDisabled])
  {
    if (([v9 hasPrefix:@"IdleTimerDisableChangedForSceneManager - client:"] & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"IdleTimerServiceTimeoutAssertionsDidChange - client:"))
    {
      if ([v9 hasPrefix:@"IdleTimerDisableChangedForSceneManager - client:"])
      {
        v10 = [v9 substringFromIndex:{objc_msgSend(@"IdleTimerDisableChangedForSceneManager - client:", "length")}];
      }

      else
      {
        v10 = 0;
      }

      if ([v9 hasPrefix:@"IdleTimerServiceTimeoutAssertionsDidChange - client:"])
      {
        v11 = [v9 substringFromIndex:{objc_msgSend(@"IdleTimerServiceTimeoutAssertionsDidChange - client:", "length")}];

        v10 = v11;
      }
    }

    else
    {
      v10 = @"com.apple.springboard";
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [v17 isDisabled];
  if (v12 != [v8 isDisabled] || !BSEqualStrings() || objc_msgSend(v9, "hasSuffix:", @"AutoLockTimeout"))
  {
    idleTimerTelemetryEmitter = self->_idleTimerTelemetryEmitter;
    v14 = [v8 isDisabled];
    v15 = [(SBIdleTimerGlobalStateMonitor *)self->_globalStateMonitor autoLockTimeout];
    [(SBIdleTimerTelemetryEmitter *)idleTimerTelemetryEmitter logTelemetryForUpdatedIdleTimerState:v14 disablingClientBundleIdentifier:v10 autoLockTimeoutDuration:v15];
  }

  currentDisablingClientBundleIdentifier = self->_currentDisablingClientBundleIdentifier;
  self->_currentDisablingClientBundleIdentifier = &v10->isa;
}

- (void)idleTimerGlobalStateMonitor:(id)a3 changedForReason:(id)a4
{
  v6 = a4;
  [(SBIdleTimerGlobalCoordinator *)self _updateIdleTimerForReason:?];
  if ([(SBIdleTimerGlobalCoordinator *)self _hasIdleTimerDisableAssertions])
  {
    v5 = [(SBIdleTimerGlobalCoordinator *)self _areIdleTimerDisableAssertionsPrevented];
  }

  else
  {
    v5 = 1;
  }

  if (self->_idleTimerSourceEnabled != v5)
  {
    [SBIdleTimerGlobalCoordinator _setIdleTimerSourceEnabled:"_setIdleTimerSourceEnabled:forReason:" forReason:?];
  }
}

- (void)idleTimerDidRefresh:(id)a3
{
  lastResetSource = self->_lastResetSource;
  self->_lastResetSource = 0;
}

- (void)idleTimerDidResetForUserAttention:(id)a3
{
  lastResetSource = self->_lastResetSource;
  self->_lastResetSource = 0;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_idleTimerPrototypeSettings == a3)
  {
    BSDispatchMain();
  }
}

- (void)_registerTestRecipes
{
  [(SBIdleTimerGlobalCoordinator *)self _registerClientDisableAssertionsTestRecipe];

  [(SBIdleTimerGlobalCoordinator *)self _registerInternalDisableAssertionsTestRecipe];
}

- (void)_unregisterTestRecipes
{
  clientDisableAssertionsTestRecipe = self->_clientDisableAssertionsTestRecipe;
  if (clientDisableAssertionsTestRecipe)
  {
    [(PTTestRecipe *)clientDisableAssertionsTestRecipe invalidate];
    v4 = self->_clientDisableAssertionsTestRecipe;
    self->_clientDisableAssertionsTestRecipe = 0;
  }

  internalDisableAssertionsTestRecipe = self->_internalDisableAssertionsTestRecipe;
  if (internalDisableAssertionsTestRecipe)
  {
    [(PTTestRecipe *)internalDisableAssertionsTestRecipe invalidate];
    v6 = self->_internalDisableAssertionsTestRecipe;
    self->_internalDisableAssertionsTestRecipe = 0;
  }
}

- (void)_registerClientDisableAssertionsTestRecipe
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__73;
  v9[4] = __Block_byref_object_dispose__73;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke;
  v8[3] = &unk_2783A9718;
  v8[4] = v9;
  v6[4] = v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_2;
  v7[3] = &unk_2783AA618;
  v7[4] = self;
  v7[5] = v9;
  v7[6] = a2;
  v5[4] = v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_110;
  v6[3] = &unk_2783A9718;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_2_111;
  v5[3] = &unk_2783A9718;
  v3 = [MEMORY[0x277D431C8] recipeWithTitle:@"Client Disable IdleTimer Assertions" prepareBlock:v8 increaseAction:v7 decreaseAction:v6 cleanupBlock:v5];
  clientDisableAssertionsTestRecipe = self->_clientDisableAssertionsTestRecipe;
  self->_clientDisableAssertionsTestRecipe = v3;

  [(PTDomain *)SBIdleTimerDomain registerTestRecipe:self->_clientDisableAssertionsTestRecipe];
  _Block_object_dispose(v9, 8);
}

void __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_2(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ClientIdleTimerTestRecipe:%ld", objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count") + 1];
  v3 = [MEMORY[0x277D1B260] sharedInstance];
  v7 = 0;
  v4 = [v3 newAssertionToDisableIdleTimerForReason:v2 error:&v7];
  v5 = v7;

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  else
  {
    v6 = SBLogIdleTimer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_2_cold_1(a1, v5, v6);
    }
  }
}

void __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_110(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = [*(*(*(a1 + 32) + 8) + 40) lastObject];
  if (v2)
  {
    v3 = v2;
    [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    [v3 invalidate];
    v2 = v3;
  }
}

void __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_2_111(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)_registerInternalDisableAssertionsTestRecipe
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__73;
  v9[4] = __Block_byref_object_dispose__73;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke;
  v8[3] = &unk_2783A9718;
  v8[4] = v9;
  v6[4] = v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke_2;
  v7[3] = &unk_2783A9718;
  v7[4] = v9;
  v5[4] = v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke_3;
  v6[3] = &unk_2783A9718;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke_4;
  v5[3] = &unk_2783A9718;
  v3 = [MEMORY[0x277D431C8] recipeWithTitle:@"Internal Disable IdleTimer Assertions" prepareBlock:v8 increaseAction:v7 decreaseAction:v6 cleanupBlock:v5];
  internalDisableAssertionsTestRecipe = self->_internalDisableAssertionsTestRecipe;
  self->_internalDisableAssertionsTestRecipe = v3;

  [(PTDomain *)SBIdleTimerDomain registerTestRecipe:self->_internalDisableAssertionsTestRecipe];
  _Block_object_dispose(v9, 8);
}

void __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke_2(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"InternalIdleTimerTestRecipe:%ld", objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "count") + 1];
  v2 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  v3 = [v2 acquireIdleTimerDisableAssertionForReason:v4];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
}

void __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke_3(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = [*(*(*(a1 + 32) + 8) + 40) lastObject];
  if (v2)
  {
    v3 = v2;
    [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    [v3 invalidate];
    v2 = v3;
  }
}

void __76__SBIdleTimerGlobalCoordinator__registerInternalDisableAssertionsTestRecipe__block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)resetIdleTimerForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerGlobalCoordinator.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"[reason length] > 0"}];
}

- (void)resetIdleTimerForReason:.cold.2()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator resetIdleTimerForReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)resetIdleTimerIfNonConsecutiveSource:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerGlobalCoordinator.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"source"}];
}

- (void)acquireIdleTimerDisableAssertionForReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator acquireIdleTimerDisableAssertionForReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)acquireIdleTimerDisableAssertionForReason:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ - Idle timer disable assertion: Requested again for an existing reason without first being invalidated: %{public}@", &v7, 0x16u);
}

- (void)idleTimerProvider:didProposeBehavior:forReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator idleTimerProvider:didProposeBehavior:forReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_updateIdleTimerForReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _updateIdleTimerForReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_setIdleTimerProvider:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _setIdleTimerProvider:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_updateIdleTimerForProvider:behavior:descriptor:forReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _updateIdleTimerForProvider:behavior:descriptor:forReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_updateIdleTimerForProvider:behavior:forReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _updateIdleTimerForProvider:behavior:forReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_setIdleTimerSourceEnabled:forReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _setIdleTimerSourceEnabled:forReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_applyActiveIdleTimerDescriptorForReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _applyActiveIdleTimerDescriptorForReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_setIdleTimerWithDescriptor:forReason:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBIdleTimerGlobalCoordinator _setIdleTimerWithDescriptor:forReason:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_setIdleTimerWithDescriptor:(NSObject *)a3 forReason:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ - ignoring attempted set of same idle timer impl (%{public}@)", &v8, 0x16u);
}

void __74__SBIdleTimerGlobalCoordinator__registerClientDisableAssertionsTestRecipe__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(*(a1 + 48));
  v9 = 138543874;
  v10 = v7;
  v11 = 2114;
  v12 = v8;
  v13 = 2114;
  v14 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ - %{public}@ failed to acquire assertion with error: %{public}@]", &v9, 0x20u);
}

@end