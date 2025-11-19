@interface SASHeadphonesAuthenticationManager
- (BOOL)_inEarDetectionStateEligibleForState:(id)a3;
- (BOOL)_shouldIgnoreConnectionChangesForState:(id)a3;
- (BOOL)_wearingSessionEligible;
- (BOOL)isAuthenticated;
- (SASHeadphonesAuthenticationManager)init;
- (id)_headphonesMonitor;
- (id)_initForTesting;
- (id)_lockStateMonitor;
- (void)_fetchInitialState;
- (void)_invalidateAuthenticationWithReason:(int64_t)a3;
- (void)_logEligibilityForAuthenticatedState:(BOOL)a3 andTimedOut:(BOOL)a4;
- (void)_recomputeAuthentication;
- (void)_startObserving;
- (void)currentAudioRouteDidChange:(id)a3;
- (void)dealloc;
- (void)didChangeLockState:(unint64_t)a3;
- (void)getHeadphonesAuthenticationStatusWithCompletion:(id)a3;
- (void)inEarDetectionStateDidChangeForBTAddress:(id)a3 toState:(id)a4;
- (void)privateAudioSessionStateDidChange:(unint64_t)a3;
- (void)setHeadphoneVoiceTriggerDiscoveryNotificationAllowed:(BOOL)a3;
@end

@implementation SASHeadphonesAuthenticationManager

- (void)_recomputeAuthentication
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = v4;
    v7 = [v5 currentThread];
    v11 = 136315394;
    v12 = "[SASHeadphonesAuthenticationManager _recomputeAuthentication]";
    v13 = 2048;
    v14 = [v7 qualityOfService];
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock about to lock with qos: %zd", &v11, 0x16u);
  }

  os_unfair_lock_lock(&self->_authenticatedLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SASHeadphonesAuthenticationManager _recomputeAuthentication]";
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock successfully locked", &v11, 0xCu);
  }

  if ([(SASHeadphonesAuthenticationManager *)self _wearingSessionEligible])
  {
    self->_authenticated = 1;
    self->_authenticatedTime = CFAbsoluteTimeGetCurrent();
  }

  os_unfair_lock_unlock(&self->_authenticatedLock);
  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SASHeadphonesAuthenticationManager _recomputeAuthentication]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock unlocked", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_wearingSessionEligible
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AD98];
    authenticated = self->_authenticated;
    v6 = v3;
    v7 = [v4 numberWithBool:authenticated];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_lockStateEligible];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_routeEligible];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_inEarStateEligible];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_sessionStateEligible];
    v14 = 136316418;
    v15 = "[SASHeadphonesAuthenticationManager _wearingSessionEligible]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s 🎧 _authenticated: %@, _lockStateEligible: %@, _routeEligible: %@, _inEarStateEligible: %@, _sessionStateEligible: %@", &v14, 0x3Eu);
  }

  result = !self->_authenticated && self->_routeEligible && self->_lockStateEligible && self->_sessionStateEligible && self->_inEarStateEligible;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (SASHeadphonesAuthenticationManager)init
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SASHeadphonesAuthenticationManager;
  v2 = [(SASHeadphonesAuthenticationManager *)&v11 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SASHeadphonesAuthenticationManager init]";
      _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s 🎧 Initializing SASHeadphonesAuthenticationManager", buf, 0xCu);
    }

    v4 = dispatch_queue_create("SASHeadphonesAuthenticationManager", 0);
    queue = v2->_queue;
    v2->_queue = v4;

    objc_initWeak(buf, v2);
    v6 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SASHeadphonesAuthenticationManager_init__block_invoke;
    block[3] = &unk_1E82F36D0;
    objc_copyWeak(&v10, buf);
    dispatch_async(v6, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void __42__SASHeadphonesAuthenticationManager_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69DF060] sharedManager];
    v3 = [v2 isSharedIPad];

    if (v3)
    {
      v4 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[SASHeadphonesAuthenticationManager init]_block_invoke";
        _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s 🎧 Headphones authentication is not supported on Shared iPads", &v6, 0xCu);
      }
    }

    else
    {
      [WeakRetained _startObserving];
      [WeakRetained didChangeLockState:2];
      [WeakRetained _fetchInitialState];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_headphonesMonitor
{
  headphonesMonitor = self->_headphonesMonitor;
  if (!headphonesMonitor)
  {
    v4 = [MEMORY[0x1E698D200] sharedMonitor];
    v5 = self->_headphonesMonitor;
    self->_headphonesMonitor = v4;

    headphonesMonitor = self->_headphonesMonitor;
  }

  return headphonesMonitor;
}

- (id)_lockStateMonitor
{
  lockStateMonitor = self->_lockStateMonitor;
  if (!lockStateMonitor)
  {
    v4 = objc_alloc_init(SASLockStateMonitor);
    v5 = self->_lockStateMonitor;
    self->_lockStateMonitor = v4;

    lockStateMonitor = self->_lockStateMonitor;
  }

  return lockStateMonitor;
}

- (void)_startObserving
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SASHeadphonesAuthenticationManager _startObserving]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s 🎧 Adding delegates", &v8, 0xCu);
  }

  v4 = [(SASHeadphonesAuthenticationManager *)self _lockStateMonitor];
  [v4 setDelegate:self];

  v5 = [(SASHeadphonesAuthenticationManager *)self _headphonesMonitor];
  [v5 addDelegate:self];

  v6 = [(SASHeadphonesAuthenticationManager *)self _headphonesMonitor];
  [v6 startObservingBluetoothConnections];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_fetchInitialState
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SASHeadphonesAuthenticationManager _fetchInitialState]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s 🎧 Fetching initial state", buf, 0xCu);
  }

  v4 = [(SASHeadphonesAuthenticationManager *)self _headphonesMonitor];
  v5 = [v4 currentAudioRoute];

  [(SASHeadphonesAuthenticationManager *)self currentAudioRouteDidChange:v5];
  objc_initWeak(buf, self);
  if ([v5 hasAuthenticationCapability])
  {
    v6 = [(SASHeadphonesAuthenticationManager *)self _headphonesMonitor];
    v7 = [v5 btAddress];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke;
    v12[3] = &unk_1E82F3CB8;
    objc_copyWeak(&v14, buf);
    v13 = v5;
    [v6 fetchInEarDetctionStateForBTAddress:v7 withCompletion:v12];

    objc_destroyWeak(&v14);
  }

  v8 = [(SASHeadphonesAuthenticationManager *)self _headphonesMonitor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke_3;
  v10[3] = &unk_1E82F3CE0;
  objc_copyWeak(&v11, buf);
  [v8 fetchPrivateSessionStateWithCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v5 = WeakRetained[2];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke_2;
    v6[3] = &unk_1E82F3C90;
    objc_copyWeak(&v9, &location);
    v7 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v5, v6);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) btAddress];
    [v4 inEarDetectionStateDidChangeForBTAddress:v3 toState:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke_3(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke_4;
    block[3] = &unk_1E82F36A8;
    objc_copyWeak(v6, &location);
    v6[1] = a2;
    dispatch_async(v4, block);
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

void __56__SASHeadphonesAuthenticationManager__fetchInitialState__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained privateAudioSessionStateDidChange:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)_initForTesting
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SASHeadphonesAuthenticationManager;
  v2 = [(SASHeadphonesAuthenticationManager *)&v8 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[SASHeadphonesAuthenticationManager _initForTesting]";
      _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s 🎧 Initializing SASHeadphonesAuthenticationManager for testing", buf, 0xCu);
    }

    v4 = dispatch_queue_create("SASHeadphonesAuthenticationManager", 0);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)privateAudioSessionStateDidChange:(unint64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SASHeadphonesAuthenticationManager_privateAudioSessionStateDidChange___block_invoke;
  block[3] = &unk_1E82F36A8;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __72__SASHeadphonesAuthenticationManager_privateAudioSessionStateDidChange___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 40) != WeakRetained[9])
  {
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AD98];
      v6 = v3[9];
      v7 = v4;
      v8 = [v5 numberWithUnsignedInteger:v6];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
      v12 = 136315650;
      v13 = "[SASHeadphonesAuthenticationManager privateAudioSessionStateDidChange:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s 🎧 AFPrivateAudioSessionState changed from %@ to %@", &v12, 0x20u);
    }

    [v3 _invalidateAuthenticationWithReason:4];
    *(v3 + 57) = 0;
    v10 = *(a1 + 40);
    v3[9] = v10;
    if ((v3[5] & 1) == 0 && v10 == 1)
    {
      *(v3 + 57) = 1;
      [v3 _recomputeAuthentication];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)currentAudioRouteDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SASHeadphonesAuthenticationManager_currentAudioRouteDidChange___block_invoke;
  block[3] = &unk_1E82F37D0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__SASHeadphonesAuthenticationManager_currentAudioRouteDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) hash];
    if (v3 != [WeakRetained[10] hash])
    {
      v4 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 avscRouteDescription];
        v10 = 136315394;
        v11 = "[SASHeadphonesAuthenticationManager currentAudioRouteDidChange:]_block_invoke";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s 🎧 AFSiriAudioRoute changed to %@", &v10, 0x16u);
      }

      [WeakRetained _invalidateAuthenticationWithReason:2];
      *(WeakRetained + 59) = 0;
      v8 = [*(a1 + 32) btAddress];
      [WeakRetained inEarDetectionStateDidChangeForBTAddress:v8 toState:0];

      objc_storeStrong(WeakRetained + 10, *(a1 + 32));
      if ((WeakRetained[5] & 1) == 0 && [*(a1 + 32) hasAuthenticationCapability])
      {
        *(WeakRetained + 59) = 1;
        [WeakRetained _recomputeAuthentication];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)inEarDetectionStateDidChangeForBTAddress:(id)a3 toState:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__SASHeadphonesAuthenticationManager_inEarDetectionStateDidChangeForBTAddress_toState___block_invoke;
  v11[3] = &unk_1E82F3C90;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__SASHeadphonesAuthenticationManager_inEarDetectionStateDidChangeForBTAddress_toState___block_invoke(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && (![a1[4] isEqualToString:WeakRetained[11]] || (objc_msgSend(a1[5], "isEqual:", WeakRetained[12]) & 1) == 0))
  {
    v3 = MEMORY[0x1E698D0A0];
    v4 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v9 = 136315650;
      v10 = "[SASHeadphonesAuthenticationManager inEarDetectionStateDidChangeForBTAddress:toState:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s 🎧 InEarDetectionState changed to (%@)%@", &v9, 0x20u);
    }

    if ([WeakRetained _shouldIgnoreConnectionChangesForState:a1[5]])
    {
      v7 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[SASHeadphonesAuthenticationManager inEarDetectionStateDidChangeForBTAddress:toState:]_block_invoke";
        _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s 🎧 Ignoring invalidation for in-ear detection state changes for the secondary bud inside the case", &v9, 0xCu);
      }

      objc_storeStrong(WeakRetained + 12, a1[5]);
    }

    else
    {
      [WeakRetained _invalidateAuthenticationWithReason:3];
      *(WeakRetained + 56) = 0;
      objc_storeStrong(WeakRetained + 11, a1[4]);
      objc_storeStrong(WeakRetained + 12, a1[5]);
      if ((WeakRetained[5] & 1) == 0 && [WeakRetained _inEarDetectionStateEligibleForState:a1[5]])
      {
        *(WeakRetained + 56) = 1;
        [WeakRetained _recomputeAuthentication];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didChangeLockState:(unint64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SASHeadphonesAuthenticationManager_didChangeLockState___block_invoke;
  block[3] = &unk_1E82F36A8;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __57__SASHeadphonesAuthenticationManager_didChangeLockState___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 58) = 0;
    v4 = *(a1 + 40);
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    v7 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
    if ((v4 & 2) != 0)
    {
      if (v7)
      {
        v14 = MEMORY[0x1E696AD98];
        v15 = *(v3 + 40);
        v11 = v6;
        v12 = [v14 numberWithBool:v15];
        v17 = 136315394;
        v18 = "[SASHeadphonesAuthenticationManager didChangeLockState:]_block_invoke";
        v19 = 2112;
        v20 = v12;
        v13 = "%s 🎧 Phone locked! _authenticated: %@";
        goto LABEL_10;
      }
    }

    else
    {
      if (v7)
      {
        v17 = 136315138;
        v18 = "[SASHeadphonesAuthenticationManager didChangeLockState:]_block_invoke";
        _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s 🎧 Phone unlocked!", &v17, 0xCu);
      }

      *(v3 + 58) = 1;
      if ((v3[5] & 1) == 0)
      {
        [v3 _recomputeAuthentication];
        goto LABEL_12;
      }

      v3[6] = CFAbsoluteTimeGetCurrent();
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x1E696AD98];
        v10 = v3[6];
        v11 = v8;
        v12 = [v9 numberWithDouble:v10];
        v17 = 136315394;
        v18 = "[SASHeadphonesAuthenticationManager didChangeLockState:]_block_invoke";
        v19 = 2112;
        v20 = v12;
        v13 = "%s 🎧 Authenticated time bumped to: %@";
LABEL_10:
        _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x16u);
      }
    }
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAuthenticated
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = v4;
    v7 = [v5 currentThread];
    v15 = 136315394;
    v16 = "[SASHeadphonesAuthenticationManager isAuthenticated]";
    v17 = 2048;
    v18 = [v7 qualityOfService];
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock about to lock with qos: %zd", &v15, 0x16u);
  }

  os_unfair_lock_lock(&self->_authenticatedLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SASHeadphonesAuthenticationManager isAuthenticated]";
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock successfully locked", &v15, 0xCu);
  }

  authenticated = self->_authenticated;
  authenticatedTime = self->_authenticatedTime;
  os_unfair_lock_unlock(&self->_authenticatedLock);
  v11 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SASHeadphonesAuthenticationManager isAuthenticated]";
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock unlocked", &v15, 0xCu);
  }

  v12 = CFAbsoluteTimeGetCurrent() - authenticatedTime;
  if (authenticated && v12 >= 5400.0)
  {
    [(SASHeadphonesAuthenticationManager *)self _invalidateAuthenticationWithReason:1];
    authenticated = 0;
  }

  [(SASHeadphonesAuthenticationManager *)self _logEligibilityForAuthenticatedState:authenticated andTimedOut:v12 >= 5400.0];
  v13 = *MEMORY[0x1E69E9840];
  return authenticated;
}

- (void)_logEligibilityForAuthenticatedState:(BOOL)a3 andTimedOut:(BOOL)a4
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__SASHeadphonesAuthenticationManager__logEligibilityForAuthenticatedState_andTimedOut___block_invoke;
  block[3] = &unk_1E82F3D08;
  objc_copyWeak(&v9, &location);
  v10 = a3;
  v11 = a4;
  dispatch_async(queue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __87__SASHeadphonesAuthenticationManager__logEligibilityForAuthenticatedState_andTimedOut___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x1E696AD98];
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v4 numberWithBool:v5];
      v8 = [MEMORY[0x1E696AD98] numberWithBool:WeakRetained[58]];
      v9 = [MEMORY[0x1E696AD98] numberWithBool:WeakRetained[59]];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:WeakRetained[56]];
      v11 = [MEMORY[0x1E696AD98] numberWithBool:WeakRetained[57]];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 41)];
      v14 = 136316674;
      v15 = "[SASHeadphonesAuthenticationManager _logEligibilityForAuthenticatedState:andTimedOut:]_block_invoke";
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s 🎧 authenticated: %@, _lockStateEligible: %@, _routeEligible: %@, _inEarStateEligible: %@, _sessionStateEligible: %@, timedOut: %@", &v14, 0x48u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)getHeadphonesAuthenticationStatusWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__SASHeadphonesAuthenticationManager_getHeadphonesAuthenticationStatusWithCompletion___block_invoke;
    block[3] = &unk_1E82F3D30;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(queue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [SASHeadphonesAuthenticationManager getHeadphonesAuthenticationStatusWithCompletion:v6];
    }
  }
}

void __86__SASHeadphonesAuthenticationManager_getHeadphonesAuthenticationStatusWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained isAuthenticated]);
    WeakRetained = v3;
  }
}

- (BOOL)_inEarDetectionStateEligibleForState:(id)a3
{
  v3 = a3;
  v4 = [v3 isEnabled] && (objc_msgSend(v3, "primaryInEarStatus") == 3 || objc_msgSend(v3, "secondaryInEarStatus") == 3) && objc_msgSend(v3, "primaryInEarStatus") != 2 && objc_msgSend(v3, "secondaryInEarStatus") != 2;

  return v4;
}

- (BOOL)_shouldIgnoreConnectionChangesForState:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = -[AFBluetoothHeadphoneInEarDetectionState secondaryInEarStatus](self->_inEarDetectionState, "secondaryInEarStatus") == 1 && [v4 secondaryInEarStatus] == 0;
  if ([(AFBluetoothHeadphoneInEarDetectionState *)self->_inEarDetectionState secondaryInEarStatus])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 secondaryInEarStatus] == 1;
  }

  v7 = v5 || v6;
  if (v5 || v6)
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = v8;
      v11 = [v9 numberWithBool:v5];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v15 = 136315650;
      v16 = "[SASHeadphonesAuthenticationManager _shouldIgnoreConnectionChangesForState:]";
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s 🎧 Secondary bud (in-case): disconnected: %@, reconnected: %@", &v15, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_invalidateAuthenticationWithReason:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    v9 = [v7 currentThread];
    v16 = 136315394;
    v17 = "[SASHeadphonesAuthenticationManager _invalidateAuthenticationWithReason:]";
    v18 = 2048;
    v19 = [v9 qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock about to lock with qos: %zd", &v16, 0x16u);
  }

  os_unfair_lock_lock(&self->_authenticatedLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SASHeadphonesAuthenticationManager _invalidateAuthenticationWithReason:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock successfully locked", &v16, 0xCu);
  }

  if (self->_authenticated)
  {
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = SASHeadphonesAuthenticationInvalidationReasonGetName(a3);
      v16 = 136315394;
      v17 = "[SASHeadphonesAuthenticationManager _invalidateAuthenticationWithReason:]";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s 🎧 Invalidating authentication for reason: %@", &v16, 0x16u);
    }

    self->_authenticated = 0;
  }

  os_unfair_lock_unlock(&self->_authenticatedLock);
  v14 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SASHeadphonesAuthenticationManager _invalidateAuthenticationWithReason:]";
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _authenticatedLock unlocked", &v16, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setHeadphoneVoiceTriggerDiscoveryNotificationAllowed:(BOOL)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SASHeadphonesAuthenticationManager_setHeadphoneVoiceTriggerDiscoveryNotificationAllowed___block_invoke;
  block[3] = &unk_1E82F3A58;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __91__SASHeadphonesAuthenticationManager_setHeadphoneVoiceTriggerDiscoveryNotificationAllowed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[8];
    if (*(a1 + 40) == 1)
    {
      if (v3)
      {
        v12 = WeakRetained;
        v4 = [WeakRetained _headphonesMonitor];
        v5 = objc_opt_respondsToSelector();

        WeakRetained = v12;
        if (v5)
        {
          v6 = [v12 _headphonesMonitor];
          [v6 invalidateDiscoveryNotificationAssertion:v12[8]];

          v7 = v12[8];
          v12[8] = 0;
LABEL_9:

          WeakRetained = v12;
        }
      }
    }

    else if (!v3)
    {
      v12 = WeakRetained;
      v8 = [WeakRetained _headphonesMonitor];
      v9 = objc_opt_respondsToSelector();

      WeakRetained = v12;
      if (v9)
      {
        v7 = [v12 _headphonesMonitor];
        v10 = [v7 discoveryNotificationAssertion];
        v11 = v12[8];
        v12[8] = v10;

        goto LABEL_9;
      }
    }
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SASHeadphonesAuthenticationManager dealloc]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s 🎧 Deallocating: %@", buf, 0x16u);
  }

  lockStateMonitor = self->_lockStateMonitor;
  self->_lockStateMonitor = 0;

  v6.receiver = self;
  v6.super_class = SASHeadphonesAuthenticationManager;
  [(SASHeadphonesAuthenticationManager *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getHeadphonesAuthenticationStatusWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SASHeadphonesAuthenticationManager getHeadphonesAuthenticationStatusWithCompletion:]";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s 🎧 No completion handler provided.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end