@interface SBFAlwaysOnLiveRenderingAssertionManager
- (NSString)debugDescription;
- (NSString)description;
- (SBFAlwaysOnLiveRenderingAssertionManager)initWithBacklight:(id)a3 assertionProvider:(id)a4 attributesProvider:(id)a5;
- (id)acquireLiveRenderingAssertionWithReason:(id)a3;
- (void)_acquireLiveRenderingAssertionIfNeededForProxy:(id)a3 backlight:(id)a4;
- (void)_acquireLiveRenderingAssertionProxy:(id)a3;
- (void)_invalidateWithReason:(id)a3;
- (void)_releaseLiveRenderingAssertionProxy:(id)a3;
- (void)_releaseLiveRenderingAssertionWithReason:(id)a3;
- (void)assertion:(id)a3 didCancelWithError:(id)a4;
- (void)assertion:(id)a3 didFailToAcquireWithError:(id)a4;
- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
@end

@implementation SBFAlwaysOnLiveRenderingAssertionManager

- (SBFAlwaysOnLiveRenderingAssertionManager)initWithBacklight:(id)a3 assertionProvider:(id)a4 attributesProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBFAlwaysOnLiveRenderingAssertionManager;
  v12 = [(SBFAlwaysOnLiveRenderingAssertionManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_backlight, a3);
    objc_storeStrong(&v13->_assertionProvider, a4);
    objc_storeStrong(&v13->_attributesProvider, a5);
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
    v6 = self;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_INFO, "Deallocated %@", buf, 0xCu);
  }

  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _invalidateWithReason:@"dealloc"];
  v4.receiver = self;
  v4.super_class = SBFAlwaysOnLiveRenderingAssertionManager;
  [(SBFAlwaysOnLiveRenderingAssertionManager *)&v4 dealloc];
}

- (id)acquireLiveRenderingAssertionWithReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [SBFAlwaysOnLiveRenderingAssertion alloc];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __84__SBFAlwaysOnLiveRenderingAssertionManager_acquireLiveRenderingAssertionWithReason___block_invoke;
  v11 = &unk_1E807F5E8;
  objc_copyWeak(&v12, &location);
  v6 = [(SBFAlwaysOnLiveRenderingAssertion *)v5 initWithReason:v4 timeout:&v8 invalidationHandler:10.0];
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

- (void)_invalidateWithReason:(id)a3
{
  liveRenderingAssertionProxies = self->_liveRenderingAssertionProxies;
  v5 = a3;
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)liveRenderingAssertionProxies invalidateAll];
  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:v5];
}

- (void)_acquireLiveRenderingAssertionProxy:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_liveRenderingAssertionProxies addAssertion:v4];
  v5 = SBLogLiveRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "%@ Acquired live-rendering %@", &v7, 0x16u);
  }

  v6 = [(SBFAlwaysOnLiveRenderingAssertionManager *)self backlight];
  [(SBFAlwaysOnLiveRenderingAssertionManager *)self _acquireLiveRenderingAssertionIfNeededForProxy:v4 backlight:v6];
}

- (void)_releaseLiveRenderingAssertionProxy:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_liveRenderingAssertionProxies removeAssertion:v4];
  v5 = SBLogLiveRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "%@ Released live-rendering  %@", &v6, 0x16u);
  }

  if ([(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_liveRenderingAssertionProxies isEmpty])
  {
    [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:@"All live-rendering assertion proxies have been released"];
  }
}

- (void)_acquireLiveRenderingAssertionIfNeededForProxy:(id)a3 backlight:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 || ([v6 isValid] & 1) == 0)
  {
    v8 = SBLogLiveRendering();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = self;
      _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_INFO, "%@ Ignoring live-rendering assertion acquisition request because of there are no valid pending proxies", &v27, 0xCu);
    }

    goto LABEL_21;
  }

  v8 = [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)self->_attributesProvider assertionAttributes];
  if (![v8 count])
  {
    v12 = SBLogLiveRendering();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SBFAlwaysOnLiveRenderingAssertionManager *)self _acquireLiveRenderingAssertionIfNeededForProxy:v6 backlight:v12];
    }

    goto LABEL_20;
  }

  if ([v7 backlightState] != 1)
  {
    v12 = SBLogLiveRendering();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    [v7 backlightState];
    v14 = NSStringFromBLSBacklightState();
    v27 = 138412802;
    v28 = self;
    v29 = 2112;
    v30 = v6;
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

  if (![v7 flipbookState])
  {
    v12 = SBLogLiveRendering();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    [v7 flipbookState];
    v14 = NSStringFromBLSFlipbookState();
    v27 = 138412802;
    v28 = self;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v14;
    v16 = "%@ Ignoring live-rendering assertion acquisition request for %@ because flipbook state is %@";
    goto LABEL_18;
  }

  liveRenderingAssertion = self->_liveRenderingAssertion;
  if (liveRenderingAssertion)
  {
    v10 = [(BLSAssertion *)liveRenderingAssertion isAcquired];
    v11 = self->_liveRenderingAssertion;
    if (v10)
    {
      [(BLSAssertion *)v11 restartTimeoutTimer];
      v12 = SBLogLiveRendering();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = self->_liveRenderingAssertion;
        v27 = 138413058;
        v28 = self;
        v29 = 2112;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        v33 = 2112;
        v34 = v6;
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
      v28 = self;
      v29 = 2112;
      v30 = v6;
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
    v28 = self;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_1BEA11000, v22, OS_LOG_TYPE_INFO, "%@ Will acquire live-rendering assertion for %@", &v27, 0x16u);
  }

  assertionProvider = self->_assertionProvider;
  v24 = [v6 reason];
  v25 = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)assertionProvider acquireWithExplanation:v24 attributes:v8];
  v26 = self->_liveRenderingAssertion;
  self->_liveRenderingAssertion = v25;

  [(BLSAssertion *)self->_liveRenderingAssertion addObserver:self];
LABEL_21:
}

- (void)_releaseLiveRenderingAssertionWithReason:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v13 = self;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      v18 = 2112;
      v19 = v4;
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
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_INFO, "%@ Ignored live-rendering assertion release with reason '%@' because we are not holding any", &v12, 0x16u);
  }
}

- (void)assertion:(id)a3 didFailToAcquireWithError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_liveRenderingAssertion == a3)
  {
    v7 = SBLogLiveRendering();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      liveRenderingAssertion = self->_liveRenderingAssertion;
      *buf = 138413058;
      v13 = self;
      v14 = 2112;
      v15 = v10;
      v16 = 2048;
      v17 = liveRenderingAssertion;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_ERROR, "%@ Could not acquire live-rendering <%@; %p> with error '%@'", buf, 0x2Au);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to acquire assertion with error '%@'", v6];
    [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:v8];
  }
}

- (void)assertion:(id)a3 didCancelWithError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_liveRenderingAssertion == a3)
  {
    v7 = SBLogLiveRendering();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      liveRenderingAssertion = self->_liveRenderingAssertion;
      *buf = 138413058;
      v13 = self;
      v14 = 2112;
      v15 = v10;
      v16 = 2048;
      v17 = liveRenderingAssertion;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_ERROR, "%@ Received unexpected cancellation for <%@; %p> with error '%@'", buf, 0x2Au);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received unexpected cancellation with error '%@'", v6];
    [(SBFAlwaysOnLiveRenderingAssertionManager *)self _releaseLiveRenderingAssertionWithReason:v8];
  }
}

- (void)backlight:(id)a3 didChangeAlwaysOnEnabled:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, 30000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__SBFAlwaysOnLiveRenderingAssertionManager_backlight_didChangeAlwaysOnEnabled___block_invoke;
  v9[3] = &unk_1E807F610;
  objc_copyWeak(&v11, &location);
  v12 = a4;
  v10 = v6;
  v8 = v6;
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

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  v7 = a3;
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 30000000);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__SBFAlwaysOnLiveRenderingAssertionManager_backlight_didCompleteUpdateToState_forEvent___block_invoke;
  v10[3] = &unk_1E807F638;
  objc_copyWeak(v12, &location);
  v12[1] = a4;
  v11 = v7;
  v9 = v7;
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