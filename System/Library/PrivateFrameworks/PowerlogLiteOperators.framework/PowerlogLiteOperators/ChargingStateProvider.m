@interface ChargingStateProvider
- (BOOL)isBatteryGaugingEnabledWithOverrideStateArray:(id)a3;
- (ChargingStateProvider)init;
- (ChargingStateProviderDelegate)delegate;
- (id)chargingIconStateDictionary;
- (id)debugDescription;
- (signed)getChargingState;
- (void)_refreshTimeEstimates;
- (void)chargeLevelChanged;
- (void)chargingStateChanged;
- (void)computeStates;
- (void)dealloc;
- (void)didUpdateEstimateFor:(int64_t)a3 newEstimate:(id)a4 error:(id)a5;
- (void)lowPowerModeChanged;
- (void)powerSourceChanged;
- (void)refreshChargeLevel;
- (void)refreshChargingState;
- (void)refreshData;
- (void)refreshLowPowerMode;
- (void)refreshPowerSource;
- (void)refreshTimeEstimateForTarget:(int64_t)a3 slowChargerSignal:(BOOL *)a4;
- (void)refreshTimeEstimates;
- (void)setDelegate:(id)a3;
@end

@implementation ChargingStateProvider

- (ChargingStateProvider)init
{
  v37.receiver = self;
  v37.super_class = ChargingStateProvider;
  v2 = [(ChargingStateProvider *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.powerlog.ChargingStateProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v5;

    v7 = objc_alloc(MEMORY[0x277CF0DD0]);
    v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C13F68];
    v9 = [v7 initWithTargets:v8];
    chargeTimeEstimateClient = v2->_chargeTimeEstimateClient;
    v2->_chargeTimeEstimateClient = v9;

    [(BIBatteryAnalysisClient *)v2->_chargeTimeEstimateClient setDelegate:v2];
    objc_initWeak(&location, v2);
    if (!v2->_powerSourceNotifyToken)
    {
      v11 = MEMORY[0x277D85CD0];
      v12 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __29__ChargingStateProvider_init__block_invoke;
      handler[3] = &unk_278259630;
      objc_copyWeak(&v35, &location);
      notify_register_dispatch("com.apple.system.powersources.source", &v2->_powerSourceNotifyToken, v11, handler);

      objc_destroyWeak(&v35);
    }

    if (!v2->_uisocChangeToken)
    {
      v13 = MEMORY[0x277D85CD0];
      v14 = MEMORY[0x277D85CD0];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __29__ChargingStateProvider_init__block_invoke_2;
      v32[3] = &unk_278259630;
      objc_copyWeak(&v33, &location);
      notify_register_dispatch("com.apple.system.powersources.percent", &v2->_uisocChangeToken, v13, v32);

      objc_destroyWeak(&v33);
    }

    if (!v2->_chargingIconographyStateNotifyToken)
    {
      v15 = MEMORY[0x277D85CD0];
      v16 = MEMORY[0x277D85CD0];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __29__ChargingStateProvider_init__block_invoke_3;
      v30[3] = &unk_278259630;
      objc_copyWeak(&v31, &location);
      notify_register_dispatch("com.apple.system.powersources.chargingiconography", &v2->_chargingIconographyStateNotifyToken, v15, v30);

      objc_destroyWeak(&v31);
    }

    if (!v2->_chargeToFullNotifyToken)
    {
      v17 = MEMORY[0x277D85CD0];
      v18 = MEMORY[0x277D85CD0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __29__ChargingStateProvider_init__block_invoke_4;
      v28[3] = &unk_278259630;
      objc_copyWeak(&v29, &location);
      notify_register_dispatch("com.apple.system.powersources.chargingtofulloverride", &v2->_chargeToFullNotifyToken, v17, v28);

      objc_destroyWeak(&v29);
    }

    if (!v2->_chargingStatusOverrideNotifyToken)
    {
      v19 = MEMORY[0x277D85CD0];
      v20 = MEMORY[0x277D85CD0];
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __29__ChargingStateProvider_init__block_invoke_5;
      v26 = &unk_278259630;
      objc_copyWeak(&v27, &location);
      notify_register_dispatch("com.apple.PerfPowerServices.PLBatteryUIChargingStateOverride", &v2->_chargingStatusOverrideNotifyToken, v19, &v23);

      objc_destroyWeak(&v27);
    }

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v2 selector:sel_lowPowerModeChanged name:*MEMORY[0x277CCA5E8] object:0];

    [(ChargingStateProvider *)v2 refreshData];
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__ChargingStateProvider_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained powerSourceChanged];
}

void __29__ChargingStateProvider_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargeLevelChanged];
}

void __29__ChargingStateProvider_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargingStateChanged];
}

void __29__ChargingStateProvider_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargingStateChanged];
}

void __29__ChargingStateProvider_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained chargingStateChanged];
}

- (void)refreshData
{
  [(ChargingStateProvider *)self refreshChargeLevel];
  [(ChargingStateProvider *)self refreshPowerSource];
  [(ChargingStateProvider *)self refreshLowPowerMode];
  [(ChargingStateProvider *)self refreshChargingState];
  [(ChargingStateProvider *)self refreshTimeEstimates];

  [(ChargingStateProvider *)self computeStates];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delegates)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__ChargingStateProvider_setDelegate___block_invoke;
    v7[3] = &unk_278259658;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(queue, v7);
  }
}

- (void)computeStates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ChargingStateProvider_computeStates__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __38__ChargingStateProvider_computeStates__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) stateCalculation];
  v2 = ChargingStateProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugDescription];
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "Data changed %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(*(a1 + 32) + 40);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = *(*(a1 + 32) + 32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __38__ChargingStateProvider_computeStates__block_invoke_77;
        block[3] = &unk_2782591D0;
        block[4] = v9;
        dispatch_async(v10, block);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __38__ChargingStateProvider_computeStates__block_invoke_77(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 dataChanged];
  }

  return result;
}

- (void)lowPowerModeChanged
{
  v17 = *MEMORY[0x277D85DE8];
  [(ChargingStateProvider *)self refreshLowPowerMode];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        queue = self->_queue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __44__ChargingStateProvider_lowPowerModeChanged__block_invoke;
        v11[3] = &unk_278259658;
        v11[4] = v8;
        v11[5] = self;
        dispatch_async(queue, v11);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(ChargingStateProvider *)self computeStates];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __44__ChargingStateProvider_lowPowerModeChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) isLowPowerModeEnabled];

    return [v4 lowPowerModeChangedWithEnabled:v5];
  }

  return result;
}

- (void)refreshLowPowerMode
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  [(ChargingStateProvider *)self setIsLowPowerModeEnabled:v4];
}

- (void)powerSourceChanged
{
  v17 = *MEMORY[0x277D85DE8];
  [(ChargingStateProvider *)self refreshPowerSource];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        queue = self->_queue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __43__ChargingStateProvider_powerSourceChanged__block_invoke;
        v11[3] = &unk_278259658;
        v11[4] = v8;
        v11[5] = self;
        dispatch_async(queue, v11);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(ChargingStateProvider *)self computeStates];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__ChargingStateProvider_powerSourceChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) isExternallyConnected];

    return [v4 powerSourceChangedWithConnected:v5];
  }

  return result;
}

- (void)refreshPowerSource
{
  v5 = [(ChargingStateProvider *)self chargingIconStateDictionary];
  v3 = [v5 objectForKeyedSubscript:@"chargeStatus"];

  if (v3)
  {
    v4 = [v5 objectForKeyedSubscript:@"chargeStatus"];
    v3 = [v4 isEqualToString:@"Disconnected"] ^ 1;
  }

  [(ChargingStateProvider *)self setIsExternallyConnected:v3];
}

- (void)chargeLevelChanged
{
  [(ChargingStateProvider *)self refreshChargeLevel];

  [(ChargingStateProvider *)self computeStates];
}

- (void)refreshChargeLevel
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v3 = IOPSGetPercentRemaining();
  if (v3)
  {
    v4 = v3;
    v5 = ChargingStateProviderLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = v4;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Error querying uisoc:%d", buf, 8u);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_delegates;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          queue = self->_queue;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __43__ChargingStateProvider_refreshChargeLevel__block_invoke;
          v14[3] = &unk_278259680;
          v14[4] = v11;
          v15 = v20;
          dispatch_async(queue, v14);
          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    [(ChargingStateProvider *)self setUisocLevel:v20];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __43__ChargingStateProvider_refreshChargeLevel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 uisocChangedWithUisoc:v5];
  }

  return result;
}

- (void)chargingStateChanged
{
  v17 = *MEMORY[0x277D85DE8];
  [(ChargingStateProvider *)self refreshChargingState];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        queue = self->_queue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __45__ChargingStateProvider_chargingStateChanged__block_invoke;
        v11[3] = &unk_278259658;
        v11[4] = v8;
        v11[5] = self;
        dispatch_async(queue, v11);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(ChargingStateProvider *)self computeStates];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __45__ChargingStateProvider_chargingStateChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) chargingState];

    return [v4 chargingStateChangedWithState:v5];
  }

  return result;
}

- (void)refreshChargingState
{
  v3 = [(ChargingStateProvider *)self getChargingState];

  [(ChargingStateProvider *)self setChargingState:v3];
}

- (signed)getChargingState
{
  v3 = [(ChargingStateProvider *)self chargingIconStateDictionary];
  v4 = [(ChargingStateProvider *)self isExternallyConnected];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  [(ChargingStateProvider *)self setIsEoc:0];
  [(ChargingStateProvider *)self setIsPaused:0];
  v6 = [v3 objectForKeyedSubscript:@"chargeStatus"];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v3 objectForKeyedSubscript:@"chargeStatus"];
  v8 = [v7 isEqualToString:@"Disconnected"];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = [v3 objectForKeyedSubscript:@"chargeStatus"];
  v10 = [v9 isEqualToString:@"Charging Completed"];

  if (v10)
  {
    [(ChargingStateProvider *)self setIsEoc:1];
LABEL_8:
    v11 = v5;
    goto LABEL_9;
  }

  v13 = [v3 objectForKeyedSubscript:@"chargeStatus"];
  v14 = [v13 isEqualToString:@"Charging"];

  if ((v14 & 1) == 0)
  {
    v15 = [v3 objectForKeyedSubscript:@"chargeStatus"];
    -[ChargingStateProvider setIsPaused:](self, "setIsPaused:", [v15 isEqualToString:@"Charging On Hold"]);

    v16 = [v3 objectForKeyedSubscript:@"holds"];
    v17 = [(ChargingStateProvider *)self getMostApplicableState:v16 isPaused:[(ChargingStateProvider *)self isPaused]];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:@"isEoc"];
      -[ChargingStateProvider setIsEoc:](self, "setIsEoc:", [v18 BOOLValue]);

      v19 = [v17 objectForKeyedSubscript:@"name"];
      v11 = [v19 chargingIntervalType];

      goto LABEL_9;
    }
  }

  v20 = [v3 objectForKeyedSubscript:@"overrides"];
  v21 = [(ChargingStateProvider *)self isBatteryGaugingEnabledWithOverrideStateArray:v20];

  if (v21)
  {
    v11 = 10;
  }

  else
  {
    v11 = v5;
  }

  if (!v21 && v4)
  {
    if (![(ChargingStateProvider *)self isSlowCharger])
    {
      goto LABEL_8;
    }

    v11 = v5;
    if (![(ChargingStateProvider *)self isPaused])
    {
      if ([(ChargingStateProvider *)self isEoc])
      {
        v11 = v5;
      }

      else
      {
        v11 = 9;
      }
    }
  }

LABEL_9:

  return v11;
}

- (BOOL)isBatteryGaugingEnabledWithOverrideStateArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:{@"reason", v15}];
          v11 = v10;
          if (v10 && ([v10 isEqualToString:@"PowerD-BatteryGaugingMitigation"] & 1) != 0)
          {

            v12 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)chargingIconStateDictionary
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = IOPSCopyChargeStatus();
  if (v2)
  {
    v3 = v2;
    v4 = ChargingStateProviderLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v8) = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Error in fetching charging status %d", buf, 8u);
    }
  }

  else
  {
    v4 = ChargingStateProviderLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v8 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "State of chargingStatusDictionary post converting to ObjC %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return 0;
}

- (void)didUpdateEstimateFor:(int64_t)a3 newEstimate:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_delegates;
  v10 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__ChargingStateProvider_didUpdateEstimateFor_newEstimate_error___block_invoke;
        block[3] = &unk_2782596A8;
        block[4] = v14;
        v21 = a3;
        v19 = v8;
        v20 = v9;
        dispatch_async(queue, block);

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  [(ChargingStateProvider *)self refreshTimeEstimates];
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ChargingStateProvider_didUpdateEstimateFor_newEstimate_error___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v7 = a1[6];
    v6 = a1[7];

    return [v4 chargeTimeEstimateChangedForTarget:v6 newEstimate:v5 error:v7];
  }

  return result;
}

- (void)refreshTimeEstimates
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ChargingStateProvider_refreshTimeEstimates__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __45__ChargingStateProvider_refreshTimeEstimates__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _refreshTimeEstimates];
  [*(a1 + 32) refreshChargingState];
  v2 = *(a1 + 32);

  return [v2 computeStates];
}

- (void)_refreshTimeEstimates
{
  v3 = 0;
  [(ChargingStateProvider *)self refreshTimeEstimateForTarget:0 slowChargerSignal:&v3];
  [(ChargingStateProvider *)self refreshTimeEstimateForTarget:1 slowChargerSignal:&v3];
  [(ChargingStateProvider *)self setIsSlowCharger:v3];
}

- (void)refreshTimeEstimateForTarget:(int64_t)a3 slowChargerSignal:(BOOL *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [(ChargingStateProvider *)self chargeTimeEstimateClient];

  if (v7)
  {
    v8 = [(ChargingStateProvider *)self chargeTimeEstimateClient];
    v17 = 0;
    v9 = [v8 estimateForTarget:a3 withError:&v17];
    v10 = v17;

    if (v10)
    {
      v11 = ChargingStateProviderLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v19 = a3;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Error querying estimate for target: %ld, error: %@", buf, 0x16u);
      }

      goto LABEL_21;
    }

    v12 = ChargingStateProviderLog();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v19 = a3;
        v20 = 2112;
        v21 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Charge time estimate for target: %ld, output: %@", buf, 0x16u);
      }

      *a4 |= [v9 additionalInformation] == 4;
      *a4 |= [v9 additionalInformation] == 5;
      if ([v9 additionalInformation] == 3 || objc_msgSend(v9, "additionalInformation") == 4)
      {
        v14 = MEMORY[0x277CCABB0];
        [v9 estimate];
        v15 = [v14 numberWithDouble:?];
        if (a3)
        {
          [(ChargingStateProvider *)self setTimeEstimateToLimit:v15];
        }

        else
        {
          [(ChargingStateProvider *)self setTimeEstimateTo80:v15];
        }

        goto LABEL_21;
      }

      if (!a3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = a3;
        _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "Error querying estimate for target: %ld, output was nil", buf, 0xCu);
      }

      if (!a3)
      {
LABEL_20:
        [(ChargingStateProvider *)self setTimeEstimateTo80:0];
        goto LABEL_21;
      }
    }

    [(ChargingStateProvider *)self setTimeEstimateToLimit:0];
LABEL_21:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> isLowPowerModeEnabled: %d, isExternallyConnected: %d, uisocLevel: %d, isEoc: %d, isPaused: %d, chargingState: %d", v5, self, -[ChargingStateProvider isLowPowerModeEnabled](self, "isLowPowerModeEnabled"), -[ChargingStateProvider isExternallyConnected](self, "isExternallyConnected"), -[ChargingStateProvider uisocLevel](self, "uisocLevel"), -[ChargingStateProvider isEoc](self, "isEoc"), -[ChargingStateProvider isPaused](self, "isPaused"), -[ChargingStateProvider chargingState](self, "chargingState")];

  v7 = [(ChargingStateProvider *)self timeEstimateTo80];
  v8 = [(ChargingStateProvider *)self timeEstimateToLimit];
  v9 = [v6 stringByAppendingFormat:@", timeEstimateTo80: %@, timeEstimateToLimit: %@", v7, v8];

  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_chargingIconographyStateNotifyToken);
  notify_cancel(self->_powerSourceNotifyToken);
  notify_cancel(self->_uisocChangeToken);
  notify_cancel(self->_chargeToFullNotifyToken);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

  v4.receiver = self;
  v4.super_class = ChargingStateProvider;
  [(ChargingStateProvider *)&v4 dealloc];
}

- (ChargingStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end