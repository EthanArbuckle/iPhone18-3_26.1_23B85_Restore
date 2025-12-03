@interface TUNeighborhoodActivityConduit
+ (BOOL)isConduitAvailable;
- (BOOL)_shouldReconnect;
- (BOOL)canPullBackConversation:(id)conversation;
- (BOOL)isRingingFaceTimeCallsOnConnectedTVDevice;
- (NSDictionary)nearbyTVDevices;
- (NSSet)nearbyTVDeviceHandles;
- (TUNeighborhoodActivityConduit)initWithConversationManager:(id)manager;
- (TUNeighborhoodActivityConduit)initWithConversationManager:(id)manager xpcClient:(id)client;
- (TUNeighborhoodActivityConduitApprovalDelegate)approvalDelegate;
- (id)_findConversationForUUID:(id)d;
- (id)_osStateDictionary;
- (void)_forEachDelegate:(id)delegate;
- (void)_requestInitialState;
- (void)addDelegate:(id)delegate;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)approveSplitSessionForConversation:(id)conversation device:(id)device pullContext:(int64_t)context completion:(id)completion;
- (void)callStatusChanged:(id)changed;
- (void)cancelSplitSessionApproval;
- (void)connectionEstablishedForClient:(id)client;
- (void)connectionLostForClient:(id)client;
- (void)continuityCameraDidConnect;
- (void)dealloc;
- (void)disconnectTVDevice:(id)device completion:(id)completion;
- (void)ensureConduitInitialized:(id)initialized;
- (void)handoffConversation:(id)conversation toTVDevice:(id)device completion:(id)completion;
- (void)inviteTVDevice:(id)device toConversation:(id)conversation completion:(id)completion;
- (void)pullConversation:(id)conversation fromTVDevice:(id)device completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)respondToSuggestionWithResult:(id)result completion:(id)completion;
- (void)setActiveSplitSessionTV:(id)v;
- (void)setApprovalDelegate:(id)delegate;
- (void)setSuggestedTVDeviceName:(id)name completion:(id)completion;
- (void)setSuggestion:(id)suggestion;
- (void)splitSessionUpdated;
- (void)splitSessionUpdated:(id)updated;
- (void)startConversationWith:(id)with on:(id)on completion:(id)completion;
- (void)suggestionUpdated:(id)updated;
- (void)tvDeviceAppeared:(id)appeared;
- (void)tvDeviceDisappeared:(id)disappeared;
@end

@implementation TUNeighborhoodActivityConduit

+ (BOOL)isConduitAvailable
{
  if (isConduitAvailable_onceToken != -1)
  {
    +[TUNeighborhoodActivityConduit isConduitAvailable];
  }

  return isConduitAvailable_sIsConduitAvailable;
}

- (id)_osStateDictionary
{
  if (_osStateDictionary_onceToken != -1)
  {
    [TUNeighborhoodActivityConduit _osStateDictionary];
  }

  v3 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:_osStateDictionary___keyset];
  v4 = [(NSMutableSet *)self->_nearbyTVs copy];
  v5 = [v4 valueForKey:@"plistRepresentation"];
  allObjects = [v5 allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"nearbyTVs"];

  activeSplitSessionTV = self->_activeSplitSessionTV;
  if (activeSplitSessionTV)
  {
    plistRepresentation = [(TUNearbyDeviceHandle *)activeSplitSessionTV plistRepresentation];
    [v3 setObject:plistRepresentation forKeyedSubscript:@"currentSplitSessionTV"];
  }

  suggestion = self->_suggestion;
  if (suggestion)
  {
    v10 = [(TUNearbySuggestion *)suggestion description];
    [v3 setObject:v10 forKeyedSubscript:@"suggestion"];
  }

  approvalDelegate = [(TUNeighborhoodActivityConduit *)self approvalDelegate];
  v12 = approvalDelegate;
  if (approvalDelegate)
  {
    v13 = [approvalDelegate description];
    [v3 setObject:v13 forKeyedSubscript:@"approvalDelegate"];
  }

  return v3;
}

- (TUNeighborhoodActivityConduitApprovalDelegate)approvalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_approvalDelegate);

  return WeakRetained;
}

- (TUNeighborhoodActivityConduit)initWithConversationManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(TUNeighborhoodActivityConduitXPCClient);
  v6 = [(TUNeighborhoodActivityConduit *)self initWithConversationManager:managerCopy xpcClient:v5];

  return v6;
}

- (TUNeighborhoodActivityConduit)initWithConversationManager:(id)manager xpcClient:(id)client
{
  managerCopy = manager;
  clientCopy = client;
  v20.receiver = self;
  v20.super_class = TUNeighborhoodActivityConduit;
  v9 = [(TUNeighborhoodActivityConduit *)&v20 init];
  if (v9)
  {
    v10 = objc_opt_new();
    nearbyTVs = v9->_nearbyTVs;
    v9->_nearbyTVs = v10;

    objc_storeStrong(&v9->_xpcClient, client);
    [(TUNeighborhoodActivityConduitXPCClient *)v9->_xpcClient setDelegate:v9];
    v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    delegates = v9->_delegates;
    v9->_delegates = v12;

    objc_storeStrong(&v9->_conversationManager, manager);
    [(TUNeighborhoodActivityConduitXPCClient *)v9->_xpcClient ensureConnection];
    objc_initWeak(&location, v9);
    v14 = dispatch_get_global_queue(0, 0);
    objc_copyWeak(&v18, &location);
    v17 = v9;
    v17->_stateHandle = os_state_add_handler();

    v15 = v17;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

char *__71__TUNeighborhoodActivityConduit_initWithConversationManager_xpcClient___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [*(a1 + 32) _osStateDictionary];
    v16 = 0;
    v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:&v16];
    v7 = v16;

    if (!v6)
    {
      v8 = dispatch_get_global_queue(0, 0);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __71__TUNeighborhoodActivityConduit_initWithConversationManager_xpcClient___block_invoke_2;
      v14 = &unk_1E7424950;
      v15 = v7;
      dispatch_async(v8, &v11);
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = malloc_type_malloc([v6 length] + 200, 0x1000040BEF03554uLL);
  *v9 = 1;
  strcpy(v9 + 136, "TUNeighborhoodActivityConduit");
  *(v9 + 1) = [v6 length];
  [v6 getBytes:v9 + 200 length:{objc_msgSend(v6, "length")}];

  objc_autoreleasePoolPop(v2);
  return v9;
}

void __71__TUNeighborhoodActivityConduit_initWithConversationManager_xpcClient___block_invoke_2(uint64_t a1)
{
  v2 = TUConduitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__TUNeighborhoodActivityConduit_initWithConversationManager_xpcClient___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)dealloc
{
  v3 = TUConduitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [TUNeighborhoodActivityConduit dealloc];
  }

  stateHandle = self->_stateHandle;
  os_state_remove_handler();
  v5.receiver = self;
  v5.super_class = TUNeighborhoodActivityConduit;
  [(TUNeighborhoodActivityConduit *)&v5 dealloc];
}

void __51__TUNeighborhoodActivityConduit_isConduitAvailable__block_invoke()
{
  v0 = MGGetStringAnswer();
  v1 = CFEqual(v0, @"AudioAccessory") == 0;
  CFRelease(v0);
  isConduitAvailable_sIsConduitAvailable = v1;
}

uint64_t __51__TUNeighborhoodActivityConduit__osStateDictionary__block_invoke()
{
  _osStateDictionary___keyset = [MEMORY[0x1E695DF90] sharedKeySetForKeys:&unk_1F09C6340];

  return MEMORY[0x1EEE66BB8]();
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = TUConduitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(TUNeighborhoodActivityConduit *)v11 addDelegate:v13 queue:v9];
  }

  [(NSMapTable *)selfCopy->_delegates setObject:queueCopy forKey:delegateCopy];
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addDelegate:(id)delegate
{
  v4 = addDelegate__onceToken;
  delegateCopy = delegate;
  v7 = delegateCopy;
  if (v4 == -1)
  {
    v6 = delegateCopy;
  }

  else
  {
    [TUNeighborhoodActivityConduit addDelegate:];
    v6 = v7;
  }

  [(TUNeighborhoodActivityConduit *)self addDelegate:v6 queue:addDelegate__defaultQueue];
}

uint64_t __45__TUNeighborhoodActivityConduit_addDelegate___block_invoke()
{
  addDelegate__defaultQueue = dispatch_queue_create("com.apple.faceTime.neighborhoodActivityConduit.defaultQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (void)removeDelegate:(id)delegate
{
  v11 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = TUConduitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(TUNeighborhoodActivityConduit *)v8 removeDelegate:v10, v6];
  }

  [(NSMapTable *)selfCopy->_delegates removeObjectForKey:delegateCopy];
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setApprovalDelegate:(id)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = TUConduitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Setting approval delegate: %{public}@", &v10, 0xCu);
  }

  objc_storeWeak(&self->_approvalDelegate, delegateCopy);
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient registerApprovalClientEnabled:delegateCopy != 0];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setActiveSplitSessionTV:(id)v
{
  v13 = *MEMORY[0x1E69E9840];
  vCopy = v;
  v6 = TUConduitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activeSplitSessionTV = self->_activeSplitSessionTV;
    v9 = 138412546;
    v10 = activeSplitSessionTV;
    v11 = 2112;
    v12 = vCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Setting activeSplitSessionTV: oldValue: %@, newValue: %@", &v9, 0x16u);
  }

  if (![(TUNearbyDeviceHandle *)self->_activeSplitSessionTV isEqual:vCopy])
  {
    [(TUNeighborhoodActivityConduit *)self willChangeValueForKey:@"activeSplitSessionTV"];
    objc_storeStrong(&self->_activeSplitSessionTV, v);
    [(TUNeighborhoodActivityConduit *)self didChangeValueForKey:@"activeSplitSessionTV"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v6 = TUConduitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    suggestion = self->_suggestion;
    v9 = 138412546;
    suggestionCopy2 = suggestion;
    v11 = 2112;
    v12 = suggestionCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Setting suggestion: oldValue: %@, newValue: %@", &v9, 0x16u);
  }

  if (![(TUNearbySuggestion *)self->_suggestion isEqual:suggestionCopy])
  {
    [(TUNeighborhoodActivityConduit *)self willChangeValueForKey:@"suggestion"];
    objc_storeStrong(&self->_suggestion, suggestion);
    [(TUNeighborhoodActivityConduit *)self didChangeValueForKey:@"suggestion"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSuggestedTVDeviceName:(id)name completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  v8 = TUConduitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = nameCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Called to force suggested tv device name banner: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__TUNeighborhoodActivityConduit_setSuggestedTVDeviceName_completion___block_invoke;
  v12[3] = &unk_1E74259B8;
  objc_copyWeak(&v14, buf);
  v10 = completionCopy;
  v13 = v10;
  [xpcClient setSuggestedTVDeviceName:nameCopy completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x1E69E9840];
}

void __69__TUNeighborhoodActivityConduit_setSuggestedTVDeviceName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v7)
    {
      [WeakRetained setSuggestion:v7];
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_requestInitialState
{
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke;
  v12[3] = &unk_1E7425A08;
  v12[4] = self;
  [xpcClient nearbyTVDevicesWithCompletion:v12];

  xpcClient2 = [(TUNeighborhoodActivityConduit *)self xpcClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2;
  v11[3] = &unk_1E7425A58;
  v11[4] = self;
  [xpcClient2 activeSplitSessionTVDeviceWithCompletion:v11];

  xpcClient3 = [(TUNeighborhoodActivityConduit *)self xpcClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_236;
  v10[3] = &unk_1E7425A80;
  v10[4] = self;
  [xpcClient3 suggestionWithCompletion:v10];

  xpcClient4 = [(TUNeighborhoodActivityConduit *)self xpcClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_240;
  v9[3] = &unk_1E7425AA8;
  v9[4] = self;
  [xpcClient4 isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:v9];

  xpcClient5 = [(TUNeighborhoodActivityConduit *)self xpcClient];
  approvalDelegate = [(TUNeighborhoodActivityConduit *)self approvalDelegate];
  [xpcClient5 registerApprovalClientEnabled:approvalDelegate != 0];
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TUConduitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [*(a1 + 32) nearbyTVs];
    v9 = [v8 mutableCopy];

    v10 = [v5 mutableCopy];
    [v9 minusSet:v5];
    v11 = [*(a1 + 32) nearbyTVs];
    [v10 minusSet:v11];

    v12 = [*(a1 + 32) nearbyTVs];
    [v12 unionSet:v5];

    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_231;
    v15[3] = &unk_1E74259E0;
    v16 = v9;
    v17 = v13;
    v18 = v10;
    v14 = v10;
    v7 = v9;
    [v13 _forEachDelegate:v15];
  }
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_231(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 neighborhoodActivityConduit:*(a1 + 40) tvDeviceDisappeared:*(*(&v19 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 neighborhoodActivityConduit:*(a1 + 40) tvDeviceAppeared:{*(*(&v15 + 1) + 8 * v13++), v15}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TUConduitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setActiveSplitSessionTV:v5];
    if (v5)
    {
      v8 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_234;
      v9[3] = &unk_1E7425A30;
      v9[4] = v8;
      v10 = v5;
      [v8 _forEachDelegate:v9];
    }
  }
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_236(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TUConduitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_236_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setSuggestion:v5];
    if (v5)
    {
      v8 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_237;
      v9[3] = &unk_1E7425A30;
      v9[4] = v8;
      v10 = v5;
      [v8 _forEachDelegate:v9];
    }
  }
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_237(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 neighborhoodActivityConduit:*(a1 + 32) suggestionUpdated:*(a1 + 40)];
  }
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_240(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TUConduitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_240_cold_1();
    }
  }

  else
  {
    *(*(a1 + 32) + 8) = a2;
  }
}

- (void)_forEachDelegate:(id)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  delegates = [(TUNeighborhoodActivityConduit *)selfCopy delegates];
  keyEnumerator = [delegates keyEnumerator];

  v8 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        delegates2 = [(TUNeighborhoodActivityConduit *)selfCopy delegates];
        v13 = [delegates2 objectForKey:v11];

        if (v13)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __50__TUNeighborhoodActivityConduit__forEachDelegate___block_invoke;
          v16[3] = &unk_1E7425540;
          v14 = delegateCopy;
          v16[4] = v11;
          v17 = v14;
          dispatch_async(v13, v16);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_findConversationForUUID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    conversationManager = [(TUNeighborhoodActivityConduit *)self conversationManager];
    activeConversations = [conversationManager activeConversations];

    v7 = [activeConversations countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(activeConversations);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          uUID = [v10 UUID];
          v12 = [uUID isEqual:dCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [activeConversations countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_shouldReconnect
{
  v9 = *MEMORY[0x1E69E9840];
  conduitLifecycleController = [(TUNeighborhoodActivityConduit *)self conduitLifecycleController];

  if (conduitLifecycleController)
  {
    conduitLifecycleController2 = [(TUNeighborhoodActivityConduit *)self conduitLifecycleController];
    LODWORD(conduitLifecycleController) = [conduitLifecycleController2 shouldKeepConduitAlive];

    v5 = TUConduitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = conduitLifecycleController;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Process does initialize conduitLifeCycleController, are we keeping NAC alive? %d", v8, 8u);
    }
  }

  else
  {
    v5 = TUConduitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Process does not initialize conduitLifecycleController, deferring to processes that do", v8, 2u);
      LOBYTE(conduitLifecycleController) = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return conduitLifecycleController;
}

- (NSSet)nearbyTVDeviceHandles
{
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient ensureConnection];

  nearbyTVs = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  v5 = [nearbyTVs copy];

  return v5;
}

- (NSDictionary)nearbyTVDevices
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  nearbyTVs = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  v5 = [v3 initWithCapacity:{objc_msgSend(nearbyTVs, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  nearbyTVs2 = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  v7 = [nearbyTVs2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(nearbyTVs2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        knownIdentifiersByHandleType = [v11 knownIdentifiersByHandleType];
        v13 = [knownIdentifiersByHandleType objectForKey:&unk_1F09C5E90];

        if (v13)
        {
          [v5 setObject:v11 forKeyedSubscript:v13];
        }
      }

      v8 = [nearbyTVs2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isRingingFaceTimeCallsOnConnectedTVDevice
{
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient ensureConnection];

  return self->_isRingingFaceTimeCallsOnConnectedTVDevice;
}

- (BOOL)canPullBackConversation:(id)conversation
{
  conversationCopy = conversation;
  mergedRemoteMembers = [conversationCopy mergedRemoteMembers];
  v5 = [mergedRemoteMembers count];

  mergedActiveRemoteParticipants = [conversationCopy mergedActiveRemoteParticipants];
  v7 = [mergedActiveRemoteParticipants count];

  if (conversationCopy && [conversationCopy isContinuitySession])
  {
    state = [conversationCopy state];
    v11 = (v5 > 1 || v7 != 0) && state == 3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)inviteTVDevice:(id)device toConversation:(id)conversation completion:(id)completion
{
  completionCopy = completion;
  conversationCopy = conversation;
  deviceCopy = device;
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient inviteTVDevice:deviceCopy toConversationWithUUID:conversationCopy completion:completionCopy];
}

- (void)disconnectTVDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient disconnectTVDevice:deviceCopy completion:completionCopy];
}

- (void)respondToSuggestionWithResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  resultCopy = result;
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient respondToSuggestionWithResult:resultCopy completion:completionCopy];
}

- (void)handoffConversation:(id)conversation toTVDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  conversationCopy = conversation;
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient handoffConversation:conversationCopy toTVDevice:deviceCopy completion:completionCopy];
}

- (void)pullConversation:(id)conversation fromTVDevice:(id)device completion:(id)completion
{
  conversationCopy = conversation;
  deviceCopy = device;
  completionCopy = completion;
  v10 = [(TUNeighborhoodActivityConduit *)self _findConversationForUUID:conversationCopy];
  if (v10 && [(TUNeighborhoodActivityConduit *)self canPullBackConversation:v10])
  {
    xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
    [xpcClient pullConversation:conversationCopy fromTVDevice:deviceCopy completion:completionCopy];
  }

  else
  {
    xpcClient = TUMakeNeighborhoodConduitError(11, 0);
    completionCopy[2](completionCopy, 0, xpcClient);
  }
}

- (void)startConversationWith:(id)with on:(id)on completion:(id)completion
{
  completionCopy = completion;
  onCopy = on;
  withCopy = with;
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient startConversationWith:withCopy on:onCopy completion:completionCopy];
}

- (void)connectionEstablishedForClient:(id)client
{
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TUNeighborhoodActivityConduit connectionEstablishedForClient:];
  }

  [(TUNeighborhoodActivityConduit *)self _requestInitialState];
}

- (void)connectionLostForClient:(id)client
{
  clientCopy = client;
  v5 = TUConduitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TUNeighborhoodActivityConduit connectionLostForClient:];
  }

  self->_isRingingFaceTimeCallsOnConnectedTVDevice = 0;
  processHandle = [MEMORY[0x1E698E740] processHandle];
  v7 = [processHandle hasEntitlement:@"com.apple.NeighborhoodActivityConduitService"];

  if (v7)
  {
    if ([(TUNeighborhoodActivityConduit *)self _shouldReconnect])
    {
      [clientCopy ensureConnection];
    }

    else
    {
      v8 = TUConduitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [TUNeighborhoodActivityConduit connectionLostForClient:];
      }
    }
  }
}

- (void)tvDeviceAppeared:(id)appeared
{
  appearedCopy = appeared;
  nearbyTVs = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__TUNeighborhoodActivityConduit_tvDeviceAppeared___block_invoke;
  v13[3] = &unk_1E7425AD0;
  v6 = appearedCopy;
  v14 = v6;
  v7 = [nearbyTVs bs_filter:v13];

  nearbyTVs2 = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  [nearbyTVs2 minusSet:v7];

  nearbyTVs3 = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  [nearbyTVs3 addObject:v6];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__TUNeighborhoodActivityConduit_tvDeviceAppeared___block_invoke_2;
  v11[3] = &unk_1E7425A30;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(TUNeighborhoodActivityConduit *)self _forEachDelegate:v11];
}

- (void)tvDeviceDisappeared:(id)disappeared
{
  disappearedCopy = disappeared;
  nearbyTVs = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__TUNeighborhoodActivityConduit_tvDeviceDisappeared___block_invoke;
  v12[3] = &unk_1E7425AD0;
  v6 = disappearedCopy;
  v13 = v6;
  v7 = [nearbyTVs bs_filter:v12];

  nearbyTVs2 = [(TUNeighborhoodActivityConduit *)self nearbyTVs];
  [nearbyTVs2 minusSet:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__TUNeighborhoodActivityConduit_tvDeviceDisappeared___block_invoke_2;
  v10[3] = &unk_1E7425A30;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(TUNeighborhoodActivityConduit *)self _forEachDelegate:v10];
}

- (void)splitSessionUpdated
{
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__TUNeighborhoodActivityConduit_splitSessionUpdated__block_invoke;
  v4[3] = &unk_1E7425A58;
  v4[4] = self;
  [xpcClient activeSplitSessionTVDeviceWithCompletion:v4];
}

void __52__TUNeighborhoodActivityConduit_splitSessionUpdated__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = TUConduitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__TUNeighborhoodActivityConduit_splitSessionUpdated__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) splitSessionUpdated:a2];
  }
}

- (void)splitSessionUpdated:(id)updated
{
  updatedCopy = updated;
  activeSplitSessionTV = [(TUNeighborhoodActivityConduit *)self activeSplitSessionTV];
  [(TUNeighborhoodActivityConduit *)self setActiveSplitSessionTV:updatedCopy];
  if (activeSplitSessionTV && ([activeSplitSessionTV isEqual:updatedCopy] & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__TUNeighborhoodActivityConduit_splitSessionUpdated___block_invoke;
    v8[3] = &unk_1E7425A30;
    v8[4] = self;
    v9 = activeSplitSessionTV;
    [(TUNeighborhoodActivityConduit *)self _forEachDelegate:v8];
  }

  if (updatedCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__TUNeighborhoodActivityConduit_splitSessionUpdated___block_invoke_2;
    v6[3] = &unk_1E7425A30;
    v6[4] = self;
    v7 = updatedCopy;
    [(TUNeighborhoodActivityConduit *)self _forEachDelegate:v6];
  }
}

- (void)suggestionUpdated:(id)updated
{
  updatedCopy = updated;
  [(TUNeighborhoodActivityConduit *)self setSuggestion:updatedCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TUNeighborhoodActivityConduit_suggestionUpdated___block_invoke;
  v6[3] = &unk_1E7425A30;
  v6[4] = self;
  v7 = updatedCopy;
  v5 = updatedCopy;
  [(TUNeighborhoodActivityConduit *)self _forEachDelegate:v6];
}

void __51__TUNeighborhoodActivityConduit_suggestionUpdated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 neighborhoodActivityConduit:*(a1 + 32) suggestionUpdated:*(a1 + 40)];
  }
}

- (void)approveSplitSessionForConversation:(id)conversation device:(id)device pullContext:(int64_t)context completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  deviceCopy = device;
  completionCopy = completion;
  approvalDelegate = [(TUNeighborhoodActivityConduit *)self approvalDelegate];
  if (!approvalDelegate)
  {
    v26 = TUConduitLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [TUNeighborhoodActivityConduit approveSplitSessionForConversation:device:pullContext:completion:];
    }

    v25 = 8;
LABEL_19:
    v23 = TUMakeNeighborhoodConduitError(v25, 0);
    completionCopy[2](completionCopy, 0, v23);
    goto LABEL_20;
  }

  contextCopy = context;
  v29 = deviceCopy;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  conversationManager = [(TUNeighborhoodActivityConduit *)self conversationManager];
  activeConversations = [conversationManager activeConversations];

  v16 = [activeConversations countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v16)
  {
LABEL_10:

LABEL_13:
    v24 = TUConduitLog();
    deviceCopy = v29;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [TUNeighborhoodActivityConduit approveSplitSessionForConversation:device:pullContext:completion:];
    }

    v25 = 2;
    goto LABEL_19;
  }

  v17 = v16;
  v18 = *v31;
LABEL_4:
  v19 = 0;
  while (1)
  {
    if (*v31 != v18)
    {
      objc_enumerationMutation(activeConversations);
    }

    v20 = *(*(&v30 + 1) + 8 * v19);
    uUID = [v20 UUID];
    v22 = [uUID isEqual:conversationCopy];

    if (v22)
    {
      break;
    }

    if (v17 == ++v19)
    {
      v17 = [activeConversations countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v23 = v20;

  if (!v23)
  {
    goto LABEL_13;
  }

  deviceCopy = v29;
  [approvalDelegate approveSplitSessionForConversation:v23 requestedFromDevice:v29 pullContext:contextCopy completion:completionCopy];
LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)cancelSplitSessionApproval
{
  approvalDelegate = [(TUNeighborhoodActivityConduit *)self approvalDelegate];
  [approvalDelegate cancelSplitSessionApproval];
}

- (void)ensureConduitInitialized:(id)initialized
{
  initializedCopy = initialized;
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient ensureConduitInitialized:initializedCopy];
}

- (void)continuityCameraDidConnect
{
  xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
  [xpcClient ensureConnection];
}

- (void)callStatusChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = TUConduitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = changedCopy;
    v10 = 1024;
    status = [changedCopy status];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "TULifecycleController received call status change for call %@. Status: %d", &v8, 0x12u);
  }

  if ([changedCopy status] - 4 <= 2)
  {
    xpcClient = [(TUNeighborhoodActivityConduit *)self xpcClient];
    [xpcClient ensureConnection];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __71__TUNeighborhoodActivityConduit_initWithConversationManager_xpcClient___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 32);
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "TUNeighborhoodActivityConduit failed to encode state: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)addDelegate:(os_log_t)log queue:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1956FD000, log, OS_LOG_TYPE_DEBUG, "Conduit delegate added: %{public}@", buf, 0xCu);
}

- (void)removeDelegate:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1956FD000, log, OS_LOG_TYPE_DEBUG, "Conduit delegate removed: %{public}@", buf, 0xCu);
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to get initial state for nearby TVs: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to get initial state for active split session TV: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_236_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to get initial state for suggested TV: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__TUNeighborhoodActivityConduit__requestInitialState__block_invoke_2_240_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to get initial state for ringing status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__TUNeighborhoodActivityConduit_splitSessionUpdated__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Failed to update split session due to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end