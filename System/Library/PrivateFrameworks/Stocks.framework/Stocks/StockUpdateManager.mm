@interface StockUpdateManager
+ (id)sharedManager;
- (BOOL)hadError;
- (StockUpdateManager)init;
- (id)availableStockUpdater;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_kickoffUpdater:(id)updater forStocks:(id)stocks comprehensive:(BOOL)comprehensive forceUpdate:(BOOL)update completion:(id)completion;
- (void)_stocksDidReload;
- (void)_updateStocksBasic:(id)basic forced:(BOOL)forced withCompletion:(id)completion;
- (void)_updaterDidCancelOrFinish:(id)finish;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)resetUpdaters;
- (void)stockUpdater:(id)updater didFailWithError:(id)error whileUpdatingStocks:(id)stocks comprehensive:(BOOL)comprehensive;
- (void)stockUpdater:(id)updater didRequestUpdateForStocks:(id)stocks isComprehensive:(BOOL)comprehensive;
- (void)stockUpdater:(id)updater didUpdateStocks:(id)stocks isComprehensive:(BOOL)comprehensive;
- (void)stocksDidUpdateRemotely;
- (void)updateAllStocksBasicWithCompletion:(id)completion;
- (void)updateStaleStocksBasicWithCompletion:(id)completion;
- (void)updateStockBasicWithCompletion:(id)completion withCompletion:(id)withCompletion;
- (void)updateStockComprehensive:(id)comprehensive forced:(BOOL)forced withCompletion:(id)completion;
- (void)updateStocksComprehensive:(id)comprehensive;
@end

@implementation StockUpdateManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[StockUpdateManager sharedManager];
  }

  v3 = sharedManager___stockUpdaterInstance;

  return v3;
}

uint64_t __35__StockUpdateManager_sharedManager__block_invoke()
{
  sharedManager___stockUpdaterInstance = objc_alloc_init(StockUpdateManager);

  return MEMORY[0x2821F96F8]();
}

- (StockUpdateManager)init
{
  v12.receiver = self;
  v12.super_class = StockUpdateManager;
  v2 = [(StockUpdateManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeUpdaters = v2->_activeUpdaters;
    v2->_activeUpdaters = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inactiveUpdaters = v2->_inactiveUpdaters;
    v2->_inactiveUpdaters = v5;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    updateObservers = v2->_updateObservers;
    v2->_updateObservers = weakObjectsHashTable;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, stocksDidUpdateRemotely, @"StocksDidUpdateQuotesDarwin", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__stocksDidReload name:@"StocksDidReloadFromDefaultsNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(StockUpdateManager *)self reset];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"StocksDidUpdateQuotesDarwin", 0);
  v4.receiver = self;
  v4.super_class = StockUpdateManager;
  [(StockUpdateManager *)&v4 dealloc];
}

- (void)stocksDidUpdateRemotely
{
  if (!self->_postingRemoteUpdateNotification)
  {
    v3 = +[StockManager sharedManager];
    [v3 reloadStocksFromDefaults];
  }

  self->_postingRemoteUpdateNotification = 0;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  blockCopy = block;
  allObjects = [(NSHashTable *)self->_updateObservers allObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__StockUpdateManager__enumerateObserversRespondingToSelector_usingBlock___block_invoke;
  v9[3] = &unk_279D15CA8;
  v10 = blockCopy;
  selectorCopy = selector;
  v8 = blockCopy;
  [allObjects enumerateObjectsUsingBlock:v9];
}

void __73__StockUpdateManager__enumerateObserversRespondingToSelector_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_stocksDidReload
{
  v3 = +[StockManager sharedManager];
  stocksList = [v3 stocksList];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__StockUpdateManager__stocksDidReload__block_invoke;
  v6[3] = &unk_279D15CD0;
  v6[4] = self;
  v7 = stocksList;
  v5 = stocksList;
  [(StockUpdateManager *)self _enumerateObserversRespondingToSelector:sel_stockUpdateManager_didUpdateStocks_updates_ usingBlock:v6];
}

- (void)stockUpdater:(id)updater didRequestUpdateForStocks:(id)stocks isComprehensive:(BOOL)comprehensive
{
  comprehensiveCopy = comprehensive;
  stocksCopy = stocks;
  v8 = 3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__StockUpdateManager_stockUpdater_didRequestUpdateForStocks_isComprehensive___block_invoke;
  v10[3] = &unk_279D15CF8;
  if (!comprehensiveCopy)
  {
    v8 = 1;
  }

  v10[4] = self;
  v11 = stocksCopy;
  v12 = v8;
  v9 = stocksCopy;
  [(StockUpdateManager *)self _enumerateObserversRespondingToSelector:sel_stockUpdateManager_didRequestUpdateForStocks_updates_ usingBlock:v10];
}

- (void)stockUpdater:(id)updater didUpdateStocks:(id)stocks isComprehensive:(BOOL)comprehensive
{
  comprehensiveCopy = comprehensive;
  stocksCopy = stocks;
  v8 = 3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__StockUpdateManager_stockUpdater_didUpdateStocks_isComprehensive___block_invoke;
  v11[3] = &unk_279D15CF8;
  if (!comprehensiveCopy)
  {
    v8 = 1;
  }

  v11[4] = self;
  v12 = stocksCopy;
  v13 = v8;
  v9 = stocksCopy;
  [(StockUpdateManager *)self _enumerateObserversRespondingToSelector:sel_stockUpdateManager_didUpdateStocks_updates_ usingBlock:v11];
  if (!comprehensiveCopy)
  {
    self->_postingRemoteUpdateNotification = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"StocksDidUpdateQuotesDarwin", 0, 0, 1u);
  }
}

- (void)stockUpdater:(id)updater didFailWithError:(id)error whileUpdatingStocks:(id)stocks comprehensive:(BOOL)comprehensive
{
  comprehensiveCopy = comprehensive;
  errorCopy = error;
  stocksCopy = stocks;
  v11 = stocksCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__StockUpdateManager_stockUpdater_didFailWithError_whileUpdatingStocks_comprehensive___block_invoke;
  v15[3] = &unk_279D15D20;
  v12 = 3;
  if (!comprehensiveCopy)
  {
    v12 = 1;
  }

  v15[4] = self;
  v16 = stocksCopy;
  v17 = errorCopy;
  v18 = v12;
  v13 = errorCopy;
  v14 = v11;
  [(StockUpdateManager *)self _enumerateObserversRespondingToSelector:sel_stockUpdateManager_failedToUpdateStocks_updates_error_ usingBlock:v15];
}

- (void)resetUpdaters
{
  [(NSMutableArray *)self->_activeUpdaters makeObjectsPerformSelector:sel_cancel];
  [(NSMutableArray *)self->_inactiveUpdaters addObjectsFromArray:self->_activeUpdaters];
  activeUpdaters = self->_activeUpdaters;

  [(NSMutableArray *)activeUpdaters removeAllObjects];
}

- (id)availableStockUpdater
{
  if ([(NSMutableArray *)self->_inactiveUpdaters count])
  {
    lastObject = [(NSMutableArray *)self->_inactiveUpdaters lastObject];
    [(NSMutableArray *)self->_inactiveUpdaters removeLastObject];
  }

  else
  {
    lastObject = objc_opt_new();
    [lastObject setDelegate:self];
  }

  [(NSMutableArray *)self->_activeUpdaters addObject:lastObject];

  return lastObject;
}

- (BOOL)hadError
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_inactiveUpdaters;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hadError])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)cancel
{
  [(NSMutableArray *)self->_activeUpdaters makeObjectsPerformSelector:sel_cancel];
  inactiveUpdaters = self->_inactiveUpdaters;

  [(NSMutableArray *)inactiveUpdaters makeObjectsPerformSelector:sel_cancel];
}

- (void)reset
{
  [(NSMutableArray *)self->_activeUpdaters makeObjectsPerformSelector:sel_cancelAndInvalidate];
  [(NSMutableArray *)self->_inactiveUpdaters makeObjectsPerformSelector:sel_cancelAndInvalidate];
  [(NSMutableArray *)self->_activeUpdaters removeAllObjects];
  inactiveUpdaters = self->_inactiveUpdaters;

  [(NSMutableArray *)inactiveUpdaters removeAllObjects];
}

- (void)updateStocksComprehensive:(id)comprehensive
{
  v14 = *MEMORY[0x277D85DE8];
  comprehensiveCopy = comprehensive;
  v5 = StocksLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NetPreferences sharedPreferences];
    isNetworkReachable = [v6 isNetworkReachable];
    v8 = "NO";
    if (isNetworkReachable)
    {
      v8 = "YES";
    }

    v12 = 136315138;
    v13 = v8;
    _os_log_impl(&dword_26BAAD000, v5, OS_LOG_TYPE_DEFAULT, "#StockUpdater updateStocksComprehensive (reachable: %s)", &v12, 0xCu);
  }

  if ([comprehensiveCopy count])
  {
    v9 = +[NetPreferences sharedPreferences];
    isNetworkReachable2 = [v9 isNetworkReachable];

    if (isNetworkReachable2)
    {
      availableStockUpdater = [(StockUpdateManager *)self availableStockUpdater];
      [(StockUpdateManager *)self _kickoffUpdater:availableStockUpdater forStocks:comprehensiveCopy comprehensive:1 forceUpdate:0 completion:0];
    }
  }
}

- (void)updateStockComprehensive:(id)comprehensive forced:(BOOL)forced withCompletion:(id)completion
{
  forcedCopy = forced;
  v44 = *MEMORY[0x277D85DE8];
  comprehensiveCopy = comprehensive;
  completionCopy = completion;
  if (comprehensiveCopy && (+[NetPreferences sharedPreferences](NetPreferences, "sharedPreferences"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isNetworkReachable], v10, (v11 & 1) != 0))
  {
    v30 = forcedCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    availableStockUpdater = self->_activeUpdaters;
    v13 = [(NSMutableArray *)availableStockUpdater countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(availableStockUpdater);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          if ([v17 isComprehensive])
          {
            requestStocks = [v17 requestStocks];
            v19 = [requestStocks containsObject:comprehensiveCopy];

            if (v19)
            {
              v26 = StocksLogForCategory(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                symbol = [comprehensiveCopy symbol];
                *buf = 138412290;
                v40 = symbol;
                _os_log_impl(&dword_26BAAD000, v26, OS_LOG_TYPE_DEFAULT, "#StockUpdater updateStockComprehensive rolling update for %@ into existing update request", buf, 0xCu);
              }

              updateCompletionHandler = [v17 updateCompletionHandler];
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __69__StockUpdateManager_updateStockComprehensive_forced_withCompletion___block_invoke;
              v31[3] = &unk_279D15D48;
              v32 = updateCompletionHandler;
              v33 = completionCopy;
              v29 = updateCompletionHandler;
              [v17 setUpdateCompletionHandler:v31];

              goto LABEL_22;
            }
          }
        }

        v14 = [(NSMutableArray *)availableStockUpdater countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    availableStockUpdater = [(StockUpdateManager *)self availableStockUpdater];
    v20 = StocksLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      symbol2 = [comprehensiveCopy symbol];
      v22 = +[NetPreferences sharedPreferences];
      isNetworkReachable = [v22 isNetworkReachable];
      v24 = "NO";
      if (isNetworkReachable)
      {
        v24 = "YES";
      }

      *buf = 138412546;
      v40 = symbol2;
      v41 = 2080;
      v42 = v24;
      _os_log_impl(&dword_26BAAD000, v20, OS_LOG_TYPE_DEFAULT, "#StockUpdater updateStockComprehensive: %@ (reachable: %s)", buf, 0x16u);
    }

    v38 = comprehensiveCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    [(StockUpdateManager *)self _kickoffUpdater:availableStockUpdater forStocks:v25 comprehensive:1 forceUpdate:v30 completion:completionCopy];

LABEL_22:
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

uint64_t __69__StockUpdateManager_updateStockComprehensive_forced_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v9);
  }

  return MEMORY[0x2821F9730]();
}

- (void)updateStockBasicWithCompletion:(id)completion withCompletion:(id)withCompletion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = MEMORY[0x277CBEA60];
  withCompletionCopy = withCompletion;
  completionCopy2 = completion;
  v9 = [v6 arrayWithObjects:&completionCopy count:1];

  [(StockUpdateManager *)self _updateStocksBasic:v9 forced:1 withCompletion:withCompletionCopy, completionCopy, v11];
}

- (void)updateAllStocksBasicWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[StockManager sharedManager];
  stocksList = [v5 stocksList];

  [(StockUpdateManager *)self _updateStocksBasic:stocksList forced:1 withCompletion:completionCopy];
}

- (void)updateStaleStocksBasicWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[StockManager sharedManager];
  stocksList = [v5 stocksList];

  v7 = [stocksList indexesOfObjectsPassingTest:&__block_literal_global_47];
  v8 = [stocksList objectsAtIndexes:v7];

  v9 = StocksLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "#StockUpdater Found stale stocks for basic update: %@", &v10, 0xCu);
  }

  [(StockUpdateManager *)self _updateStocksBasic:v8 forced:0 withCompletion:completionCopy];
}

- (void)_updateStocksBasic:(id)basic forced:(BOOL)forced withCompletion:(id)completion
{
  forcedCopy = forced;
  v19 = *MEMORY[0x277D85DE8];
  basicCopy = basic;
  completionCopy = completion;
  if ([basicCopy count] && (+[NetPreferences sharedPreferences](NetPreferences, "sharedPreferences"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isNetworkReachable"), v10, (v11 & 1) != 0))
  {
    v12 = StocksLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[NetPreferences sharedPreferences];
      isNetworkReachable = [v13 isNetworkReachable];
      v15 = "NO";
      if (isNetworkReachable)
      {
        v15 = "YES";
      }

      v17 = 136315138;
      v18 = v15;
      _os_log_impl(&dword_26BAAD000, v12, OS_LOG_TYPE_DEFAULT, "#StockUpdater updateStocksBasic (reachable: %s)", &v17, 0xCu);
    }

    availableStockUpdater = [(StockUpdateManager *)self availableStockUpdater];
    [(StockUpdateManager *)self _kickoffUpdater:availableStockUpdater forStocks:basicCopy comprehensive:0 forceUpdate:forcedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_kickoffUpdater:(id)updater forStocks:(id)stocks comprehensive:(BOOL)comprehensive forceUpdate:(BOOL)update completion:(id)completion
{
  updateCopy = update;
  comprehensiveCopy = comprehensive;
  updaterCopy = updater;
  stocksCopy = stocks;
  completionCopy = completion;
  objc_initWeak(&location, updaterCopy);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __85__StockUpdateManager__kickoffUpdater_forStocks_comprehensive_forceUpdate_completion___block_invoke;
  v19 = &unk_279D15D90;
  selfCopy = self;
  objc_copyWeak(&v22, &location);
  v15 = completionCopy;
  v21 = v15;
  [updaterCopy setUpdateCompletionHandler:&v16];
  [updaterCopy _updateStocks:stocksCopy comprehensive:comprehensiveCopy forceUpdate:{updateCopy, v16, v17, v18, v19, selfCopy}];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __85__StockUpdateManager__kickoffUpdater_forStocks_comprehensive_forceUpdate_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v5 _updaterDidCancelOrFinish:WeakRetained];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

- (void)_updaterDidCancelOrFinish:(id)finish
{
  inactiveUpdaters = self->_inactiveUpdaters;
  finishCopy = finish;
  [(NSMutableArray *)inactiveUpdaters addObject:finishCopy];
  [(NSMutableArray *)self->_activeUpdaters removeObject:finishCopy];
}

@end