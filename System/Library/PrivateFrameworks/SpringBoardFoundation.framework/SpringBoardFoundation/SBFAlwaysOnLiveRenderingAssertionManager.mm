@interface SBFAlwaysOnLiveRenderingAssertionManager
- (NSString)debugDescription;
- (NSString)description;
- (SBFAlwaysOnLiveRenderingAssertionManager)initWithBacklight:(id)backlight assertionProvider:(id)provider attributesProvider:(id)attributesProvider;
- (id)acquireLiveRenderingAssertionWithReason:(id)reason;
- (void)_acquireLiveRenderingAssertionIfNeededForProxy:(id)proxy backlight:(id)backlight;
- (void)_acquireLiveRenderingAssertionProxy:(id)proxy;
- (void)_invalidateWithReason:(id)reason;
- (void)_releaseLiveRenderingAssertionProxy:(id)proxy;
- (void)_releaseLiveRenderingAssertionWithReason:(id)reason;
- (void)assertion:(id)assertion didCancelWithError:(id)error;
- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error;
- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled;
- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event;
- (void)dealloc;
@end

@implementation SBFAlwaysOnLiveRenderingAssertionManager

- (SBFAlwaysOnLiveRenderingAssertionManager)initWithBacklight:(id)backlight assertionProvider:(id)provider attributesProvider:(id)attributesProvider
{
  backlightCopy = backlight;
  providerCopy = provider;
  attributesProviderCopy = attributesProvider;
  v17.receiver = self;
  v17.super_class = SBFAlwaysOnLiveRenderingAssertionManager;
  v12 = [(SBFAlwaysOnLiveRenderingAssertionManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_backlight, backlight);
    objc_storeStrong(&v13->_assertionProvider, provider);
    objc_storeStrong(&v13->_attributesProvider, attributesProvider);
    v14 = objc_alloc_init(SBFAlwaysOnLiveRenderingAssertionWeakCollection);
    liveRenderingAssertionProxies = v13->_liveRenderingAssertionProxies;
    v13->_liveRenderingAssertionProxies = v14;

    [(BLSBacklightStateObservable *)v13->_backlight addObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SBLogLiveRendering();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_INFO, "Deallocated %@", buf, 0xCu);
  }

  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _invalidateWithReason:@"dealloc"];
  v4.receiver = self;
  v4.super_class = SBFAlwaysOnLiveRenderingAssertionManager;
  [(SBFAlwaysOnLiveRenderingAssertionManager *)&v4 dealloc];
}

- (id)acquireLiveRenderingAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v5 = [SBFAlwaysOnLiveRenderingAssertion alloc];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __84__SBFAlwaysOnLiveRenderingAssertionManager_acquireLiveRenderingAssertionWithReason___block_invoke;
  v11 = &unk_1E807F5E8;
  objc_copyWeak(&v12, &location);
  v6 = [(SBFAlwaysOnLiveRenderingAssertion *)v5 initWithReason:reasonCopy timeout:&v8 invalidationHandler:10.0];
  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _acquireLiveRenderingAssertionProxy:v6, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __84__SBFAlwaysOnLiveRenderingAssertionManager_acquireLiveRenderingAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _releaseLiveRenderingAssertionProxy:v5];
  }
}

- (void)_invalidateWithReason:(id)reason
{
  liveRenderingAssertionProxies = self->_liveRenderingAssertionProxies;
  reasonCopy = reason;
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)liveRenderingAssertionProxies invalidateAll];
  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:reasonCopy];
}

- (void)_acquireLiveRenderingAssertionProxy:(id)proxy
{
  v11 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_liveRenderingAssertionProxies addAssertion:proxyCopy];
  v5 = SBLogLiveRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = proxyCopy;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "%@ Acquired live-rendering %@", &v7, 0x16u);
  }

  backlight = [(SBFAlwaysOnLiveRenderingAssertionManager *)self backlight];
  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _acquireLiveRenderingAssertionIfNeededForProxy:proxyCopy backlight:backlight];
}

- (void)_releaseLiveRenderingAssertionProxy:(id)proxy
{
  v10 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_liveRenderingAssertionProxies removeAssertion:proxyCopy];
  v5 = SBLogLiveRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = proxyCopy;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "%@ Released live-rendering  %@", &v6, 0x16u);
  }

  if ([(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_liveRenderingAssertionProxies isEmpty])
  {
    [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:@"All live-rendering assertion proxies have been released"];
  }
}

- (void)_acquireLiveRenderingAssertionIfNeededForProxy:(id)proxy backlight:(id)backlight
{
  v35 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  backlightCopy = backlight;
  if (!proxyCopy || ([proxyCopy isValid] & 1) == 0)
  {
    assertionAttributes = SBLogLiveRendering();
    if (os_log_type_enabled(assertionAttributes, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      selfCopy6 = self;
      _os_log_impl(&dword_1BEA11000, assertionAttributes, OS_LOG_TYPE_INFO, "%@ Ignoring live-rendering assertion acquisition request because of there are no valid pending proxies", &v27, 0xCu);
    }

    goto LABEL_21;
  }

  assertionAttributes = [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)self->_attributesProvider assertionAttributes];
  if (![assertionAttributes count])
  {
    v12 = SBLogLiveRendering();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SBFAlwaysOnLiveRenderingAssertionManager *)self _acquireLiveRenderingAssertionIfNeededForProxy:proxyCopy backlight:v12];
    }

    goto LABEL_20;
  }

  if ([backlightCopy backlightState] != 1)
  {
    v12 = SBLogLiveRendering();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    [backlightCopy backlightState];
    v14 = NSStringFromBLSBacklightState();
    v27 = 138412802;
    selfCopy6 = self;
    v29 = 2112;
    v30 = proxyCopy;
    v31 = 2112;
    v32 = v14;
    v16 = "%@ Ignoring live-rendering assertion acquisition request for %@ because backlight state is %@";
LABEL_18:
    v17 = v12;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 32;
LABEL_19:
    _os_log_impl(&dword_1BEA11000, v17, v18, v16, &v27, v19);

    goto LABEL_20;
  }

  if (![backlightCopy flipbookState])
  {
    v12 = SBLogLiveRendering();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    [backlightCopy flipbookState];
    v14 = NSStringFromBLSFlipbookState();
    v27 = 138412802;
    selfCopy6 = self;
    v29 = 2112;
    v30 = proxyCopy;
    v31 = 2112;
    v32 = v14;
    v16 = "%@ Ignoring live-rendering assertion acquisition request for %@ because flipbook state is %@";
    goto LABEL_18;
  }

  liveRenderingAssertion = self->_liveRenderingAssertion;
  if (liveRenderingAssertion)
  {
    isAcquired = [(BLSAssertion *)liveRenderingAssertion isAcquired];
    v11 = self->_liveRenderingAssertion;
    if (isAcquired)
    {
      [(BLSAssertion *)v11 restartTimeoutTimer];
      v12 = SBLogLiveRendering();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = self->_liveRenderingAssertion;
        v27 = 138413058;
        selfCopy6 = self;
        v29 = 2112;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        v33 = 2112;
        v34 = proxyCopy;
        v16 = "%@ Tickled live-rendering <%@; %p> for %@";
        v17 = v12;
        v18 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
        v19 = 42;
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v11)
    {
      v12 = SBLogLiveRendering();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v20 = objc_opt_class();
      v14 = NSStringFromClass(v20);
      v21 = self->_liveRenderingAssertion;
      v27 = 138413058;
      selfCopy6 = self;
      v29 = 2112;
      v30 = proxyCopy;
      v31 = 2112;
      v32 = v14;
      v33 = 2048;
      v34 = v21;
      v16 = "%@ Ignoring live-rendering assertion acquisition for %@ because <%@; %p> is pending acquisition";
      v17 = v12;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_25;
    }
  }

  v22 = SBLogLiveRendering();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v27 = 138412546;
    selfCopy6 = self;
    v29 = 2112;
    v30 = proxyCopy;
    _os_log_impl(&dword_1BEA11000, v22, OS_LOG_TYPE_INFO, "%@ Will acquire live-rendering assertion for %@", &v27, 0x16u);
  }

  assertionProvider = self->_assertionProvider;
  reason = [proxyCopy reason];
  v25 = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)assertionProvider acquireWithExplanation:reason attributes:assertionAttributes];
  v26 = self->_liveRenderingAssertion;
  self->_liveRenderingAssertion = v25;

  [(BLSAssertion *)self->_liveRenderingAssertion addObserver:self];
LABEL_21:
}

- (void)_releaseLiveRenderingAssertionWithReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  liveRenderingAssertion = self->_liveRenderingAssertion;
  v6 = SBLogLiveRendering();
  v7 = v6;
  if (liveRenderingAssertion)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = self->_liveRenderingAssertion;
      v12 = 138413058;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      v18 = 2112;
      v19 = reasonCopy;
      _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_DEFAULT, "%@ Will release live-rendering <%@; %p> with reason '%@'", &v12, 0x2Au);
    }

    v11 = self->_liveRenderingAssertion;
    self->_liveRenderingAssertion = 0;
    v7 = v11;

    [v7 invalidate];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    selfCopy2 = self;
    v14 = 2112;
    v15 = reasonCopy;
    _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_INFO, "%@ Ignored live-rendering assertion release with reason '%@' because we are not holding any", &v12, 0x16u);
  }
}

- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_liveRenderingAssertion == assertion)
  {
    v7 = SBLogLiveRendering();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      liveRenderingAssertion = self->_liveRenderingAssertion;
      *buf = 138413058;
      selfCopy = self;
      v14 = 2112;
      v15 = v10;
      v16 = 2048;
      v17 = liveRenderingAssertion;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_error_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_ERROR, "%@ Could not acquire live-rendering <%@; %p> with error '%@'", buf, 0x2Au);
    }

    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to acquire assertion with error '%@'", errorCopy];
    [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:errorCopy];
  }
}

- (void)assertion:(id)assertion didCancelWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_liveRenderingAssertion == assertion)
  {
    v7 = SBLogLiveRendering();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      liveRenderingAssertion = self->_liveRenderingAssertion;
      *buf = 138413058;
      selfCopy = self;
      v14 = 2112;
      v15 = v10;
      v16 = 2048;
      v17 = liveRenderingAssertion;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_error_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_ERROR, "%@ Received unexpected cancellation for <%@; %p> with error '%@'", buf, 0x2Au);
    }

    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received unexpected cancellation with error '%@'", errorCopy];
    [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:errorCopy];
  }
}

- (void)backlight:(id)backlight didChangeAlwaysOnEnabled:(BOOL)enabled
{
  backlightCopy = backlight;
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, 30000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__SBFAlwaysOnLiveRenderingAssertionManager_backlight_didChangeAlwaysOnEnabled___block_invoke;
  v9[3] = &unk_1E807F610;
  objc_copyWeak(&v11, &location);
  enabledCopy = enabled;
  v10 = backlightCopy;
  v8 = backlightCopy;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __79__SBFAlwaysOnLiveRenderingAssertionManager_backlight_didChangeAlwaysOnEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 48) == 1)
    {
      v3 = [WeakRetained _nextLiveRenderingAssertionProxyIfAny];
      [v4 _acquireLiveRenderingAssertionIfNeededForProxy:v3 backlight:*(a1 + 32)];
    }

    else
    {
      [WeakRetained _releaseLiveRenderingAssertionWithReason:@"AOD is disabled"];
    }

    WeakRetained = v4;
  }
}

- (void)backlight:(id)backlight didCompleteUpdateToState:(int64_t)state forEvent:(id)event
{
  backlightCopy = backlight;
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 30000000);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__SBFAlwaysOnLiveRenderingAssertionManager_backlight_didCompleteUpdateToState_forEvent___block_invoke;
  v10[3] = &unk_1E807F638;
  objc_copyWeak(v12, &location);
  v12[1] = state;
  v11 = backlightCopy;
  v9 = backlightCopy;
  dispatch_after(v8, MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

uint64_t __88__SBFAlwaysOnLiveRenderingAssertionManager_backlight_didCompleteUpdateToState_forEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (*(a1 + 48) == 1)
    {
      v3 = [WeakRetained _nextLiveRenderingAssertionProxyIfAny];
      [v7 _acquireLiveRenderingAssertionIfNeededForProxy:v3 backlight:*(a1 + 32)];
    }

    else
    {
      v4 = MEMORY[0x1E696AEC0];
      v3 = NSStringFromBLSBacklightState();
      v5 = [v4 stringWithFormat:@"Backlight state is %@", v3];
      [v7 _releaseLiveRenderingAssertionWithReason:v5];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p proxyAssertions:%@; assertions:%@>", v5, self, self->_liveRenderingAssertionProxies, self->_liveRenderingAssertion];;

  return v6;
}

- (void)_acquireLiveRenderingAssertionIfNeededForProxy:(os_log_t)log backlight:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BEA11000, log, OS_LOG_TYPE_ERROR, "%@ Ignoring live-rendering assertion acquisition request for %@ because of invalid attributes", &v3, 0x16u);
}

@end