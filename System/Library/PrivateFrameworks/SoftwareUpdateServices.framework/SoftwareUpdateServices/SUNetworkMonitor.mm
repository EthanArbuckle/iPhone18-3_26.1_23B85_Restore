@interface SUNetworkMonitor
+ (SUNetworkMonitor)sharedInstance;
+ (void)setHoldsWiFiAssertion:(BOOL)a3;
- (BOOL)_overriddenByPreferences;
- (BOOL)isBootstrap;
- (BOOL)isCellularDataRoamingEnabled;
- (BOOL)isCellularPossible;
- (BOOL)isCellularRoaming;
- (BOOL)isCurrentNetworkTypeCellular;
- (BOOL)isCurrentNetworkTypeExpensive;
- (BOOL)isPathSatisfied;
- (NSHashTable)_allObservers;
- (SUNetworkMonitor)init;
- (id)operatorName;
- (id)servingPlmn;
- (id)telephonyClient;
- (int)currentCellularType;
- (int)currentNetworkType;
- (void)_addObserver:(id)a3;
- (void)_carrierBundleChanged;
- (void)_handleNWPath:(id)a3;
- (void)_initNetworkObservation;
- (void)_init_currentlyRoaming;
- (void)_init_dataRoamingEnabled;
- (void)_init_internetDataStatus;
- (void)_operatorBundleChanged;
- (void)_removeObserver:(id)a3;
- (void)_resetCtClient;
- (void)_runOnAllObservers:(id)a3;
- (void)addObserver:(id)a3;
- (void)carrierBundleChange:(id)a3;
- (void)dataRoamingSettingsChanged:(id)a3 status:(BOOL)a4;
- (void)dealloc;
- (void)detectOverriddenNetwork;
- (void)displayStatusChanged:(id)a3 status:(id)a4;
- (void)internetDataStatus:(id)a3;
- (void)operatorBundleChange:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setCurrentCellularType:(int)a3;
- (void)setCurrentNetworkType:(int)a3;
@end

@implementation SUNetworkMonitor

- (SUNetworkMonitor)init
{
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"initiating SUNetworkMonitor [%p]", self];
  SULogDebug(@"[SUNetworkMonitor] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUNetworkMonitor init]");

  v36.receiver = self;
  v36.super_class = SUNetworkMonitor;
  v10 = [(SUNetworkMonitor *)&v36 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 16) = 0;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.softwareupdateservices.SUNetworkMonitor.coreTelephonyQueue", v13);
    v15 = *(v10 + 5);
    *(v10 + 5) = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.softwareupdateservices.SUNetworkMonitor.callbackQueue", v16);
    v18 = *(v10 + 6);
    *(v10 + 6) = v17;

    v19 = *(v10 + 7);
    *(v10 + 7) = 0;

    default_evaluator = nw_path_create_default_evaluator();
    v21 = *(v10 + 8);
    *(v10 + 8) = default_evaluator;

    objc_initWeak(&location, v10);
    v22 = *(v10 + 8);
    v23 = *(v10 + 5);
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __24__SUNetworkMonitor_init__block_invoke;
    v33 = &unk_279CACB20;
    objc_copyWeak(&v34, &location);
    nw_path_evaluator_set_update_handler();
    v24 = *(v10 + 5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SUNetworkMonitor_init__block_invoke_2;
    block[3] = &unk_279CAA708;
    v29 = v10;
    dispatch_sync(v24, block);
    v25 = *(v10 + 8);
    nw_path_evaluator_start();

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __24__SUNetworkMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleNWPath:v5];
  }
}

uint64_t __24__SUNetworkMonitor_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resetCtClient];
  v2 = *(a1 + 32);

  return [v2 _initNetworkObservation];
}

- (void)dealloc
{
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"deallocating SUNetworkMonitor [%p]", self];
  SULogDebug(@"[SUNetworkMonitor] %s: %@", v3, v4, v5, v6, v7, v8, v9, "[SUNetworkMonitor dealloc]");

  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
  }

  v11.receiver = self;
  v11.super_class = SUNetworkMonitor;
  [(SUNetworkMonitor *)&v11 dealloc];
}

+ (SUNetworkMonitor)sharedInstance
{
  if (sharedInstance_singletonPredicate != -1)
  {
    +[SUNetworkMonitor sharedInstance];
  }

  v3 = sharedInstance___instance_9;

  return v3;
}

uint64_t __34__SUNetworkMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUNetworkMonitor);
  v1 = sharedInstance___instance_9;
  sharedInstance___instance_9 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (int)currentNetworkType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    overriddenCurrentNetworkType = self->_overriddenCurrentNetworkType;
    *(v8 + 6) = overriddenCurrentNetworkType;
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__SUNetworkMonitor_currentNetworkType__block_invoke;
    v6[3] = &unk_279CAA858;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(ctQueue, v6);
    overriddenCurrentNetworkType = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return overriddenCurrentNetworkType;
}

- (int)currentCellularType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    overriddenCurrentCellularType = self->_overriddenCurrentCellularType;
    *(v8 + 6) = overriddenCurrentCellularType;
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__SUNetworkMonitor_currentCellularType__block_invoke;
    v6[3] = &unk_279CAA858;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(ctQueue, v6);
    overriddenCurrentCellularType = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return overriddenCurrentCellularType;
}

- (BOOL)isCurrentNetworkTypeCellular
{
  v3 = [(SUNetworkMonitor *)self currentNetworkType];

  return [(SUNetworkMonitor *)self isNetworkTypeCellular:v3];
}

- (BOOL)isCurrentNetworkTypeExpensive
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (![(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SUNetworkMonitor_isCurrentNetworkTypeExpensive__block_invoke;
    block[3] = &unk_279CACB48;
    block[4] = self;
    block[5] = &v24;
    block[6] = &v20;
    dispatch_sync(ctQueue, block);
    if (v25[3])
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  *(v21 + 6) = self->_overriddenCurrentNetworkType;
  overriddenExpensive = self->_overriddenExpensive;
  *(v25 + 24) = overriddenExpensive;
  if (!overriddenExpensive)
  {
    goto LABEL_8;
  }

LABEL_3:
  v4 = MEMORY[0x277CCACA8];
  v5 = SUStringFromNetworkType(*(v21 + 6));
  v6 = v5;
  if (*(v25 + 24))
  {
    v7 = &stru_287B45B60;
  }

  else
  {
    v7 = @"n't";
  }

  v18 = [v4 stringWithFormat:@"Current network %@ is%@ considered expensive", v5, v7];
  SULogInfo(@"[SUNetworkMonitor] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUNetworkMonitor isCurrentNetworkTypeExpensive]");

  v15 = *(v25 + 24);
LABEL_9:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v15 & 1;
}

void *__49__SUNetworkMonitor_isCurrentNetworkTypeExpensive__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 30);
  *(*(result[6] + 8) + 24) = *(result[4] + 20);
  return result;
}

- (BOOL)isCellularRoaming
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    overriddenRoaming = self->_overriddenRoaming;
    *(v8 + 24) = overriddenRoaming;
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SUNetworkMonitor_isCellularRoaming__block_invoke;
    v6[3] = &unk_279CAA858;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(ctQueue, v6);
    overriddenRoaming = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return overriddenRoaming & 1;
}

- (BOOL)isCellularDataRoamingEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    overriddenRoaming = self->_overriddenRoaming;
    *(v8 + 24) = overriddenRoaming;
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SUNetworkMonitor_isCellularDataRoamingEnabled__block_invoke;
    v6[3] = &unk_279CAA858;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(ctQueue, v6);
    overriddenRoaming = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return overriddenRoaming & 1;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(SUNetworkMonitor *)a2 addObserver:?];
    v5 = 0;
  }

  [(SUNetworkMonitor *)self _addObserver:v5];
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(SUNetworkMonitor *)a2 removeObserver:?];
    v5 = 0;
  }

  [(SUNetworkMonitor *)self _removeObserver:v5];
}

- (BOOL)isPathSatisfied
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    v3 = 1;
    *(v8 + 24) = 1;
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__SUNetworkMonitor_isPathSatisfied__block_invoke;
    v6[3] = &unk_279CAA858;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(ctQueue, v6);
    v3 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v3 & 1;
}

- (BOOL)isBootstrap
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (![(SUNetworkMonitor *)self _overriddenByPreferences])
  {
    dispatch_assert_queue_not_V2(self->_ctQueue);
    ctQueue = self->_ctQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__SUNetworkMonitor_isBootstrap__block_invoke;
    block[3] = &unk_279CAA948;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(ctQueue, block);
  }

  if (*(v17 + 24))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"bootstrap = %@", v4];
  SULogInfo(@"[SUNetworkMonitor] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUNetworkMonitor isBootstrap]");

  v12 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v12;
}

void __31__SUNetworkMonitor_isBootstrap__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v13 = 0;
  v3 = [v2 usingBootstrapDataService:&v13];
  v4 = v13;
  if (v4)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to get result from usingBootstrapDataService: %@", v4];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v5, v6, v7, v8, v9, v10, v11, "[SUNetworkMonitor isBootstrap]_block_invoke");
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
  }
}

- (BOOL)isCellularPossible
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatch_assert_queue_not_V2(self->_ctQueue);
  ctQueue = v2->_ctQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SUNetworkMonitor_isCellularPossible__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(ctQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)operatorName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_ctQueue);
  ctQueue = self->_ctQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SUNetworkMonitor_operatorName__block_invoke;
  v6[3] = &unk_279CAA948;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ctQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__SUNetworkMonitor_operatorName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) telephonyClient];
  v36 = 0;
  v3 = [v2 getCurrentDataSubscriptionContextSync:&v36];
  v4 = v36;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v13 = [*(a1 + 32) telephonyClient];
    v35 = 0;
    v14 = [v13 getOperatorName:v3 error:&v35];
    v4 = v35;
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (v4)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get the operator name: %@", v4];
      SULogError(@"[SUNetworkMonitor] %s: %@", v17, v18, v19, v20, v21, v22, v23, "[SUNetworkMonitor operatorName]_block_invoke");

      v24 = *(*(a1 + 40) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Operator Name: %@", *(*(*(a1 + 40) + 8) + 40)];
      SULogInfo(@"[SUNetworkMonitor] %s: %@", v26, v27, v28, v29, v30, v31, v32, "[SUNetworkMonitor operatorName]_block_invoke");
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error copying data subscription context: %@", v4];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUNetworkMonitor operatorName]_block_invoke");
  }
}

- (id)servingPlmn
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_ctQueue);
  ctQueue = self->_ctQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SUNetworkMonitor_servingPlmn__block_invoke;
  v6[3] = &unk_279CAA948;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ctQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__SUNetworkMonitor_servingPlmn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) telephonyClient];
  v36 = 0;
  v3 = [v2 getCurrentDataSubscriptionContextSync:&v36];
  v4 = v36;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v13 = [*(a1 + 32) telephonyClient];
    v35 = 0;
    v14 = [v13 copyServingPlmn:v3 error:&v35];
    v4 = v35;
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (v4)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get the serving plmn: %@", v4];
      SULogError(@"[SUNetworkMonitor] %s: %@", v17, v18, v19, v20, v21, v22, v23, "[SUNetworkMonitor servingPlmn]_block_invoke");

      v24 = *(*(a1 + 40) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Serving Plmn: %@", *(*(*(a1 + 40) + 8) + 40)];
      SULogInfo(@"[SUNetworkMonitor] %s: %@", v26, v27, v28, v29, v30, v31, v32, "[SUNetworkMonitor servingPlmn]_block_invoke");
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error copying data subscription context: %@", v4];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v6, v7, v8, v9, v10, v11, v12, "[SUNetworkMonitor servingPlmn]_block_invoke");
  }
}

- (void)_addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)_removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)_runOnAllObservers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v5 = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_observersLock);
    callbackQueue = self->_callbackQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SUNetworkMonitor__runOnAllObservers___block_invoke;
    v8[3] = &unk_279CAA8D0;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_async(callbackQueue, v8);
  }
}

void __39__SUNetworkMonitor__runOnAllObservers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSHashTable)_allObservers
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observersLock);

  return v3;
}

- (void)_handleNWPath:(id)a3
{
  path = a3;
  dispatch_assert_queue_V2(self->_ctQueue);
  if (path)
  {
    v4 = MEMORY[0x26D668870]();
    v5 = nw_path_get_status(path) == nw_path_status_satisfied;
    v6 = MEMORY[0x26D668880](path, 1);
    v7 = MEMORY[0x26D668880](path, 3);
    v8 = MEMORY[0x26D668880](path, 2);
    v9 = MEMORY[0x26D668860](path);
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"from nwpath, expensive = %d, satisfied = %d, wifi = %d, cellular = %d, wired = %d, constrained = %d", v4, v5, v6, v8, v7, v9];
    SULogDebug(@"[SUNetworkMonitor] %s: %@", v10, v11, v12, v13, v14, v15, v16, "[SUNetworkMonitor _handleNWPath:]");

    [(SUNetworkMonitor *)self setExpensive:v4];
    [(SUNetworkMonitor *)self setPathSatisfied:v5];
    [(SUNetworkMonitor *)self setPathConstrained:v9];
    if ((v6 & 1) != 0 || v7)
    {
      v18 = self;
      currentCellularType = 1;
    }

    else if (v8)
    {
      currentCellularType = self->_currentCellularType;
      v18 = self;
    }

    else
    {
      v18 = self;
      currentCellularType = 0;
    }

    [(SUNetworkMonitor *)v18 setCurrentNetworkType:currentCellularType];
  }

  else
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"path is nil"];
    SULogError(@"[SUNetworkMonitor] %s: %@", v19, v20, v21, v22, v23, v24, v25, "[SUNetworkMonitor _handleNWPath:]");
  }
}

- (BOOL)_overriddenByPreferences
{
  if (!+[SUUtility currentReleaseTypeIsInternal])
  {
    return 0;
  }

  v3 = +[SUPreferences sharedInstance];
  v4 = [v3 networkMonitorOverride];

  if (v4 && ([v4 intValue] & 0x80000000) == 0 && objc_msgSend(v4, "intValue") <= 9999)
  {
    self->_overriddenCurrentNetworkType = [v4 intValue] / 1000 % 10;
    self->_overriddenCurrentCellularType = [v4 intValue] / 100 % 10;
    HIDWORD(v7) = -858993459 * ([v4 intValue] / 10) + 429496728;
    LODWORD(v7) = HIDWORD(v7);
    self->_overriddenRoaming = (v7 >> 1) > 0x19999998;
    HIDWORD(v7) = 429496728 - 858993459 * [v4 intValue];
    LODWORD(v7) = HIDWORD(v7);
    v8 = (v7 >> 1) > 0x19999998;
    self->_overriddenExpensive = v8;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Overrides detected: network = %d, cellular = %d, roaming = %d, expensive = %d", self->_overriddenCurrentNetworkType, self->_overriddenCurrentCellularType, self->_overriddenRoaming, v8];
    SULogDebug(@"[SUNetworkMonitor] %s: %@", v9, v10, v11, v12, v13, v14, v15, "[SUNetworkMonitor _overriddenByPreferences]");

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_initNetworkObservation
{
  dispatch_assert_queue_V2(self->_ctQueue);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUNetworkMonitor__initNetworkObservation__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  if (_initNetworkObservation_onceToken != -1)
  {
    dispatch_once(&_initNetworkObservation_onceToken, block);
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = SUStringFromNetworkType(self->_currentCellularType);
  v5 = SUStringFromNetworkType(self->_currentNetworkType);
  v6 = v5;
  v7 = @"NO";
  if (self->_isExpensive)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_dataRoamingEnabled)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_roaming)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_pathSatisfied)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_pathConstrained)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_cellularDataPossible)
  {
    v7 = @"YES";
  }

  v20 = [v3 stringWithFormat:@"currentCellularType: %@, currentNetworkType: %@, isExpensive: %@, dataRoamingEnabled: %@, isRoaming: %@, pathSatisfied: %@, pathConstrained: %@, cellularDataPossible: %@", v4, v5, v8, v9, v10, v11, v12, v7];
  SULogDebug(@"[SUNetworkMonitor] %s: %@", v13, v14, v15, v16, v17, v18, v19, "[SUNetworkMonitor _initNetworkObservation]");
}

void __43__SUNetworkMonitor__initNetworkObservation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _init_internetDataStatus];
  v2 = *(*(a1 + 32) + 64);
  v3 = nw_path_evaluator_copy_path();
  [*(a1 + 32) _handleNWPath:v3];
  [*(a1 + 32) _init_dataRoamingEnabled];
  [*(a1 + 32) _init_currentlyRoaming];
}

- (void)_init_dataRoamingEnabled
{
  dispatch_assert_queue_V2(self->_ctQueue);
  v3 = [(SUNetworkMonitor *)self telephonyClient];
  v17 = 0;
  v4 = [v3 getCurrentDataServiceDescriptorSync:&v17];
  v5 = v17;

  if (!v4 || v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Error getting current data service descriptor: %@", v5];
  }

  else
  {
    v6 = [(SUNetworkMonitor *)self telephonyClient];
    v16 = 0;
    v7 = [v6 getInternationalDataAccessSync:v4 error:&v16];
    v5 = v16;

    if (!v5)
    {
      [(SUNetworkMonitor *)self setDataRoamingEnabled:v7];
      goto LABEL_7;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get international data status: %@", v5];
  }
  v15 = ;
  SULogInfo(@"[SUNetworkMonitor] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUNetworkMonitor _init_dataRoamingEnabled]");

LABEL_7:
}

- (void)_init_currentlyRoaming
{
  dispatch_assert_queue_V2(self->_ctQueue);
  v3 = [(SUNetworkMonitor *)self telephonyClient];
  v34 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v34];
  v5 = v34;

  if (!v4 || v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error copying data subscription context: %@", v5];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v17, v18, v19, v20, v21, v22, v23, "[SUNetworkMonitor _init_currentlyRoaming]");
  }

  else
  {
    v6 = [(SUNetworkMonitor *)self telephonyClient];
    v33 = 0;
    v7 = [v6 copyRegistrationDisplayStatus:v4 error:&v33];
    v5 = v33;

    if (!v7 || v5)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error copying registration display status: %@", v5];
      SULogInfo(@"[SUNetworkMonitor] %s: %@", v24, v25, v26, v27, v28, v29, v30, "[SUNetworkMonitor _init_currentlyRoaming]");
    }

    else
    {
      v8 = [v7 registrationDisplayStatus];
      v9 = [v8 isEqualToString:*MEMORY[0x277CC3E70]];

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"isRoaming = %d", v9];
      SULogInfo(@"[SUNetworkMonitor] %s: %@", v10, v11, v12, v13, v14, v15, v16, "[SUNetworkMonitor _init_currentlyRoaming]");

      [(SUNetworkMonitor *)self setCellularRoaming:v9];
    }
  }
}

- (void)_init_internetDataStatus
{
  dispatch_assert_queue_V2(self->_ctQueue);
  v3 = [(SUNetworkMonitor *)self telephonyClient];
  v19 = 0;
  v4 = [v3 getInternetDataStatusSync:&v19];
  v5 = v19;

  if ((!v4 || v5) && ([v5 code] == 4097 || objc_msgSend(v5, "code") == 4099))
  {
    [(SUNetworkMonitor *)self _resetCtClient];

    v6 = [(SUNetworkMonitor *)self telephonyClient];
    v18 = 0;
    v7 = [v6 getInternetDataStatusSync:&v18];
    v5 = v18;

    v4 = v7;
  }

  if (!v4 || v5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to get status from CoreTelephony with error %@", v5];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v10, v11, v12, v13, v14, v15, v16, "[SUNetworkMonitor _init_internetDataStatus]");
  }

  else
  {
    v8 = -[SUNetworkMonitor _networkTypeFromIndicator:](self, "_networkTypeFromIndicator:", [v4 indicator]);
    v9 = [v4 cellularDataPossible];
    [(SUNetworkMonitor *)self setCurrentCellularType:v8];
    [(SUNetworkMonitor *)self setCellularDataPossible:v9];
  }
}

- (id)telephonyClient
{
  dispatch_assert_queue_V2(self->_ctQueue);
  ctClient = self->_ctClient;
  if (!ctClient)
  {
    [(SUNetworkMonitor *)self _resetCtClient];
    ctClient = self->_ctClient;
  }

  return ctClient;
}

- (void)_resetCtClient
{
  dispatch_assert_queue_V2(self->_ctQueue);
  ctClient = self->_ctClient;
  if (ctClient)
  {
    self->_ctClient = 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:self->_ctQueue];
  v5 = self->_ctClient;
  self->_ctClient = v4;

  v6 = self->_ctClient;

  [(CoreTelephonyClient *)v6 setDelegate:self];
}

uint64_t __39__SUNetworkMonitor_setCellularRoaming___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 cellularRoamingStatusChanged:*(*(a1 + 32) + 28)];
    }
  }

  return MEMORY[0x2821F97C8]();
}

uint64_t __37__SUNetworkMonitor_setPathSatisfied___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 pathSatisficationStatusChangedTo:*(*(a1 + 32) + 31)];
    }
  }

  return MEMORY[0x2821F97C8]();
}

- (void)setCurrentNetworkType:(int)a3
{
  dispatch_assert_queue_V2(self->_ctQueue);
  currentNetworkType = self->_currentNetworkType;
  if (currentNetworkType != a3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = SUStringFromNetworkType(currentNetworkType);
    v8 = SUStringFromNetworkType(a3);
    v17 = [v6 stringWithFormat:@"Network type changed from %@ to %@", v7, v8];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v9, v10, v11, v12, v13, v14, v15, "[SUNetworkMonitor setCurrentNetworkType:]");

    v16 = self->_currentNetworkType;
    self->_currentNetworkType = a3;
    if (![(SUNetworkMonitor *)self _overriddenByPreferences])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__SUNetworkMonitor_setCurrentNetworkType___block_invoke;
      v18[3] = &unk_279CACB98;
      v19 = v16;
      v18[4] = self;
      [(SUNetworkMonitor *)self _runOnAllObservers:v18];
    }
  }
}

uint64_t __42__SUNetworkMonitor_setCurrentNetworkType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 networkChangedFromNetworkType:*(a1 + 40) toNetworkType:*(*(a1 + 32) + 20)];
    }
  }

  return MEMORY[0x2821F97D0]();
}

- (void)setCurrentCellularType:(int)a3
{
  dispatch_assert_queue_V2(self->_ctQueue);
  currentCellularType = self->_currentCellularType;
  if (currentCellularType != a3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = SUStringFromNetworkType(currentCellularType);
    v8 = SUStringFromNetworkType(a3);
    v17 = [v6 stringWithFormat:@"Cellular type changed from %@ to %@", v7, v8];
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v9, v10, v11, v12, v13, v14, v15, "[SUNetworkMonitor setCurrentCellularType:]");

    v16 = self->_currentCellularType;
    self->_currentCellularType = a3;
    if (![(SUNetworkMonitor *)self _overriddenByPreferences])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __43__SUNetworkMonitor_setCurrentCellularType___block_invoke;
      v18[3] = &unk_279CACB98;
      v19 = v16;
      v18[4] = self;
      [(SUNetworkMonitor *)self _runOnAllObservers:v18];
    }
  }
}

uint64_t __43__SUNetworkMonitor_setCurrentCellularType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 cellularChangedFromCellularType:*(a1 + 40) toCellularType:*(*(a1 + 32) + 24)];
    }
  }

  return MEMORY[0x2821F97D0]();
}

- (void)_carrierBundleChanged
{
  dispatch_assert_queue_V2(self->_ctQueue);
  if (![(SUNetworkMonitor *)self _overriddenByPreferences])
  {

    [(SUNetworkMonitor *)self _runOnAllObservers:&__block_literal_global_128];
  }
}

uint64_t __41__SUNetworkMonitor__carrierBundleChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 carrierBundleChanged];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)_operatorBundleChanged
{
  dispatch_assert_queue_V2(self->_ctQueue);
  if (![(SUNetworkMonitor *)self _overriddenByPreferences])
  {

    [(SUNetworkMonitor *)self _runOnAllObservers:&__block_literal_global_132];
  }
}

uint64_t __42__SUNetworkMonitor__operatorBundleChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 operatorBundleChanged];
    }
  }

  return MEMORY[0x2821F9730]();
}

+ (void)setHoldsWiFiAssertion:(BOOL)a3
{
  if (!+[SUUtility isWiFiCapable])
  {
    return;
  }

  v4 = __assertionCount;
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    if (!__assertionCount)
    {
      goto LABEL_7;
    }

    v5 = -1;
  }

  v4 = __assertionCount + v5;
  __assertionCount += v5;
LABEL_7:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi background assertion count changed: %lu", v4];
  SULogDebug(@"[SUNetworkMonitor] %s: %@", v6, v7, v8, v9, v10, v11, v12, "+[SUNetworkMonitor setHoldsWiFiAssertion:]");

  v13 = __assertionCount != 0;
  if (__wifiManager)
  {
    if (WiFiManagerClientGetType() != v13)
    {
      v14 = __wifiManager;

      MEMORY[0x2821878C8](v14, v13);
    }
  }

  else
  {
    v15 = *MEMORY[0x277CBECE8];
    __wifiManager = WiFiManagerClientCreate();
  }
}

- (void)displayStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  ctQueue = self->_ctQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUNetworkMonitor_displayStatusChanged_status___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(ctQueue, block);
}

void __48__SUNetworkMonitor_displayStatusChanged_status___block_invoke(id *a1)
{
  v2 = [a1[4] telephonyClient];
  v25 = 0;
  v3 = [v2 getCurrentDataSubscriptionContextSync:&v25];
  v4 = v25;

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Error copying data subscription context: %@", v4, v22];
    v24 = LABEL_9:;
    SULogInfo(@"[SUNetworkMonitor] %s: %@", v15, v16, v17, v18, v19, v20, v21, "[SUNetworkMonitor displayStatusChanged:status:]_block_invoke");

    goto LABEL_10;
  }

  if (![a1[5] isEqual:v3])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Ignoring status change notification for context %@ which is NOT the current context for cellular data. The cellular data context is %@", a1[5], v3];
    goto LABEL_9;
  }

  v6 = [a1[6] registrationDisplayStatus];
  v7 = [v6 isEqualToString:*MEMORY[0x277CC3E70]];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received status change for context: %@ which is the current preferred context for cellular data. New isRoaming: %d", a1[5], v7];
  SULogInfo(@"[SUNetworkMonitor] %s: %@", v8, v9, v10, v11, v12, v13, v14, "[SUNetworkMonitor displayStatusChanged:status:]_block_invoke");

  [a1[4] setCellularRoaming:v7];
LABEL_10:
}

- (void)operatorBundleChange:(id)a3
{
  ctQueue = self->_ctQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUNetworkMonitor_operatorBundleChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(ctQueue, block);
}

- (void)carrierBundleChange:(id)a3
{
  ctQueue = self->_ctQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUNetworkMonitor_carrierBundleChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(ctQueue, block);
}

- (void)internetDataStatus:(id)a3
{
  v4 = a3;
  ctQueue = self->_ctQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUNetworkMonitor_internetDataStatus___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(ctQueue, v7);
}

uint64_t __39__SUNetworkMonitor_internetDataStatus___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentCellularType:{objc_msgSend(*(a1 + 32), "_networkTypeFromIndicator:", objc_msgSend(*(a1 + 40), "indicator"))}];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cellularDataPossible];

  return [v2 setCellularDataPossible:v3];
}

- (void)dataRoamingSettingsChanged:(id)a3 status:(BOOL)a4
{
  ctQueue = self->_ctQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SUNetworkMonitor_dataRoamingSettingsChanged_status___block_invoke;
  v5[3] = &unk_279CAAD00;
  v5[4] = self;
  v6 = a4;
  dispatch_async(ctQueue, v5);
}

- (void)detectOverriddenNetwork
{
  dispatch_assert_queue_not_V2(self->_ctQueue);
  ctQueue = self->_ctQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(ctQueue, block);
}

uint64_t __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 72);
  v3 = *(v2 + 76);
  v5 = *(v2 + 80);
  result = [v2 _overriddenByPreferences];
  if (result)
  {
    result = *(a1 + 32);
    if (v4 != *(result + 72))
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke_2;
      v10[3] = &unk_279CACB98;
      v11 = v4;
      v10[4] = result;
      [result _runOnAllObservers:v10];
      result = *(a1 + 32);
    }

    if (v3 != *(result + 76))
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke_3;
      v8[3] = &unk_279CACB98;
      v9 = v3;
      v8[4] = result;
      [result _runOnAllObservers:v8];
      result = *(a1 + 32);
    }

    if (v5 != *(result + 80))
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke_4;
      v7[3] = &unk_279CACB70;
      v7[4] = result;
      return [result _runOnAllObservers:v7];
    }
  }

  return result;
}

uint64_t __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 networkChangedFromNetworkType:*(a1 + 40) toNetworkType:*(*(a1 + 32) + 72)];
    }
  }

  return MEMORY[0x2821F97D0]();
}

uint64_t __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 cellularChangedFromCellularType:*(a1 + 40) toCellularType:*(*(a1 + 32) + 76)];
    }
  }

  return MEMORY[0x2821F97D0]();
}

uint64_t __43__SUNetworkMonitor_detectOverriddenNetwork__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (objc_opt_respondsToSelector())
    {
      [v5 cellularRoamingStatusChanged:*(*(a1 + 32) + 80)];
    }
  }

  return MEMORY[0x2821F97C8]();
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUNetworkMonitor.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUNetworkMonitor.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end