@interface WBSHistoryConnection
- (WBSHistoryConnection)initWithHistoryService:(id)service;
- (void)beginURLCompletionSession:(id)session;
- (void)connectWithOptions:(id)options delegate:(id)delegate completionHandler:(id)handler;
- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)handler;
- (void)getCompletionListItemsForQuery:(id)query completionHandler:(id)handler;
- (void)getServiceInfo:(id)info;
- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)queryMemoryFootprint:(id)footprint;
- (void)releaseCloudHistory:(id)history;
@end

@implementation WBSHistoryConnection

- (WBSHistoryConnection)initWithHistoryService:(id)service
{
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = WBSHistoryConnection;
  v6 = [(WBSHistoryConnection *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_historyService, service);
    v8 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryConnection", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v8;

    v10 = v7;
  }

  return v7;
}

- (void)getServiceInfo:(id)info
{
  infoCopy = info;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  infoDictionary = [v4 infoDictionary];

  if (infoDictionary)
  {
    [v3 setObject:infoDictionary forKeyedSubscript:@"SafariShared"];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary2 = [mainBundle infoDictionary];

  if (infoDictionary2)
  {
    [v3 setObject:infoDictionary2 forKeyedSubscript:@"SafariHistory"];
  }

  infoCopy[2](infoCopy, v3, 0);
}

- (void)beginURLCompletionSession:(id)session
{
  v11 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = [currentConnection valueForEntitlement:@"com.apple.private.Safari.History"];
  if (v6)
  {
    v7 = [[WBSHistoryURLCompletionSession alloc] initWithHistoryService:self->_historyService];
    sessionCopy[2](sessionCopy, v7, 0);
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      -[WBSHistoryConnection beginURLCompletionSession:].cold.1(v10, [currentConnection processIdentifier], v8);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:0];
    (sessionCopy)[2](sessionCopy, 0, v9);
  }
}

- (void)queryMemoryFootprint:(id)footprint
{
  footprintCopy = footprint;
  v6 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69C88E0]) initWithError:&v6];
  v5 = v6;
  footprintCopy[2](footprintCopy, v4, v5);
}

- (void)connectWithOptions:(id)options delegate:(id)delegate completionHandler:(id)handler
{
  optionsCopy = options;
  delegateCopy = delegate;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (delegateCopy)
  {
    v12 = [[WBSHistoryServiceDatabaseDelegateProxy alloc] initWithProxy:delegateCopy];
  }

  else
  {
    v12 = 0;
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSHistoryConnection_connectWithOptions_delegate_completionHandler___block_invoke;
  block[3] = &unk_1E7FC6AA0;
  block[4] = self;
  v19 = optionsCopy;
  v21 = v12;
  v22 = handlerCopy;
  v20 = currentConnection;
  v14 = v12;
  v15 = handlerCopy;
  v16 = currentConnection;
  v17 = optionsCopy;
  dispatch_async(internalQueue, block);
}

void __70__WBSHistoryConnection_connectWithOptions_delegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WBSHistoryConnection_connectWithOptions_delegate_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7FC6A78;
  v5 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 connectWithOptions:v2 connection:v4 completionHandler:v10];
}

void __70__WBSHistoryConnection_connectWithOptions_delegate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = *(a1 + 56);
    v11 = v6;
    if (!v6)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:3 userInfo:0];
    }

    (*(v10 + 16))(v10, 0, -1, -1, v11);
    if (!v7)
    {
    }
  }

  else
  {
    v12 = 0;
    [v5 allocateTemporaryIDRange:&v12];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) safari_stringForKey:@"WBSHistoryConnectionOptionEventListenerName"];
    [v5 addDelegate:v8 listenerName:v9 forConnection:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)finishClearingHistoryIfNecessaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSHistoryConnection_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v10 = currentConnection;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = currentConnection;
  dispatch_async(internalQueue, block);
}

void __78__WBSHistoryConnection_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__WBSHistoryConnection_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7FC6AC8;
  v4 = *(a1 + 48);
  [v2 connectWithOptions:0 connection:v1 completionHandler:v3];
}

void __78__WBSHistoryConnection_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:3 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__WBSHistoryConnection_finishClearingHistoryIfNecessaryWithCompletionHandler___block_invoke_3;
    v8[3] = &unk_1E7FB7E48;
    v9 = *(a1 + 32);
    [v5 finishClearingHistoryIfNecessaryWithCompletionHandler:v8];
  }
}

- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  safari_isSafariFamilyApplicationBundle = [mainBundle safari_isSafariFamilyApplicationBundle];

  if (safari_isSafariFamilyApplicationBundle)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSHistoryConnection initializeCloudHistoryWithConfiguration:v10 completionHandler:?];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v11);
  }

  else
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v13 = os_transaction_create();
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke;
    block[3] = &unk_1E7FC6B18;
    block[4] = self;
    v17 = configurationCopy;
    v19 = v13;
    v20 = handlerCopy;
    v18 = currentConnection;
    v15 = v13;
    v11 = currentConnection;
    dispatch_async(internalQueue, block);
  }
}

void __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    [v2 applyRemoteConfiguration:*(a1 + 40)];
  }

  else
  {
    v3 = [[WBSCloudHistoryConfiguration alloc] initWithDictionary:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;
  }

  v6 = *(a1 + 32);
  if (*(v6 + 40))
  {
    v7 = *(*(a1 + 64) + 16);

    v7();
  }

  else
  {
    v8 = *(v6 + 8);
    v9 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7FC6AF0;
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v14 = v10;
    v12[4] = v11;
    v13 = *(a1 + 56);
    [v8 connectWithOptions:0 connection:v9 completionHandler:v12];
  }
}

void __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_3;
    v8[3] = &unk_1E7FB6F58;
    v8[4] = v4;
    v11 = *(a1 + 48);
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(v5, v8);
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_3(void *a1)
{
  if (*(a1[4] + 40))
  {
    v2 = a1[7];
LABEL_5:
    v7 = *(v2 + 16);

    v7();
    return;
  }

  v3 = [[WBSCloudHistory alloc] initWithDatabase:a1[5] configuration:*(a1[4] + 48) databaseStore:*(a1[4] + 8) completionBlock:&__block_literal_global_59];
  v4 = a1[4];
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[4] + 40);
  if (v6)
  {
    [v6 setCloudHistoryEnabled:1];
    v2 = a1[7];
    goto LABEL_5;
  }

  v8 = a1[7];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
  (*(v8 + 16))(v8, 0);
}

void __82__WBSHistoryConnection_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke_4()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_INFO, "Cloud History initialized", v1, 2u);
  }
}

- (void)releaseCloudHistory:(id)history
{
  historyCopy = history;
  MEMORY[0x1BFB144F0]();
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__WBSHistoryConnection_releaseCloudHistory___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = historyCopy;
  v6 = historyCopy;
  dispatch_async(internalQueue, v7);
}

void __44__WBSHistoryConnection_releaseCloudHistory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  (*(*(a1 + 40) + 16))();

  JUMPOUT(0x1BFB14500);
}

- (void)getCompletionListItemsForQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  completionListProvider = [(WBSHistoryService *)self->_historyService completionListProvider];

  if (completionListProvider)
  {
    completionListProvider2 = [(WBSHistoryService *)self->_historyService completionListProvider];
    [completionListProvider2 getCompletionListItemsForQuery:queryCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSHistoryConnection getCompletionListItemsForQuery:v10 completionHandler:?];
    }

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

- (void)beginURLCompletionSession:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Process %d is missing history entitlement. Denying access.", buf, 8u);
}

@end