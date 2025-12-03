@interface PXSystemAuthenticationTypeObserver
+ (PXSystemAuthenticationTypeObserver)sharedObserver;
- (PXSystemAuthenticationTypeObserver)init;
- (int64_t)_calculateAuthenticationType;
- (int64_t)_currentlyAvailableBiometryType;
- (void)_beginObservingApplicationStateChangesAndSystemEvents;
- (void)_stopObservingApplicationStateChanges;
- (void)_updateAuthenticationTypeInBackground;
- (void)dealloc;
- (void)setAuthenticationType:(int64_t)type;
- (void)setForcedSystemAuthenticationType:(int64_t)type;
- (void)updateAuthenticationTypeImmediately;
@end

@implementation PXSystemAuthenticationTypeObserver

- (void)_stopObservingApplicationStateChanges
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(PXSystemAuthenticationTypeObserver *)self observers];
  v4 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  observers2 = [(PXSystemAuthenticationTypeObserver *)self observers];
  [observers2 removeAllObjects];
}

- (void)_beginObservingApplicationStateChangesAndSystemEvents
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = *MEMORY[0x1E69DE360];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __91__PXSystemAuthenticationTypeObserver__beginObservingApplicationStateChangesAndSystemEvents__block_invoke;
  v11 = &unk_1E7747200;
  objc_copyWeak(&v12, &location);
  v6 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:&v8];

  v7 = [(PXSystemAuthenticationTypeObserver *)self observers:v8];
  [v7 addObject:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __91__PXSystemAuthenticationTypeObserver__beginObservingApplicationStateChangesAndSystemEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAuthenticationTypeInBackground];
}

- (void)setForcedSystemAuthenticationType:(int64_t)type
{
  if (self->_forcedSystemAuthenticationType != type)
  {
    self->_forcedSystemAuthenticationType = type;
    [(PXSystemAuthenticationTypeObserver *)self updateAuthenticationTypeImmediately];
  }
}

- (void)setAuthenticationType:(int64_t)type
{
  if (self->_authenticationType != type)
  {
    self->_authenticationType = type;
    [(PXSystemAuthenticationTypeObserver *)self signalChange:1];
  }
}

- (void)_updateAuthenticationTypeInBackground
{
  v3 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] Scheduling async authentication type update", buf, 2u);
  }

  observationQueue = [(PXSystemAuthenticationTypeObserver *)self observationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PXSystemAuthenticationTypeObserver__updateAuthenticationTypeInBackground__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(observationQueue, block);
}

void __75__PXSystemAuthenticationTypeObserver__updateAuthenticationTypeInBackground__block_invoke(uint64_t a1)
{
  v2 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] Performing authentication type update in background", buf, 2u);
  }

  v3 = [*(a1 + 32) _calculateAuthenticationType];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PXSystemAuthenticationTypeObserver__updateAuthenticationTypeInBackground__block_invoke_10;
  v4[3] = &unk_1E77498A0;
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __75__PXSystemAuthenticationTypeObserver__updateAuthenticationTypeInBackground__block_invoke_10(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__PXSystemAuthenticationTypeObserver__updateAuthenticationTypeInBackground__block_invoke_2;
  v3[3] = &__block_descriptor_40_e87_v16__0__PXSystemAuthenticationTypeObserver_PXMutableSystemAuthenticationTypeObserver__8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (void)updateAuthenticationTypeImmediately
{
  authenticationType = [(PXSystemAuthenticationTypeObserver *)self authenticationType];
  _calculateAuthenticationType = [(PXSystemAuthenticationTypeObserver *)self _calculateAuthenticationType];
  if (authenticationType != _calculateAuthenticationType)
  {
    v5 = _calculateAuthenticationType;
    v6 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] Calculating authentication type on demand changed the authentication type", buf, 2u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__PXSystemAuthenticationTypeObserver_updateAuthenticationTypeImmediately__block_invoke;
    v7[3] = &__block_descriptor_40_e87_v16__0__PXSystemAuthenticationTypeObserver_PXMutableSystemAuthenticationTypeObserver__8l;
    v7[4] = v5;
    [(PXSystemAuthenticationTypeObserver *)self performChanges:v7];
  }
}

- (int64_t)_calculateAuthenticationType
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] Calculating authentication type", buf, 2u);
  }

  if ([(PXSystemAuthenticationTypeObserver *)self forcedSystemAuthenticationType])
  {
    v4 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [(PXSystemAuthenticationTypeObserver *)self forcedSystemAuthenticationType];
      PXDebugDescriptionFromSystemAuthenticationType();
    }

    return [(PXSystemAuthenticationTypeObserver *)self forcedSystemAuthenticationType];
  }

  v6 = 0x1E695D000uLL;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = PLContentPrivacyUIGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CalculateAuthenticationType", "", buf, 2u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v12 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] Calculating authentication type on main thread", buf, 2u);
    }
  }

  _currentlyAvailableBiometryType = [(PXSystemAuthenticationTypeObserver *)self _currentlyAvailableBiometryType];
  if (_currentlyAvailableBiometryType <= 1)
  {
    if (_currentlyAvailableBiometryType)
    {
      if (_currentlyAvailableBiometryType == 1)
      {
        availableCompanionTypes = 0;
        v5 = 3;
        goto LABEL_45;
      }

LABEL_21:
      availableCompanionTypes = 0;
      v5 = 2;
      goto LABEL_45;
    }

    v32 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v33 = 0;
    v15 = [v32 canEvaluatePolicy:2 error:&v33];
    v16 = v33;
    domain = [v16 domain];
    v31 = v16;
    if ([domain isEqualToString:*MEMORY[0x1E696EE30]])
    {
      code = [v16 code];

      if (code == -5)
      {
        v19 = v15;
      }

      else
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        v20 = PLContentPrivacyUIGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v16;
          _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] Passcode/password not available or error encountered while trying to determine. Error: %@", buf, 0xCu);
        }

        v5 = 1;
        goto LABEL_37;
      }
    }

    else
    {
    }

    if (v15)
    {
      v5 = 2;
      goto LABEL_38;
    }

    v20 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v16;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "[SystemAuthenticationObserver] Error while attempting to determine whether a passcode/password is set: %@", buf, 0xCu);
    }

    v5 = 2;
LABEL_37:

LABEL_38:
    v21 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v22 = [v21 canEvaluatePolicy:3 error:0];
    domainState = [v21 domainState];
    companion = [domainState companion];
    availableCompanionTypes = [companion availableCompanionTypes];

    if (v22)
    {
      v6 = 0x1E695D000uLL;
      if ([availableCompanionTypes count] == 1)
      {
        v25 = [availableCompanionTypes member:&unk_1F190AA08];

        if (v25)
        {
          v5 = 7;
        }

        else
        {
          v5 = 6;
        }
      }

      else
      {
        v5 = 6;
      }
    }

    else
    {
      v6 = 0x1E695D000;
    }

    goto LABEL_45;
  }

  if (_currentlyAvailableBiometryType != 2)
  {
    if (_currentlyAvailableBiometryType == 4)
    {
      availableCompanionTypes = 0;
      v5 = 5;
      goto LABEL_45;
    }

    goto LABEL_21;
  }

  availableCompanionTypes = 0;
  v5 = 4;
LABEL_45:
  v26 = v11;
  v27 = v26;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_END, v9, "CalculateAuthenticationType", "", buf, 2u);
  }

  v28 = [*(v6 + 3840) now];
  [v28 timeIntervalSinceDate:v7];

  v29 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    PXDebugDescriptionFromSystemAuthenticationType();
  }

  return v5;
}

- (int64_t)_currentlyAvailableBiometryType
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v10 = 0;
  v3 = [v2 canEvaluatePolicy:1 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    biometryType = [v2 biometryType];
  }

  else
  {
    v7 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[SystemAuthenticationObserver] Biometrics not available for auth. Error: %@", buf, 0xCu);
    }

    biometryType = 0;
  }

  return biometryType;
}

- (void)dealloc
{
  v3 = PLContentPrivacyUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[SystemAuthenticationObserver] PXSystemAuthenticationTypeObserver dealloc", buf, 2u);
  }

  [(PXSystemAuthenticationTypeObserver *)self _stopObservingApplicationStateChanges];
  v4.receiver = self;
  v4.super_class = PXSystemAuthenticationTypeObserver;
  [(PXSystemAuthenticationTypeObserver *)&v4 dealloc];
}

- (PXSystemAuthenticationTypeObserver)init
{
  v9.receiver = self;
  v9.super_class = PXSystemAuthenticationTypeObserver;
  v2 = [(PXSystemAuthenticationTypeObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.photos.authenticationtype-observer", v3);
    observationQueue = v2->_observationQueue;
    v2->_observationQueue = v4;

    v2->_authenticationType = 0;
    [(PXSystemAuthenticationTypeObserver *)v2 _updateAuthenticationTypeInBackground];
    v6 = [MEMORY[0x1E695DFA8] set];
    observers = v2->_observers;
    v2->_observers = v6;

    [(PXSystemAuthenticationTypeObserver *)v2 _beginObservingApplicationStateChangesAndSystemEvents];
  }

  return v2;
}

+ (PXSystemAuthenticationTypeObserver)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, &__block_literal_global_44249);
  }

  v3 = sharedObserver_sharedInstance;

  return v3;
}

void __52__PXSystemAuthenticationTypeObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(PXSystemAuthenticationTypeObserver);
  v1 = sharedObserver_sharedInstance;
  sharedObserver_sharedInstance = v0;
}

@end