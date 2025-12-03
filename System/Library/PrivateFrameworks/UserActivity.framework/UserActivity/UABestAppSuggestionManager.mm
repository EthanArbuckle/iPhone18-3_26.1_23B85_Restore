@interface UABestAppSuggestionManager
- (BOOL)determineBestAppWithDelay:(double)delay withBlock:(id)block;
- (BOOL)fetchAllNearbyAppSuggestions;
- (BOOL)isActivityInfo:(id)info atTime:(id)time similarToAppSuggestion:(id)suggestion;
- (UABestAppSuggestionManager)init;
- (UABestAppSuggestionManagerDelegate)delegate;
- (id)bestAppSuggestion;
- (id)bestAppSuggestions:(int64_t)suggestions;
- (id)createAppSuggestionFromActivityInfo:(id)info atTime:(id)time;
- (void)bestAppSuggestionLaunchWasCancelled:(id)cancelled;
- (void)bestAppSuggestionWasLaunched:(id)launched withInteractionType:(unint64_t)type;
- (void)dealloc;
- (void)invalidate;
- (void)launchAppWithBundleIdentifier:(id)identifier taskContinuationIdentifier:(id)continuationIdentifier;
- (void)notifyBestAppsChanged:(id)changed when:(id)when confidence:(double)confidence;
- (void)queueFetchOfPayloadForBestAppSuggestion:(id)suggestion;
- (void)removeBestApp:(id)app options:(id)options;
- (void)removeBestAppByUUID:(id)d options:(id)options;
- (void)startListeningForBestAppSuggestions;
- (void)stopListeningForBestAppSuggestions;
@end

@implementation UABestAppSuggestionManager

- (void)startListeningForBestAppSuggestions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listeningForBestAppSuggestions = selfCopy->_listeningForBestAppSuggestions;
  selfCopy->_listeningForBestAppSuggestions = 1;
  objc_sync_exit(selfCopy);

  if (!listeningForBestAppSuggestions)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "-- Registering with useractivityd to receive bestAppSuggestion", v10, 2u);
    }

    connection = [(UABestAppSuggestionManager *)selfCopy connection];
    v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_20];

    if (v6)
    {
      selfCopy->_listeningForBestAppSuggestions = 1;
      delegate = [(UABestAppSuggestionManager *)selfCopy delegate];
      v8 = delegate;
      if (selfCopy->_lastBestAppSuggestion && delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          [v8 bestAppSuggestionChanged:0 withAdditionalSuggestions:0];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v8 bestAppSuggestionChanged:0];
        }

        lastBestAppSuggestion = selfCopy->_lastBestAppSuggestion;
        selfCopy->_lastBestAppSuggestion = 0;
      }

      [v6 doRegisterForBestAppChangeNotification];
    }
  }
}

- (void)stopListeningForBestAppSuggestions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listeningForBestAppSuggestions = selfCopy->_listeningForBestAppSuggestions;
  selfCopy->_listeningForBestAppSuggestions = 0;
  objc_sync_exit(selfCopy);

  if (listeningForBestAppSuggestions)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "-- Unregistering with useractivityd to receive bestAppSuggestion", v7, 2u);
    }

    connection = [(UABestAppSuggestionManager *)selfCopy connection];
    v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_26];

    if (v6)
    {
      [v6 doUnregisterForBestAppChangeNotification];
    }
  }
}

- (UABestAppSuggestionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UABestAppSuggestionManager)init
{
  v20.receiver = self;
  v20.super_class = UABestAppSuggestionManager;
  v2 = [(UABestAppSuggestionManager *)&v20 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    objc_copyWeak(&to, &v2->_delegate);
    v3 = objc_alloc_init(UABestAppSuggestionManagerProxy);
    proxyManager = v2->_proxyManager;
    v2->_proxyManager = v3;

    [(UABestAppSuggestionManagerProxy *)v2->_proxyManager setWeakManager:v2];
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = UABestAppSuggestionManagerServiceName();
    v7 = [v5 initWithMachServiceName:v6 options:0];
    connection = v2->_connection;
    v2->_connection = v7;

    v9 = _LSGetBestAppSuggestionManagerProtocolInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v9];

    proxyManager = [(UABestAppSuggestionManager *)v2 proxyManager];
    [(NSXPCConnection *)v2->_connection setExportedObject:proxyManager];

    v11 = _LSGetBestAppSuggestionManagerResponseProtocolInterface();
    [(NSXPCConnection *)v2->_connection setExportedInterface:v11];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__UABestAppSuggestionManager_init__block_invoke;
    v15[3] = &unk_2785C46D0;
    objc_copyWeak(&v16, &location);
    objc_copyWeak(&v17, &to);
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__UABestAppSuggestionManager_init__block_invoke_15;
    v13[3] = &unk_2785C4020;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v13];
    [(NSXPCConnection *)v2->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__UABestAppSuggestionManager_init__block_invoke(uint64_t a1)
{
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "-- connection to useractivityd interrupted.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[16];
    v5[16] = 0;
    objc_sync_exit(v5);

    v7 = objc_loadWeakRetained((a1 + 40));
    if (v7 && (v8 = v7, v9 = objc_loadWeakRetained((a1 + 40)), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
    {
      v11 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "-- calling .delegate with -(void) connectionInterrupted to tell client that the server has gone away.", v15, 2u);
      }

      v12 = objc_loadWeakRetained((a1 + 40));
      [v12 connectionInterrupted];
    }

    else if (v6)
    {
      v13 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "-- reestablishing connection to server because it was interrupted but the client has a delegate for us to call.", v14, 2u);
      }

      [v5 startListeningForBestAppSuggestions];
    }
  }
}

void __34__UABestAppSuggestionManager_init__block_invoke_15(uint64_t a1)
{
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEBUG, "-- Connection to useractivityd invalidated; this object won't work anymore.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopListeningForBestAppSuggestions];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  connection = [(UABestAppSuggestionManager *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = UABestAppSuggestionManager;
  [(UABestAppSuggestionManager *)&v4 dealloc];
}

- (void)removeBestAppByUUID:(id)d options:(id)options
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    v10 = [optionsCopy description];
    v11 = stringRemovingNewlines(v10);
    v15 = 138543618;
    v16 = uUIDString;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "removeBestAppByUUID:%{public}@ opts=%{public}@", &v15, 0x16u);
  }

  connection = [(UABestAppSuggestionManager *)self connection];
  v13 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_11];

  if (v13)
  {
    [v13 doRemoveBestAppSuggestion:dCopy options:optionsCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__UABestAppSuggestionManager_removeBestAppByUUID_options___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "error from xpc request to server, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeBestApp:(id)app options:(id)options
{
  v21 = *MEMORY[0x277D85DE8];
  appCopy = app;
  optionsCopy = options;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [appCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v11 = [optionsCopy description];
    v12 = stringRemovingNewlines(v11);
    v15 = 138543875;
    v16 = uUIDString;
    v17 = 2113;
    v18 = appCopy;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "removeBestApp:%{public}@/%{private}@ opts=%{public}@", &v15, 0x20u);
  }

  uniqueIdentifier2 = [appCopy uniqueIdentifier];
  [(UABestAppSuggestionManager *)self removeBestAppByUUID:uniqueIdentifier2 options:optionsCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "invalidate", v7, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(UABestAppSuggestionManager *)selfCopy connection];

  if (connection)
  {
    connection2 = [(UABestAppSuggestionManager *)selfCopy connection];
    [connection2 invalidate];

    [(UABestAppSuggestionManager *)selfCopy setConnection:0];
  }

  objc_sync_exit(selfCopy);
}

void __65__UABestAppSuggestionManager_startListeningForBestAppSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "error from xpc request to server, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __64__UABestAppSuggestionManager_stopListeningForBestAppSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "error from xpc request to server, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)bestAppSuggestion
{
  v2 = [(UABestAppSuggestionManager *)self bestAppSuggestions:0];
  v3 = v2;
  if (v2)
  {
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)determineBestAppWithDelay:(double)delay withBlock:(id)block
{
  blockCopy = block;
  bestAppSuggestion = [(UABestAppSuggestionManager *)self bestAppSuggestion];
  if (bestAppSuggestion)
  {
    v8 = dispatch_time(0, (delay * 1000000000.0));
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__UABestAppSuggestionManager_determineBestAppWithDelay_withBlock___block_invoke;
    v10[3] = &unk_2785C46F8;
    v12 = blockCopy;
    v11 = bestAppSuggestion;
    dispatch_after(v8, MEMORY[0x277D85CD0], v10);
  }

  return 0;
}

- (id)bestAppSuggestions:(int64_t)suggestions
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  connection = [(UABestAppSuggestionManager *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__UABestAppSuggestionManager_bestAppSuggestions___block_invoke;
  v16[3] = &unk_2785C43D0;
  v7 = v5;
  v17 = v7;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];

  if (v8)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__UABestAppSuggestionManager_bestAppSuggestions___block_invoke_27;
    v13[3] = &unk_2785C4720;
    v13[4] = &v18;
    objc_copyWeak(&v14, &location);
    [v8 doDetermineBestAppSuggestionWithCompletionHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v9 = v19[5];
  if (v9 && [v9 count])
  {
    if (suggestions && [v19[5] count] > suggestions)
    {
      v10 = [v19[5] subarrayWithRange:{0, suggestions}];
    }

    else
    {
      v10 = v19[5];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __49__UABestAppSuggestionManager_bestAppSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "error from xpc request to server, %{public}@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __49__UABestAppSuggestionManager_bestAppSuggestions___block_invoke_27(uint64_t a1, void *a2, void *a3, double a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 firstObject];
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v9 uuid];
    v30 = [v34 UUIDString];
    suggestedActionTypeString([v9 type]);
    v11 = v35 = v7;
    v29 = [v9 bundleIdentifier];
    v12 = [v9 activityType];
    v32 = [v9 peerDevice];
    v13 = [v32 name];
    v31 = [v9 peerDevice];
    v14 = [v31 uniqueID];
    [v9 peerDeviceType];
    v15 = v33 = v9;
    *buf = 138545667;
    v42 = v30;
    v43 = 2114;
    v44 = v11;
    v45 = 2113;
    v46 = v29;
    v47 = 2113;
    v48 = v12;
    v49 = 2114;
    v50 = v8;
    v51 = 2048;
    v52 = a4;
    v53 = 2113;
    v54 = v13;
    v55 = 2113;
    v56 = v14;
    v57 = 2113;
    v58 = v15;
    v59 = 2048;
    v60 = [v35 count] - 1;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ %{private}@ %{private}@ %{public}@ %g %{private}@ %{private}@ %{private}@ (and %lu more app suggestions)", buf, 0x66u);

    v9 = v33;
    v7 = v35;
  }

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = *(*(a1 + 32) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        v25 = [v24 uuid];

        if (v25)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 40));
          v27 = [WeakRetained createAppSuggestionFromActivityInfo:v24 atTime:v8];

          if (v27)
          {
            [*(*(*(a1 + 32) + 8) + 40) addObject:v27];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v21);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchAllNearbyAppSuggestions
{
  v3 = _uaGetLogForCategory(@"multi-handoff");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "fetchAllNearbyAppSuggestions called", buf, 2u);
  }

  connection = [(UABestAppSuggestionManager *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_34_0];

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UABestAppSuggestionManager_fetchAllNearbyAppSuggestions__block_invoke_35;
  v7[3] = &unk_2785C4250;
  v7[4] = buf;
  [v5 fetchAllNearbyAppSuggestions:v7];
  LOBYTE(connection) = v9[24];
  _Block_object_dispose(buf, 8);

  return connection;
}

void __58__UABestAppSuggestionManager_fetchAllNearbyAppSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "Error from xpc request to server, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __58__UABestAppSuggestionManager_fetchAllNearbyAppSuggestions__block_invoke_35(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _uaGetLogForCategory(@"multi-handoff");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 32) + 8) + 24)];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEFAULT, "expectResults: %@", &v7, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)queueFetchOfPayloadForBestAppSuggestion:(id)suggestion
{
  v19 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = [suggestionCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    LODWORD(v18) = 138543362;
    *(&v18 + 4) = uUIDString;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "queueFetchOfPayloadForBestAppSuggestion:%{public}@", &v18, 0xCu);
  }

  connection = [(UABestAppSuggestionManager *)self connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_39];

  if (v9)
  {
    v10 = _uaGetLogForCategory(@"signposts");
    uniqueIdentifier2 = [suggestionCopy uniqueIdentifier];
    if (uniqueIdentifier2)
    {
      v12 = uniqueIdentifier2;
      v18 = 0uLL;
      [uniqueIdentifier2 getUUIDBytes:&v18];
      v13 = 0;
      v14 = 0;
      do
      {
        v14 = (*(&v18 + v13 + 1) ^ *(&v18 + v13)) | (v14 << 8);
        v13 += 2;
      }

      while (v13 != 16);

      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        uniqueIdentifier3 = [suggestionCopy uniqueIdentifier];
        LODWORD(v18) = 138543362;
        *(&v18 + 4) = uniqueIdentifier3;
        _os_signpost_emit_with_name_impl(&dword_226A4E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v14, "fetchUserActivityQueued", "Fetching handoff payload:%{public}@", &v18, 0xCu);
      }
    }

    uniqueIdentifier4 = [suggestionCopy uniqueIdentifier];
    [v9 doQueueFetchOfPayloadForBestAppSuggestion:uniqueIdentifier4 completionHandler:&__block_literal_global_42_0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __70__UABestAppSuggestionManager_queueFetchOfPayloadForBestAppSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "Error from xpc request to server, %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)bestAppSuggestionWasLaunched:(id)launched withInteractionType:(unint64_t)type
{
  launchedCopy = launched;
  if (launchedCopy)
  {
    v10 = launchedCopy;
    connection = [(UABestAppSuggestionManager *)self connection];
    remoteObjectProxy = [connection remoteObjectProxy];

    if (remoteObjectProxy)
    {
      uniqueIdentifier = [v10 uniqueIdentifier];
      [remoteObjectProxy doLaunchFollowUp:uniqueIdentifier interactionType:type cancelled:0];
    }

    launchedCopy = v10;
  }
}

- (void)bestAppSuggestionLaunchWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (cancelledCopy)
  {
    v8 = cancelledCopy;
    connection = [(UABestAppSuggestionManager *)self connection];
    remoteObjectProxy = [connection remoteObjectProxy];

    if (remoteObjectProxy)
    {
      uniqueIdentifier = [v8 uniqueIdentifier];
      [remoteObjectProxy doLaunchFollowUp:uniqueIdentifier interactionType:0 cancelled:1];
    }

    cancelledCopy = v8;
  }
}

- (id)createAppSuggestionFromActivityInfo:(id)info atTime:(id)time
{
  timeCopy = time;
  infoCopy = info;
  v6 = [UABestAppSuggestion alloc];
  bundleIdentifier = [infoCopy bundleIdentifier];
  uuid = [infoCopy uuid];
  activityType = [infoCopy activityType];
  dynamicActivityType = [infoCopy dynamicActivityType];
  when = [infoCopy when];
  type = [infoCopy type];
  peerDevice = [infoCopy peerDevice];
  name = [peerDevice name];
  peerDevice2 = [infoCopy peerDevice];
  uniqueID = [peerDevice2 uniqueID];
  peerDeviceType = [infoCopy peerDeviceType];
  options = [infoCopy options];
  active = [infoCopy active];

  LOBYTE(v15) = active;
  v17 = [(UABestAppSuggestion *)v6 initWithBundleIdentifier:bundleIdentifier uuid:uuid activityType:activityType dynamicIdentifier:dynamicActivityType lastUpdateTime:timeCopy lastActiveTime:when type:type deviceName:name deviceIdentifier:uniqueID deviceType:peerDeviceType options:options isActive:v15];

  return v17;
}

- (BOOL)isActivityInfo:(id)info atTime:(id)time similarToAppSuggestion:(id)suggestion
{
  infoCopy = info;
  timeCopy = time;
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    type = [infoCopy type];
    if (type == [suggestionCopy type])
    {
      uuid = [infoCopy uuid];
      uniqueIdentifier = [suggestionCopy uniqueIdentifier];
      if (![uuid isEqual:uniqueIdentifier])
      {
        v16 = 0;
LABEL_30:

        goto LABEL_31;
      }

      bundleIdentifier = [infoCopy bundleIdentifier];
      if (bundleIdentifier)
      {
        bundleIdentifier2 = [infoCopy bundleIdentifier];
        bundleIdentifier3 = [suggestionCopy bundleIdentifier];
        v36 = bundleIdentifier2;
        if (![bundleIdentifier2 isEqual:bundleIdentifier3])
        {
          v16 = 0;
          goto LABEL_28;
        }
      }

      activityType = [infoCopy activityType];
      if (activityType)
      {
        activityType2 = [infoCopy activityType];
        activityType3 = [suggestionCopy activityType];
        v35 = activityType2;
        if (![activityType2 isEqual:?])
        {
          v16 = 0;
          goto LABEL_25;
        }
      }

      options = [infoCopy options];
      if (options)
      {
        bundleIdentifier2 = [infoCopy options];
        options2 = [suggestionCopy options];
        v32 = bundleIdentifier2;
        if (![bundleIdentifier2 isEqual:?])
        {
          v20 = options;
          v16 = 0;
          goto LABEL_22;
        }
      }

      v33 = options;
      if (!timeCopy || ([suggestionCopy when], bundleIdentifier2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(timeCopy, "compare:", bundleIdentifier2) == -1))
      {
        peerDevice = [infoCopy peerDevice];
        uniqueID = [peerDevice uniqueID];
        if (uniqueID)
        {
          v28 = uniqueID;
          peerDevice2 = [infoCopy peerDevice];
          [peerDevice2 uniqueID];
          v23 = v30 = bundleIdentifier3;
          [suggestionCopy originatingDeviceIdentifier];
          v24 = v29 = bundleIdentifier2;
          v26 = peerDevice;
          v16 = [v23 isEqual:v24];

          bundleIdentifier2 = v29;
          bundleIdentifier3 = v30;

          if (!timeCopy)
          {
            goto LABEL_21;
          }
        }

        else
        {

          v16 = 1;
          if (!timeCopy)
          {
LABEL_21:
            v20 = v33;
            if (!v33)
            {
              if (!activityType)
              {
LABEL_26:

                goto LABEL_27;
              }

LABEL_25:

              goto LABEL_26;
            }

LABEL_22:

            if (!activityType)
            {
LABEL_27:
              if (!bundleIdentifier)
              {
LABEL_29:

                goto LABEL_30;
              }

LABEL_28:

              goto LABEL_29;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_21;
    }
  }

  v16 = 0;
LABEL_31:

  return v16;
}

- (void)notifyBestAppsChanged:(id)changed when:(id)when confidence:(double)confidence
{
  v82 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  whenCopy = when;
  v55 = changedCopy;
  firstObject = [changedCopy firstObject];
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [firstObject uuid];
    uUIDString = [uuid UUIDString];
    v51 = suggestedActionTypeString([firstObject type]);
    bundleIdentifier = [firstObject bundleIdentifier];
    activityType = [firstObject activityType];
    options = [firstObject options];
    v12 = [options description];
    v50 = stringRemovingNewlines(v12);
    peerDevice = [firstObject peerDevice];
    name = [peerDevice name];
    peerDevice2 = [firstObject peerDevice];
    uniqueID = [peerDevice2 uniqueID];
    *buf = 138545667;
    v63 = uUIDString;
    v64 = 2114;
    v65 = v51;
    v66 = 2113;
    v67 = bundleIdentifier;
    v68 = 2113;
    v69 = activityType;
    v70 = 2114;
    v71 = v50;
    v72 = 2114;
    v73 = whenCopy;
    v74 = 2048;
    confidenceCopy = confidence;
    v76 = 2113;
    v77 = name;
    v78 = 2113;
    v79 = uniqueID;
    v80 = 2048;
    v81 = [v55 count] - 1;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEFAULT, "notifyBestAppsChanged:%{public}@ %{public}@ %{private}@/%{private}@ opts=%{public}@ when=%{public}@ confidence=%g from=%{private}@/%{private}@  (and %lu more best app suggestions)", buf, 0x66u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = WeakRetained == 0;

  if (!v18)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = 1;
        goto LABEL_10;
      }
    }

    v23 = objc_loadWeakRetained(&self->_delegate);
    if (!v23 || (v24 = objc_loadWeakRetained(&self->_delegate), v25 = objc_opt_respondsToSelector(), v24, v23, (v25 & 1) != 0))
    {
      v22 = 0;
LABEL_10:
      activityType2 = [firstObject activityType];
      if (activityType2)
      {
        activityType3 = [firstObject activityType];
        if ([activityType3 length])
        {
          active = [firstObject active];

          if (active)
          {
            selfCopy = self;
            objc_sync_enter(selfCopy);
            ++selfCopy->_bestAppNotificationCount;
            if ((v22 & 1) != 0 || ![(UABestAppSuggestionManager *)selfCopy isActivityInfo:firstObject atTime:whenCopy similarToAppSuggestion:selfCopy->_lastBestAppSuggestion])
            {
              v38 = [(UABestAppSuggestionManager *)selfCopy createAppSuggestionFromActivityInfo:firstObject atTime:whenCopy];
              objc_storeStrong(&selfCopy->_lastBestAppSuggestion, v38);
              objc_sync_exit(selfCopy);

              if (v22)
              {
                v39 = [MEMORY[0x277CBEB58] set];
                v40 = v39;
                if (v38)
                {
                  [v39 addObject:v38];
                }

                if ([v55 count] >= 2)
                {
                  v41 = 1;
                  do
                  {
                    v42 = [v55 objectAtIndex:v41];
                    date = [MEMORY[0x277CBEAA8] date];
                    when = [v42 when];
                    [date timeIntervalSinceDate:when];
                    v46 = v45 > 600.0;

                    if (!v46)
                    {
                      v47 = [(UABestAppSuggestionManager *)selfCopy createAppSuggestionFromActivityInfo:v42 atTime:whenCopy];
                      if (v47)
                      {
                        [v40 addObject:v47];
                      }
                    }

                    ++v41;
                  }

                  while (v41 < [v55 count]);
                }

                v48 = objc_loadWeakRetained(&self->_delegate);
                [v48 bestAppSuggestionChanged:v38 withAdditionalSuggestions:v40];
              }

              else
              {
                if (!v38)
                {
                  goto LABEL_21;
                }

                v49 = objc_loadWeakRetained(&self->_delegate);
                [v49 bestAppSuggestionChanged:v38];
              }

              selfCopy = v38;
            }

            else
            {
              v30 = _uaGetLogForCategory(0);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                uuid2 = [firstObject uuid];
                uUIDString2 = [uuid2 UUIDString];
                bundleIdentifier2 = [firstObject bundleIdentifier];
                *buf = 138543619;
                v63 = uUIDString2;
                v64 = 2113;
                v65 = bundleIdentifier2;
                _os_log_impl(&dword_226A4E000, v30, OS_LOG_TYPE_DEBUG, " -- ignoring delivery of %{public}@ %{private}@ because it matches the last bestApp we got told about.", buf, 0x16u);
              }

              objc_sync_exit(selfCopy);
            }

            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      bestAppNotificationCount = self->_bestAppNotificationCount;
      v35 = objc_loadWeakRetained(&self->_delegate);
      v36 = dispatch_time(0, 750000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__UABestAppSuggestionManager_notifyBestAppsChanged_when_confidence___block_invoke;
      block[3] = &unk_2785C4748;
      v60 = bestAppNotificationCount;
      v61 = v22;
      block[4] = self;
      v59 = v35;
      selfCopy = v35;
      dispatch_after(v36, MEMORY[0x277D85CD0], block);

LABEL_20:
    }
  }

LABEL_21:

  v37 = *MEMORY[0x277D85DE8];
}

void __68__UABestAppSuggestionManager_notifyBestAppsChanged_when_confidence___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if (*(v2 + 20) == *(a1 + 48))
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 24) = 0;
    }

    v4 = *(a1 + 40);
    if (*(a1 + 52) == 1)
    {
      [v4 bestAppSuggestionChanged:0 withAdditionalSuggestions:0];
    }

    else
    {
      [v4 bestAppSuggestionChanged:0];
    }
  }

  objc_sync_exit(obj);
}

- (void)launchAppWithBundleIdentifier:(id)identifier taskContinuationIdentifier:(id)continuationIdentifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  continuationIdentifierCopy = continuationIdentifier;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543619;
    v11 = continuationIdentifierCopy;
    v12 = 2113;
    v13 = identifierCopy;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ %{private}@", &v10, 0x16u);
  }

  [(UABestAppSuggestionManager *)self launchAppWithBundleIdentifier:identifierCopy userActivityUniqueIdentifier:continuationIdentifierCopy userActivityTypeIdentifier:0];
  v9 = *MEMORY[0x277D85DE8];
}

@end