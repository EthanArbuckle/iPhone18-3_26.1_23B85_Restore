@interface SCWWatchlistManager
+ (id)supportedCommands;
+ (id)zoneMergeHandler;
+ (id)zoneSchema;
- (SCWWatchlistManager)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaults:(id)a5;
- (SCWWatchlistManager)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaultsProvider:(id)a5;
- (id)_sortedStocks:(id)a3 withSymbolOrder:(id)a4;
- (void)_enqueueStartupSequence;
- (void)addObserver:(id)a3;
- (void)addStock:(id)a3 completion:(id)a4;
- (void)addStock:(id)a3 watchlist:(id)a4 completion:(id)a5;
- (void)addWatchlist:(id)a3 identifier:(id)a4 sortState:(id)a5 sortOrderState:(id)a6 displayState:(id)a7 completion:(id)a8;
- (void)addWatchlistToWatchlistOrder:(id)a3 completion:(id)a4;
- (void)database:(id)a3 didChangeZone:(id)a4 from:(id)a5 to:(id)a6;
- (void)fetchAllWatchlistsWithCompletion:(id)a3;
- (void)fetchStocksFromWatchlist:(id)a3 completion:(id)a4;
- (void)fetchStocksWithCompletion:(id)a3;
- (void)fetchWatchlistOrderWithCompletion:(id)a3;
- (void)legacyWatchlistSortState:(id)a3;
- (void)migrateToDefaultWatchlist:(id)a3 sortState:(id)a4 sortOrderState:(id)a5 displayState:(id)a6 completion:(id)a7;
- (void)removeObserver:(id)a3;
- (void)removeStock:(id)a3 completion:(id)a4;
- (void)removeSymbol:(id)a3 completion:(id)a4;
- (void)removeSymbol:(id)a3 watchlist:(id)a4 completion:(id)a5;
- (void)removeWatchlist:(id)a3 completion:(id)a4;
- (void)removeWatchlistFromWatchlistOrder:(id)a3 completion:(id)a4;
- (void)renameWatchlist:(id)a3 newName:(id)a4 completion:(id)a5;
- (void)reorderStock:(id)a3 toIndex:(unint64_t)a4 completion:(id)a5;
- (void)reorderSymbol:(id)a3 afterSymbol:(id)a4 completion:(id)a5;
- (void)reorderSymbol:(id)a3 afterSymbol:(id)a4 watchlist:(id)a5 completion:(id)a6;
- (void)reorderSymbols:(id)a3 watchlist:(id)a4 completion:(id)a5;
- (void)reorderWatchlist:(id)a3 afterWatchlist:(id)a4 completion:(id)a5;
- (void)replaceSymbol:(id)a3 withSymbol:(id)a4 completion:(id)a5;
- (void)replaceSymbol:(id)a3 withSymbol:(id)a4 watchlist:(id)a5 completion:(id)a6;
- (void)sc_synchronize;
- (void)synchronize;
- (void)updateDisplayState:(id)a3 watchlist:(id)a4 completion:(id)a5;
- (void)updateSortState:(id)a3 newSortOrderState:(id)a4 newDisplayState:(id)a5 watchlist:(id)a6 completion:(id)a7;
@end

@implementation SCWWatchlistManager

+ (id)zoneSchema
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = [[SCWRecordFieldSchema alloc] initWithName:@"symbols" valueClass:objc_opt_class() required:1 encrypted:1];
  v15 = [[SCWRecordFieldSchema alloc] initWithName:@"name" valueClass:objc_opt_class() required:0 encrypted:1];
  v14 = [[SCWRecordFieldSchema alloc] initWithName:@"sortState" valueClass:objc_opt_class() required:0 encrypted:0];
  v2 = [[SCWRecordFieldSchema alloc] initWithName:@"sortOrderState" valueClass:objc_opt_class() required:0 encrypted:0];
  v3 = [[SCWRecordFieldSchema alloc] initWithName:@"displayState" valueClass:objc_opt_class() required:0 encrypted:0];
  v19[0] = v16;
  v19[1] = v15;
  v19[2] = v14;
  v19[3] = v2;
  v19[4] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  v5 = [[SCWRecordSchema alloc] initWithRecordType:@"Watchlist" fieldSchemas:v4];
  v6 = [[SCWRecordFieldSchema alloc] initWithName:@"watchlistIDs" valueClass:objc_opt_class() required:1 encrypted:1];
  v18 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v8 = [[SCWRecordSchema alloc] initWithRecordType:@"WatchlistOrder" fieldSchemas:v7];
  v9 = [SCWZoneSchema alloc];
  v17[0] = v5;
  v17[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v11 = [(SCWZoneSchema *)v9 initWithName:@"Watchlist" atomic:1 version:1 recordSchemas:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)supportedCommands
{
  v5[20] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v5[12] = objc_opt_class();
  v5[13] = objc_opt_class();
  v5[14] = objc_opt_class();
  v5[15] = objc_opt_class();
  v5[16] = objc_opt_class();
  v5[17] = objc_opt_class();
  v5[18] = objc_opt_class();
  v5[19] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:20];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)zoneMergeHandler
{
  v2 = objc_opt_new();

  return v2;
}

- (SCWWatchlistManager)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaultsProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = SCWWatchlistManager;
  v12 = [(SCWWatchlistManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_database, a3);
    objc_storeStrong(&v13->_metadataProvider, a4);
    objc_storeStrong(&v13->_defaultsProvider, a5);
    v14 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v13->_observers;
    v13->_observers = v14;

    v16 = [[SCWStartupQueue alloc] initWithDeferredStartup:1];
    startupQueue = v13->_startupQueue;
    v13->_startupQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("SCWWatchlistManager.callback", v18);
    callbackQueue = v13->_callbackQueue;
    v13->_callbackQueue = v19;

    [v9 addObserver:v13 forZone:@"Watchlist"];
    [(SCWWatchlistManager *)v13 _enqueueStartupSequence];
  }

  return v13;
}

- (SCWWatchlistManager)initWithDatabase:(id)a3 metadataProvider:(id)a4 defaults:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SCWWatchlistInlineDefaultsProvider alloc] initWithDefaults:v8];

  v12 = [(SCWWatchlistManager *)self initWithDatabase:v10 metadataProvider:v9 defaultsProvider:v11];
  return v12;
}

- (void)fetchStocksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistManager *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_2;
  v8 = &unk_1E85E3F08;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = _Block_copy(&v5);
  v4 = [*(a1 + 32) database];
  [v4 readContentsOfZone:@"Watchlist" withBlock:v3];
}

void __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_3;
    v19[3] = &unk_1E85E37A0;
    v20 = v5;
    v7 = *(a1 + 40);
    v21 = *(a1 + 32);
    v22 = v7;
    __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_3(v19);

    v8 = v20;
  }

  else
  {
    v8 = [a2 recordWithName:@"watchlist"];
    v9 = [v8 encryptedValues];
    v10 = [v9 objectForKeyedSubscript:@"symbols"];

    v11 = StocksLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1DAA3F000, v11, OS_LOG_TYPE_DEFAULT, "fetch stocks CK record ordered symbols: %@", buf, 0xCu);
    }

    v12 = [*(a1 + 32) metadataProvider];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_33;
    v16[3] = &unk_1E85E3EE0;
    v13 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v10;
    v18 = v13;
    v14 = v10;
    [v12 fetchMetadataForSymbols:v14 completion:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_3(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "fetch stocks read zone error: %@", buf, 0xCu);
  }

  if (a1[6])
  {
    v4 = [a1[5] callbackQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_31;
    v6[3] = &unk_1E85E35A0;
    v8 = a1[6];
    v7 = a1[4];
    dispatch_async(v4, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = StocksLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1DAA3F000, v7, OS_LOG_TYPE_DEFAULT, "fetch stocks metadata provider returned stocks: %@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) _sortedStocks:v5 withSymbolOrder:*(a1 + 40)];
  v9 = StocksLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_1DAA3F000, v9, OS_LOG_TYPE_DEFAULT, "fetch stocks metadata provided ordered stocks: %@", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v10 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__SCWWatchlistManager_fetchStocksWithCompletion___block_invoke_34;
    block[3] = &unk_1E85E3EB8;
    v15 = *(a1 + 48);
    v13 = v8;
    v14 = v6;
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addStock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWWatchlistManager *)self startupQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__SCWWatchlistManager_addStock_completion___block_invoke;
  v13[3] = &unk_1E85E3448;
  v9 = v6;
  v14 = v9;
  v15 = self;
  [v8 executeAfterStartup:v13];

  if (v7)
  {
    v10 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SCWWatchlistManager_addStock_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __43__SCWWatchlistManager_addStock_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWatchlistAddSymbolCommand alloc];
  v3 = [*(a1 + 32) symbol];
  v5 = [(SCWatchlistAddSymbolCommand *)v2 initWithSymbol:v3];

  v4 = [*(a1 + 40) database];
  [v4 modifyContentsOfZone:@"Watchlist" withCommand:v5];
}

- (void)removeSymbol:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWWatchlistManager *)self startupQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SCWWatchlistManager_removeSymbol_completion___block_invoke;
  v13[3] = &unk_1E85E3448;
  v9 = v6;
  v14 = v9;
  v15 = self;
  [v8 executeAfterStartup:v13];

  if (v7)
  {
    v10 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SCWWatchlistManager_removeSymbol_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __47__SCWWatchlistManager_removeSymbol_completion___block_invoke(uint64_t a1)
{
  v3 = [[SCWatchlistRemoveSymbolCommand alloc] initWithSymbol:*(a1 + 32)];
  v2 = [*(a1 + 40) database];
  [v2 modifyContentsOfZone:@"Watchlist" withCommand:v3];
}

- (void)reorderSymbol:(id)a3 afterSymbol:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__SCWWatchlistManager_reorderSymbol_afterSymbol_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__SCWWatchlistManager_reorderSymbol_afterSymbol_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __60__SCWWatchlistManager_reorderSymbol_afterSymbol_completion___block_invoke(uint64_t a1)
{
  v3 = [[SCWatchlistReorderSymbolCommand alloc] initWithSymbol:*(a1 + 32) precedingSymbol:*(a1 + 40)];
  v2 = [*(a1 + 48) database];
  [v2 modifyContentsOfZone:@"Watchlist" withCommand:v3];
}

- (void)replaceSymbol:(id)a3 withSymbol:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__SCWWatchlistManager_replaceSymbol_withSymbol_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__SCWWatchlistManager_replaceSymbol_withSymbol_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __59__SCWWatchlistManager_replaceSymbol_withSymbol_completion___block_invoke(uint64_t a1)
{
  v3 = [[SCWatchlistReplaceSymbolCommand alloc] initWithOldSymbol:*(a1 + 32) replacementSymbol:*(a1 + 40)];
  v2 = [*(a1 + 48) database];
  [v2 modifyContentsOfZone:@"Watchlist" withCommand:v3];
}

- (void)fetchAllWatchlistsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistManager *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_2;
  v8 = &unk_1E85E3F08;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = _Block_copy(&v5);
  v4 = [*(a1 + 32) database];
  [v4 readContentsOfZone:@"Watchlist" withBlock:v3];
}

void __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_3;
    v20[3] = &unk_1E85E37A0;
    v21 = v5;
    v7 = *(a1 + 40);
    v22 = *(a1 + 32);
    v23 = v7;
    __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_3(v20);

    v8 = v21;
  }

  else
  {
    v8 = [a2 recordsOfType:@"Watchlist"];
    v9 = [MEMORY[0x1E695DF70] array];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_2_43;
    v18[3] = &unk_1E85E3F30;
    v10 = v9;
    v19 = v10;
    [v8 enumerateObjectsUsingBlock:v18];
    v11 = StocksLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_1DAA3F000, v11, OS_LOG_TYPE_DEFAULT, "fetch watchlist list returned watchlists: %{public}@", buf, 0xCu);
    }

    if (*(a1 + 40))
    {
      v12 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_46;
      block[3] = &unk_1E85E3EB8;
      v17 = *(a1 + 40);
      v15 = v10;
      v16 = 0;
      dispatch_async(v12, block);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_3(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "fetch watchlist list read zone error: %@", buf, 0xCu);
  }

  if (a1[6])
  {
    v4 = [a1[5] callbackQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_41;
    v6[3] = &unk_1E85E35A0;
    v8 = a1[6];
    v7 = a1[4];
    dispatch_async(v4, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __56__SCWWatchlistManager_fetchAllWatchlistsWithCompletion___block_invoke_2_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 encryptedValues];
  v14 = [v4 objectForKeyedSubscript:@"symbols"];

  v5 = [v3 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"name"];

  v7 = [v3 objectForKeyedSubscript:@"sortState"];
  v8 = [v3 objectForKeyedSubscript:@"sortOrderState"];
  v9 = [v3 objectForKeyedSubscript:@"displayState"];
  v10 = [SCWWatchlist alloc];
  v11 = [v3 recordID];

  v12 = [v11 recordName];
  v13 = [(SCWWatchlist *)v10 initWithIdentifier:v12 name:v6 symbols:v14 sortState:v7 sortOrderState:v8 displayState:v9];

  [*(a1 + 32) addObject:v13];
}

- (void)fetchStocksFromWatchlist:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWWatchlistManager *)self startupQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke;
  v11[3] = &unk_1E85E3EB8;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 executeAfterStartup:v11];
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2;
  aBlock[3] = &unk_1E85E3F58;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v2;
  aBlock[4] = v3;
  v8 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) database];
  [v6 readContentsOfZone:@"Watchlist" withBlock:v5];
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_3;
    v27[3] = &unk_1E85E37A0;
    v28 = v6;
    v8 = a1[6];
    v29 = a1[4];
    v30 = v8;
    __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_3(v27);

    v9 = v28;
  }

  else
  {
    v10 = [a1[5] identifier];
    v9 = [v5 recordWithName:v10];

    v11 = [v9 encryptedValues];
    v12 = [v11 objectForKeyedSubscript:@"symbols"];

    if (v9)
    {
      v13 = StocksLogForCategory(4);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [a1[5] name];
        v15 = [a1[5] identifier];
        *buf = 138412802;
        v32 = v14;
        v33 = 2114;
        v34 = v15;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&dword_1DAA3F000, v13, OS_LOG_TYPE_DEFAULT, "fetch stocks from watchlist name: %@, identifier: %{public}@, ordered symbols: %@", buf, 0x20u);
      }

      v16 = [a1[4] metadataProvider];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_50;
      v20[3] = &unk_1E85E3EE0;
      v20[4] = a1[4];
      v21 = v12;
      v22 = a1[6];
      [v16 fetchMetadataForSymbols:v21 completion:v20];

      v17 = v21;
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2_48;
      v23[3] = &unk_1E85E37A0;
      v24 = a1[5];
      v18 = a1[6];
      v25 = a1[4];
      v26 = v18;
      __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2_48(v23);

      v17 = v24;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_3(id *a1)
{
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_3_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (a1[6])
  {
    v9 = [a1[5] callbackQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_47;
    v10[3] = &unk_1E85E35A0;
    v12 = a1[6];
    v11 = a1[4];
    dispatch_async(v9, v10);
  }
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2_48(uint64_t a1)
{
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2_48_cold_1(a1, v2);
  }

  if (*(a1 + 48))
  {
    v3 = [*(a1 + 40) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_49;
    block[3] = &unk_1E85E3578;
    v5 = *(a1 + 48);
    dispatch_async(v3, block);
  }
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = StocksLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1DAA3F000, v7, OS_LOG_TYPE_DEFAULT, "fetch stocks metadata provider returned stocks: %@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) _sortedStocks:v5 withSymbolOrder:*(a1 + 40)];
  v9 = StocksLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_1DAA3F000, v9, OS_LOG_TYPE_DEFAULT, "fetch stocks metadata provided ordered stocks: %@", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v10 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_51;
    block[3] = &unk_1E85E3EB8;
    v15 = *(a1 + 48);
    v13 = v8;
    v14 = v6;
    dispatch_async(v10, block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)legacyWatchlistSortState:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistManager *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_2;
  v8 = &unk_1E85E3F08;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = _Block_copy(&v5);
  v4 = [*(a1 + 32) database];
  [v4 readContentsOfZone:@"Watchlist" withBlock:v3];
}

void __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_3;
    v18[3] = &unk_1E85E37A0;
    v19 = v5;
    v7 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = v7;
    __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_3(v18);

    v8 = v19;
  }

  else
  {
    v8 = [a2 recordWithName:@"watchlist"];
    v9 = [v8 encryptedValues];
    v10 = [v9 objectForKeyedSubscript:@"sortState"];

    v11 = StocksLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1DAA3F000, v11, OS_LOG_TYPE_DEFAULT, "legacy watchlist has sortState=%@", buf, 0xCu);
    }

    if (*(a1 + 40))
    {
      v12 = [*(a1 + 32) callbackQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_53;
      v14[3] = &unk_1E85E3EB8;
      v17 = *(a1 + 40);
      v15 = v10;
      v16 = 0;
      dispatch_async(v12, v14);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_3(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "legacy watchlist sort state read zone error: %@", buf, 0xCu);
  }

  if (a1[6])
  {
    v4 = [a1[5] callbackQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__SCWWatchlistManager_legacyWatchlistSortState___block_invoke_52;
    v6[3] = &unk_1E85E35A0;
    v8 = a1[6];
    v7 = a1[4];
    dispatch_async(v4, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)migrateToDefaultWatchlist:(id)a3 sortState:(id)a4 sortOrderState:(id)a5 displayState:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = StocksLogForCategory(4);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DAA3F000, v17, OS_LOG_TYPE_DEFAULT, "Start migrateToDefaultWatchlist", buf, 2u);
  }

  v18 = [(SCWWatchlistManager *)self startupQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke;
  v24[3] = &unk_1E85E3FA8;
  v24[4] = self;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  v23 = v16;
  [v18 executeAfterStartup:v24];
}

void __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_2;
  aBlock[3] = &unk_1E85E3F80;
  v13 = a1[9];
  v8 = *(a1 + 2);
  v2 = *(&v8 + 1);
  v3 = a1[6];
  v4 = a1[7];
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v8;
  v11 = v5;
  v12 = a1[8];
  v6 = _Block_copy(aBlock);
  v7 = [a1[4] database];
  [v7 readContentsOfZone:@"Watchlist" withBlock:v6];
}

void __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_3;
    v29[3] = &unk_1E85E37A0;
    v30 = v5;
    v7 = *(a1 + 72);
    v31 = *(a1 + 32);
    v32 = v7;
    __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_3(v29);

    v8 = v30;
  }

  else
  {
    v8 = [a2 recordWithName:@"watchlist"];
    v9 = [v8 encryptedValues];
    v10 = [v9 objectForKeyedSubscript:@"symbols"];

    v11 = StocksLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      *buf = 138544386;
      v35 = v12;
      v36 = 2114;
      v37 = v10;
      v38 = 2112;
      v39 = v13;
      v40 = 2112;
      v41 = v14;
      v42 = 2112;
      v43 = v15;
    }

    v16 = [[SCWWatchlistAddNewWatchlistCommand alloc] initWithName:*(a1 + 40) identifier:@"watchlist" sortState:*(a1 + 48) sortOrderState:*(a1 + 56) displayState:*(a1 + 64)];
    v17 = [*(a1 + 32) database];
    [v17 modifyContentsOfZone:@"Watchlist" withCommand:v16];

    v18 = [SCWWatchlistAddToWatchlistOrderCommand alloc];
    v33 = @"watchlist";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v20 = [(SCWWatchlistAddToWatchlistOrderCommand *)v18 initWithWatchlistIdentifiers:v19];

    v21 = [*(a1 + 32) database];
    [v21 modifyContentsOfZone:@"Watchlist" withCommand:v20];

    v22 = [[SCWWatchlist alloc] initWithIdentifier:@"watchlist" name:*(a1 + 40) symbols:v10 sortState:*(a1 + 48) sortOrderState:*(a1 + 56) displayState:*(a1 + 64)];
    if (*(a1 + 72))
    {
      v23 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_58;
      block[3] = &unk_1E85E3EB8;
      v28 = *(a1 + 72);
      v26 = v22;
      v27 = 0;
      dispatch_async(v23, block);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_3(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "migrate to default watchlist read zone error: %{public}@", buf, 0xCu);
  }

  if (a1[6])
  {
    v4 = [a1[5] callbackQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __98__SCWWatchlistManager_migrateToDefaultWatchlist_sortState_sortOrderState_displayState_completion___block_invoke_54;
    v6[3] = &unk_1E85E35A0;
    v8 = a1[6];
    v7 = a1[4];
    dispatch_async(v4, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addWatchlist:(id)a3 identifier:(id)a4 sortState:(id)a5 sortOrderState:(id)a6 displayState:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(SCWWatchlistManager *)self startupQueue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96__SCWWatchlistManager_addWatchlist_identifier_sortState_sortOrderState_displayState_completion___block_invoke;
  v29[3] = &unk_1E85E3FD0;
  v21 = v14;
  v30 = v21;
  v22 = v15;
  v31 = v22;
  v23 = v16;
  v32 = v23;
  v24 = v17;
  v33 = v24;
  v25 = v18;
  v34 = v25;
  v35 = self;
  [v20 executeAfterStartup:v29];

  if (v19)
  {
    v26 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__SCWWatchlistManager_addWatchlist_identifier_sortState_sortOrderState_displayState_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v28 = v19;
    dispatch_async(v26, block);
  }
}

void __96__SCWWatchlistManager_addWatchlist_identifier_sortState_sortOrderState_displayState_completion___block_invoke(uint64_t a1)
{
  v3 = [[SCWWatchlistAddNewWatchlistCommand alloc] initWithName:*(a1 + 32) identifier:*(a1 + 40) sortState:*(a1 + 48) sortOrderState:*(a1 + 56) displayState:*(a1 + 64)];
  v2 = [*(a1 + 72) database];
  [v2 modifyContentsOfZone:@"Watchlist" withCommand:v3];
}

- (void)removeWatchlist:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWWatchlistManager *)self startupQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__SCWWatchlistManager_removeWatchlist_completion___block_invoke;
  v13[3] = &unk_1E85E3448;
  v9 = v6;
  v14 = v9;
  v15 = self;
  [v8 executeAfterStartup:v13];

  if (v7)
  {
    v10 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SCWWatchlistManager_removeWatchlist_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __50__SCWWatchlistManager_removeWatchlist_completion___block_invoke(uint64_t a1)
{
  v3 = [[SCWWatchlistRemoveWatchlistCommand alloc] initWithWatchlistIdentifier:*(a1 + 32)];
  v2 = [*(a1 + 40) database];
  [v2 modifyContentsOfZone:@"Watchlist" withCommand:v3];
}

- (void)renameWatchlist:(id)a3 newName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__SCWWatchlistManager_renameWatchlist_newName_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__SCWWatchlistManager_renameWatchlist_newName_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __58__SCWWatchlistManager_renameWatchlist_newName_completion___block_invoke(uint64_t a1)
{
  v3 = [[SCWWatchlistRenameWatchlistCommand alloc] initWithWatchlistIdentifier:*(a1 + 32) updatedName:*(a1 + 40)];
  v2 = [*(a1 + 48) database];
  [v2 modifyContentsOfZone:@"Watchlist" withCommand:v3];
}

- (void)addStock:(id)a3 watchlist:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__SCWWatchlistManager_addStock_watchlist_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__SCWWatchlistManager_addStock_watchlist_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __53__SCWWatchlistManager_addStock_watchlist_completion___block_invoke(id *a1)
{
  v2 = [SCWWatchlistAddSymbolToWatchlistCommand alloc];
  v3 = [a1[4] symbol];
  v4 = [a1[5] identifier];
  v6 = [(SCWWatchlistAddSymbolToWatchlistCommand *)v2 initWithSymbol:v3 watchlistIdentifier:v4];

  v5 = [a1[6] database];
  [v5 modifyContentsOfZone:@"Watchlist" withCommand:v6];
}

- (void)removeSymbol:(id)a3 watchlist:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 name];
  if (v11 != @"watchlist")
  {

    goto LABEL_8;
  }

  v12 = [v9 symbols];
  if (([v12 containsObject:v8]& 1) != 0)
  {
    v13 = [v9 symbols];
    v14 = [v13 count];

    if (v14 != 1)
    {
      goto LABEL_8;
    }

    v12 = StocksLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [SCWWatchlistManager removeSymbol:v12 watchlist:? completion:?];
    }
  }

LABEL_8:
  v15 = [(SCWWatchlistManager *)self startupQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__SCWWatchlistManager_removeSymbol_watchlist_completion___block_invoke;
  v21[3] = &unk_1E85E36E0;
  v16 = v8;
  v22 = v16;
  v17 = v9;
  v23 = v17;
  v24 = self;
  [v15 executeAfterStartup:v21];

  if (v10)
  {
    v18 = [(SCWWatchlistManager *)self callbackQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__SCWWatchlistManager_removeSymbol_watchlist_completion___block_invoke_2;
    v19[3] = &unk_1E85E3578;
    v20 = v10;
    dispatch_async(v18, v19);
  }
}

void __57__SCWWatchlistManager_removeSymbol_watchlist_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistRemoveSymbolFromWatchlistCommand alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v6 = [(SCWWatchlistRemoveSymbolFromWatchlistCommand *)v2 initWithSymbol:v3 watchlistIdentifier:v4];

  v5 = [*(a1 + 48) database];
  [v5 modifyContentsOfZone:@"Watchlist" withCommand:v6];
}

- (void)reorderSymbol:(id)a3 afterSymbol:(id)a4 watchlist:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SCWWatchlistManager *)self startupQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__SCWWatchlistManager_reorderSymbol_afterSymbol_watchlist_completion___block_invoke;
  v21[3] = &unk_1E85E3FF8;
  v15 = v10;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v25 = self;
  [v14 executeAfterStartup:v21];

  if (v13)
  {
    v18 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__SCWWatchlistManager_reorderSymbol_afterSymbol_watchlist_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v20 = v13;
    dispatch_async(v18, block);
  }
}

void __70__SCWWatchlistManager_reorderSymbol_afterSymbol_watchlist_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistReorderSymbolInWatchlistCommand alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) identifier];
  v7 = [(SCWWatchlistReorderSymbolInWatchlistCommand *)v2 initWithSymbol:v3 precedingSymbol:v4 watchlistIdentifier:v5];

  v6 = [*(a1 + 56) database];
  [v6 modifyContentsOfZone:@"Watchlist" withCommand:v7];
}

- (void)reorderSymbols:(id)a3 watchlist:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__SCWWatchlistManager_reorderSymbols_watchlist_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__SCWWatchlistManager_reorderSymbols_watchlist_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __59__SCWWatchlistManager_reorderSymbols_watchlist_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistReorderAllSymbolsInWatchlistCommand alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v6 = [(SCWWatchlistReorderAllSymbolsInWatchlistCommand *)v2 initWithSymbols:v3 watchlistIdentifier:v4];

  v5 = [*(a1 + 48) database];
  [v5 modifyContentsOfZone:@"Watchlist" withCommand:v6];
}

- (void)replaceSymbol:(id)a3 withSymbol:(id)a4 watchlist:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SCWWatchlistManager *)self startupQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__SCWWatchlistManager_replaceSymbol_withSymbol_watchlist_completion___block_invoke;
  v21[3] = &unk_1E85E3FF8;
  v15 = v10;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v12;
  v24 = v17;
  v25 = self;
  [v14 executeAfterStartup:v21];

  if (v13)
  {
    v18 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__SCWWatchlistManager_replaceSymbol_withSymbol_watchlist_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v20 = v13;
    dispatch_async(v18, block);
  }
}

void __69__SCWWatchlistManager_replaceSymbol_withSymbol_watchlist_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistReplaceSymbolInWatchlistCommand alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) identifier];
  v7 = [(SCWWatchlistReplaceSymbolInWatchlistCommand *)v2 initWithOldSymbol:v3 replacementSymbol:v4 watchlistIdentifier:v5];

  v6 = [*(a1 + 56) database];
  [v6 modifyContentsOfZone:@"Watchlist" withCommand:v7];
}

- (void)updateSortState:(id)a3 newSortOrderState:(id)a4 newDisplayState:(id)a5 watchlist:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SCWWatchlistManager *)self startupQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __94__SCWWatchlistManager_updateSortState_newSortOrderState_newDisplayState_watchlist_completion___block_invoke;
  v25[3] = &unk_1E85E3DC0;
  v18 = v15;
  v26 = v18;
  v19 = v12;
  v27 = v19;
  v20 = v13;
  v28 = v20;
  v21 = v14;
  v29 = v21;
  v30 = self;
  [v17 executeAfterStartup:v25];

  if (v16)
  {
    v22 = [(SCWWatchlistManager *)self callbackQueue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__SCWWatchlistManager_updateSortState_newSortOrderState_newDisplayState_watchlist_completion___block_invoke_2;
    v23[3] = &unk_1E85E3578;
    v24 = v16;
    dispatch_async(v22, v23);
  }
}

void __94__SCWWatchlistManager_updateSortState_newSortOrderState_newDisplayState_watchlist_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistUpdateSortStateInWatchlistCommand alloc];
  v3 = [*(a1 + 32) identifier];
  v5 = [(SCWWatchlistUpdateSortStateInWatchlistCommand *)v2 initWithWatchlistIdentifier:v3 sortState:*(a1 + 40) sortOrderState:*(a1 + 48) displayState:*(a1 + 56)];

  v4 = [*(a1 + 64) database];
  [v4 modifyContentsOfZone:@"Watchlist" withCommand:v5];
}

- (void)updateDisplayState:(id)a3 watchlist:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__SCWWatchlistManager_updateDisplayState_watchlist_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v9;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__SCWWatchlistManager_updateDisplayState_watchlist_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __63__SCWWatchlistManager_updateDisplayState_watchlist_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistUpdateDisplayStateInWatchlistCommand alloc];
  v3 = [*(a1 + 32) identifier];
  v5 = [(SCWWatchlistUpdateDisplayStateInWatchlistCommand *)v2 initWithWatchlistIdentifier:v3 displayState:*(a1 + 40)];

  v4 = [*(a1 + 48) database];
  [v4 modifyContentsOfZone:@"Watchlist" withCommand:v5];
}

- (void)fetchWatchlistOrderWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistManager *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke;
  v7[3] = &unk_1E85E35A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_2;
  v8 = &unk_1E85E3F08;
  v2 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = _Block_copy(&v5);
  v4 = [*(a1 + 32) database];
  [v4 readContentsOfZone:@"Watchlist" withBlock:v3];
}

void __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_3;
    v21[3] = &unk_1E85E37A0;
    v22 = v5;
    v7 = *(a1 + 40);
    v23 = *(a1 + 32);
    v24 = v7;
    __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_3(v21);

    v8 = v22;
  }

  else
  {
    v8 = [a2 recordWithName:@"watchlistorder"];
    v9 = [v8 encryptedValues];
    v10 = [v9 objectForKeyedSubscript:@"watchlistIDs"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x1E695DEC8] array];
    }

    v13 = v12;

    v14 = StocksLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&dword_1DAA3F000, v14, OS_LOG_TYPE_DEFAULT, "fetch watchlist order returned with watchlistIDs: %{public}@", buf, 0xCu);
    }

    if (*(a1 + 40))
    {
      v15 = [*(a1 + 32) callbackQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_69;
      v17[3] = &unk_1E85E3EB8;
      v20 = *(a1 + 40);
      v18 = v13;
      v19 = 0;
      dispatch_async(v15, v17);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_3(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "fetch watchlist order read zone error: %@", buf, 0xCu);
  }

  if (a1[6])
  {
    v4 = [a1[5] callbackQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__SCWWatchlistManager_fetchWatchlistOrderWithCompletion___block_invoke_68;
    v6[3] = &unk_1E85E35A0;
    v8 = a1[6];
    v7 = a1[4];
    dispatch_async(v4, v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addWatchlistToWatchlistOrder:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWWatchlistManager *)self startupQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__SCWWatchlistManager_addWatchlistToWatchlistOrder_completion___block_invoke;
  v13[3] = &unk_1E85E3448;
  v9 = v6;
  v14 = v9;
  v15 = self;
  [v8 executeAfterStartup:v13];

  if (v7)
  {
    v10 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SCWWatchlistManager_addWatchlistToWatchlistOrder_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __63__SCWWatchlistManager_addWatchlistToWatchlistOrder_completion___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [SCWWatchlistAddToWatchlistOrderCommand alloc];
  v3 = [*(a1 + 32) identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(SCWWatchlistAddToWatchlistOrderCommand *)v2 initWithWatchlistIdentifiers:v4];

  v6 = [*(a1 + 40) database];
  [v6 modifyContentsOfZone:@"Watchlist" withCommand:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeWatchlistFromWatchlistOrder:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWWatchlistManager *)self startupQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__SCWWatchlistManager_removeWatchlistFromWatchlistOrder_completion___block_invoke;
  v13[3] = &unk_1E85E3448;
  v9 = v6;
  v14 = v9;
  v15 = self;
  [v8 executeAfterStartup:v13];

  if (v7)
  {
    v10 = [(SCWWatchlistManager *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SCWWatchlistManager_removeWatchlistFromWatchlistOrder_completion___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __68__SCWWatchlistManager_removeWatchlistFromWatchlistOrder_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWWatchlistRemoveFromWatchlistOrderCommand alloc];
  v3 = [*(a1 + 32) identifier];
  v5 = [(SCWWatchlistRemoveFromWatchlistOrderCommand *)v2 initWithWatchlistIdentifier:v3];

  v4 = [*(a1 + 40) database];
  [v4 modifyContentsOfZone:@"Watchlist" withCommand:v5];
}

- (void)reorderWatchlist:(id)a3 afterWatchlist:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SCWWatchlistManager *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__SCWWatchlistManager_reorderWatchlist_afterWatchlist_completion___block_invoke;
  v17[3] = &unk_1E85E36E0;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = self;
  [v11 executeAfterStartup:v17];

  if (v10)
  {
    v14 = [(SCWWatchlistManager *)self callbackQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__SCWWatchlistManager_reorderWatchlist_afterWatchlist_completion___block_invoke_2;
    v15[3] = &unk_1E85E3578;
    v16 = v10;
    dispatch_async(v14, v15);
  }
}

void __66__SCWWatchlistManager_reorderWatchlist_afterWatchlist_completion___block_invoke(id *a1)
{
  v2 = [SCWatchlistReorderWatchlistCommand alloc];
  v3 = [a1[4] identifier];
  v4 = [a1[5] identifier];
  v6 = [(SCWatchlistReorderWatchlistCommand *)v2 initWithWatchlistIdentifier:v3 precedingWatchlistIdentifier:v4];

  v5 = [a1[6] database];
  [v5 modifyContentsOfZone:@"Watchlist" withCommand:v6];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCWWatchlistManager *)self observers];
  [v5 removeObject:v4];
}

- (void)synchronize
{
  v2 = [(SCWWatchlistManager *)self database];
  [v2 synchronize];
}

- (void)removeStock:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 symbol];
  [(SCWWatchlistManager *)self removeSymbol:v7 completion:v6];
}

- (void)reorderStock:(id)a3 toIndex:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SCWWatchlistManager *)self startupQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__SCWWatchlistManager_reorderStock_toIndex_completion___block_invoke;
  v15[3] = &unk_1E85E4020;
  v11 = v8;
  v17 = self;
  v18 = a4;
  v16 = v11;
  [v10 executeAfterStartup:v15];

  if (v9)
  {
    v12 = [(SCWWatchlistManager *)self callbackQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__SCWWatchlistManager_reorderStock_toIndex_completion___block_invoke_2;
    v13[3] = &unk_1E85E3578;
    v14 = v9;
    dispatch_async(v12, v13);
  }
}

void __55__SCWWatchlistManager_reorderStock_toIndex_completion___block_invoke(uint64_t a1)
{
  v2 = [SCWatchlistReorderSymbol2Command alloc];
  v3 = [*(a1 + 32) symbol];
  v5 = [(SCWatchlistReorderSymbol2Command *)v2 initWithSymbol:v3 toIndex:*(a1 + 48)];

  v4 = [*(a1 + 40) database];
  [v4 modifyContentsOfZone:@"Watchlist" withCommand:v5];
}

- (void)database:(id)a3 didChangeZone:(id)a4 from:(id)a5 to:(id)a6
{
  v169 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v97 = a5;
  v96 = a6;
  v10 = StocksLogForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v147 = v9;
    _os_log_impl(&dword_1DAA3F000, v10, OS_LOG_TYPE_DEFAULT, "SCWWatchlistManager received change in database for zone: %@", buf, 0xCu);
  }

  v99 = [MEMORY[0x1E695DF90] dictionary];
  v11 = [MEMORY[0x1E695DFA8] set];
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v12 = [v97 recordsOfType:@"Watchlist"];
  v13 = [v12 countByEnumeratingWithState:&v140 objects:v168 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v141;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v141 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v140 + 1) + 8 * i) recordID];
        v18 = [v17 recordName];
        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v140 objects:v168 count:16];
    }

    while (v14);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v19 = [v96 recordsOfType:@"Watchlist"];
  v20 = [v19 countByEnumeratingWithState:&v136 objects:v167 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v137;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v137 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v136 + 1) + 8 * j) recordID];
        v25 = [v24 recordName];
        [v11 addObject:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v136 objects:v167 count:16];
    }

    while (v21);
  }

  v93 = self;
  v92 = v9;

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v91 = v11;
  obj = [v11 allObjects];
  v98 = [obj countByEnumeratingWithState:&v132 objects:v166 count:16];
  if (v98)
  {
    v95 = *v133;
    do
    {
      v26 = 0;
      do
      {
        if (*v133 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v101 = v26;
        v27 = *(*(&v132 + 1) + 8 * v26);
        v28 = [v97 recordWithName:v27];
        v100 = v27;
        v29 = [v96 recordWithName:v27];
        v30 = [v28 encryptedValues];
        v31 = [v30 objectForKeyedSubscript:@"name"];

        v32 = [v29 encryptedValues];
        v33 = [v32 objectForKeyedSubscript:@"name"];

        v107 = v31;
        v112 = v33;
        if ([v31 compare:v33])
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = v34;
        v36 = [v28 encryptedValues];
        v37 = [v36 objectForKeyedSubscript:@"symbols"];

        v38 = [v29 encryptedValues];
        v39 = [v38 objectForKeyedSubscript:@"symbols"];

        v40 = [v28 objectForKeyedSubscript:@"sortState"];
        v41 = [v29 objectForKeyedSubscript:@"sortState"];
        v108 = v40;
        LODWORD(v38) = [v40 intValue];
        v114 = v41;
        if (v38 == [v41 intValue])
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }

        v43 = v42;
        v44 = [v28 objectForKeyedSubscript:@"sortOrderState"];
        v45 = [v29 objectForKeyedSubscript:@"sortOrderState"];
        v103 = v44;
        v46 = [v44 intValue];
        if (v46 == [v45 intValue])
        {
          v47 = 0;
        }

        else
        {
          v47 = v45;
        }

        v48 = v47;
        v104 = v28;
        v49 = [v28 objectForKeyedSubscript:@"displayState"];
        v50 = [v29 objectForKeyedSubscript:@"displayState"];
        v51 = [v49 intValue];
        if (v51 == [v50 intValue])
        {
          v52 = 0;
        }

        else
        {
          v52 = v50;
        }

        v53 = v52;
        v110 = v37;
        log = v39;
        v105 = v43;
        v106 = v35;
        v102 = v48;
        v54 = [[SCWWatchlistDiff alloc] initWithOldSymbols:v37 newSymbols:v39 updatedName:v35 updatedSortState:v43 updatedSortOrderState:v48 updatedDisplayState:v53];
        v55 = [(SCWWatchlistDiff *)v54 isEmpty];
        v56 = StocksLogForCategory(4);
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
        if (v55)
        {
          v58 = v107;
          if (v57)
          {
            *buf = 138412290;
            v147 = v107;
            _os_log_impl(&dword_1DAA3F000, v56, OS_LOG_TYPE_DEFAULT, "SCWWatchlistManager watchlistDiff is empty for watchlistName: %@", buf, 0xCu);
          }

          v59 = v112;
          v60 = v103;
          v61 = v49;
        }

        else
        {
          v58 = v107;
          v60 = v103;
          v61 = v49;
          if (v57)
          {
            *buf = 138414594;
            v147 = v107;
            v148 = 2112;
            v149 = v110;
            v150 = 2112;
            v151 = v108;
            v152 = 2112;
            v153 = v103;
            v154 = 2112;
            v155 = v49;
            v156 = 2112;
            v157 = v112;
            v158 = 2112;
            v159 = log;
            v160 = 2112;
            v161 = v114;
            v162 = 2112;
            v163 = v45;
            v164 = 2112;
            v165 = v50;
            _os_log_impl(&dword_1DAA3F000, v56, OS_LOG_TYPE_DEFAULT, "SCWWatchlistManager watchlistDiff [watchlistOldName: %@ oldOrderedSymbols: %@ watchlistOldSortState: %@ watchlistOldSortOrderState: %@ watchlistOldDisplayState: %@], [watchlistNewName: %@  newOrderedSymbols: %@ watchlistNewSortState: %@ watchlistNewSortOrderState: %@ watchlistNewDisplayState: %@]", buf, 0x66u);
          }

          v59 = v112;
          if (!(v107 | v112) && ![log count]&& !v114 && !v45 && !v50)
          {
            v62 = StocksLogForCategory(4);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              [SCWWatchlistManager database:v131 didChangeZone:v62 from:? to:?];
            }

            v59 = v112;
          }

          [v99 setObject:v54 forKey:v100];
        }

        v26 = v101 + 1;
      }

      while (v98 != v101 + 1);
      v98 = [obj countByEnumeratingWithState:&v132 objects:v166 count:16];
    }

    while (v98);
  }

  if ([v99 count])
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v63 = [(SCWWatchlistManager *)v93 observers];
    v64 = [v63 copy];

    v65 = [v64 countByEnumeratingWithState:&v126 objects:v145 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v127;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v127 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v126 + 1) + 8 * k);
          v70 = [(SCWWatchlistManager *)v93 callbackQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __54__SCWWatchlistManager_database_didChangeZone_from_to___block_invoke;
          block[3] = &unk_1E85E36E0;
          block[4] = v69;
          block[5] = v93;
          v125 = v99;
          dispatch_async(v70, block);
        }

        v66 = [v64 countByEnumeratingWithState:&v126 objects:v145 count:16];
      }

      while (v66);
    }
  }

  v71 = [v97 recordWithName:@"watchlistorder"];
  v72 = [v96 recordWithName:@"watchlistorder"];
  v73 = [v71 encryptedValues];
  v74 = [v73 objectForKeyedSubscript:@"watchlistIDs"];

  v75 = [v72 encryptedValues];
  v76 = [v75 objectForKeyedSubscript:@"watchlistIDs"];

  v77 = [[SCWWatchlistOrderDiff alloc] initWithOldWatchlistIDs:v74 newWatchlistIDs:v76];
  v78 = [(SCWWatchlistOrderDiff *)v77 isEmpty];
  loga = StocksLogForCategory(4);
  v79 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
  if (v78)
  {
    v80 = v91;
    if (v79)
    {
      *buf = 138412290;
      v147 = v74;
      _os_log_impl(&dword_1DAA3F000, loga, OS_LOG_TYPE_DEFAULT, "SCWWatchlistManager watchlistOrderDiff is empty oldWatchlistOrder: %@", buf, 0xCu);
    }

    v81 = v92;
  }

  else
  {
    if (v79)
    {
      *buf = 138412546;
      v147 = v74;
      v148 = 2112;
      v149 = v76;
      _os_log_impl(&dword_1DAA3F000, loga, OS_LOG_TYPE_DEFAULT, "SCWWatchlistManager watchlistOrderDiff oldWatchlistOrder: %@ newWatchlistOrder: %@", buf, 0x16u);
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v82 = [(SCWWatchlistManager *)v93 observers];
    v83 = [v82 copy];

    loga = v83;
    v84 = [v83 countByEnumeratingWithState:&v120 objects:v144 count:16];
    if (v84)
    {
      v85 = v84;
      v109 = v76;
      v111 = v74;
      v113 = v72;
      v115 = v71;
      v86 = *v121;
      do
      {
        for (m = 0; m != v85; ++m)
        {
          if (*v121 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v120 + 1) + 8 * m);
          v89 = [(SCWWatchlistManager *)v93 callbackQueue];
          v118[0] = MEMORY[0x1E69E9820];
          v118[1] = 3221225472;
          v118[2] = __54__SCWWatchlistManager_database_didChangeZone_from_to___block_invoke_85;
          v118[3] = &unk_1E85E36E0;
          v118[4] = v88;
          v118[5] = v93;
          v119 = v77;
          dispatch_async(v89, v118);
        }

        v85 = [v83 countByEnumeratingWithState:&v120 objects:v144 count:16];
      }

      while (v85);
      v80 = v91;
      v81 = v92;
      v72 = v113;
      v71 = v115;
      v76 = v109;
      v74 = v111;
    }

    else
    {
      v80 = v91;
      v81 = v92;
    }
  }

  v90 = *MEMORY[0x1E69E9840];
}

- (id)_sortedStocks:(id)a3 withSymbolOrder:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 symbol];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v7 objectForKeyedSubscript:{v21, v25}];
        if (v22)
        {
          [v15 addObject:v22];
          [v7 removeObjectForKey:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_enqueueStartupSequence
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 1;
  v3 = [(SCWWatchlistManager *)self startupQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke;
  v8[3] = &unk_1E85E4070;
  v8[4] = self;
  v8[5] = v9;
  [v3 enqueueStartupBlock:v8];

  v4 = [(SCWWatchlistManager *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_87;
  v7[3] = &unk_1E85E40E8;
  v7[4] = self;
  v7[5] = v9;
  [v4 enqueueStartupBlock:v7];

  v5 = [(SCWWatchlistManager *)self startupQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_102;
  v6[3] = &unk_1E85E40E8;
  v6[4] = self;
  v6[5] = v9;
  [v5 enqueueStartupBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) database];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2;
  v7[3] = &unk_1E85E4048;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 readContentsOfZone:@"Watchlist" withBlock:v7];
}

uint64_t __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recordWithName:@"watchlist"];

  if (v3)
  {
    v4 = StocksLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DAA3F000, v4, OS_LOG_TYPE_DEFAULT, "skipping migration because the watchlist record already exists", v6, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return (*(*(a1 + 32) + 16))();
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AFB8] defaultStore];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_3;
    aBlock[3] = &unk_1E85E4098;
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v16 = v6;
    v17 = v7;
    v19 = v8;
    v18 = v4;
    v9 = _Block_copy(aBlock);
    if (NSClassFromString(&cfstr_Xctest.isa))
    {
      v10 = StocksLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DAA3F000, v10, OS_LOG_TYPE_DEFAULT, "skipping KVS synchronization because we're running unit tests", buf, 2u);
      }

      v9[2](v9);
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_100;
      v11[3] = &unk_1E85E40C0;
      v12 = v6;
      v13 = v9;
      [v12 synchronizeWithCompletionHandler:v11];
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_88;
    v23 = &unk_1E85E3578;
    v24 = v3;
    v24[2]();
    v6 = v24;
  }
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) arrayForKey:@"stocks"];
  v3 = [v2 valueForKeyPath:@"symbol"];
  v4 = StocksLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v30 = [v3 count];
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_1DAA3F000, v4, OS_LOG_TYPE_DEFAULT, "in the KVS we found %lu stocks to migrate: %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = +[SCWWatchlistDefaults defaultsHistoryForCurrentCountry];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v23 + 1) + 8 * v9) defaultSymbols];
      v11 = [v10 isEqualToArray:v3];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = StocksLogForCategory(4);
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v21 = "skipping KVS migration because the contents of the KVS match a default set";
LABEL_17:
    _os_log_impl(&dword_1DAA3F000, &v13->super, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_18;
  }

LABEL_11:

  v12 = [v3 count];
  v13 = StocksLogForCategory(4);
  v14 = os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 0;
    v21 = "skipping KVS migration because the KVS is empty";
    goto LABEL_17;
  }

  if (v14)
  {
    v15 = [v3 count];
    *buf = 134217984;
    v30 = v15;
    _os_log_impl(&dword_1DAA3F000, &v13->super, OS_LOG_TYPE_DEFAULT, "migrating %lu stocks from KVS to watchlist", buf, 0xCu);
  }

  v13 = [[SCWatchlistAddDefaultSymbolsCommand alloc] initWithSymbols:v3 deferUpload:0];
  v16 = [*(a1 + 40) database];
  [v16 modifyContentsOfZone:@"Watchlist" withCommand:v13];

  v17 = [SCWWatchlistAddToWatchlistOrderCommand alloc];
  v27 = @"watchlist";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v19 = [(SCWWatchlistAddToWatchlistOrderCommand *)v17 initWithWatchlistIdentifiers:v18];

  v20 = [*(a1 + 40) database];
  [v20 modifyContentsOfZone:@"Watchlist" withCommand:v19];

  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_18:

  (*(*(a1 + 48) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = StocksLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_100_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  [*(a1 + 32) synchronize];
  (*(*(a1 + 40) + 16))();
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = StocksLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DAA3F000, v5, OS_LOG_TYPE_DEFAULT, "attempting to fetch watchlist defaults", buf, 2u);
    }

    v6 = [*(a1 + 32) defaultsProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_104;
    v9[3] = &unk_1E85E4110;
    v7 = &v10;
    v8 = v4;
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 fetchWatchlistDefaultsWithCompletion:v9];
  }

  else
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_103;
    v15 = &unk_1E85E3578;
    v7 = &v16;
    v16 = v3;
    v16[2]();
  }
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_105;
    v15[3] = &unk_1E85E34E0;
    v16 = v6;
    v17 = *(a1 + 40);
    __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_105(v15);

    v7 = v16;
  }

  else
  {
    v8 = StocksLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = [v5 count];
      _os_log_impl(&dword_1DAA3F000, v8, OS_LOG_TYPE_DEFAULT, "saving %lu default symbolss to watchlist", buf, 0xCu);
    }

    v7 = [[SCWatchlistAddDefaultSymbolsCommand alloc] initWithSymbols:v5 deferUpload:1];
    v9 = [*(a1 + 32) database];
    [v9 modifyContentsOfZone:@"Watchlist" withCommand:v7];

    v10 = [SCWWatchlistAddToWatchlistOrderCommand alloc];
    v18 = @"watchlist";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v12 = [(SCWWatchlistAddToWatchlistOrderCommand *)v10 initWithWatchlistIdentifiers:v11];

    v13 = [*(a1 + 32) database];
    [v13 modifyContentsOfZone:@"Watchlist" withCommand:v12];

    (*(*(a1 + 40) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_105(uint64_t a1)
{
  v2 = StocksLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_105_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)sc_synchronize
{
  if (objc_opt_respondsToSelector())
  {

    [(SCWWatchlistManager *)self synchronize];
  }
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, a2, a3, "fetch stocks read zone error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __59__SCWWatchlistManager_fetchStocksFromWatchlist_completion___block_invoke_2_48_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) identifier];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1DAA3F000, a2, OS_LOG_TYPE_ERROR, "fetch stocks missing watchlist record for identifier: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)database:(os_log_t)log didChangeZone:from:to:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1DAA3F000, log, OS_LOG_TYPE_FAULT, "SCWWatchlistManager watchlist diff removes all symbols in default watchlist along with nil values for order/display/sort state", buf, 2u);
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_100_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, a2, a3, "KVS synchronization failed but we'll migrate whatever's in there if non-empty (error was %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __46__SCWWatchlistManager__enqueueStartupSequence__block_invoke_2_105_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, a2, a3, "failed to fetch watchlist defaults with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end