@interface SBThermalController
+ (SBThermalController)sharedInstance;
+ (void)logThermalEvent:(id)event;
- (NSString)description;
- (SBThermalController)init;
- (void)_respondToCurrentThermalCondition;
- (void)_setBlocked:(BOOL)blocked;
- (void)_updateThermalJetsamCPUSamplingState;
- (void)addThermalObserver:(id)observer;
- (void)dealloc;
- (void)removeThermalObserver:(id)observer;
- (void)startListeningForThermalEvents;
@end

@implementation SBThermalController

+ (SBThermalController)sharedInstance
{
  if (sharedInstance_onceToken_48 != -1)
  {
    +[SBThermalController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_24;

  return v3;
}

uint64_t __37__SBThermalController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBThermalController);
  v1 = sharedInstance___sharedInstance_24;
  sharedInstance___sharedInstance_24 = v0;

  return kdebug_trace();
}

- (SBThermalController)init
{
  v12.receiver = self;
  v12.super_class = SBThermalController;
  v2 = [(SBThermalController *)&v12 init];
  if (v2)
  {
    v3 = +[SBDefaults localDefaults];
    thermalDefaults = [v3 thermalDefaults];
    thermalDefaults = v2->_thermalDefaults;
    v2->_thermalDefaults = thermalDefaults;

    securityDefaults = [v3 securityDefaults];
    securityDefaults = v2->_securityDefaults;
    v2->_securityDefaults = securityDefaults;

    v8 = +[SBDefaults externalDefaults];
    networkDefaults = [v8 networkDefaults];
    networkDefaults = v2->_networkDefaults;
    v2->_networkDefaults = networkDefaults;

    v2->_hotToken = -1;
    v2->_coldToken = -1;
    v2->_sunToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  hotToken = self->_hotToken;
  if (hotToken != -1)
  {
    notify_cancel(hotToken);
  }

  coldToken = self->_coldToken;
  if (coldToken != -1)
  {
    notify_cancel(coldToken);
  }

  sunToken = self->_sunToken;
  if (sunToken != -1)
  {
    notify_cancel(sunToken);
  }

  v6.receiver = self;
  v6.super_class = SBThermalController;
  [(SBThermalController *)&v6 dealloc];
}

+ (void)logThermalEvent:(id)event
{
  v3 = MEMORY[0x277CCACA8];
  eventCopy = event;
  v5 = [[v3 alloc] initWithFormat:eventCopy arguments:&v8];

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
  v7 = GetThermalState();
  [v6 addObjectsFromArray:v7];

  logEventForAppleCare();
}

- (void)startListeningForThermalEvents
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBThermalController startListeningForThermalEvents]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBThermalController.m" lineNumber:139 description:@"this call must be made on the main thread"];
}

uint64_t __53__SBThermalController_startListeningForThermalEvents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  result = notify_get_state(*(v2 + 16), (v2 + 24));
  if (v3 != *(*(a1 + 32) + 24))
  {
    v5 = SBLogThermal();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      *buf = 134218240;
      v9 = v3;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "hot condition changed from %llu to %llu", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v7[3] > 0x28uLL || v3 >= 0x29)
    {
      [objc_opt_class() logThermalEvent:{@"ThermalLevel, %llu", *(*(a1 + 32) + 24)}];
      v7 = *(a1 + 32);
    }

    return [v7 _respondToCurrentThermalCondition];
  }

  return result;
}

uint64_t __53__SBThermalController_startListeningForThermalEvents__block_invoke_41(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  result = notify_get_state(*(v2 + 32), (v2 + 40));
  if (v3 != *(*(a1 + 32) + 40))
  {
    v5 = SBLogThermal();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 40);
      v7 = 134218240;
      v8 = v3;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "cold condition changed from %llu to %llu", &v7, 0x16u);
    }

    return [*(a1 + 32) _respondToCurrentThermalCondition];
  }

  return result;
}

uint64_t __53__SBThermalController_startListeningForThermalEvents__block_invoke_43(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  result = notify_get_state(*(v2 + 48), (v2 + 56));
  if (v3 != *(*(a1 + 32) + 56))
  {
    v5 = SBLogThermal();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 56);
      v7 = 134218240;
      v8 = v3;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "sunlight condition changed from %llu to %llu", &v7, 0x16u);
    }

    return [*(a1 + 32) _respondToCurrentThermalCondition];
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_samplingToken withName:@"samplingToken" skipIfNil:1];
  v5 = NSStringFromSBThermalLevel(self->_level);
  [v3 appendString:v5 withName:@"ThermalLevel"];

  v6 = [v3 appendBool:self->_inSunlight withName:@"inSunlight"];
  v7 = [v3 appendUInt64:self->_hotLevel withName:@"hotLevel"];
  v8 = [v3 appendUInt64:self->_coldLevel withName:@"coldLevel"];
  v9 = [v3 appendUInt64:self->_sunLevel withName:@"sunLevel"];
  build = [v3 build];

  return build;
}

- (void)addThermalObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeThermalObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_respondToCurrentThermalCondition
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBThermalController _respondToCurrentThermalCondition]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBThermalController.m" lineNumber:238 description:@"this call must be made on the main thread"];
}

- (void)_updateThermalJetsamCPUSamplingState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBThermalController.m" lineNumber:293 description:@"failed to create a sampling token"];
}

id __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [MEMORY[0x277D0AAC0] sharedInstance];
  v2 = [v1 allApplicationProcesses];

  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 isPendingExit] & 1) == 0)
        {
          v8 = MEMORY[0x277CCABB0];
          [v7 elapsedCPUTime];
          v9 = [v8 numberWithDouble:?];
          [v0 setObject:v9 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v0;
}

void __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v64 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 8)])
  {
    v2 = (*(*(v1 + 56) + 16))();
    BSContinuousMachTimeNow();
    v4 = v3;
    v5 = *(v1 + 64);
    v38 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = v4 - v5;
      v10 = *v51;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          [v13 doubleValue];
          v15 = v14;
          v16 = [*(v1 + 48) objectForKey:v12];
          [v16 doubleValue];
          v18 = v15 - v17;

          v20 = v18 / v9 * 100.0;
          if (v20 > 30.0 && __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_3(v19, v12))
          {
            v21 = SBLogThermal();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v12 bundleIdentifier];
              v23 = [v12 pid];
              *buf = 138544130;
              v56 = v22;
              v57 = 1026;
              v58 = v23;
              v59 = 2048;
              v60 = v20;
              v61 = 2048;
              v62 = v9;
              _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Thermal: Killing %{public}@(%{public}i), which used %.2f%% CPU over the past %.1f seconds.", buf, 0x26u);
            }

            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%CPU:                %.2f%% (sampled for %.1f s)", *&v20, *&v9];
            [v38 setObject:v24 forKey:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v8);
    }

    v25 = v38;
    if (![v38 count])
    {
      v26 = +[SBSceneManagerCoordinator sharedInstance];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_82;
      v47[3] = &unk_2783BFD38;
      v48 = v38;
      v49 = &__block_literal_global_77_1;
      [v26 enumerateSceneManagersWithBlock:v47];
    }

    if ([v38 count])
    {
      v37 = v1;
      v46 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v27 = v38;
      v28 = [v27 countByEnumeratingWithState:&v43 objects:v54 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v44;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v44 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v43 + 1) + 8 * j);
            v33 = [v27 objectForKey:v32];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_87;
            v42[3] = &unk_2783A9398;
            v42[4] = v32;
            [v32 killForReason:4 andReport:1 withDescription:v33 completion:v42];
          }

          v29 = [v27 countByEnumeratingWithState:&v43 objects:v54 count:16];
        }

        while (v29);
      }

      v1 = v37;
      v25 = v38;
    }

    v34 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_89;
    block[3] = &unk_2783A92D8;
    v35 = *(v1 + 32);
    v36 = *(v1 + 40);
    v40 = v35;
    v41 = v36;
    dispatch_after(v34, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCurrentProcess])
  {
    v3 = SBLogThermal();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Keeping ourselves alive since we can't reasonably exit", buf, 2u);
    }

    goto LABEL_12;
  }

  v3 = [v2 bundleIdentifier];
  if (![v3 isEqualToString:@"com.apple.mobilephone"])
  {
    if (![v3 isEqualToString:@"com.apple.LoginUI"])
    {
      v7 = 1;
      goto LABEL_13;
    }

    v4 = SBLogThermal();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = 0;
    v5 = "Keeping login window app alive since we can't reasonably exit it";
    v6 = &v9;
    goto LABEL_10;
  }

  v4 = SBLogThermal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v5 = "Keeping phone alive since we need them for emergency calls";
    v6 = &v10;
LABEL_10:
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

LABEL_11:

LABEL_12:
  v7 = 0;
LABEL_13:

  return v7;
}

void __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_82(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a2 externalForegroundApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138543618;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) scene];
        v10 = [v9 clientProcess];

        v11 = [*(a1 + 32) objectForKey:v10];

        if (!v11 && (*(*(a1 + 40) + 16))())
        {
          v12 = SBLogThermal();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v10 bundleIdentifier];
            v14 = [v10 pid];
            *buf = v15;
            v21 = v13;
            v22 = 1026;
            v23 = v14;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Thermal: Killing %{public}@(%{public}i), which was topmost.", buf, 0x12u);
          }

          [*(a1 + 32) setObject:@"Topmost application" forKey:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }
}

void __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_87(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = SBLogThermal();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      v5 = [*(a1 + 32) pid];
      v6 = 138543618;
      v7 = v4;
      v8 = 1026;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Thermal: failed to kill %{public}@(%{public}i)", &v6, 0x12u);
    }
  }
}

uint64_t __59__SBThermalController__updateThermalJetsamCPUSamplingState__block_invoke_89(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 8)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    v5 = *(a1 + 40);

    return [v5 _updateThermalJetsamCPUSamplingState];
  }

  return result;
}

- (void)_setBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  v33 = *MEMORY[0x277D85DE8];
  if ([(SBThermalController *)self _isBlocked]!= blocked)
  {
    v5 = SBLogThermal();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromBOOL();
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Will toggle bricked state to: %{public}@", buf, 0xCu);
    }

    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromBOOL();
      *buf = 138543362;
      v32 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Will toggle bricked state to: %{public}@", buf, 0xCu);
    }

    if (blockedCopy)
    {
      v9 = @"ThermalUIAlertEnter";
    }

    else
    {
      v9 = @"ThermalUIAlertExit";
    }

    [SBThermalController logThermalEvent:v9];
    v10 = +[SBTelephonyManager sharedTelephonyManager];
    if ([v10 _serverConnection])
    {
      if (blockedCopy)
      {
        v11 = _CTServerConnectionDisableRegistration();
      }

      else
      {
        v11 = _CTServerConnectionEnableRegistration();
      }

      v14 = v11;
      if (HIDWORD(v11))
      {
        [v10 _serverConnectionDidError:v11];
      }
    }

    else
    {
      v12 = SBLogThermal();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SBThermalController _setBlocked:v12];
      }

      v13 = SBLogStatusBarish();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Unable to change CT registration status. _CTServerConnectionCreate() failed.", buf, 2u);
      }
    }

    if (blockedCopy)
    {
      v15 = +[SBWiFiManager sharedInstance];
      if ([v15 wiFiEnabled])
      {
        [v15 setWiFiEnabled:0];
        [(SBThermalDefaults *)self->_thermalDefaults setWasConnectedToWiFiWhenBrickedForThermalConditions:1];
      }

      [(SBExternalWifiDefaults *)self->_networkDefaults setWifiEnabled:0];
    }

    else if ([(SBThermalDefaults *)self->_thermalDefaults wasConnectedToWiFiWhenBrickedForThermalConditions])
    {
      v16 = +[SBWiFiManager sharedInstance];
      [v16 setWiFiEnabled:1];

      [(SBExternalWifiDefaults *)self->_networkDefaults setWifiEnabled:1];
      [(SBThermalDefaults *)self->_thermalDefaults setWasConnectedToWiFiWhenBrickedForThermalConditions:0];
    }

    [(SBSecurityDefaults *)self->_securityDefaults setBlockedForThermal:blockedCopy];
    [(SBSecurityDefaults *)self->_securityDefaults synchronizeDefaults];
    v17 = SBLogThermal();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromBOOL();
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Did toggle bricked state to: %{public}@", buf, 0xCu);
    }

    v19 = SBLogStatusBarish();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromBOOL();
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "Did toggle bricked state to: %{public}@", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = self->_observers;
    v22 = [(NSHashTable *)v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v26 + 1) + 8 * i) thermalBlockStatusChanged:{self, v26}];
        }

        v23 = [(NSHashTable *)v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }
}

@end