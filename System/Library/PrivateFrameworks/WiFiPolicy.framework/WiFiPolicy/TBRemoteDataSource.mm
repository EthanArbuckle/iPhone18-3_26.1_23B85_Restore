@interface TBRemoteDataSource
- (TBRemoteDataSource)init;
- (void)_captureTileFetchError:(id)error tileKey:(id)key duration:(double)duration trigger:(unint64_t)trigger;
- (void)_executeNetworkFetchRequest:(id)request;
- (void)_fetchTilesForTileItems:(id)items completionHandler:(id)handler trigger:(unint64_t)trigger;
- (void)_fetchTilesWithRequest:(id)request;
- (void)_submitNetworkSearch:(id)search completion:(id)completion;
- (void)_writeSearchTileToFile:(id)file;
- (void)executeFetchRequest:(id)request;
@end

@implementation TBRemoteDataSource

- (TBRemoteDataSource)init
{
  v6.receiver = self;
  v6.super_class = TBRemoteDataSource;
  v2 = [(TBRemoteDataSource *)&v6 init];
  if (!v2 || (v3 = dispatch_queue_create("com.apple.wifi.threebars.service", MEMORY[0x277D85CD8]), queue = v2->_queue, v2->_queue = v3, queue, !v2->_queue))
  {

    return 0;
  }

  return v2;
}

- (void)_submitNetworkSearch:(id)search completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D0EBD8];
  completionCopy = completion;
  searchCopy = search;
  sharedService = [v6 sharedService];
  v14[0] = searchCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v11 = [sharedService ticketForWiFiQualityNetworkServiceRequest:v10];

  queue = [(TBRemoteDataSource *)self queue];
  [v11 submitNetworkSearchWithCompletionQueue:queue completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)executeFetchRequest:(id)request
{
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  type = [descriptor type];

  switch(type)
  {
    case 3:
      [(TBRemoteDataSource *)self _executeTileFetchRequest:requestCopy];
      break;
    case 2:
      [(TBRemoteDataSource *)self _executeLocationFetchRequest:requestCopy];
      break;
    case 1:
      [(TBRemoteDataSource *)self _executeNetworkFetchRequest:requestCopy];
      break;
    default:
      v7.receiver = self;
      v7.super_class = TBRemoteDataSource;
      [(TBDataSource *)&v7 executeFetchRequest:requestCopy];
      break;
  }
}

- (void)_executeNetworkFetchRequest:(id)request
{
  v19[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  remoteRequest = [descriptor remoteRequest];

  if (remoteRequest)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    v17 = os_transaction_create();
    v7 = mach_absolute_time();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__TBRemoteDataSource__executeNetworkFetchRequest___block_invoke;
    v12[3] = &unk_2789C6A38;
    v15 = v7;
    v12[4] = self;
    v13 = requestCopy;
    v14 = v16;
    [(TBRemoteDataSource *)self _submitNetworkSearch:remoteRequest completion:v12];

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"remoteRequest property is nil";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [TBError fetchMissingParametersErrorWithUserInfo:v8];

    NSLog(&cfstr_SFailedToCreat_1.isa, "[TBRemoteDataSource _executeNetworkFetchRequest:]");
    v10 = [TBErrorFetchResponse responseWithError:v9];
    [requestCopy handleResponse:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __50__TBRemoteDataSource__executeNetworkFetchRequest___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = mach_absolute_time();
  v7 = MachTimeToSecs(v6 - a1[7]);
  if (v5)
  {
    NSLog(&cfstr_SError.isa, "[TBRemoteDataSource _executeNetworkFetchRequest:]_block_invoke", v5);
    v8 = [TBErrorFetchResponse remoteResponseWithError:v5];
    v9 = 0;
  }

  else
  {
    v8 = [TBNetworkRemoteFetchResponse responseWithNetworkSearchResults:v17];
    v10 = [v8 results];
    v9 = [v10 count];

    v11 = [v8 results];
    NSLog(&cfstr_SFetchedLuResu.isa, "-[TBRemoteDataSource _executeNetworkFetchRequest:]_block_invoke", [v11 count], *&v7);
  }

  v12 = a1[4];
  v13 = a1[5];
  v14 = [v8 error];
  [v12 submitAnalyticsEventForFetchRequest:v13 duration:v14 error:v9 resultCount:v7];

  [a1[5] handleResponse:v8];
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
}

- (void)_fetchTilesWithRequest:(id)request
{
  v23[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  descriptor = [requestCopy descriptor];
  tileItems = [descriptor tileItems];

  if (tileItems)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([requestCopy userInfo], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", @"trigger"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      userInfo = [requestCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:@"trigger"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    queue = [(TBRemoteDataSource *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__TBRemoteDataSource__fetchTilesWithRequest___block_invoke;
    block[3] = &unk_2789C6A88;
    v18 = tileItems;
    selfCopy = self;
    v20 = requestCopy;
    v21 = unsignedIntegerValue;
    dispatch_async(queue, block);

    v13 = v18;
  }

  else
  {
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"tileItem property is nil";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [TBError fetchMissingParametersErrorWithUserInfo:v14];

    NSLog(&cfstr_SFailedToCreat_2.isa, "[TBRemoteDataSource _fetchTilesWithRequest:]");
    v15 = [TBErrorFetchResponse responseWithError:v13];
    [requestCopy handleResponse:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __45__TBRemoteDataSource__fetchTilesWithRequest___block_invoke(uint64_t a1)
{
  v14 = mach_absolute_time();
  v2 = [*(a1 + 32) allObjects];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [*(a1 + 32) count];
  NSLog(&cfstr_SFetchingLuTil.isa, "[TBRemoteDataSource _fetchTilesWithRequest:]_block_invoke", v4);
  v5 = 1;
  do
  {
    if (v5 - 1 < v4)
    {
      v6 = [v2 objectAtIndexedSubscript:?];
      [v3 addObject:v6];
    }

    if (v4 == v5 || 10 * (v5 / 0xA) == v5)
    {
      v7 = dispatch_group_create();
      dispatch_group_enter(v7);
      v8 = *(a1 + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45__TBRemoteDataSource__fetchTilesWithRequest___block_invoke_2;
      v15[3] = &unk_2789C6A60;
      v9 = v3;
      v16 = v9;
      v20 = v5;
      v21 = v4;
      v17 = *(a1 + 48);
      v18 = v7;
      v10 = *(a1 + 40);
      v22 = v14;
      v19 = v10;
      v11 = *(a1 + 56);
      v12 = v7;
      [v8 _fetchTilesForTileItems:v9 completionHandler:v15 trigger:v11];
      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  while (v5++ <= v4);
}

void __45__TBRemoteDataSource__fetchTilesWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) removeAllObjects];
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 40) resultsHandler];

  if (v6)
  {
    v7 = [*(a1 + 40) resultsHandler];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__TBRemoteDataSource__fetchTilesWithRequest___block_invoke_3;
    v13[3] = &unk_2789C6630;
    v14 = *(a1 + 48);
    (v7)[2](v7, v3, v13, v4 == v5);

    if (v4 == v5)
    {
      v8 = mach_absolute_time();
      v9 = MachTimeToSecs(v8 - *(a1 + 80));
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v12 = [v3 error];
      [v10 submitAnalyticsEventForFetchRequest:v11 duration:v12 error:*(a1 + 72) resultCount:v9];
    }
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)_fetchTilesForTileItems:(id)items completionHandler:(id)handler trigger:(unint64_t)trigger
{
  v41 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__0;
  v38[4] = __Block_byref_object_dispose__0;
  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = itemsCopy;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v24 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        dispatch_group_enter(v8);
        v12 = mach_absolute_time();
        mEMORY[0x277D0EBD8] = [MEMORY[0x277D0EBD8] sharedService];
        v14 = [v11 key];
        stringValue = [v14 stringValue];
        etag = [v11 etag];
        v17 = [mEMORY[0x277D0EBD8] ticketForWiFiQualityTileLoadForKey:stringValue eTag:etag];

        queue = [(TBRemoteDataSource *)self queue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __72__TBRemoteDataSource__fetchTilesForTileItems_completionHandler_trigger___block_invoke;
        v29[3] = &unk_2789C6AB0;
        v32 = v12;
        triggerCopy = trigger;
        v29[4] = self;
        v31 = v38;
        v30 = v8;
        [v17 submitTileLoadWithCompletionQueue:queue completion:v29];

        ++v10;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  queue2 = [(TBRemoteDataSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__TBRemoteDataSource__fetchTilesForTileItems_completionHandler_trigger___block_invoke_2;
  block[3] = &unk_2789C6AD8;
  v28 = v38;
  block[4] = self;
  v27 = handlerCopy;
  v20 = handlerCopy;
  dispatch_group_notify(v8, queue2, block);

  _Block_object_dispose(v38, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __72__TBRemoteDataSource__fetchTilesForTileItems_completionHandler_trigger___block_invoke(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6)
{
  v22 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (a3)
  {
    if (!v13)
    {
      v15 = 2;
LABEL_9:
      v19 = [[TBRemoteFetchTileItem alloc] initWithTile:v11 status:v15 etag:v12 error:0];
      v20 = *(a1 + 32);
      objc_sync_enter(v20);
      [*(*(*(a1 + 48) + 8) + 40) addObject:v19];
      goto LABEL_10;
    }
  }

  else
  {
    if (!v13)
    {
      v15 = 1;
      goto LABEL_9;
    }

    v16 = [v13 domain];
    v17 = GEOErrorDomain();
    if ([v16 isEqualToString:v17])
    {
      v18 = [v14 code];

      if (v18 == -7)
      {
        v19 = -[TBRemoteFetchTileItem initWithEmptyTileKey:etag:error:]([TBRemoteFetchTileItem alloc], "initWithEmptyTileKey:etag:error:", [v22 integerValue], v12, v14);
        v20 = *(a1 + 32);
        objc_sync_enter(v20);
        [*(*(*(a1 + 48) + 8) + 40) addObject:v19];
LABEL_10:
        objc_sync_exit(v20);

        goto LABEL_14;
      }
    }

    else
    {
    }

    v21 = mach_absolute_time();
    [*(a1 + 32) _captureTileFetchError:v14 tileKey:v22 duration:*(a1 + 64) trigger:MachTimeToSecs(v21 - *(a1 + 56))];
  }

  NSLog(&cfstr_SError.isa, "[TBRemoteDataSource _fetchTilesForTileItems:completionHandler:trigger:]_block_invoke", v14);
LABEL_14:
  dispatch_group_leave(*(a1 + 40));
}

void __72__TBRemoteDataSource__fetchTilesForTileItems_completionHandler_trigger___block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_SFinishedTileD.isa, "-[TBRemoteDataSource _fetchTilesForTileItems:completionHandler:trigger:]_block_invoke_2", [*(*(*(a1 + 48) + 8) + 40) count]);
  v2 = *(a1 + 40);
  v3 = [TBTileRemoteFetchResponse responseWithTileItems:*(*(*(a1 + 48) + 8) + 40)];
  (*(v2 + 16))(v2, v3);

  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
  objc_sync_exit(obj);
}

- (void)_writeSearchTileToFile:(id)file
{
  v3 = MEMORY[0x277CCAAB0];
  v10 = 0;
  fileCopy = file;
  v5 = [v3 archivedDataWithRootObject:fileCopy requiringSecureCoding:1 error:&v10];
  v6 = MEMORY[0x277CCACA8];
  tileKey = [fileCopy tileKey];

  v8 = [v6 stringWithFormat:@"/tmp/tile_%llu", tileKey, v10];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  [v5 writeToURL:v9 atomically:1];
}

- (void)_captureTileFetchError:(id)error tileKey:(id)key duration:(double)duration trigger:(unint64_t)trigger
{
  v9 = MEMORY[0x277CCABB0];
  keyCopy = key;
  errorCopy = error;
  v13 = [v9 numberWithDouble:duration];
  v12 = [TBFetchAnalyticsEvent fetchEventWithSource:2 type:3 trigger:trigger duration:v13 requestCount:&unk_2848B9668 resultCount:0 error:errorCopy tileKey:keyCopy];

  [TBAnalytics captureEvent:v12];
}

@end