@interface StockManager
+ (id)sharedManager;
+ (void)clearSharedManager;
- (BOOL)anyMarketOpen;
- (BOOL)setLocalStockListFromSyncableStockList:(id)list;
- (StockManager)init;
- (id)_defaultStockDictionaries;
- (id)makeSyncableStockListFromList:(id)list;
- (id)stockForURL:(id)l;
- (id)stockWithSymbol:(id)symbol;
- (id)stocksList;
- (void)DeleteChartData:(id)data;
- (void)RemoveChartDataFromLRU:(id)u;
- (void)UpdateChartDataInLRU:(id)u;
- (void)_addStock:(id)stock withRemoteNotification:(BOOL)notification;
- (void)_checkForAddedStocks;
- (void)_checkForDeletedStocks;
- (void)_checkForMovedStocks;
- (void)_removeStock:(id)stock withRemoteNotification:(BOOL)notification;
- (void)_saveDataChangesWithStockDictionaries:(id)dictionaries;
- (void)clearCachedChartData;
- (void)dealloc;
- (void)handleSyncedDataChanged:(id)changed;
- (void)moveStockFromIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)purgeTransientData;
- (void)reloadStocksFromDefaults;
- (void)saveDataChanges;
- (void)saveListChanges;
@end

@implementation StockManager

+ (id)sharedManager
{
  v2 = __sharedStockManager;
  if (!__sharedStockManager)
  {
    v3 = objc_alloc_init(StockManager);
    v4 = __sharedStockManager;
    __sharedStockManager = v3;

    v2 = __sharedStockManager;
  }

  return v2;
}

+ (void)clearSharedManager
{
  v2 = __sharedStockManager;
  __sharedStockManager = 0;
}

- (StockManager)init
{
  v79 = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = StockManager;
  v2 = [(StockManager *)&v73 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldPostSyncNotifications = 1;
    if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
    {
      v4 = +[ExchangeManager sharedManager];
      v5 = +[StocksPreferences sharedPreferences];
      [v5 synchronize];
      v60 = v5;
      v6 = [v5 objectForKey:@"stocks"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
        stocksList = v3->_stocksList;
        v3->_stocksList = v8;

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v10 = v6;
        v11 = [v10 countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v70;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v70 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v69 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [[Stock alloc] initWithDictionary:v15];
                if (v16)
                {
                  [(NSMutableArray *)v3->_stocksList addObject:v16];
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v69 objects:v78 count:16];
          }

          while (v12);
        }
      }

      defaultStore = [MEMORY[0x277CCAD80] defaultStore];
      syncedKVStore = v3->_syncedKVStore;
      v3->_syncedKVStore = defaultStore;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel_handleSyncedDataChanged_ name:*MEMORY[0x277CCA7C0] object:v3->_syncedKVStore];

      v20 = [(NSUbiquitousKeyValueStore *)v3->_syncedKVStore arrayForKey:@"stocks"];
      _defaultStockDictionaries = [(StockManager *)v3 _defaultStockDictionaries];
      v58 = v20;
      v59 = _defaultStockDictionaries;
      if (isKindOfClass)
      {
        v22 = 0;
      }

      else
      {
        v23 = StocksLogForCategory(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26BAAD000, v23, OS_LOG_TYPE_DEFAULT, "#StockManager init - NO LOCAL DEFAULTS", buf, 2u);
        }

        if (v20)
        {
          v24 = StocksLogForCategory(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26BAAD000, v24, OS_LOG_TYPE_DEFAULT, "#StockManager setting local stocks to synced stock list", buf, 2u);
          }

          v22 = [(StockManager *)v3 setLocalStockListFromSyncableStockList:v20];
        }

        else
        {
          v25 = _defaultStockDictionaries;

          v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v25, "count")}];
          v27 = v3->_stocksList;
          v3->_stocksList = v26;

          v65 = 0u;
          v66 = 0u;
          v57 = [v25 count] != 0;
          v67 = 0u;
          v68 = 0u;
          v6 = v25;
          v28 = [v6 countByEnumeratingWithState:&v65 objects:v77 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v66;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v66 != v30)
                {
                  objc_enumerationMutation(v6);
                }

                v32 = *(*(&v65 + 1) + 8 * j);
                v33 = StocksLogForCategory(1);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v76 = v32;
                  _os_log_impl(&dword_26BAAD000, v33, OS_LOG_TYPE_DEFAULT, "#StockManager adding from default stocks: %@", buf, 0xCu);
                }

                v34 = [[Stock alloc] initWithDictionary:v32];
                [(NSMutableArray *)v3->_stocksList addObject:v34];
              }

              v29 = [v6 countByEnumeratingWithState:&v65 objects:v77 count:16];
            }

            while (v29);
          }

          _defaultStockDictionaries = v59;
          v22 = v57;
        }
      }

      if (!v3->_stocksList)
      {
        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v36 = v3->_stocksList;
        v3->_stocksList = v35;
      }

      v37 = [v60 objectForKey:@"lastModified"];
      v38 = v37;
      if (v37)
      {
        [v37 doubleValue];
        v3->_lastModifiedTime = v39;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v3->_lastModifiedTime = v41;
      }

      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(_defaultStockDictionaries, "count")}];
      defaultListStockSymbols = v3->_defaultListStockSymbols;
      v3->_defaultListStockSymbols = v42;

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v44 = v6;
      v45 = [v44 countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v62;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v62 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = v3->_defaultListStockSymbols;
            v50 = [*(*(&v61 + 1) + 8 * k) objectForKey:@"symbol"];
            [(NSMutableArray *)v49 addObject:v50];
          }

          v46 = [v44 countByEnumeratingWithState:&v61 objects:v74 count:16];
        }

        while (v46);
      }

      if (v22)
      {
        [(StockManager *)v3 saveListChanges];
      }

      if (DefaultStocksOverride)
      {
        [(NSMutableArray *)v3->_stocksList removeAllObjects];
        [(NSMutableArray *)v3->_stocksList addObjectsFromArray:DefaultStocksOverride];
      }

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v3 selector:sel_clearCachedChartData name:*MEMORY[0x277D76670] object:0];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, GizmoSettingsChanged, @"com.apple.stocks.PreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
      v53 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v53, v3->_stocksList, StockWasModified, StockWasAddedDarwinNotification, v3, CFNotificationSuspensionBehaviorCoalesce);
      v54 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v54, v3->_stocksList, StockWasModified, StockWasMovedDarwinNotification, v3, CFNotificationSuspensionBehaviorCoalesce);
      v55 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v55, v3->_stocksList, StockWasModified, StockWasDeletedDarwinNotification, v3, CFNotificationSuspensionBehaviorCoalesce);
    }
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.stocks.PreferencesChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self->_stocksList, StockWasAddedDarwinNotification, self);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self->_stocksList, StockWasMovedDarwinNotification, self);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self->_stocksList, StockWasDeletedDarwinNotification, self);
  v7.receiver = self;
  v7.super_class = StockManager;
  [(StockManager *)&v7 dealloc];
}

- (id)stockForURL:(id)l
{
  v4 = [Stock symbolForURL:l];
  v5 = [(StockManager *)self stockWithSymbol:v4];

  return v5;
}

- (id)_defaultStockDictionaries
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = +[SCWatchlistDefaults defaultsForCurrentCountry];
  v4 = +[SCWatchlistDefaults defaultsFromCarrierBundle];
  v14 = v3;
  v5 = [v3 defaultsByAppendingDefaults:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  defaultSymbols = [v5 defaultSymbols];
  v7 = [defaultSymbols countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(defaultSymbols);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v19 = @"symbol";
        v20 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [array addObject:v12];
      }

      v8 = [defaultSymbols countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)reloadStocksFromDefaults
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = StocksLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BAAD000, v3, OS_LOG_TYPE_DEFAULT, "#StockManager reloadStocksFromDefaults", buf, 2u);
  }

  v4 = +[ExchangeManager sharedManager];
  [v4 reloadExchangesFromDefaults];

  v5 = +[StocksPreferences sharedPreferences];
  [v5 synchronize];

  v6 = +[StocksPreferences sharedPreferences];
  v7 = [v6 objectForKey:@"stocks"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 objectForKey:@"symbol"];
            v15 = [(StockManager *)self stockWithSymbol:v14];

            if (v15)
            {
              [v15 populateFromDictionary:v13];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"StocksDidReloadFromDefaultsNotification" object:0];

    v7 = v17;
  }
}

- (void)handleSyncedDataChanged:(id)changed
{
  v53 = *MEMORY[0x277D85DE8];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CCA7B0]];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [(NSUbiquitousKeyValueStore *)self->_syncedKVStore arrayForKey:@"stocks"];
  v8 = StocksLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v52 = unsignedIntValue;
    _os_log_impl(&dword_26BAAD000, v8, OS_LOG_TYPE_DEFAULT, "#StockManager #sync changeReason: %lu", buf, 0xCu);
  }

  if (SyncedStocksOverride)
  {

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  if (unsignedIntValue != 3 || v7 != 0)
  {
LABEL_9:
    v35 = v7;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    v11 = v10;
    if (SyncedStocksOverride)
    {
      [v10 removeAllObjects];
      [v11 addObjectsFromArray:SyncedStocksOverride];
    }

    v12 = [(NSMutableArray *)self->_stocksList count];
    if (v12 == [v11 count])
    {
      if (![(NSMutableArray *)self->_stocksList count])
      {
LABEL_50:

        return;
      }

      v13 = 0;
      while (1)
      {
        v14 = [(NSMutableArray *)self->_stocksList objectAtIndex:v13];
        symbol = [v14 symbol];

        v16 = [v11 objectAtIndex:v13];
        [v16 objectForKey:@"symbol"];
        v18 = v17 = self;

        LOBYTE(v16) = [symbol isEqualToString:v18];
        self = v17;

        if ((v16 & 1) == 0)
        {
          break;
        }

        if ([(NSMutableArray *)v17->_stocksList count]<= ++v13)
        {
          goto LABEL_50;
        }
      }
    }

    v19 = 0x277CCA000uLL;
    if (self->_shouldPostSyncNotifications)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:StocksWillSyncNotification object:0];
    }

    if (unsignedIntValue > 1)
    {
      if (unsignedIntValue != 2)
      {
        if (unsignedIntValue == 3)
        {
          goto LABEL_25;
        }

LABEL_47:
        if (self->_shouldPostSyncNotifications)
        {
          defaultCenter2 = [*(v19 + 2968) defaultCenter];
          [defaultCenter2 postNotificationName:StockListDidChangeNotification object:0];
        }

        [(StockManager *)self saveListChanges];
        defaultCenter3 = [*(v19 + 2968) defaultCenter];
        [defaultCenter3 postNotificationName:StockListDidSaveNotification object:0];

        goto LABEL_50;
      }

      v31 = StocksLogForCategory(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26BAAD000, v31, OS_LOG_TYPE_DEFAULT, "NSUbiquitousKeyValueStore Quota Violation", buf, 2u);
      }
    }

    else if (unsignedIntValue)
    {
      if (unsignedIntValue != 1)
      {
        goto LABEL_47;
      }

LABEL_25:
      v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v11];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      selfCopy = self;
      obj = [(StockManager *)self makeSyncableStockListFromList:self->_stocksList];
      v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v40)
      {
        v38 = *v46;
        v39 = v11;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v46 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v45 + 1) + 8 * i);
            v23 = [v22 objectForKey:@"symbol"];
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v24 = v11;
            v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v42;
              while (2)
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v42 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = [*(*(&v41 + 1) + 8 * j) objectForKey:@"symbol"];
                  v30 = [v23 isEqualToString:v29];

                  if (v30)
                  {

                    goto LABEL_40;
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }
            }

            [v36 addObject:v22];
LABEL_40:

            v11 = v39;
          }

          v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v40);
      }

      self = selfCopy;
      [(StockManager *)selfCopy setLocalStockListFromSyncableStockList:v36];

      v19 = 0x277CCA000;
      goto LABEL_47;
    }

    [(StockManager *)self setLocalStockListFromSyncableStockList:v11];
    goto LABEL_47;
  }
}

- (id)makeSyncableStockListFromList:(id)list
{
  v45 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v29 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:SyncedPropertyNames count:4];
  if ([listCopy count] && (objc_msgSend(listCopy, "objectAtIndex:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = listCopy;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          archiveDictionary = [*(*(&v38 + 1) + 8 * i) archiveDictionary];
          if (archiveDictionary)
          {
            [v6 addObject:archiveDictionary];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = listCopy;
  }

  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v27 = *v35;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * j);
        v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v29, "count")}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = v29;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v30 + 1) + 8 * k);
              v24 = [v16 objectForKey:v23];
              if (v24)
              {
                [v17 setObject:v24 forKey:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v20);
        }

        [v28 addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v14);
  }

  return v28;
}

- (BOOL)setLocalStockListFromSyncableStockList:(id)list
{
  v49 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableArray count](self->_stocksList, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  v6 = self->_stocksList;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        symbol = [v11 symbol];
        [v5 setObject:v11 forKey:symbol];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v8);
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  stocksList = selfCopy->_stocksList;
  selfCopy->_stocksList = v13;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = listCopy;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v36)
  {
    v32 = 0;
    v33 = *v38;
    *&v15 = 138412290;
    v30 = v15;
    v34 = v5;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v37 + 1) + 8 * j);
        v18 = [v17 objectForKey:{@"symbol", v30}];
        v19 = [v5 objectForKey:v18];

        archiveDictionary = [v19 archiveDictionary];
        v21 = [archiveDictionary mutableCopy];

        if (v21)
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = SyncedPropertyNames[v22];
            v25 = [v17 objectForKeyedSubscript:v24];
            v26 = [v21 objectForKeyedSubscript:v24];
            if (([v26 isEqualToString:v25] & 1) == 0)
            {
              if (v25)
              {
                [v21 setObject:v25 forKeyedSubscript:v24];
              }

              else
              {
                [v21 removeObjectForKey:v24];
              }

              v23 = 1;
            }

            ++v22;
          }

          while (v22 != 4);
          if (v23)
          {
            [v19 populateFromDictionary:v21];
            v32 = 1;
          }
        }

        else
        {
          v27 = [[Stock alloc] initWithDictionary:v17];

          v32 = 1;
          v19 = v27;
        }

        [(NSMutableArray *)selfCopy->_stocksList addObject:v19];
        v28 = StocksLogForCategory(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          v46 = v19;
          _os_log_impl(&dword_26BAAD000, v28, OS_LOG_TYPE_DEFAULT, "#StockManager #sync setLocalStockListFromSyncableStockList adding stock: %@", buf, 0xCu);
        }

        v5 = v34;
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v36);
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

- (id)stocksList
{
  if (self->_stocksList)
  {
    return self->_stocksList;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)stockWithSymbol:(id)symbol
{
  v18 = *MEMORY[0x277D85DE8];
  symbolCopy = symbol;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_stocksList;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        symbol = [v9 symbol];
        v11 = [symbol isEqualToString:symbolCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_addStock:(id)stock withRemoteNotification:(BOOL)notification
{
  notificationCopy = notification;
  stockCopy = stock;
  stocksList = [(StockManager *)self stocksList];
  [stocksList addObject:stockCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:StockListDidChangeNotification object:0];

  v8 = +[ExchangeManager sharedManager];
  exchange = [stockCopy exchange];
  v10 = [v8 containsExchange:exchange];

  if ((v10 & 1) == 0)
  {
    exchange2 = [stockCopy exchange];
    [v8 addExchange:exchange2];
  }

  if (notificationCopy)
  {
    self->_needRemoteAddNotification = 1;
  }
}

- (void)_removeStock:(id)stock withRemoteNotification:(BOOL)notification
{
  notificationCopy = notification;
  stockCopy = stock;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:StockWillBeRemovedNotification[0] object:stockCopy];

  [(NSMutableArray *)self->_stocksList removeObjectIdenticalTo:stockCopy];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:StockListDidChangeNotification object:0];

  exchange = [stockCopy exchange];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  stocksList = self->_stocksList;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __52__StockManager__removeStock_withRemoteNotification___block_invoke;
  v16 = &unk_279D16868;
  v11 = exchange;
  v17 = v11;
  v18 = &v19;
  [(NSMutableArray *)stocksList enumerateObjectsUsingBlock:&v13];
  if ((v20[3] & 1) == 0)
  {
    v12 = [ExchangeManager sharedManager:v13];
    [v12 removeExchange:v11];
  }

  if (notificationCopy)
  {
    self->_needRemoteDeleteNotification = 1;
  }

  _Block_object_dispose(&v19, 8);
}

void __52__StockManager__removeStock_withRemoteNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 exchange];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)moveStockFromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v8 = [(NSMutableArray *)self->_stocksList objectAtIndex:?];
  [(NSMutableArray *)self->_stocksList removeObjectAtIndex:index];
  [(NSMutableArray *)self->_stocksList insertObject:v8 atIndex:toIndex];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:StockListDidChangeNotification object:0];

  self->_needRemoteMoveNotification = 1;
}

- (void)RemoveChartDataFromLRU:(id)u
{
  uCopy = u;
  v5 = uCopy;
  if (uCopy)
  {
    chartDataLRUCache = self->_chartDataLRUCache;
    v9 = v5;
    if (chartDataLRUCache)
    {
      uCopy = [(NSMutableArray *)chartDataLRUCache removeObjectIdenticalTo:v5];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:50];
      v8 = self->_chartDataLRUCache;
      self->_chartDataLRUCache = v7;
    }

    v5 = v9;
  }

  MEMORY[0x2821F96F8](uCopy, v5);
}

- (void)DeleteChartData:(id)data
{
  dataCopy = data;
  stock = [dataCopy stock];
  chartInterval = [dataCopy chartInterval];

  [stock setChartData:0 forInterval:chartInterval];
}

- (void)UpdateChartDataInLRU:(id)u
{
  uCopy = u;
  v5 = uCopy;
  if (uCopy)
  {
    v7 = uCopy;
    [(StockManager *)self RemoveChartDataFromLRU:uCopy];
    if ([(NSMutableArray *)self->_chartDataLRUCache count]== 50)
    {
      v6 = [(NSMutableArray *)self->_chartDataLRUCache objectAtIndex:0];
      [(StockManager *)self DeleteChartData:v6];
    }

    uCopy = [(NSMutableArray *)self->_chartDataLRUCache addObject:v7];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](uCopy, v5);
}

- (void)clearCachedChartData
{
  lastObject = [(NSMutableArray *)self->_chartDataLRUCache lastObject];
  if (lastObject)
  {
    v4 = lastObject;
    do
    {
      [(StockManager *)self DeleteChartData:v4];
      lastObject2 = [(NSMutableArray *)self->_chartDataLRUCache lastObject];

      v4 = lastObject2;
    }

    while (lastObject2);
  }
}

- (BOOL)anyMarketOpen
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_stocksList;
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

        if ([*(*(&v7 + 1) + 8 * i) marketIsOpen])
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

- (void)_saveDataChangesWithStockDictionaries:(id)dictionaries
{
  v4 = MEMORY[0x277CBEAA8];
  dictionariesCopy = dictionaries;
  date = [v4 date];
  [date timeIntervalSince1970];
  self->_lastModifiedTime = v7;

  v10 = +[StocksPreferences sharedPreferences];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastModifiedTime];
  [v10 setObject:v8 forKey:@"lastModified"];

  [v10 setObject:dictionariesCopy forKey:@"stocks"];
  [v10 synchronize];
  v9 = +[ExchangeManager sharedManager];
  [v9 saveChanges];
}

- (void)saveListChanges
{
  v33 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_stocksList, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = self->_stocksList;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v4);
          }

          archiveDictionary = [*(*(&v27 + 1) + 8 * v8) archiveDictionary];
          if (archiveDictionary)
          {
            [v3 addObject:archiveDictionary];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v6);
    }

    v10 = [(StockManager *)self makeSyncableStockListFromList:v3];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v23 + 1) + 8 * v16) objectForKey:{@"symbol", v23}];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v18 = [(NSUbiquitousKeyValueStore *)self->_syncedKVStore arrayForKey:@"stocks"];
    v19 = v18;
    if (!v18 || ([v18 isEqual:v12] & 1) == 0 && (objc_msgSend(v19, "count") || (-[NSMutableArray isEqual:](self->_defaultListStockSymbols, "isEqual:", v11) & 1) == 0))
    {
      [(NSUbiquitousKeyValueStore *)self->_syncedKVStore setObject:v12 forKey:@"stocks", v23];
      [(NSUbiquitousKeyValueStore *)self->_syncedKVStore synchronize];
    }

    [(StockManager *)self _saveDataChangesWithStockDictionaries:v3, v23];
    if (self->_needRemoteAddNotification)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, StockWasAddedDarwinNotification, 0, 0, 0);
      self->_needRemoteAddNotification = 0;
    }

    if (self->_needRemoteDeleteNotification)
    {
      v21 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v21, StockWasDeletedDarwinNotification, 0, 0, 0);
      self->_needRemoteDeleteNotification = 0;
    }

    if (self->_needRemoteMoveNotification)
    {
      v22 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v22, StockWasMovedDarwinNotification, 0, 0, 0);
      self->_needRemoteMoveNotification = 0;
    }
  }
}

- (void)saveDataChanges
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_stocksList, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_stocksList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        archiveDictionary = [*(*(&v10 + 1) + 8 * v8) archiveDictionary];
        if (archiveDictionary)
        {
          [v3 addObject:archiveDictionary];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(StockManager *)self _saveDataChangesWithStockDictionaries:v3];
}

- (void)purgeTransientData
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_stocksList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isTransient])
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = array;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(StockManager *)self _removeStock:*(*(&v15 + 1) + 8 * j) withRemoteNotification:0, v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_checkForAddedStocks
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = +[StocksPreferences sharedPreferences];
  [v3 synchronize];

  v4 = +[StocksPreferences sharedPreferences];
  v5 = [v4 objectForKey:@"lastModified"];

  if (v5)
  {
    lastModifiedTime = self->_lastModifiedTime;
    [v5 doubleValue];
    if (lastModifiedTime < v7)
    {
      v8 = +[StocksPreferences sharedPreferences];
      v9 = [v8 objectForKey:@"stocks"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        defaultCenter = v9;
        v11 = [defaultCenter countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v19 = v9;
          v20 = 0;
          v13 = *v22;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(defaultCenter);
              }

              v15 = *(*(&v21 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [v15 objectForKey:@"symbol"];
                if (v16)
                {
                  v17 = [(StockManager *)self stockWithSymbol:v16];
                  if (v17)
                  {
                    v18 = v17;
                  }

                  else
                  {
                    v18 = [[Stock alloc] initWithDictionary:v15];
                    if (v18)
                    {
                      [(StockManager *)self _addStock:v18 withRemoteNotification:0];
                      v20 = 1;
                    }
                  }
                }
              }
            }

            v12 = [defaultCenter countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v12);

          v9 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_22;
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:StockListDidChangeNotification object:0];
        }
      }

LABEL_22:
    }
  }
}

- (void)_checkForDeletedStocks
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = +[StocksPreferences sharedPreferences];
  [v3 synchronize];

  v4 = +[StocksPreferences sharedPreferences];
  v5 = [v4 objectForKey:@"lastModified"];

  if (v5)
  {
    lastModifiedTime = self->_lastModifiedTime;
    [v5 doubleValue];
    if (lastModifiedTime < v7)
    {
      v36 = v5;
      v8 = +[StocksPreferences sharedPreferences];
      v9 = [v8 objectForKey:@"stocks"];

      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v46;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v45 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v17 objectForKey:@"symbol"];
              if (v18)
              {
                [array addObject:v18];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v14);
      }

      v35 = v12;

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v19 = self->_stocksList;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v42;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v41 + 1) + 8 * j);
            symbol = [v24 symbol];
            v26 = [array containsObject:symbol];

            if ((v26 & 1) == 0)
            {
              symbol2 = [v24 symbol];
              [array2 addObject:symbol2];
            }
          }

          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v21);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v28 = array2;
      v29 = [v28 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v38;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [(StockManager *)self stockWithSymbol:*(*(&v37 + 1) + 8 * k), v35];
            [(StockManager *)self _removeStock:v33 withRemoteNotification:0];
          }

          v30 = [v28 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v30);
      }

      if ([v28 count])
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:StockListDidChangeNotification object:0];
      }

      v5 = v36;
    }
  }
}

- (void)_checkForMovedStocks
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = +[StocksPreferences sharedPreferences];
  [v3 synchronize];

  v4 = +[StocksPreferences sharedPreferences];
  v5 = [v4 objectForKey:@"lastModified"];

  if (v5)
  {
    lastModifiedTime = self->_lastModifiedTime;
    [v5 doubleValue];
    if (lastModifiedTime < v7)
    {
      v8 = +[StocksPreferences sharedPreferences];
      v9 = [v8 objectForKey:@"stocks"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v5;
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v21 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [v16 objectForKey:@"symbol"];
                if (v17)
                {
                  v18 = [(StockManager *)self stockWithSymbol:v17];
                  if (v18)
                  {
                    [v10 addObject:v18];
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }

        if (([(NSMutableArray *)self->_stocksList isEqual:v10]& 1) == 0)
        {
          [(NSMutableArray *)self->_stocksList removeAllObjects];
          [(NSMutableArray *)self->_stocksList addObjectsFromArray:v10];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:StockListDidChangeNotification object:0];
        }

        v5 = v20;
      }
    }
  }
}

@end