@interface SBIdleTimerService
+ (id)_sharedIdleTimerStateServiceCreatingIfNeeded:(BOOL)needed;
+ (id)sharedInstance;
- (BOOL)_isMediaPlaybackClient:(id)client;
- (BOOL)handleIdleTimerDidExpire;
- (BOOL)handleIdleTimerDidWarn;
- (BOOL)handleIdleTimerUserAttentionDidReset;
- (BOOL)isDisabledByMediaPlayback;
- (SBIdleTimerAggregatedClientConfiguration)aggregatedClientConfiguration;
- (SBIdleTimerServiceDelegate)delegate;
- (id)_clientRequestConfigurations;
- (id)_init;
- (id)_mediaPlaybackDisableReasons;
- (id)_stateCaptureDescription;
- (id)acquireIdleTimerAssertionOnBehalfOfSceneWithPID:(int)d fromProcess:(id)process withConfiguration:(id)configuration forReason:(id)reason;
- (void)_addClientRequestConfiguration:(id)configuration forReason:(id)reason;
- (void)_addConfiguration:(id)configuration toSortedArray:(id)array;
- (void)_addMediaPlaybackDisableReason:(id)reason;
- (void)_addStateCaptureHandlers;
- (void)_removeClientRequestConfigurationForReason:(id)reason;
- (void)_removeConfiguration:(id)configuration fromArray:(id)array;
- (void)_removeMediaPlaybackDisableReason:(id)reason;
- (void)dealloc;
@end

@implementation SBIdleTimerService

+ (id)_sharedIdleTimerStateServiceCreatingIfNeeded:(BOOL)needed
{
  if (needed)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__SBIdleTimerService__sharedIdleTimerStateServiceCreatingIfNeeded___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (_sharedIdleTimerStateServiceCreatingIfNeeded__onceToken != -1)
    {
      dispatch_once(&_sharedIdleTimerStateServiceCreatingIfNeeded__onceToken, block);
    }

    v3 = block[6];
  }

  v4 = _sharedIdleTimerStateServiceCreatingIfNeeded__stateService;

  return v4;
}

void __67__SBIdleTimerService__sharedIdleTimerStateServiceCreatingIfNeeded___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) sharedInstance];
  v1 = objc_alloc(MEMORY[0x277D1B268]);
  v2 = [v1 initWithDispatchQueue:__serviceCalloutQueue delegate:v4];
  v3 = _sharedIdleTimerStateServiceCreatingIfNeeded__stateService;
  _sharedIdleTimerStateServiceCreatingIfNeeded__stateService = v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_25 != -1)
  {
    +[SBIdleTimerService sharedInstance];
  }

  v3 = sharedInstance_service;

  return v3;
}

void __36__SBIdleTimerService_sharedInstance__block_invoke()
{
  v0 = dispatch_queue_create("IdleTimerService", 0);
  v1 = __serviceCalloutQueue;
  __serviceCalloutQueue = v0;

  v2 = [[SBIdleTimerService alloc] _init];
  v3 = sharedInstance_service;
  sharedInstance_service = v2;
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = SBIdleTimerService;
  v2 = [(SBIdleTimerService *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_clientRequestConfigurations = v3->_lock_clientRequestConfigurations;
    v3->_lock_clientRequestConfigurations = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    lock_mediaPlaybackDisableReasons = v3->_lock_mediaPlaybackDisableReasons;
    v3->_lock_mediaPlaybackDisableReasons = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    access_idleWarnHandlers = v3->_access_idleWarnHandlers;
    v3->_access_idleWarnHandlers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    access_idleExpirationHandlers = v3->_access_idleExpirationHandlers;
    v3->_access_idleExpirationHandlers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    access_idleUserAttentionResetHandlers = v3->_access_idleUserAttentionResetHandlers;
    v3->_access_idleUserAttentionResetHandlers = v12;

    [(SBIdleTimerService *)v3 _addStateCaptureHandlers];
  }

  return v3;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = SBIdleTimerService;
  [(SBIdleTimerService *)&v5 dealloc];
}

- (SBIdleTimerAggregatedClientConfiguration)aggregatedClientConfiguration
{
  v43 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = objc_alloc_init(SBIdleTimerAggregatedClientConfiguration);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  _clientRequestConfigurations = [(SBIdleTimerService *)self _clientRequestConfigurations];
  allValues = [_clientRequestConfigurations allValues];

  v6 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = *v39;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        configuration = [v9 configuration];
        disablesTimer = [configuration disablesTimer];

        if (disablesTimer)
        {
          v34 = 0;
          v35 = &v34;
          v36 = 0x2020000000;
          v37 = 1;
          if ([v9 scenePID] >= 1)
          {
            v12 = +[SBSceneManagerCoordinator sharedInstance];
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __51__SBIdleTimerService_aggregatedClientConfiguration__block_invoke;
            v33[3] = &unk_2783B7178;
            v33[4] = v9;
            v33[5] = &v34;
            [v12 enumerateSceneManagersWithBlock:v33];
          }

          if (*(v35 + 24) == 1)
          {
            configuration2 = [v9 configuration];
            v14 = objc_opt_class();
            v15 = configuration2;
            if (v14)
            {
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }

            v24 = v16;

            if (v24)
            {
              precedence = [v24 precedence];
            }

            else
            {
              precedence = 0;
            }

            disableTimerSetting = [(SBIdleTimerAggregatedClientConfiguration *)v3 disableTimerSetting];
            v27 = disableTimerSetting;
            if (!disableTimerSetting || precedence > [disableTimerSetting precedence])
            {
              [(SBIdleTimerAggregatedClientConfiguration *)v3 setDisablesTimerWithPrecedence:precedence];
            }

            if (precedence == 2)
            {
              _Block_object_dispose(&v34, 8);
              goto LABEL_37;
            }
          }

          _Block_object_dispose(&v34, 8);
        }

        else
        {
          configuration3 = [v9 configuration];
          v18 = objc_opt_class();
          v19 = configuration3;
          if (v18)
          {
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;

          if ([v21 hasMinExpirationTimeout])
          {
            precedence2 = [v21 precedence];
            [v21 minExpirationTimeout];
            [(SBIdleTimerAggregatedClientConfiguration *)v3 setMinExpirationTimeout:precedence2 ifGreatestForPrecedence:?];
          }

          if ([v21 hasMaxExpirationTimeout])
          {
            precedence3 = [v21 precedence];
            [v21 maxExpirationTimeout];
            [(SBIdleTimerAggregatedClientConfiguration *)v3 setMaxExpirationTimeout:precedence3 ifLeastForPrecedence:?];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_37:

  disableTimerSetting2 = [(SBIdleTimerAggregatedClientConfiguration *)v3 disableTimerSetting];
  if (disableTimerSetting2 || ([(SBIdleTimerAggregatedClientConfiguration *)v3 minExpirationTimeoutSettings], (disableTimerSetting2 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_40:
    v29 = v3;
    goto LABEL_41;
  }

  maxExpirationTimeoutSettings = [(SBIdleTimerAggregatedClientConfiguration *)v3 maxExpirationTimeoutSettings];
  v32 = maxExpirationTimeoutSettings == 0;

  if (!v32)
  {
    goto LABEL_40;
  }

  v29 = 0;
LABEL_41:

  return v29;
}

void __51__SBIdleTimerService_aggregatedClientConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 externalApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 sceneIfExists];
        v10 = [v9 clientProcess];
        v11 = [v10 pid];
        v12 = [*(a1 + 32) scenePID];

        if (v11 == v12)
        {
          v13 = [v9 settings];
          if (![v13 isForeground])
          {

LABEL_13:
            *(*(*(a1 + 40) + 8) + 24) = 0;

            goto LABEL_14;
          }

          v14 = [v8 sceneFullyOccluded];

          if (v14)
          {
            goto LABEL_13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (BOOL)isDisabledByMediaPlayback
{
  _mediaPlaybackDisableReasons = [(SBIdleTimerService *)self _mediaPlaybackDisableReasons];
  v3 = [_mediaPlaybackDisableReasons count] != 0;

  return v3;
}

- (id)acquireIdleTimerAssertionOnBehalfOfSceneWithPID:(int)d fromProcess:(id)process withConfiguration:(id)configuration forReason:(id)reason
{
  v8 = *&d;
  v40 = *MEMORY[0x277D85DE8];
  processCopy = process;
  configurationCopy = configuration;
  reasonCopy = reason;
  BSDispatchQueueAssert();
  v13 = SBLogIdleTimer();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    bundleIdentifier = [processCopy bundleIdentifier];
    *buf = 138544386;
    v35 = v15;
    v36 = 1024;
    *v37 = v8;
    *&v37[4] = 2114;
    *&v37[6] = bundleIdentifier;
    *&v37[14] = 2114;
    *&v37[16] = configurationCopy;
    v38 = 2114;
    v39 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ - acquireIdleTimerAssertionOnBehalfOfSceneWithPID:%i fromProcess:%{public}@ withConfiguration:%{public}@ forReason:%{public}@]", buf, 0x30u);
  }

  if ([configurationCopy disablesTimer] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_initWeak(buf, self);
    v17 = MEMORY[0x277CCACA8];
    bundleIdentifier2 = [processCopy bundleIdentifier];
    v19 = [v17 stringWithFormat:@"%@-%i", bundleIdentifier2, v8];

    v20 = objc_alloc(MEMORY[0x277CF0CE8]);
    v21 = __serviceCalloutQueue;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __110__SBIdleTimerService_acquireIdleTimerAssertionOnBehalfOfSceneWithPID_fromProcess_withConfiguration_forReason___block_invoke;
    v31[3] = &unk_2783AEA48;
    objc_copyWeak(&v33, buf);
    v22 = reasonCopy;
    v32 = v22;
    v23 = [v20 initWithIdentifier:v19 forReason:v22 queue:v21 invalidationBlock:v31];
    v24 = [[SBIdleTimerServiceClientRequestConfiguration alloc] initWithScenePID:v8 process:processCopy configuration:configurationCopy];
    [(SBIdleTimerService *)self _addClientRequestConfiguration:v24 forReason:v22];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimerServiceTimeoutAssertionsDidChange:self fromClient:v19];

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  else
  {
    v26 = SBLogIdleTimer();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      bundleIdentifier3 = [processCopy bundleIdentifier];
      *buf = 138544130;
      v35 = v29;
      v36 = 2114;
      *v37 = configurationCopy;
      *&v37[8] = 2114;
      *&v37[10] = bundleIdentifier3;
      *&v37[18] = 1024;
      *&v37[20] = v8;
      _os_log_error_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_ERROR, "[%{public}@ - requested configuration: %{public}@ from process: %{public}@ for pid: %i is not supported.]", buf, 0x26u);
    }

    v23 = 0;
  }

  return v23;
}

void __110__SBIdleTimerService_acquireIdleTimerAssertionOnBehalfOfSceneWithPID_fromProcess_withConfiguration_forReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 reason];
  v5 = [v3 identifier];

  v6 = SBLogIdleTimer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBIdleTimerService - Invalidating idle timer expiration timeout assertion forReason:%{public}@]", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeClientRequestConfigurationForReason:*(a1 + 32)];
    v9 = objc_loadWeakRetained(v8 + 8);
    [v9 idleTimerServiceTimeoutAssertionsDidChange:v8 fromClient:v5];
  }
}

- (BOOL)handleIdleTimerDidWarn
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_access_idleWarnHandlers reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__SBIdleTimerService_handleIdleTimerDidWarn__block_invoke;
      block[3] = &unk_2783AB258;
      block[5] = v7;
      block[6] = &v15;
      block[4] = self;
      dispatch_sync(__serviceCalloutQueue, block);
      if (v16[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void __44__SBIdleTimerService_handleIdleTimerDidWarn__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _sharedIdleTimerStateServiceIfExists];
  *(*(*(a1 + 48) + 8) + 24) = [v2 clientConfiguration:*(a1 + 40) handleIdleEvent:1];
}

- (BOOL)handleIdleTimerDidExpire
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_access_idleExpirationHandlers reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__SBIdleTimerService_handleIdleTimerDidExpire__block_invoke;
      block[3] = &unk_2783AB258;
      block[5] = v7;
      block[6] = &v15;
      block[4] = self;
      dispatch_sync(__serviceCalloutQueue, block);
      if (v16[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void __46__SBIdleTimerService_handleIdleTimerDidExpire__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _sharedIdleTimerStateServiceIfExists];
  *(*(*(a1 + 48) + 8) + 24) = [v2 clientConfiguration:*(a1 + 40) handleIdleEvent:2];
}

- (BOOL)handleIdleTimerUserAttentionDidReset
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_access_idleUserAttentionResetHandlers reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__SBIdleTimerService_handleIdleTimerUserAttentionDidReset__block_invoke;
      block[3] = &unk_2783AB258;
      block[5] = v7;
      block[6] = &v15;
      block[4] = self;
      dispatch_sync(__serviceCalloutQueue, block);
      if (v16[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_accessLock);
  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void __58__SBIdleTimerService_handleIdleTimerUserAttentionDidReset__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _sharedIdleTimerStateServiceIfExists];
  *(*(*(a1 + 48) + 8) + 24) = [v2 clientConfiguration:*(a1 + 40) handleIdleEvent:4];
}

- (void)_addClientRequestConfiguration:(id)configuration forReason:(id)reason
{
  configurationCopy = configuration;
  reasonCopy = reason;
  if (configurationCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBIdleTimerService _addClientRequestConfiguration:forReason:];
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  [SBIdleTimerService _addClientRequestConfiguration:forReason:];
LABEL_3:
  BSDispatchQueueAssert();
  configuration = [configurationCopy configuration];
  disablesTimer = [configuration disablesTimer];

  if (disablesTimer)
  {
    process = [configurationCopy process];
    v10 = [(SBIdleTimerService *)self _isMediaPlaybackClient:process];

    if (!v10)
    {
      goto LABEL_13;
    }

    [(SBIdleTimerService *)self _addMediaPlaybackDisableReason:reasonCopy];
    configuration3 = +[SBScreenLongevityController sharedInstanceIfExists];
    [configuration3 evaluateEnablement];
    goto LABEL_12;
  }

  configuration2 = [configurationCopy configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_13;
  }

  configuration3 = [configurationCopy configuration];
  idleEventMask = [configuration3 idleEventMask];
  if (!idleEventMask)
  {
    goto LABEL_12;
  }

  v15 = idleEventMask;
  if ((idleEventMask & 2) == 0)
  {
    if ((idleEventMask & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    [(SBIdleTimerService *)self _addConfiguration:configuration3 toSortedArray:self->_access_idleWarnHandlers];
    if ((v15 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(SBIdleTimerService *)self _addConfiguration:configuration3 toSortedArray:self->_access_idleExpirationHandlers];
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v15 & 4) != 0)
  {
LABEL_11:
    [(SBIdleTimerService *)self _addConfiguration:configuration3 toSortedArray:self->_access_idleUserAttentionResetHandlers];
  }

LABEL_12:

LABEL_13:
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_clientRequestConfigurations setObject:configurationCopy forKeyedSubscript:reasonCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeClientRequestConfigurationForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBIdleTimerService _removeClientRequestConfigurationForReason:];
  }

  BSDispatchQueueAssert();
  _clientRequestConfigurations = [(SBIdleTimerService *)self _clientRequestConfigurations];
  v5 = [_clientRequestConfigurations objectForKey:reasonCopy];

  configuration = [v5 configuration];
  v7 = objc_opt_class();
  v8 = configuration;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(SBIdleTimerService *)self _removeConfiguration:v10 fromArray:self->_access_idleExpirationHandlers];
  [(SBIdleTimerService *)self _removeConfiguration:v10 fromArray:self->_access_idleWarnHandlers];
  [(SBIdleTimerService *)self _removeConfiguration:v10 fromArray:self->_access_idleUserAttentionResetHandlers];

  [(SBIdleTimerService *)self _removeMediaPlaybackDisableReason:reasonCopy];
  v11 = +[SBScreenLongevityController sharedInstanceIfExists];
  [v11 evaluateEnablement];

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_lock_clientRequestConfigurations removeObjectForKey:reasonCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addMediaPlaybackDisableReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBIdleTimerService _addMediaPlaybackDisableReason:];
  }

  BSDispatchQueueAssert();
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_mediaPlaybackDisableReasons addObject:reasonCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeMediaPlaybackDisableReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBIdleTimerService _removeMediaPlaybackDisableReason:];
  }

  BSDispatchQueueAssert();
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_mediaPlaybackDisableReasons removeObject:reasonCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addConfiguration:(id)configuration toSortedArray:(id)array
{
  arrayCopy = array;
  configurationCopy = configuration;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [arrayCopy addObject:configurationCopy];

  [arrayCopy sortUsingComparator:&__block_literal_global_118_1];

  os_unfair_lock_unlock(&self->_accessLock);
}

uint64_t __54__SBIdleTimerService__addConfiguration_toSortedArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 precedence];
  v6 = [v4 precedence];

  v7 = 1;
  if (v5 <= v6)
  {
    v7 = -1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)_removeConfiguration:(id)configuration fromArray:(id)array
{
  arrayCopy = array;
  configurationCopy = configuration;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [arrayCopy removeObject:configurationCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)_clientRequestConfigurations
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_clientRequestConfigurations copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_mediaPlaybackDisableReasons
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_mediaPlaybackDisableReasons copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_isMediaPlaybackClient:(id)client
{
  bundleIdentifier = [client bundleIdentifier];
  v4 = [bundleIdentifier isEqual:@"com.apple.mediaplaybackd"];

  return v4;
}

- (void)_addStateCaptureHandlers
{
  selfCopy = self;
  v2 = selfCopy;
  v3 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = v2->_stateCaptureAssertion;
  v2->_stateCaptureAssertion = v3;
}

__CFString *__46__SBIdleTimerService__addStateCaptureHandlers__block_invoke(uint64_t a1)
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
  v9 = __46__SBIdleTimerService__stateCaptureDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  build = [v4 build];

  return build;
}

void __46__SBIdleTimerService__stateCaptureDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _clientRequestConfigurations];
  [v2 appendDictionarySection:v3 withName:@"clientRequestConfigurations" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _mediaPlaybackDisableReasons];
  v6 = [v5 allObjects];
  [v4 appendArraySection:v6 withName:@"mediaPlaybackDisableReasons" skipIfEmpty:1];

  os_unfair_lock_assert_not_owner((*(a1 + 40) + 12));
  os_unfair_lock_lock((*(a1 + 40) + 12));
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 32) withName:@"idleExpirationHandlers" skipIfEmpty:1];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 40) withName:@"idleWarnHandlers" skipIfEmpty:1];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 48) withName:@"idleUserAttentionResetHandlers" skipIfEmpty:1];
  v7 = (*(a1 + 40) + 12);

  os_unfair_lock_unlock(v7);
}

- (SBIdleTimerServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_addClientRequestConfiguration:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"clientRequestConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)_addClientRequestConfiguration:forReason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_removeClientRequestConfigurationForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_addMediaPlaybackDisableReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_removeMediaPlaybackDisableReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end