@interface WBSHistoryService
- (BOOL)_connectionIsEntitledToUseUserDatabase:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WBSHistoryService)initWithListener:(id)a3;
- (id)_copyAndRedactHistoryDatabaseWithURL:(id)a3 databaseDestinationFileURL:(id)a4;
- (id)_createListener;
- (id)_openOrReuseExistingDatabaseWithOptions:(id)a3 createIfNeeded:(BOOL)a4 error:(id *)a5;
- (void)connectWithOptions:(id)a3 connection:(id)a4 completionHandler:(id)a5;
- (void)copyAndRedactHistoryDatabasesForAllProfiles:(id)a3 completionHandler:(id)a4;
- (void)listDatabaseURLsWithCompletionHandler:(id)a3;
- (void)openDatabaseWithID:(id)a3 createIfNeeded:(BOOL)a4 completionHandler:(id)a5;
- (void)resume;
- (void)setCompletionListVendorEndpoint:(id)a3 completionHandler:(id)a4;
- (void)shutdown;
@end

@implementation WBSHistoryService

- (WBSHistoryService)initWithListener:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = WBSHistoryService;
  v6 = [(WBSHistoryService *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, a3);
    v8 = [MEMORY[0x1E695DF00] date];
    initDate = v7->_initDate;
    v7->_initDate = v8;

    v10 = [WBSHistoryDatabaseAccessBroker alloc];
    v11 = [(WBSHistoryService *)v7 databaseURL];
    v12 = [(WBSHistoryDatabaseAccessBroker *)v10 initWithHistoryDatabaseURL:v11];
    databaseAccessBroker = v7->_databaseAccessBroker;
    v7->_databaseAccessBroker = v12;

    v14 = dispatch_queue_create("com.apple.Safari.History.HistoryService", 0);
    historyServiceQueue = v7->_historyServiceQueue;
    v7->_historyServiceQueue = v14;

    v16 = dispatch_group_create();
    fileOperationGroup = v7->_fileOperationGroup;
    v7->_fileOperationGroup = v16;

    v18 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    databases = v7->_databases;
    v7->_databases = v18;

    v20 = v7;
  }

  return v7;
}

- (id)_createListener
{
  v2 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.Safari.History.Service"];

  return v2;
}

- (void)resume
{
  v3 = objc_autoreleasePoolPush();
  listener = self->_listener;
  if (!listener)
  {
    v5 = [(WBSHistoryService *)self _createListener];
    v6 = self->_listener;
    self->_listener = v5;

    listener = self->_listener;
  }

  [(NSXPCListener *)listener setDelegate:self];
  objc_autoreleasePoolPop(v3);
  v7 = self->_listener;

  [(NSXPCListener *)v7 resume];
}

- (void)shutdown
{
  [(NSXPCListener *)self->_listener invalidate];
  historyServiceQueue = self->_historyServiceQueue;
  fileOperationGroup = self->_fileOperationGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WBSHistoryService_shutdown__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_group_async(fileOperationGroup, historyServiceQueue, block);
  listener = self->_listener;
  self->_listener = 0;

  dispatch_group_wait(self->_fileOperationGroup, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __29__WBSHistoryService_shutdown__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 32) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        dispatch_group_enter(*(*(a1 + 32) + 24));
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __29__WBSHistoryService_shutdown__block_invoke_2;
        v8[3] = &unk_1E7FB6F80;
        v8[4] = *(a1 + 32);
        [v6 forceCloseWithCompletionHandler:v8];
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return [*(*(a1 + 32) + 32) removeAllObjects];
}

- (BOOL)_connectionIsEntitledToUseUserDatabase:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.private.Safari.History"];
  if (!v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [v3 processIdentifier];
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Process %d is missing history entitlement. Process will be restricted to private in-memory database", v8, 8u);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      -[WBSHistoryService _connectionIsEntitledToUseUserDatabase:].cold.1(v8, [v3 processIdentifier], v6);
    }

LABEL_8:

    v5 = 0;
    goto LABEL_9;
  }

  v5 = [v4 BOOLValue];
LABEL_9:

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = WBSHistoryConnectionInterface();
  [v5 setExportedInterface:v6];

  v7 = [[WBSHistoryConnection alloc] initWithHistoryService:self];
  [v5 setExportedObject:v7];

  [v5 setInvalidationHandler:&__block_literal_global_63];
  [v5 setInterruptionHandler:&__block_literal_global_13];
  [v5 resume];
  if (self->_initDate)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(NSDate *)self->_initDate timeIntervalSinceNow];
      [(WBSHistoryService *)v12 listener:v8 shouldAcceptNewConnection:v9];
    }

    initDate = self->_initDate;
    self->_initDate = 0;
  }

  return 1;
}

void __56__WBSHistoryService_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryService_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __56__WBSHistoryService_listener_shouldAcceptNewConnection___block_invoke_11()
{
  v0 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryService_listener_shouldAcceptNewConnection___block_invoke_11_cold_1();
  }
}

- (void)listDatabaseURLsWithCompletionHandler:(id)a3
{
  v30[3] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[WBSHistory historyDatabaseURL];
  [v22 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69C8B58]];

  v4 = *MEMORY[0x1E695DB78];
  v5 = *MEMORY[0x1E695DC30];
  v30[0] = *MEMORY[0x1E695DB78];
  v30[1] = v5;
  v21 = v5;
  v30[2] = *MEMORY[0x1E695DC40];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v23 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v23 safari_profilesDirectoryURL];
  v28 = 0;
  v18 = [v23 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v6 options:4 error:&v28];
  v20 = v28;

  if (v20 && ([v20 safari_matchesErrorDomain:*MEMORY[0x1E696A250] andCode:{260, v18}] & 1) == 0)
  {
    v19[2](v19, 0, v20);
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v18;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 resourceValuesForKeys:v6 error:{0, v18}];
          if ([v13 safari_BOOLForKey:v4])
          {
            v14 = [v12 URLByAppendingPathComponent:@"History.db"];
            v15 = [v14 path];
            v16 = [v23 fileExistsAtPath:v15];

            if (v16)
            {
              v17 = [v13 objectForKeyedSubscript:v21];
              [v22 setObject:v14 forKeyedSubscript:v17];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    (v19)[2](v19, v22, 0);
  }
}

- (void)openDatabaseWithID:(id)a3 createIfNeeded:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  historyServiceQueue = self->_historyServiceQueue;
  fileOperationGroup = self->_fileOperationGroup;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__WBSHistoryService_openDatabaseWithID_createIfNeeded_completionHandler___block_invoke;
  v14[3] = &unk_1E7FC7058;
  v15 = v8;
  v16 = self;
  v18 = a4;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_group_async(fileOperationGroup, historyServiceQueue, v14);
}

void __73__WBSHistoryService_openDatabaseWithID_createIfNeeded_completionHandler___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *MEMORY[0x1E69C8B58];
  }

  v9[0] = @"WBSHistoryConnectionOptionDatabaseID";
  v9[1] = @"WBSHistoryConnectionOptionNoMemoryFallback";
  v10[0] = v2;
  v10[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v8 = 0;
  v6 = [v4 _openOrReuseExistingDatabaseWithOptions:v3 createIfNeeded:v5 error:&v8];
  v7 = v8;
  (*(*(a1 + 48) + 16))();
}

- (id)_openOrReuseExistingDatabaseWithOptions:(id)a3 createIfNeeded:(BOOL)a4 error:(id *)a5
{
  v64[1] = *MEMORY[0x1E69E9840];
  v57 = a3;
  v7 = [v57 safari_stringForKey:@"WBSHistoryConnectionOptionDatabaseID"];
  if (!v7)
  {
    v7 = *MEMORY[0x1E69C8B58];
  }

  v56 = [v57 safari_URLForKey:@"WBSHistoryConnectionOptionDatabaseURL"];
  if (v56)
  {
LABEL_10:
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v13 = v12;
    if (v56)
    {
      [v12 addObject:?];
      if (!a4)
      {
        v14 = [MEMORY[0x1E696AC08] defaultManager];
        v15 = [v56 path];
        v16 = [v14 fileExistsAtPath:v15];

        if ((v16 & 1) == 0)
        {
          if (a5)
          {
            v17 = MEMORY[0x1E696ABC0];
            v63 = *MEMORY[0x1E696A998];
            v64[0] = v56;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
            *a5 = [v17 errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v18];
          }

          v19 = 0;
LABEL_44:

          goto LABEL_45;
        }
      }
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WBSHistoryService _openOrReuseExistingDatabaseWithOptions:createIfNeeded:error:];
      }
    }

    if (([v57 safari_BOOLForKey:@"WBSHistoryConnectionOptionNoMemoryFallback"] & 1) == 0)
    {
      v21 = WBSHistoryInMemoryDatabaseURL();
      [v13 addObject:v21];
    }

    if ([v57 safari_BOOLForKey:@"WBSHistoryConnectionOptionTruncate"])
    {
      v22 = v56;
      v23 = [MEMORY[0x1E696AC08] defaultManager];
      v24 = [v22 absoluteString];
      [v23 removeItemAtURL:v22 error:0];
      v25 = MEMORY[0x1E695DFF8];
      v26 = [v24 stringByAppendingString:@"-lock"];
      v27 = [v25 URLWithString:v26];
      [v23 removeItemAtURL:v27 error:0];

      v28 = MEMORY[0x1E695DFF8];
      v29 = [v24 stringByAppendingString:@"-shm"];
      v30 = [v28 URLWithString:v29];
      [v23 removeItemAtURL:v30 error:0];

      v31 = MEMORY[0x1E695DFF8];
      v32 = [v24 stringByAppendingString:@"-wal"];
      v33 = [v31 URLWithString:v32];
      [v23 removeItemAtURL:v33 error:0];
    }

    v19 = [(NSMapTable *)self->_databases objectForKey:v7];
    if (v19)
    {
      v35 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryService _openOrReuseExistingDatabaseWithOptions:createIfNeeded:error:];
      }
    }

    else
    {
      v36 = 0;
      *&v34 = 138478083;
      v54 = v34;
      while (1)
      {
        if (![v13 count])
        {
          goto LABEL_40;
        }

        v37 = [v13 firstObject];
        [v13 removeObjectAtIndex:0];
        v38 = [MEMORY[0x1E695DF00] date];
        v39 = [WBSHistoryServiceDatabase alloc];
        fileOperationGroup = self->_fileOperationGroup;
        v58 = 0;
        v19 = [(WBSHistoryServiceDatabase *)v39 initWithID:v7 url:v37 options:v57 fileOperationGroup:fileOperationGroup error:&v58];
        v41 = v58;
        if (v19)
        {
          break;
        }

        v42 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v44 = [v41 safari_privacyPreservingDescription];
          *buf = v54;
          v60 = v37;
          v61 = 2114;
          v62 = *&v44;
          _os_log_error_impl(&dword_1BB6F3000, v42, OS_LOG_TYPE_ERROR, "Failed to open database %{private}@: %{public}@", buf, 0x16u);
        }

        if (v41)
        {
          v43 = v41;

          v36 = v43;
        }

        if ([v41 safari_isSQLiteCorruptionError])
        {
          v47 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [WBSHistoryService _openOrReuseExistingDatabaseWithOptions:createIfNeeded:error:];
          }

LABEL_40:
          if (a5)
          {
            v48 = v36;
            v19 = 0;
            *a5 = v36;
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_43;
        }
      }

      v45 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        [v38 timeIntervalSinceNow];
        *buf = 136446466;
        v60 = "open_or_reuse_opening_database";
        v61 = 2048;
        v62 = -v46;
        _os_log_impl(&dword_1BB6F3000, v45, OS_LOG_TYPE_INFO, "#perf - %{public}s: %f", buf, 0x16u);
      }

      [(NSMapTable *)self->_databases setObject:v19 forKey:v7];
LABEL_43:
    }

    goto LABEL_44;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v56 = +[WBSHistory historyDatabaseURL];
    goto LABEL_10;
  }

  if (([v7 hasPrefix:@"test"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"_test"))
  {
    v8 = MEMORY[0x1E695DFF8];
    v56 = NSTemporaryDirectory();
    v9 = [v7 stringByAppendingString:@".db"];
    v10 = [v56 stringByAppendingPathComponent:v9];
    v11 = [v8 fileURLWithPath:v10];

LABEL_9:
    v56 = v11;
    goto LABEL_10;
  }

  v56 = [WBSHistory profileDirectoryURLForProfileID:v7];
  if (v56)
  {
    v50 = [MEMORY[0x1E696AC08] defaultManager];
    v51 = [v56 path];
    v52 = [v50 fileExistsAtPath:v51];

    if (v52)
    {
      v11 = [v56 URLByAppendingPathComponent:@"History.db"];
      goto LABEL_9;
    }
  }

  v53 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    [WBSHistoryService _openOrReuseExistingDatabaseWithOptions:createIfNeeded:error:];
  }

  v19 = 0;
LABEL_45:

  return v19;
}

- (void)connectWithOptions:(id)a3 connection:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if (![(WBSHistoryService *)self _connectionIsEntitledToUseUserDatabase:v9])
  {
    if (v11)
    {
      v13 = [v11 mutableCopy];
    }

    else
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
    }

    v14 = v13;
    v15 = [v11 safari_stringForKey:@"WBSHistoryConnectionOptionDatabaseID"];
    v16 = v15;
    v17 = *MEMORY[0x1E69C8B58];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?pid=%i", v18, objc_msgSend(v9, "processIdentifier")];
    [v14 setObject:v19 forKeyedSubscript:@"WBSHistoryConnectionOptionDatabaseID"];

    v20 = WBSHistoryInMemoryDatabaseURL();
    [v14 setObject:v20 forKeyedSubscript:@"WBSHistoryConnectionOptionDatabaseURL"];

    v12 = v14;
  }

  historyServiceQueue = self->_historyServiceQueue;
  fileOperationGroup = self->_fileOperationGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WBSHistoryService_connectWithOptions_connection_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v26 = v12;
  v27 = v10;
  v23 = v12;
  v24 = v10;
  dispatch_group_notify(fileOperationGroup, historyServiceQueue, block);
}

void __69__WBSHistoryService_connectWithOptions_connection_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _openOrReuseExistingDatabaseWithOptions:v3 createIfNeeded:1 error:&v7];
  v5 = v7;
  if (!v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __69__WBSHistoryService_connectWithOptions_connection_completionHandler___block_invoke_cold_1();
    }
  }

  (*(a1[6] + 16))();
}

- (void)setCompletionListVendorEndpoint:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v10];
  completionListProviderConnection = self->_completionListProviderConnection;
  self->_completionListProviderConnection = v7;

  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AE74D8];
  [(NSXPCConnection *)self->_completionListProviderConnection setRemoteObjectInterface:v9];

  [(NSXPCConnection *)self->_completionListProviderConnection resume];
  v6[2](v6, 0);
}

- (void)copyAndRedactHistoryDatabasesForAllProfiles:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__WBSHistoryService_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC7080;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [(WBSHistoryService *)self listDatabaseURLsWithCompletionHandler:v10];
}

void __83__WBSHistoryService_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v23 = a3;
  v24 = v5;
  if (v23)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__WBSHistoryService_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_cold_1();
    }

    v7 = v23;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v5 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v9)
    {
      v11 = *v26;
      *&v10 = 138412290;
      v22 = v10;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = MEMORY[0x1E695DFF8];
          v15 = [*(a1 + 32) objectForKeyedSubscript:{v13, v22}];
          v16 = [v14 URLWithString:v15];

          if (v16)
          {
            v17 = *(a1 + 40);
            v18 = [v24 objectForKeyedSubscript:v13];
            v19 = [v17 _copyAndRedactHistoryDatabaseWithURL:v18 databaseDestinationFileURL:v16];

            if (v19)
            {
              v21 = WBS_LOG_CHANNEL_PREFIXHistory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __83__WBSHistoryService_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_cold_2(v13, v19, v21);
              }

              (*(*(a1 + 48) + 16))();

              v7 = 0;
              goto LABEL_21;
            }
          }

          else
          {
            v20 = WBS_LOG_CHANNEL_PREFIXHistory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v30 = v13;
              _os_log_error_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_ERROR, "History.db exists on disk for profile with identifier %@, but the diagnostic extension does not know about this profile", buf, 0xCu);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
    (*(*(a1 + 48) + 16))();
  }

LABEL_21:
}

- (id)_copyAndRedactHistoryDatabaseWithURL:(id)a3 databaseDestinationFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v9 = [v8 copyItemAtURL:v6 toURL:v7 error:&v33];
  v10 = v33;
  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:v7 queue:self->_historyServiceQueue];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__22;
    v31 = __Block_byref_object_dispose__22;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    historyServiceQueue = self->_historyServiceQueue;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __85__WBSHistoryService__copyAndRedactHistoryDatabaseWithURL_databaseDestinationFileURL___block_invoke;
    v19 = &unk_1E7FC70D0;
    v21 = &v23;
    v22 = &v27;
    v13 = v11;
    v20 = v13;
    dispatch_sync(historyServiceQueue, &v16);
    if (v28[5] || (v24[3] & 1) == 0)
    {
      [v8 safari_removeFileAtURL:v7 error:{0, v16, v17, v18, v19}];
      v14 = v28[5];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);

    v10 = v14;
  }

  return v10;
}

void __85__WBSHistoryService__copyAndRedactHistoryDatabaseWithURL_databaseDestinationFileURL___block_invoke(uint64_t a1)
{
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __85__WBSHistoryService__copyAndRedactHistoryDatabaseWithURL_databaseDestinationFileURL___block_invoke_2;
  v54[3] = &unk_1E7FC70A8;
  v56 = *(a1 + 48);
  v43 = *(a1 + 32);
  v2 = v43;
  v55 = v43;
  v44 = MEMORY[0x1BFB13CE0](v54);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v3 openWithAccessType:2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 8);
    v52 = *(v7 + 40);
    v8 = [v6 executeQuery:@"BEGIN IMMEDIATE" error:&v52];
    objc_storeStrong((v7 + 40), v52);
    *(*(*(a1 + 40) + 8) + 24) = v8;
    if (((v44[2])() & 1) == 0)
    {
      v9 = [*(a1 + 32) fetchQuery:@"PRAGMA secure_delete = ON"];
      v10 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(a1 + 32) query:{@"UPDATE history_items SET autocomplete_triggers = NULL, domain_expansion = ?1, url = ?2 WHERE id = ?3"}];
      v11 = SafariShared::WBSSQLiteDatabaseFetch<>(*(a1 + 32), @"SELECT id, domain_expansion, url FROM history_items");
      v12 = 0;
      while (1)
      {
        v13 = [v11 nextObject];

        if (!v13)
        {
          break;
        }

        v51 = [v13 intAtIndex:0];
        v14 = [v13 stringAtIndex:1];
        v15 = [v13 stringAtIndex:2];
        if (v14)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = [v14 safari_maskedWordHashForUseWithURLHashesOfComponents];
          v50 = [v16 stringWithFormat:@"%@", v17];
        }

        else
        {
          v50 = 0;
        }

        v18 = MEMORY[0x1E696AEC0];
        v19 = [v15 safari_urlHashesOfComponents];
        v20 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
        v49 = [v18 stringWithFormat:@"%@|%@", v19, v20];

        SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,NSString * {__strong}&,long &>(v10, &v50, &v49, &v51);
        v21 = [v10 execute];
        [v10 reset];
        if (v21 != 101)
        {
          v44[2]();
        }

        v12 = v13;
        if (v21 != 101)
        {
          v22 = v10;
          v23 = v11;
          goto LABEL_23;
        }
      }

      v24 = [v11 statement];
      [v24 invalidate];

      v25 = SafariShared::WBSSQLiteDatabaseFetch<>(*(a1 + 32), @"SELECT id, title FROM history_visits");

      v22 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(a1 + 32) query:@"UPDATE history_visits SET title = ?1 WHERE id = ?2"];
      for (i = 0; ; i = v13)
      {
        v13 = [v25 nextObject];

        if (!v13)
        {
          break;
        }

        v51 = [v13 intAtIndex:0];
        v27 = [v13 stringAtIndex:1];
        v28 = MEMORY[0x1E696AEC0];
        v29 = [v27 safari_maskedWordHashForUseWithURLHashesOfComponents];
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
        v50 = [v28 stringWithFormat:@"%@|%@", v29, v30];

        SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong}&,long &>(v22, &v50, &v51);
        if ([v22 execute] != 101)
        {
          [v22 reset];
          v44[2]();

          goto LABEL_22;
        }

        [v22 reset];
      }

      v31 = [v25 statement];
      [v31 invalidate];

      v32 = *(a1 + 32);
      v33 = *(*(a1 + 48) + 8);
      v48 = *(v33 + 40);
      LOBYTE(v31) = [v32 executeQuery:@"DROP TABLE history_tags" error:&v48];
      objc_storeStrong((v33 + 40), v48);
      *(*(*(a1 + 40) + 8) + 24) = v31;
      if ((v44[2])() & 1) != 0 || (v34 = *(a1 + 32), v35 = *(*(a1 + 48) + 8), v47 = *(v35 + 40), v36 = [v34 executeQuery:@"DROP TABLE metadata" error:&v47], objc_storeStrong((v35 + 40), v47), *(*(*(a1 + 40) + 8) + 24) = v36, ((v44[2])()) || (v37 = *(a1 + 32), v38 = *(*(a1 + 48) + 8), v46 = *(v38 + 40), v39 = objc_msgSend(v37, "executeQuery:error:", @"COMMIT", &v46), objc_storeStrong((v38 + 40), v46), *(*(*(a1 + 40) + 8) + 24) = v39, ((v44[2])()) || (v40 = *(a1 + 32), v41 = *(*(a1 + 48) + 8), v45 = *(v41 + 40), v42 = objc_msgSend(v40, "executeQuery:error:", @"VACUUM", &v45), objc_storeStrong((v41 + 40), v45), *(*(*(a1 + 40) + 8) + 24) = v42, ((v44[2])()))
      {
        v13 = 0;
LABEL_22:
        v23 = v25;
        goto LABEL_23;
      }

      v23 = [*(a1 + 32) fetchQuery:@"PRAGMA wal_checkpoint(TRUNCATE)"];

      v13 = [v23 nextObject];
      *(*(*(a1 + 40) + 8) + 24) = [v13 intAtIndex:0] == 0;
      [*(a1 + 32) close];
LABEL_23:
    }
  }
}

uint64_t __85__WBSHistoryService__copyAndRedactHistoryDatabaseWithURL_databaseDestinationFileURL___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && !*(*(*(a1 + 48) + 8) + 40))
  {
    return 0;
  }

  [*(a1 + 32) close];
  return 1;
}

- (void)_connectionIsEntitledToUseUserDatabase:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "History entitlement for process id %d is not of the correct type (expected a BOOL)", buf, 8u);
}

- (void)listener:(double)a3 shouldAcceptNewConnection:.cold.1(uint8_t *buf, NSObject *a2, double a3)
{
  *buf = 134217984;
  *(buf + 4) = -a3;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "XPC ServiceConnection time from launch -> first connection: %f...", buf, 0xCu);
}

- (void)_openOrReuseExistingDatabaseWithOptions:createIfNeeded:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_openOrReuseExistingDatabaseWithOptions:createIfNeeded:error:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__WBSHistoryService_copyAndRedactHistoryDatabasesForAllProfiles_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Unable to copy and redact history database for profile with identifier %@. Error: %@", &v3, 0x16u);
}

@end