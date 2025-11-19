@interface SCWatchlist
+ (id)zoneMergeHandler;
+ (id)zoneSchema;
- (SCWatchlist)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaults:(id)a5;
- (SCWatchlist)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaultsProvider:(id)a5;
- (id)_sortedStocks:(id)a3 withSymbolOrder:(id)a4;
- (void)_enqueueStartupSequence;
- (void)addObserver:(id)a3;
- (void)addStock:(id)a3 completion:(id)a4;
- (void)database:(id)a3 didChangeZone:(id)a4 from:(id)a5 to:(id)a6;
- (void)fetchStocksWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeStock:(id)a3 completion:(id)a4;
- (void)removeSymbol:(id)a3 completion:(id)a4;
- (void)reorderStock:(id)a3 toIndex:(unint64_t)a4 completion:(id)a5;
- (void)reorderSymbol:(id)a3 afterSymbol:(id)a4 completion:(id)a5;
- (void)replaceSymbol:(id)a3 withSymbol:(id)a4 completion:(id)a5;
- (void)synchronize;
@end

@implementation SCWatchlist

- (SCWatchlist)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaultsProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = SCWatchlist;
  v12 = [(SCWatchlist *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    objc_storeStrong(&v13->_metadataProvider, a4);
    objc_storeStrong(&v13->_defaultsProvider, a5);
    v14 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v13->_observers;
    v13->_observers = v14;

    v16 = [[SCKStartupQueue alloc] initWithDeferredStartup:1];
    startupQueue = v13->_startupQueue;
    v13->_startupQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("SCWatchlist.callback", v18);
    callbackQueue = v13->_callbackQueue;
    v13->_callbackQueue = v19;

    [v9 addObserver:v13 forZone:@"Watchlist"];
    [(SCWatchlist *)v13 _enqueueStartupSequence];
  }

  return v13;
}

- (SCWatchlist)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaults:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SCWatchlistInlineDefaultsProvider alloc] initWithDefaults:v8];

  v12 = [(SCWatchlist *)self initWithDatabase:v10 metadataProvider:v9 defaultsProvider:v11];
  return v12;
}

- (void)fetchStocksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWatchlist *)self startupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SCWatchlist_fetchStocksWithCompletion___block_invoke;
  v7[3] = &unk_279D15ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __41__SCWatchlist_fetchStocksWithCompletion___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_2;
  v8 = &unk_279D15F78;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = MEMORY[0x26D68CA60](&v5);
  v4 = [*(a1 + 32) database];
  [v4 readContentsOfZone:@"Watchlist" withBlock:v3];
}

void __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_3;
    v18[3] = &unk_279D15F00;
    v19 = v5;
    v7 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = v7;
    __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_3(v18);

    v8 = v19;
  }

  else
  {
    v8 = [a2 recordWithName:@"watchlist"];
    v9 = [v8 encryptedValuesByKey];
    v10 = [v9 objectForKeyedSubscript:@"symbols"];

    v11 = StocksLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_DEFAULT, "fetch stocks CK record ordered symbols: %@", buf, 0xCu);
    }

    v12 = [*(a1 + 32) metadataProvider];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_12;
    v15[3] = &unk_279D15F50;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v10;
    v17 = v13;
    v14 = v10;
    [v12 fetchMetadataForSymbols:v14 completion:v15];
  }
}

void __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_3(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_26BAAD000, v2, OS_LOG_TYPE_DEFAULT, "fetch stocks read zone error: %@", buf, 0xCu);
  }

  if (a1[6])
  {
    v4 = [a1[5] callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_10;
    v5[3] = &unk_279D15ED8;
    v7 = a1[6];
    v6 = a1[4];
    dispatch_async(v4, v5);
  }
}

void __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = StocksLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_26BAAD000, v7, OS_LOG_TYPE_DEFAULT, "fetch stocks metadata provider returned stocks: %@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) _sortedStocks:v5 withSymbolOrder:*(a1 + 40)];
  v9 = StocksLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "fetch stocks metadata provided ordered stocks: %@", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v10 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SCWatchlist_fetchStocksWithCompletion___block_invoke_13;
    block[3] = &unk_279D15F28;
    v14 = *(a1 + 48);
    v12 = v8;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)addStock:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(SCWatchlist *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SCWatchlist_addStock_completion___block_invoke;
    block[3] = &unk_279D15FA0;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)removeSymbol:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(SCWatchlist *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SCWatchlist_removeSymbol_completion___block_invoke;
    block[3] = &unk_279D15FA0;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

- (void)reorderSymbol:(id)a3 afterSymbol:(id)a4 completion:(id)a5
{
  v6 = a5;
  if (v6)
  {
    v7 = [(SCWatchlist *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SCWatchlist_reorderSymbol_afterSymbol_completion___block_invoke;
    block[3] = &unk_279D15FA0;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

- (void)replaceSymbol:(id)a3 withSymbol:(id)a4 completion:(id)a5
{
  v6 = a5;
  if (v6)
  {
    v7 = [(SCWatchlist *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SCWatchlist_replaceSymbol_withSymbol_completion___block_invoke;
    block[3] = &unk_279D15FA0;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCWatchlist *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCWatchlist *)self observers];
  [v5 removeObject:v4];
}

- (void)synchronize
{
  v2 = [(SCWatchlist *)self database];
  [v2 synchronize];
}

- (void)removeStock:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 symbol];
  [(SCWatchlist *)self removeSymbol:v7 completion:v6];
}

- (void)reorderStock:(id)a3 toIndex:(unint64_t)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(SCWatchlist *)self startupQueue];
  [v7 executeAfterStartup:&__block_literal_global_6];

  if (v6)
  {
    v8 = [(SCWatchlist *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SCWatchlist_reorderStock_toIndex_completion___block_invoke_2;
    block[3] = &unk_279D15FA0;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

+ (id)zoneSchema
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [[SCKRecordFieldSchema alloc] initWithName:@"symbols" valueClass:objc_opt_class() required:1 encrypted:1];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v4 = [[SCKRecordSchema alloc] initWithRecordType:@"Watchlist" fieldSchemas:v3];
  v5 = [SCKZoneSchema alloc];
  v9 = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v7 = [(SCKZoneSchema *)v5 initWithName:@"Watchlist" atomic:1 recordSchemas:v6];

  return v7;
}

+ (id)zoneMergeHandler
{
  v2 = objc_opt_new();

  return v2;
}

- (void)database:(id)a3 didChangeZone:(id)a4 from:(id)a5 to:(id)a6
{
  v8 = a6;
  v9 = [a5 recordWithName:@"watchlist"];
  v10 = [v8 recordWithName:@"watchlist"];

  v11 = [v9 encryptedValuesByKey];
  v12 = [v11 objectForKeyedSubscript:@"symbols"];

  v13 = [v10 encryptedValuesByKey];
  v14 = [v13 objectForKeyedSubscript:@"symbols"];

  v15 = [MEMORY[0x277CBEB58] set];
  [v15 addObjectsFromArray:v12];
  [v15 addObjectsFromArray:v14];
  v16 = [(SCWatchlist *)self metadataProvider];
  v17 = [v15 allObjects];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__SCWatchlist_database_didChangeZone_from_to___block_invoke;
  v20[3] = &unk_279D15FF0;
  v21 = v12;
  v22 = v14;
  v23 = self;
  v18 = v14;
  v19 = v12;
  [v16 fetchMetadataForSymbols:v17 completion:v20];
}

void __46__SCWatchlist_database_didChangeZone_from_to___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 symbol];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v12 = [v4 sck_objectsForKeys:*(a1 + 32)];
  v13 = [v4 sck_objectsForKeys:*(a1 + 40)];
  v14 = [[SCWatchlistDiff alloc] initWithOldStocks:v12 newStocks:v13];
  if (![(SCWatchlistDiff *)v14 isEmpty])
  {
    v24 = v13;
    v25 = v12;
    v26 = v5;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = [*(a1 + 48) observers];
    v16 = [v15 copy];

    v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          v22 = [*(a1 + 48) callbackQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__SCWatchlist_database_didChangeZone_from_to___block_invoke_2;
          block[3] = &unk_279D15FC8;
          v23 = *(a1 + 48);
          block[4] = v21;
          block[5] = v23;
          v28 = v14;
          dispatch_async(v22, block);
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);
    }

    v12 = v25;
    v5 = v26;
    v13 = v24;
  }
}

- (id)_sortedStocks:(id)a3 withSymbolOrder:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 symbol];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * j);
        v22 = [v7 objectForKeyedSubscript:{v21, v24}];
        if (v22)
        {
          [v15 addObject:v22];
          [v7 removeObjectForKey:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  return v15;
}

- (void)_enqueueStartupSequence
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 1;
  v3 = [(SCWatchlist *)self startupQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke;
  v8[3] = &unk_279D16040;
  v8[4] = self;
  v8[5] = v9;
  [v3 enqueueStartupBlock:v8];

  v4 = [(SCWatchlist *)self startupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_26;
  v7[3] = &unk_279D160B8;
  v7[4] = v9;
  [v4 enqueueStartupBlock:v7];

  v5 = [(SCWatchlist *)self startupQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_41;
  v6[3] = &unk_279D16130;
  v6[4] = self;
  v6[5] = v9;
  [v5 enqueueStartupBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) database];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_2;
  v7[3] = &unk_279D16018;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 readContentsOfZone:@"Watchlist" withBlock:v7];
}

uint64_t __38__SCWatchlist__enqueueStartupSequence__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recordWithName:@"watchlist"];

  if (v3)
  {
    v4 = StocksLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "skipping migration because the watchlist record already exists", v6, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return (*(*(a1 + 32) + 16))();
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x277CCAD80] defaultStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_3;
    v14[3] = &unk_279D16068;
    v6 = v5;
    v7 = *(a1 + 32);
    v15 = v6;
    v17 = v7;
    v16 = v4;
    v8 = MEMORY[0x26D68CA60](v14);
    if (NSClassFromString(&cfstr_Xctest.isa))
    {
      v9 = StocksLogForCategory(4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "skipping KVS synchronization because we're running unit tests", buf, 2u);
      }

      v8[2](v8);
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_39;
      v10[3] = &unk_279D16090;
      v11 = v6;
      v12 = v8;
      [v11 synchronizeWithCompletionHandler:v10];
    }
  }

  else
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_27;
    v21 = &unk_279D15FA0;
    v22 = v3;
    v22[2]();
    v6 = v22;
  }
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) arrayForKey:@"stocks"];
  v3 = [v2 valueForKeyPath:@"symbol"];
  v4 = StocksLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v23 = [v3 count];
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "in the KVS we found %lu stocks to migrate: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = +[SCWatchlistDefaults defaultsHistoryForCurrentCountry];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v17 + 1) + 8 * v9) defaultSymbols];
      v11 = [v10 isEqualToArray:v3];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = StocksLogForCategory(4);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v16 = "skipping KVS migration because the contents of the KVS match a default set";
    goto LABEL_17;
  }

LABEL_11:

  v12 = [v3 count];
  v13 = StocksLogForCategory(4);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 0;
    v16 = "skipping KVS migration because the KVS is empty";
LABEL_17:
    _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
LABEL_18:

    goto LABEL_19;
  }

  if (v14)
  {
    v15 = [v3 count];
    *buf = 134217984;
    v23 = v15;
    _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, "migrating %lu stocks from KVS to watchlist", buf, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_19:
  (*(*(a1 + 40) + 16))();
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = StocksLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__SCWatchlist__enqueueStartupSequence__block_invoke_39_cold_1(v3, v4);
    }
  }

  [*(a1 + 32) synchronize];
  (*(*(a1 + 40) + 16))();
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = StocksLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BAAD000, v5, OS_LOG_TYPE_DEFAULT, "attempting to fetch watchlist defaults", buf, 2u);
    }

    v6 = [*(a1 + 32) defaultsProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_43;
    v8[3] = &unk_279D16108;
    v7 = &v9;
    v9 = v4;
    [v6 fetchWatchlistDefaultsWithCompletion:v8];
  }

  else
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_42;
    v14 = &unk_279D15FA0;
    v7 = &v15;
    v15 = v3;
    v15[2]();
  }
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_44;
    v8[3] = &unk_279D160E0;
    v9 = v6;
    v10 = *(a1 + 32);
    __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_44(v8);
  }

  else
  {
    v7 = StocksLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = [v5 count];
      _os_log_impl(&dword_26BAAD000, v7, OS_LOG_TYPE_DEFAULT, "saving %lu default symbolss to watchlist", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_44(uint64_t a1)
{
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_44_cold_1(a1, v2);
  }

  return (*(*(a1 + 40) + 16))();
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_39_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "KVS synchronization failed but we'll migrate whatever's in there if non-empty (error was %{public}@", &v2, 0xCu);
}

void __38__SCWatchlist__enqueueStartupSequence__block_invoke_2_44_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "failed to fetch watchlist defaults with error: %{public}@", &v3, 0xCu);
}

@end