@interface SBFAlwaysOnLiveRenderingBLSAssertionProvider
- (BLSAssertionObserving)assertionObserver;
- (SBFAlwaysOnLiveRenderingBLSAssertionProvider)init;
- (id)acquireWithExplanation:(id)a3 attributes:(id)a4;
- (int64_t)acquiredAssertionsCount;
- (void)assertion:(id)a3 didCancelWithError:(id)a4;
- (void)assertionWasAcquired:(id)a3;
@end

@implementation SBFAlwaysOnLiveRenderingBLSAssertionProvider

- (SBFAlwaysOnLiveRenderingBLSAssertionProvider)init
{
  v6.receiver = self;
  v6.super_class = SBFAlwaysOnLiveRenderingBLSAssertionProvider;
  v2 = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (id)acquireWithExplanation:(id)a3 attributes:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E698E518] acquireWithExplanation:v6 observer:self attributes:a4];
  v8 = SBLogLiveRendering();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138543874;
    v13 = v10;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> live-rendering assertion created with reason '%@'", &v12, 0x20u);
  }

  return v7;
}

- (int64_t)acquiredAssertionsCount
{
  v2 = [(NSMapTable *)self->_assertions keyEnumerator];
  v3 = 0;
  v4 = -1;
  do
  {
    v5 = [v2 nextObject];

    ++v4;
    v3 = v5;
  }

  while (v5);

  return v4;
}

- (void)assertionWasAcquired:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  assertions = self->_assertions;
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v4 identifier];
  [(NSMapTable *)assertions setObject:v6 forKey:v7];

  v8 = [v4 explanation];
  v9 = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)self acquiredAssertionsCount];
  v10 = SBLogLiveRendering();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138544130;
    v14 = v12;
    v15 = 2048;
    v16 = v4;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> live-rendering assertion acquired with reason '%@' (activeCount: %d)", &v13, 0x26u);
  }
}

- (void)assertion:(id)a3 didCancelWithError:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(NSMapTable *)self->_assertions objectForKey:v8];
  if (v9)
  {
    [(NSMapTable *)self->_assertions removeObjectForKey:v8];
    v10 = [v6 explanation];
    v11 = [(SBFAlwaysOnLiveRenderingBLSAssertionProvider *)self acquiredAssertionsCount];
    v12 = [v7 debugDescription];
    [v9 timeIntervalSinceNow];
    v14 = v13;
    v15 = SBLogLiveRendering();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v19 = 138544642;
      v20 = v17;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v14;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> live-rendering assertion released after %.2f seconds with reason '%@' (error: %@, activeCount: %d)", &v19, 0x3Au);
    }

    goto LABEL_8;
  }

  v10 = SBLogLiveRendering();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v12 = NSStringFromClass(v18);
    v15 = [v6 explanation];
    v19 = 138543874;
    v20 = v12;
    v21 = 2048;
    v22 = v6;
    v23 = 2112;
    v24 = *&v15;
    _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_INFO, "<%{public}@: %p> live-rendering assertion release ignored because is not ours (reason: '%@')", &v19, 0x20u);
LABEL_8:
  }
}

- (BLSAssertionObserving)assertionObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_assertionObserver);

  return WeakRetained;
}

@end