@interface SBHIDUISensorModeController
- (SBHIDUISensorModeController)init;
- (SBHIDUISensorModeController)initWithSensorService:(id)a3;
- (id)_requestSensorModeAssertionForReason:(id)a3 source:(int64_t)a4 builder:(id)a5;
- (id)addStartupHIDLockAssertion;
- (id)assertBaselineDisabledDigitizerMode:(int64_t)a3 source:(int64_t)a4 reason:(id)a5;
- (id)assertDisplayState:(int64_t)a3 source:(int64_t)a4 reason:(id)a5;
- (id)requestProximityMode:(int)a3 forReason:(id)a4;
- (id)sensorModeTransactionForBacklightChangeSource:(int64_t)a3;
- (id)suspendProximityDetection:(BOOL)a3 disableDigitizer:(int64_t)a4 source:(int64_t)a5 reason:(id)a6;
- (void)_reevaluateLockStateForSource:(int64_t)a3;
- (void)_removeHIDUISensorModeAssertion:(id)a3;
- (void)invalidate;
- (void)setPocketTouchesExpected:(BOOL)a3;
- (void)setProximityDetectionEnabled:(BOOL)a3 changeSource:(unint64_t)a4;
@end

@implementation SBHIDUISensorModeController

- (SBHIDUISensorModeController)init
{
  v3 = [MEMORY[0x277CF06F8] sharedInstance];
  v4 = [(SBHIDUISensorModeController *)self initWithSensorService:v3];

  return v4;
}

- (SBHIDUISensorModeController)initWithSensorService:(id)a3
{
  v5 = a3;
  v34.receiver = self;
  v34.super_class = SBHIDUISensorModeController;
  v6 = [(SBHIDUISensorModeController *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sensorService, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    assertions = v7->_assertions;
    v7->_assertions = v8;

    v10 = +[SBAVSystemControllerCache sharedInstance];
    avCache = v7->_avCache;
    v7->_avCache = v10;

    [(SBAVSystemControllerCache *)v7->_avCache addObserver:v7];
    objc_initWeak(&location, v7);
    v12 = MEMORY[0x277CF0BD0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__SBHIDUISensorModeController_initWithSensorService___block_invoke;
    v31[3] = &unk_2783AD688;
    objc_copyWeak(&v32, &location);
    v13 = [v12 assertionWithIdentifier:@"digitizerModeBaseline" stateDidChangeHandler:v31];
    digitizerModeBaselineAssertion = v7->_digitizerModeBaselineAssertion;
    v7->_digitizerModeBaselineAssertion = v13;

    v15 = MEMORY[0x277CF0BD0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __53__SBHIDUISensorModeController_initWithSensorService___block_invoke_2;
    v29[3] = &unk_2783AD688;
    objc_copyWeak(&v30, &location);
    v16 = [v15 assertionWithIdentifier:@"proximityMode" stateDidChangeHandler:v29];
    proximityModeAssertion = v7->_proximityModeAssertion;
    v7->_proximityModeAssertion = v16;

    v18 = MEMORY[0x277CF0BD0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __53__SBHIDUISensorModeController_initWithSensorService___block_invoke_3;
    v27[3] = &unk_2783AD688;
    objc_copyWeak(&v28, &location);
    v19 = [v18 assertionWithIdentifier:@"secureIndicatorDisabledDigitizer" stateDidChangeHandler:v27];
    secureIndicatorDisabledDigitizerAssertion = v7->_secureIndicatorDisabledDigitizerAssertion;
    v7->_secureIndicatorDisabledDigitizerAssertion = v19;

    v21 = MEMORY[0x277CF0BD0];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__SBHIDUISensorModeController_initWithSensorService___block_invoke_4;
    v25[3] = &unk_2783AD688;
    objc_copyWeak(&v26, &location);
    v22 = [v21 assertionWithIdentifier:@"secureIndicatorProximityModeAssertion" stateDidChangeHandler:v25];
    secureIndicatorProximityModeAssertion = v7->_secureIndicatorProximityModeAssertion;
    v7->_secureIndicatorProximityModeAssertion = v22;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__SBHIDUISensorModeController_initWithSensorService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateLockStateForSource:0];
}

void __53__SBHIDUISensorModeController_initWithSensorService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateLockStateForSource:0];
}

void __53__SBHIDUISensorModeController_initWithSensorService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateLockStateForSource:0];
}

void __53__SBHIDUISensorModeController_initWithSensorService___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluateLockStateForSource:0];
}

- (void)invalidate
{
  [(BSCompoundAssertion *)self->_digitizerModeBaselineAssertion invalidate];
  digitizerModeBaselineAssertion = self->_digitizerModeBaselineAssertion;
  self->_digitizerModeBaselineAssertion = 0;

  [(BSCompoundAssertion *)self->_proximityModeAssertion invalidate];
  proximityModeAssertion = self->_proximityModeAssertion;
  self->_proximityModeAssertion = 0;

  [(BSInvalidatable *)self->_proximityDetectionModeAssertion invalidate];
  proximityDetectionModeAssertion = self->_proximityDetectionModeAssertion;
  self->_proximityDetectionModeAssertion = 0;

  [(BSCompoundAssertion *)self->_secureIndicatorDisabledDigitizerAssertion invalidate];
  secureIndicatorDisabledDigitizerAssertion = self->_secureIndicatorDisabledDigitizerAssertion;
  self->_secureIndicatorDisabledDigitizerAssertion = 0;

  [(BSCompoundAssertion *)self->_secureIndicatorProximityModeAssertion invalidate];
  secureIndicatorProximityModeAssertion = self->_secureIndicatorProximityModeAssertion;
  self->_secureIndicatorProximityModeAssertion = 0;
}

- (void)_reevaluateLockStateForSource:(int64_t)a3
{
  v62 = *MEMORY[0x277D85DE8];
  if (self->_sensorModeTransactionCount)
  {
    return;
  }

  v4 = self;
  v46 = [MEMORY[0x277CBEB40] orderedSetWithObject:@"SB"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = v4->_assertions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (!v6)
  {

    LOBYTE(v9) = 0;
    v8 = 0;
    v21 = a3 == 3;
    goto LABEL_23;
  }

  v7 = v6;
  v43 = a3;
  v44 = v4;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v55;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v55 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v54 + 1) + 8 * i);
      v15 = [v14 digitizerMode];
      if (v15 > v11)
      {
        v11 = v15;
      }

      v16 = [v14 displayState];
      if (qword_21F8A8C10[v16] > qword_21F8A8C10[v8])
      {
        v8 = v16;
      }

      v10 |= [v14 suspendProximitySensor];
      v9 |= [v14 pocketTouchesExpected];
      v17 = [v14 reason];
      [v46 addObject:v17];
    }

    v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v54 objects:v61 count:16];
  }

  while (v7);

  v4 = v44;
  if ((v11 - 1) <= 2 && [(BSCompoundAssertion *)v44->_digitizerModeBaselineAssertion isActive])
  {
    v18 = [(BSCompoundAssertion *)v44->_digitizerModeBaselineAssertion context];
    v19 = [v18 bs_reduce:&unk_283372590 block:&__block_literal_global_457];
    v11 = [v19 integerValue];
    if (v11 == 4)
    {
      v8 = 1;
    }

    v20 = [(BSCompoundAssertion *)v44->_digitizerModeBaselineAssertion reasons];
    [v46 unionSet:v20];
  }

  v21 = v43 == 3;
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v22 = 20;
      goto LABEL_37;
    }

LABEL_23:
    if ([(BSCompoundAssertion *)v4->_proximityModeAssertion isActive])
    {
      v45 = v21;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v23 = v4;
      v24 = [(BSCompoundAssertion *)v4->_proximityModeAssertion orderedContext];
      v25 = [v24 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v25)
      {
        v26 = v25;
        v22 = 0;
        v27 = *v51;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v51 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [*(*(&v50 + 1) + 8 * j) intValue];
            v30 = BKSHIDServicesProximityDetectionModePriority();
            if (v30 > BKSHIDServicesProximityDetectionModePriority())
            {
              v22 = v29;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v26);
      }

      else
      {
        v22 = 0;
      }

      v4 = v23;
      v31 = [(BSCompoundAssertion *)v23->_proximityModeAssertion reasons];
      [v46 unionSet:v31];

      v11 = 0;
      v21 = v45;
    }

    else
    {
      v11 = 0;
      v22 = 0;
    }

    goto LABEL_37;
  }

  v22 = 5;
LABEL_37:
  v32 = [v46 array];
  v33 = [v32 componentsJoinedByString:@" + "];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __61__SBHIDUISensorModeController__reevaluateLockStateForSource___block_invoke_2;
  v47[3] = &unk_2783C5150;
  v48 = v22;
  v49 = v9 & 1;
  v47[4] = v4;
  v47[5] = v8;
  v47[6] = v11;
  v47[7] = v21;
  v34 = [MEMORY[0x277CF06F0] buildModeForReason:v33 builder:v47];
  v35 = [(BKSHIDUISensorMode *)v4->_sensorMode isEqual:v34];
  v36 = SBLogProximitySensor();
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    if (v37)
    {
      sensorMode = v4->_sensorMode;
      *buf = 138543362;
      v59 = sensorMode;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "reevalute: no change -- %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v37)
    {
      *buf = 138543362;
      v59 = v34;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "reevalute: -> %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v4->_sensorMode, v34);
    v36 = [(BKSHIDUISensorService *)v4->_sensorService suppressUISensorChangesForReason:@"SB transaction"];
    sensorService = v4->_sensorService;
    v40 = v4->_sensorModeAssertion;
    v41 = [(BKSHIDUISensorService *)sensorService requestUISensorMode:v34];
    sensorModeAssertion = v4->_sensorModeAssertion;
    v4->_sensorModeAssertion = v41;

    [(BSInvalidatable *)v40 invalidate];
    [v36 invalidate];
  }
}

void *__61__SBHIDUISensorModeController__reevaluateLockStateForSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 integerValue];
  if (v6 <= [v4 integerValue])
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

void __61__SBHIDUISensorModeController__reevaluateLockStateForSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    [v3 setProximityDetectionMode:*(a1 + 64)];
    v3 = v9;
    if (*(a1 + 64) == 13)
    {
      [v9 setPostEventWithCurrentDetectionMask:1];
      v3 = v9;
    }
  }

  [v3 setDisplayState:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      [v9 setTapToWakeEnabled:1];
    }

    else
    {
      v5 = v9;
      if (v4 != 3)
      {
        goto LABEL_16;
      }

      [v9 setWakeOnTapThroughEnabled:1];
    }

    [v9 setWakeOnSwipeEnabled:1];
    [v9 setCoverGestureEnabled:1];
  }

  else if (v4)
  {
    v5 = v9;
    if (v4 != 1)
    {
      goto LABEL_16;
    }

    [v9 setTapToWakeEnabled:1];
  }

  else
  {
    [v9 setDigitizerEnabled:1];
    v5 = v9;
    if (*(a1 + 68) != 1)
    {
      goto LABEL_16;
    }

    [v9 setPocketTouchesExpected:1];
  }

  v5 = v9;
LABEL_16:
  v6 = [v5 multitouchHostStateKeys];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:v6];
    if ([*(*(a1 + 32) + 56) isActive])
    {
      [v7 addObject:@"SecureIndicatorEnabled"];
    }

    else
    {
      [v7 removeObject:@"SecureIndicatorEnabled"];
    }

    [v9 setMultitouchHostStateKeys:v7];
  }

  if ([*(*(a1 + 32) + 64) isActive])
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:@"SecureIndicatorConditionsMet"];
  }

  else
  {
    v8 = 0;
  }

  [v9 setProximityHostStateKeys:v8];
  [v9 setChangeSource:*(a1 + 56)];
}

- (id)_requestSensorModeAssertionForReason:(id)a3 source:(int64_t)a4 builder:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(SBHIDUISensorModeAssertion);
  [(SBHIDUISensorModeAssertion *)v10 setSensorModeController:self];
  [(SBHIDUISensorModeAssertion *)v10 setReason:v9];

  [(SBHIDUISensorModeAssertion *)v10 setSource:a4];
  v8[2](v8, v10);

  [(NSMutableArray *)self->_assertions addObject:v10];
  v11 = SBLogProximitySensor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "add: %{public}@", &v13, 0xCu);
  }

  [(SBHIDUISensorModeController *)self _reevaluateLockStateForSource:a4];

  return v10;
}

- (void)setPocketTouchesExpected:(BOOL)a3
{
  v3 = a3;
  BSDispatchQueueAssertMain();
  pocketTouchesAssertion = self->_pocketTouchesAssertion;
  if ((((pocketTouchesAssertion == 0) ^ v3) & 1) == 0)
  {
    if (v3)
    {
      v6 = objc_alloc_init(SBHIDUISensorModeAssertion);
      [(SBHIDUISensorModeAssertion *)v6 setSensorModeController:self];
      [(SBHIDUISensorModeAssertion *)v6 setReason:@"pocketTouches"];
      [(SBHIDUISensorModeAssertion *)v6 setSource:0];
      [(SBHIDUISensorModeAssertion *)v6 setPocketTouchesExpected:1];
      v7 = self->_pocketTouchesAssertion;
      self->_pocketTouchesAssertion = v6;
      v8 = v6;

      [(NSMutableArray *)self->_assertions addObject:self->_pocketTouchesAssertion];
    }

    else
    {
      [(SBHIDUISensorModeAssertion *)pocketTouchesAssertion invalidate];
      v8 = self->_pocketTouchesAssertion;
      self->_pocketTouchesAssertion = 0;
    }

    [(SBHIDUISensorModeController *)self _reevaluateLockStateForSource:29];
  }
}

- (id)addStartupHIDLockAssertion
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SBHIDUISensorModeAssertion);
  [(SBHIDUISensorModeAssertion *)v3 setSensorModeController:self];
  [(SBHIDUISensorModeAssertion *)v3 setDigitizerMode:1];
  [(SBHIDUISensorModeAssertion *)v3 setSuspendProximitySensor:1];
  [(SBHIDUISensorModeAssertion *)v3 setReason:@"boot"];
  [(NSMutableArray *)self->_assertions addObject:v3];
  v4 = SBLogProximitySensor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "add: %{public}@", &v6, 0xCu);
  }

  [(SBHIDUISensorModeController *)self _reevaluateLockStateForSource:15];

  return v3;
}

- (void)_removeHIDUISensorModeAssertion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogProximitySensor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "remove: %{public}@", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_assertions removeObject:v4];
  [(SBHIDUISensorModeController *)self _reevaluateLockStateForSource:0];
}

- (id)suspendProximityDetection:(BOOL)a3 disableDigitizer:(int64_t)a4 source:(int64_t)a5 reason:(id)a6
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__SBHIDUISensorModeController_suspendProximityDetection_disableDigitizer_source_reason___block_invoke;
  v8[3] = &__block_descriptor_41_e36_v16__0__SBHIDUISensorModeAssertion_8l;
  v8[4] = a4;
  v9 = a3;
  v6 = [(SBHIDUISensorModeController *)self _requestSensorModeAssertionForReason:a6 source:a5 builder:v8];

  return v6;
}

void __88__SBHIDUISensorModeController_suspendProximityDetection_disableDigitizer_source_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDigitizerMode:v3];
  [v4 setSuspendProximitySensor:*(a1 + 40)];
}

- (id)assertDisplayState:(int64_t)a3 source:(int64_t)a4 reason:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SBHIDUISensorModeController_assertDisplayState_source_reason___block_invoke;
  v7[3] = &__block_descriptor_40_e36_v16__0__SBHIDUISensorModeAssertion_8l;
  v7[4] = a3;
  v5 = [(SBHIDUISensorModeController *)self _requestSensorModeAssertionForReason:a5 source:a4 builder:v7];

  return v5;
}

- (id)assertBaselineDisabledDigitizerMode:(int64_t)a3 source:(int64_t)a4 reason:(id)a5
{
  digitizerModeBaselineAssertion = self->_digitizerModeBaselineAssertion;
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithInteger:a3];
  v10 = [(BSCompoundAssertion *)digitizerModeBaselineAssertion acquireForReason:v8 withContext:v9];

  return v10;
}

- (id)sensorModeTransactionForBacklightChangeSource:(int64_t)a3
{
  objc_initWeak(&location, self);
  ++self->_sensorModeTransactionCount;
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBHIDUISensorModeController_sensorModeTransactionForBacklightChangeSource___block_invoke;
  v8[3] = &unk_2783A90C0;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  v6 = [v5 initWithIdentifier:@"sensorModeTransaction" forReason:@"hello" invalidationBlock:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);

  return v6;
}

void __77__SBHIDUISensorModeController_sensorModeTransactionForBacklightChangeSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[11];
    v3 = WeakRetained;
    [WeakRetained _reevaluateLockStateForSource:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)requestProximityMode:(int)a3 forReason:(id)a4
{
  v4 = *&a3;
  proximityModeAssertion = self->_proximityModeAssertion;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInt:v4];
  v9 = [(BSCompoundAssertion *)proximityModeAssertion acquireForReason:v7 withContext:v8];

  return v9;
}

- (void)setProximityDetectionEnabled:(BOOL)a3 changeSource:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_proximityDetectionEnabled != a3)
  {
    self->_proximityDetectionEnabled = a3;
    if ([(SBHIDUISensorModeController *)self isProximityDetectionEnabled])
    {
      v6 = +[SBTelephonyManager sharedTelephonyManager];
      v7 = [v6 inCall];

      if (v7 && self->_activeAudioRouteIsReceiver)
      {
        v8 = 3;
        v9 = @"active";
      }

      else
      {
        v8 = 6;
        v9 = @"low power mode active";
      }

      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = @"inactive";
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromBKSHIDUISensorChangeSource();
    v13 = [v11 stringWithFormat:@"%s Setting prox sensor to: %@ changeSource: %@", "-[SBHIDUISensorModeController setProximityDetectionEnabled:changeSource:]", v10, v12];

    v14 = SBLogProximitySensor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v8)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __73__SBHIDUISensorModeController_setProximityDetectionEnabled_changeSource___block_invoke;
      v21[3] = &__block_descriptor_44_e35_v16__0__BKSMutableHIDUISensorMode_8l;
      v22 = v8;
      v21[4] = a4;
      v15 = [MEMORY[0x277CF06F0] buildModeForReason:v13 builder:v21];
      v16 = MEMORY[0x277CF06F8];
      v17 = self->_proximityDetectionModeAssertion;
      v18 = [v16 sharedInstance];
      v19 = [v18 requestUISensorMode:v15];
      proximityDetectionModeAssertion = self->_proximityDetectionModeAssertion;
      self->_proximityDetectionModeAssertion = v19;

      [(BSInvalidatable *)v17 invalidate];
    }

    else
    {
      [(BSInvalidatable *)self->_proximityDetectionModeAssertion invalidate];
      v15 = self->_proximityDetectionModeAssertion;
      self->_proximityDetectionModeAssertion = 0;
    }
  }
}

void __73__SBHIDUISensorModeController_setProximityDetectionEnabled_changeSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDigitizerEnabled:1];
  [v3 setProximityDetectionMode:*(a1 + 40)];
  [v3 setChangeSource:*(a1 + 32)];
}

@end