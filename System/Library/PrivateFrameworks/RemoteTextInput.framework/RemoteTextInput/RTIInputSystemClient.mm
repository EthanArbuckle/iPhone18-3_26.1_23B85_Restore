@interface RTIInputSystemClient
- (BOOL)_remoteTextEditingIsAllowed;
- (BOOL)hasActiveSessionWithID:(id)d;
- (RTIInputSystemClient)initWithMachNames:(id)names;
- (RTIInputSystemClientDelegate)delegate;
- (RTIServiceOptions)serviceOptions;
- (void)_beginSessionWithID:(id)d forServices:(id)services force:(BOOL)force;
- (void)_configureConnection:(id)connection withMachName:(id)name;
- (void)_didIntializeConnection:(id)connection withMachName:(id)name;
- (void)_endAllActiveSessionsForServices:(id)services animated:(BOOL)animated completion:(id)completion;
- (void)_endSessionWithID:(id)d forServices:(id)services options:(id)options completion:(id)completion;
- (void)_initializeConnectionWithMachName:(id)name;
- (void)_queueFromCurrentConnection:(id)connection remoteTextInputSessionWithID:(id)d didUpdateServiceOptions:(id)options;
- (void)_updateAttributesForSessionWithID:(id)d;
- (void)_updateTextForSessionWithID:(id)d;
- (void)addEndpoint:(id)endpoint;
- (void)addMachNames:(id)names;
- (void)beginAllowingRemoteTextInput:(id)input;
- (void)beginRemoteTextInputSessionWithID:(id)d options:(id)options documentTraits:(id)traits initialDocumentState:(id)state;
- (void)dealloc;
- (void)endAllowingRemoteTextInput:(id)input completion:(id)completion;
- (void)endRemoteTextInputSessionWithID:(id)d options:(id)options completion:(id)completion;
- (void)enumerateConnections:(id)connections force:(BOOL)force withBlock:(id)block;
- (void)invalidateConnections;
- (void)notifyServiceOfPause:(BOOL)pause withReason:(id)reason;
- (void)performDocumentRequest:(id)request completion:(id)completion;
- (void)performTextOperations:(id)operations;
- (void)performTextOperations:(id)operations resultHandler:(id)handler;
- (void)remoteTextInputSessionWithID:(id)d didAddRTISupplementalLexicon:(id)lexicon;
- (void)remoteTextInputSessionWithID:(id)d didAddSupplementalLexicon:(id)lexicon;
- (void)remoteTextInputSessionWithID:(id)d didRemoveRTISupplementalLexiconWithIdentifier:(unint64_t)identifier;
- (void)remoteTextInputSessionWithID:(id)d didRemoveSupplementalLexiconWithIdentifier:(unint64_t)identifier;
- (void)remoteTextInputSessionWithID:(id)d didUpdateServiceOptions:(id)options;
- (void)remoteTextInputSessionWithID:(id)d documentDidChange:(id)change;
- (void)remoteTextInputSessionWithID:(id)d documentTraitsDidChange:(id)change;
- (void)remoteTextInputSessionWithID:(id)d performInputOperation:(id)operation;
- (void)remoteTextInputSessionWithID:(id)d performInputOperation:(id)operation withResponse:(id)response;
- (void)remoteTextInputSessionWithID:(id)d textSuggestionsChanged:(id)changed;
- (void)removeEndpoint:(id)endpoint;
- (void)removeMachNames:(id)names;
- (void)setEnvironmentEnabled:(BOOL)enabled withReason:(id)reason;
- (void)setEnvironmentOptions:(unint64_t)options withReason:(id)reason completion:(id)completion;
- (void)updateDefaultDocumentRequest:(id)request;
@end

@implementation RTIInputSystemClient

- (RTIServiceOptions)serviceOptions
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableDictionary count](self->_connections, "count")}];
  os_unfair_lock_lock(&self->_connectionsLock);
  allValues = [(NSMutableDictionary *)self->_connectionServiceOptions allValues];
  [v3 addObjectsFromArray:allValues];

  os_unfair_lock_unlock(&self->_connectionsLock);
  if (self->_endpointServiceOptions)
  {
    os_unfair_lock_lock(&self->_endpointsLock);
    [v3 addObjectsFromArray:self->_endpointServiceOptions];
    os_unfair_lock_unlock(&self->_endpointsLock);
  }

  v5 = [RTIServiceOptions combinedServiceOptions:v3];

  return v5;
}

- (BOOL)_remoteTextEditingIsAllowed
{
  v3 = [(NSMutableSet *)self->_allowanceRequestors count];
  if (v3)
  {

    LOBYTE(v3) = [(RTIInputSystemClient *)self isEnvironmentEnabled];
  }

  return v3;
}

- (RTIInputSystemClient)initWithMachNames:(id)names
{
  v35 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v33.receiver = self;
  v33.super_class = RTIInputSystemClient;
  v5 = [(RTIInputSystemClient *)&v33 init];
  v6 = v5;
  if (v5)
  {
    v5->_connectionsLock._os_unfair_lock_opaque = 0;
    v5->_endpointsLock._os_unfair_lock_opaque = 0;
    v5->_environmentOptions = 1;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeSessions = v6->_activeSessions;
    v6->_activeSessions = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    begunSessionIDs = v6->_begunSessionIDs;
    v6->_begunSessionIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    invalidatedServices = v6->_invalidatedServices;
    v6->_invalidatedServices = v11;

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v14 = dispatch_queue_create("com.apple.RemoteTextInput.RTIInputSystemClient.Internal", v13);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
    machNames = v6->_machNames;
    v6->_machNames = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
    connections = v6->_connections;
    v6->_connections = v18;

    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
    connectionServiceOptions = v6->_connectionServiceOptions;
    v6->_connectionServiceOptions = v20;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = namesCopy;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(RTIInputSystemClient *)v6 _initializeConnectionWithMachName:*(*(&v29 + 1) + 8 * v26++), v29];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)addMachNames:(id)names
{
  v15 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [namesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(namesCopy);
        }

        [(RTIInputSystemClient *)self _initializeConnectionWithMachName:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [namesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeMachNames:(id)names
{
  machNames = self->_machNames;
  namesCopy = names;
  [(NSMutableArray *)machNames removeObjectsInArray:namesCopy];
  os_unfair_lock_lock(&self->_connectionsLock);
  connections = self->_connections;
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [(NSMutableDictionary *)connections objectsForKeys:namesCopy notFoundMarker:null];
  [v8 enumerateObjectsUsingBlock:&__block_literal_global_2];

  [(NSMutableDictionary *)self->_connections removeObjectsForKeys:namesCopy];
  [(NSMutableDictionary *)self->_connectionServiceOptions removeObjectsForKeys:namesCopy];

  os_unfair_lock_unlock(&self->_connectionsLock);
}

- (void)invalidateConnections
{
  self->_isInvalidated = 1;
  os_unfair_lock_lock(&self->_connectionsLock);
  v4 = [(NSMutableDictionary *)self->_connections copy];
  os_unfair_lock_unlock(&self->_connectionsLock);
  os_unfair_lock_lock(&self->_endpointsLock);
  v3 = [(NSMutableArray *)self->_endpointConnections copy];
  os_unfair_lock_unlock(&self->_endpointsLock);
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_29];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_31];
}

- (void)dealloc
{
  if (!self->_isInvalidated)
  {
    [(RTIInputSystemClient *)self invalidateConnections];
  }

  v3.receiver = self;
  v3.super_class = RTIInputSystemClient;
  [(RTIInputSystemClient *)&v3 dealloc];
}

- (void)_initializeConnectionWithMachName:(id)name
{
  v4 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v6 = [[v4 alloc] initWithMachServiceName:nameCopy options:4096];
  [(RTIInputSystemClient *)self _didIntializeConnection:v6 withMachName:nameCopy];
}

- (void)_didIntializeConnection:(id)connection withMachName:(id)name
{
  nameCopy = name;
  connectionCopy = connection;
  [(RTIInputSystemClient *)self _configureConnection:connectionCopy withMachName:nameCopy];
  if (([(NSMutableArray *)self->_machNames containsObject:nameCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_machNames addObject:nameCopy];
  }

  os_unfair_lock_lock(&self->_connectionsLock);
  [(NSMutableDictionary *)self->_connections setObject:connectionCopy forKey:nameCopy];

  connectionServiceOptions = self->_connectionServiceOptions;
  v8 = objc_opt_new();
  [(NSMutableDictionary *)connectionServiceOptions setObject:v8 forKey:nameCopy];

  os_unfair_lock_unlock(&self->_connectionsLock);
}

- (void)_configureConnection:(id)connection withMachName:(id)name
{
  connectionCopy = connection;
  nameCopy = name;
  if (connectionCopy)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DA58F8];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DA6A28];
    [connectionCopy setRemoteObjectInterface:v8];
    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke;
    v20[3] = &unk_1E7514710;
    objc_copyWeak(&v22, &location);
    objc_copyWeak(&v23, &from);
    v10 = nameCopy;
    v21 = v10;
    [connectionCopy setInterruptionHandler:v20];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_2;
    v16 = &unk_1E7514710;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v17 = v10;
    [connectionCopy setInvalidationHandler:&v13];
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v12 = dispatch_queue_create("com.apple.RemoteTextInput.RTIInputSystemClient.incomingXPC", v11);
    [connectionCopy _setQueue:{v12, v13, v14, v15, v16}];
    [connectionCopy resume];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    v4 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_cold_1();
    }

    v5 = [WeakRetained delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [WeakRetained delegate];
      [v7 connectionInterrupted:*(a1 + 32)];
    }

    if (*(a1 + 32))
    {
      v15[0] = *(a1 + 32);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v8 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_132;
    block[3] = &unk_1E75142D0;
    v12 = v3;
    v13 = WeakRetained;
    v14 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_132(uint64_t a1)
{
  [*(a1 + 32) activate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _beginAllActiveSessionsForServices:v3 force:1];
}

void __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_2(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    v4 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[RTIInputSystemClient _configureConnection:withMachName:]_block_invoke_2";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_19A2A6000, v4, OS_LOG_TYPE_DEFAULT, "%s  Client connection to service was invalidated: %@", buf, 0x16u);
    }

    v5 = [WeakRetained delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [WeakRetained delegate];
      [v7 connectionInvalidated:a1[4]];
    }

    if (a1[4])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_136;
      v9[3] = &unk_1E75141E0;
      v9[4] = WeakRetained;
      v10 = a1[4];
      dispatch_async(MEMORY[0x1E69E96A0], v9);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addEndpoint:(id)endpoint
{
  if (endpoint)
  {
    v4 = MEMORY[0x1E696B0B8];
    endpointCopy = endpoint;
    v12 = [[v4 alloc] initWithListenerEndpoint:endpointCopy];

    os_unfair_lock_lock(&self->_endpointsLock);
    if (!self->_endpointConnections)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      endpointConnections = self->_endpointConnections;
      self->_endpointConnections = v6;
    }

    if (!self->_endpointServiceOptions)
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      endpointServiceOptions = self->_endpointServiceOptions;
      self->_endpointServiceOptions = v8;
    }

    [(NSMutableArray *)self->_endpointConnections addObject:v12];
    v10 = self->_endpointServiceOptions;
    v11 = objc_opt_new();
    [(NSMutableArray *)v10 addObject:v11];

    os_unfair_lock_unlock(&self->_endpointsLock);
    [(RTIInputSystemClient *)self _configureConnection:v12 withMachName:0];
  }
}

- (void)removeEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  os_unfair_lock_lock(&self->_endpointsLock);
  endpointConnections = self->_endpointConnections;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__RTIInputSystemClient_removeEndpoint___block_invoke;
  v8[3] = &unk_1E7514738;
  v6 = endpointCopy;
  v9 = v6;
  v10 = &v16;
  v11 = &v12;
  [(NSMutableArray *)endpointConnections enumerateObjectsUsingBlock:v8];
  v7 = v17[5];
  if (v7)
  {
    [v7 invalidate];
    [(NSMutableArray *)self->_endpointConnections removeObject:v17[5]];
    [(NSMutableArray *)self->_endpointServiceOptions removeObjectAtIndex:v13[3]];
  }

  os_unfair_lock_unlock(&self->_endpointsLock);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void __39__RTIInputSystemClient_removeEndpoint___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 endpoint];
  v9 = a1[4];

  if (v8 == v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)beginAllowingRemoteTextInput:(id)input
{
  v16 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if (inputCopy)
  {
    v5 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[RTIInputSystemClient beginAllowingRemoteTextInput:]";
      v14 = 2112;
      v15 = inputCopy;
      _os_log_impl(&dword_19A2A6000, v5, OS_LOG_TYPE_DEFAULT, "%s  Begin allowing remote text input: %@", buf, 0x16u);
    }

    if (!self->_allowanceRequestors)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      allowanceRequestors = self->_allowanceRequestors;
      self->_allowanceRequestors = v6;
    }

    inputCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allower added: %@", inputCopy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__RTIInputSystemClient_beginAllowingRemoteTextInput___block_invoke;
    v10[3] = &unk_1E75141E0;
    v10[4] = self;
    v11 = inputCopy;
    [(RTIInputSystemClient *)self _modifyTextEditingAllowedForReason:inputCopy notify:0 animated:1 modifyAllowancesBlock:v10 completion:0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)endAllowingRemoteTextInput:(id)input completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  completionCopy = completion;
  v8 = completionCopy;
  if (inputCopy)
  {
    v9 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[RTIInputSystemClient endAllowingRemoteTextInput:completion:]";
      v20 = 2112;
      v21 = inputCopy;
      _os_log_impl(&dword_19A2A6000, v9, OS_LOG_TYPE_DEFAULT, "%s  End allowing remote text input: %@", buf, 0x16u);
    }

    inputCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allower removed: %@", inputCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__RTIInputSystemClient_endAllowingRemoteTextInput_completion___block_invoke_143;
    v14[3] = &unk_1E75141E0;
    v14[4] = self;
    v15 = inputCopy;
    [(RTIInputSystemClient *)self _modifyTextEditingAllowedForReason:inputCopy notify:0 animated:1 modifyAllowancesBlock:v14 completion:v8];

    v11 = v15;
    goto LABEL_7;
  }

  if (completionCopy)
  {
    internalQueue = [(RTIInputSystemClient *)self internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__RTIInputSystemClient_endAllowingRemoteTextInput_completion___block_invoke;
    block[3] = &unk_1E7514348;
    v17 = v8;
    dispatch_async(internalQueue, block);

    v11 = v17;
LABEL_7:
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __58__RTIInputSystemClient_enumerateServices_force_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 remoteObjectProxy];
  (*(v2 + 16))(v2, v3);
}

- (void)enumerateConnections:(id)connections force:(BOOL)force withBlock:(id)block
{
  forceCopy = force;
  connectionsCopy = connections;
  blockCopy = block;
  isEnvironmentEnabled = [(RTIInputSystemClient *)self isEnvironmentEnabled];
  if (blockCopy && (isEnvironmentEnabled || forceCopy))
  {
    os_unfair_lock_lock(&self->_connectionsLock);
    v11 = [(NSMutableDictionary *)self->_connections copy];
    v12 = [(NSMutableDictionary *)self->_connectionServiceOptions copy];
    os_unfair_lock_unlock(&self->_connectionsLock);
    os_unfair_lock_lock(&self->_endpointsLock);
    v13 = [(NSMutableArray *)self->_endpointConnections copy];
    v14 = [(NSMutableArray *)self->_endpointServiceOptions copy];
    os_unfair_lock_unlock(&self->_endpointsLock);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke;
    v21[3] = &unk_1E7514788;
    v22 = connectionsCopy;
    v15 = blockCopy;
    v23 = v12;
    v24 = v15;
    v16 = v12;
    [v11 enumerateKeysAndObjectsUsingBlock:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke_3;
    v18[3] = &unk_1E75147B0;
    v19 = v14;
    v20 = v15;
    v17 = v14;
    [v13 enumerateObjectsUsingBlock:v18];
  }
}

void __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![a1[4] count] || objc_msgSend(a1[4], "containsObject:", v5))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke_2;
    v8[3] = &unk_1E75140A0;
    v10 = a1[6];
    v9 = v6;
    v7 = [a1[5] objectForKey:{v5, v8[0], 3221225472, __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke_2, &unk_1E75140A0}];
    [RTIUtilities performClientCoding:v8 withServiceOptions:v7];
  }
}

void __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke_4;
  v10[3] = &unk_1E75140A0;
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = v5;
  v9 = [v7 objectAtIndex:{a3, v10[0], 3221225472, __61__RTIInputSystemClient_enumerateConnections_force_withBlock___block_invoke_4, &unk_1E75140A0}];
  [RTIUtilities performClientCoding:v10 withServiceOptions:v9];
}

- (void)_beginSessionWithID:(id)d forServices:(id)services force:(BOOL)force
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  servicesCopy = services;
  _remoteTextEditingIsAllowed = [(RTIInputSystemClient *)self _remoteTextEditingIsAllowed];
  if (!_remoteTextEditingIsAllowed || force)
  {
    if (!_remoteTextEditingIsAllowed)
    {
      goto LABEL_9;
    }
  }

  else
  {
    begunSessionIDs = [(RTIInputSystemClient *)self begunSessionIDs];
    v12 = [begunSessionIDs containsObject:dCopy];

    if (v12)
    {
      goto LABEL_9;
    }
  }

  activeSessions = [(RTIInputSystemClient *)self activeSessions];
  v14 = [activeSessions objectForKey:dCopy];

  beginOptions = [v14 beginOptions];
  v16 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[RTIInputSystemClient _beginSessionWithID:forServices:force:]";
    v28 = 2112;
    v29 = dCopy;
    v30 = 2112;
    v31 = beginOptions;
    _os_log_impl(&dword_19A2A6000, v16, OS_LOG_TYPE_DEFAULT, "%s  Begin text input session. sessionID = %@, options = %@", buf, 0x20u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__RTIInputSystemClient__beginSessionWithID_forServices_force___block_invoke;
  v22[3] = &unk_1E75147D8;
  v17 = dCopy;
  v23 = v17;
  v24 = beginOptions;
  v25 = v14;
  v18 = v14;
  v19 = beginOptions;
  [(RTIInputSystemClient *)self enumerateServices:servicesCopy force:0 withBlock:v22];
  begunSessionIDs2 = [(RTIInputSystemClient *)self begunSessionIDs];
  [begunSessionIDs2 addObject:v17];

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
}

void __62__RTIInputSystemClient__beginSessionWithID_forServices_force___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v8 = [v5 documentTraits];
  v7 = [*(a1 + 48) documentState];
  [v6 beginRemoteTextInputSessionWithID:v3 options:v4 documentTraits:v8 initialDocumentState:v7];
}

- (void)_updateTextForSessionWithID:(id)d
{
  dCopy = d;
  begunSessionIDs = [(RTIInputSystemClient *)self begunSessionIDs];
  v6 = [begunSessionIDs containsObject:dCopy];

  if (v6)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v8 = [activeSessions objectForKey:dCopy];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__RTIInputSystemClient__updateTextForSessionWithID___block_invoke;
    v10[3] = &unk_1E7514800;
    v11 = dCopy;
    v12 = v8;
    v9 = v8;
    [(RTIInputSystemClient *)self enumerateServices:0 force:0 withBlock:v10];
  }
}

void __52__RTIInputSystemClient__updateTextForSessionWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 documentState];
  [v4 remoteTextInputSessionWithID:v2 documentDidChange:v5];
}

- (void)_updateAttributesForSessionWithID:(id)d
{
  dCopy = d;
  begunSessionIDs = [(RTIInputSystemClient *)self begunSessionIDs];
  v6 = [begunSessionIDs containsObject:dCopy];

  if (v6)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v8 = [activeSessions objectForKey:dCopy];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__RTIInputSystemClient__updateAttributesForSessionWithID___block_invoke;
    v10[3] = &unk_1E7514800;
    v11 = dCopy;
    v12 = v8;
    v9 = v8;
    [(RTIInputSystemClient *)self enumerateServices:0 force:0 withBlock:v10];
  }
}

void __58__RTIInputSystemClient__updateAttributesForSessionWithID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 documentTraits];
  [v4 remoteTextInputSessionWithID:v2 documentTraitsDidChange:v5];
}

- (void)_endSessionWithID:(id)d forServices:(id)services options:(id)options completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  servicesCopy = services;
  optionsCopy = options;
  completionCopy = completion;
  v14 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[RTIInputSystemClient _endSessionWithID:forServices:options:completion:]";
    v35 = 2112;
    v36 = dCopy;
    _os_log_impl(&dword_19A2A6000, v14, OS_LOG_TYPE_DEFAULT, "%s  End input session: %@", buf, 0x16u);
  }

  v15 = dispatch_group_create();
  v16 = dispatch_time(0, 2100000000);
  begunSessionIDs = [(RTIInputSystemClient *)self begunSessionIDs];
  v18 = [begunSessionIDs containsObject:dCopy];

  if (v18)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke;
    v28[3] = &unk_1E7514850;
    v32 = completionCopy;
    v29 = v15;
    v19 = dCopy;
    v30 = v19;
    v31 = optionsCopy;
    [(RTIInputSystemClient *)self enumerateConnections:servicesCopy force:1 withBlock:v28];
    begunSessionIDs2 = [(RTIInputSystemClient *)self begunSessionIDs];
    [begunSessionIDs2 removeObject:v19];
  }

  if (completionCopy)
  {
    internalQueue = [(RTIInputSystemClient *)self internalQueue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2_149;
    v23[3] = &unk_1E7514878;
    v24 = v15;
    v27 = v16;
    v25 = dCopy;
    v26 = completionCopy;
    dispatch_async(internalQueue, v23);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2;
    v10[3] = &unk_1E7514828;
    v11 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    if (v4)
    {
      dispatch_group_enter(*(a1 + 32));
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_148;
      v8[3] = &unk_1E75140C8;
      v9 = *(a1 + 32);
      [v4 endRemoteTextInputSessionWithID:v5 options:v6 completion:v8];
    }
  }

  else
  {
    v7 = [a2 remoteObjectProxy];
    [v7 endRemoteTextInputSessionWithID:*(a1 + 40) options:*(a1 + 48)];
  }
}

void __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2_149(uint64_t a1)
{
  if (dispatch_group_wait(*(a1 + 32), *(a1 + 56)))
  {
    v2 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2_149_cold_1(a1, v2);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_endAllActiveSessionsForServices:(id)services animated:(BOOL)animated completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  completionCopy = completion;
  v9 = dispatch_group_create();
  v18 = dispatch_time(0, 2100000000);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(RTIInputSystemClient *)self activeSessions];
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        if (animated)
        {
          v15 = 0;
          if (completionCopy)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v15 = +[RTISessionOptions defaultEndOptions];
          [v15 setAnimated:0];
          if (completionCopy)
          {
LABEL_8:
            dispatch_group_enter(v9);
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __77__RTIInputSystemClient__endAllActiveSessionsForServices_animated_completion___block_invoke;
            v25[3] = &unk_1E75140C8;
            v26 = v9;
            [(RTIInputSystemClient *)self _endSessionWithID:v14 forServices:servicesCopy options:v15 completion:v25];

            goto LABEL_11;
          }
        }

        [(RTIInputSystemClient *)self _endSessionWithID:v14 forServices:servicesCopy options:v15 completion:0];
LABEL_11:

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  if (completionCopy)
  {
    internalQueue = [(RTIInputSystemClient *)self internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__RTIInputSystemClient__endAllActiveSessionsForServices_animated_completion___block_invoke_2;
    block[3] = &unk_1E75148A0;
    v22 = v9;
    v24 = v18;
    v23 = completionCopy;
    dispatch_async(internalQueue, block);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __77__RTIInputSystemClient__endAllActiveSessionsForServices_animated_completion___block_invoke_2(uint64_t a1)
{
  if (dispatch_group_wait(*(a1 + 32), *(a1 + 48)))
  {
    v2 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __77__RTIInputSystemClient__endAllActiveSessionsForServices_animated_completion___block_invoke_2_cold_1(v2);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)setEnvironmentEnabled:(BOOL)enabled withReason:(id)reason
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__RTIInputSystemClient_setEnvironmentEnabled_withReason___block_invoke;
  v4[3] = &unk_1E75148C8;
  v4[4] = self;
  v4[5] = enabled;
  [(RTIInputSystemClient *)self _modifyTextEditingAllowedForReason:reason notify:1 animated:1 modifyAllowancesBlock:v4 completion:0];
}

- (void)setEnvironmentOptions:(unint64_t)options withReason:(id)reason completion:(id)completion
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__RTIInputSystemClient_setEnvironmentOptions_withReason_completion___block_invoke;
  v5[3] = &unk_1E75148C8;
  v5[4] = self;
  v5[5] = options & 0xFFFFFFFFFFFFFFFDLL;
  [(RTIInputSystemClient *)self _modifyTextEditingAllowedForReason:reason notify:(options >> 1) & 1 animated:0 modifyAllowancesBlock:v5 completion:completion];
}

- (void)notifyServiceOfPause:(BOOL)pause withReason:(id)reason
{
  v24 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  activeSessions = [(RTIInputSystemClient *)self activeSessions];
  v7 = [activeSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(activeSessions);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        begunSessionIDs = [(RTIInputSystemClient *)self begunSessionIDs];
        v13 = [begunSessionIDs containsObject:v11];

        if (v13)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __56__RTIInputSystemClient_notifyServiceOfPause_withReason___block_invoke;
          v16[3] = &unk_1E75148F0;
          v16[4] = v11;
          pauseCopy = pause;
          v17 = reasonCopy;
          [(RTIInputSystemClient *)self enumerateServices:0 force:1 withBlock:v16];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [activeSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __56__RTIInputSystemClient_notifyServiceOfPause_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) didChangePause:*(a1 + 48) withReason:*(a1 + 40)];
  }
}

- (void)beginRemoteTextInputSessionWithID:(id)d options:(id)options documentTraits:(id)traits initialDocumentState:(id)state
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  traitsCopy = traits;
  stateCopy = state;
  invalidatedServices = self->_invalidatedServices;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __102__RTIInputSystemClient_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke;
  v19[3] = &unk_1E7514918;
  v19[4] = self;
  [(NSMutableSet *)invalidatedServices enumerateObjectsUsingBlock:v19];
  [(NSMutableSet *)self->_invalidatedServices removeAllObjects];
  activeSessions = [(RTIInputSystemClient *)self activeSessions];
  v16 = [activeSessions objectForKey:dCopy];
  if (v16)
  {
    v17 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[RTIInputSystemClient beginRemoteTextInputSessionWithID:options:documentTraits:initialDocumentState:]";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&dword_19A2A6000, &v17->super, OS_LOG_TYPE_DEFAULT, "%s  Cannot begin a session that is already active. session = %@", buf, 0x16u);
    }
  }

  else
  {
    v17 = objc_alloc_init(RTIInputSystemClientSession);
    [(RTIInputSystemClientSession *)v17 setBeginOptions:optionsCopy];
    [(RTIInputSystemClientSession *)v17 setDocumentTraits:traitsCopy];
    [(RTIInputSystemClientSession *)v17 setDocumentState:stateCopy];
    [activeSessions setObject:v17 forKey:dCopy];
    [(RTIInputSystemClient *)self _beginSessionWithID:dCopy forServices:0 force:0];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __102__RTIInputSystemClient_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[RTIInputSystemClient beginRemoteTextInputSessionWithID:options:documentTraits:initialDocumentState:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19A2A6000, v4, OS_LOG_TYPE_DEFAULT, "%s  Connection to service with mach name %@ was invalidated. Attempting to create a new connection.", &v6, 0x16u);
  }

  [*(a1 + 32) _initializeConnectionWithMachName:v3];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:(id)d documentDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  changeCopy = change;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v9 = [activeSessions objectForKey:dCopy];

    if (v9)
    {
      [v9 setDocumentState:changeCopy];
      [(RTIInputSystemClient *)self _updateTextForSessionWithID:dCopy];
    }

    else
    {
      v10 = RTILogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[RTIInputSystemClient remoteTextInputSessionWithID:documentDidChange:]";
        v14 = 2112;
        v15 = dCopy;
        _os_log_impl(&dword_19A2A6000, v10, OS_LOG_TYPE_DEFAULT, "%s  Can only update text of an active session. sessionID = %@", &v12, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:(id)d documentTraitsDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  changeCopy = change;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v9 = [activeSessions objectForKey:dCopy];

    if (v9)
    {
      [v9 setDocumentTraits:changeCopy];
      [(RTIInputSystemClient *)self _updateAttributesForSessionWithID:dCopy];
    }

    else
    {
      v10 = RTILogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[RTIInputSystemClient remoteTextInputSessionWithID:documentTraitsDidChange:]";
        v14 = 2112;
        v15 = dCopy;
        _os_log_impl(&dword_19A2A6000, v10, OS_LOG_TYPE_DEFAULT, "%s  Can only update attributes of an active session. sessionID = %@", &v12, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)endRemoteTextInputSessionWithID:(id)d options:(id)options completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[RTIInputSystemClient endRemoteTextInputSessionWithID:options:completion:]";
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = optionsCopy;
    _os_log_impl(&dword_19A2A6000, v11, OS_LOG_TYPE_DEFAULT, "%s  Ending text input session. sessionID = %@, options = %@", buf, 0x20u);
  }

  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v13 = [activeSessions objectForKey:dCopy];
    if (v13)
    {
      [activeSessions removeObjectForKey:dCopy];
      [(RTIInputSystemClient *)self _endSessionWithID:dCopy forServices:0 options:optionsCopy completion:completionCopy];
    }

    else
    {
      v16 = RTIInputSessionChangeLogFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient endRemoteTextInputSessionWithID:options:completion:];
      }

      if (completionCopy)
      {
        internalQueue = [(RTIInputSystemClient *)self internalQueue];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __75__RTIInputSystemClient_endRemoteTextInputSessionWithID_options_completion___block_invoke_156;
        v19[3] = &unk_1E7514348;
        v20 = completionCopy;
        dispatch_async(internalQueue, v19);
      }
    }

    goto LABEL_15;
  }

  v14 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [RTIInputSystemClient endRemoteTextInputSessionWithID:options:completion:];
  }

  if (completionCopy)
  {
    internalQueue2 = [(RTIInputSystemClient *)self internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__RTIInputSystemClient_endRemoteTextInputSessionWithID_options_completion___block_invoke;
    block[3] = &unk_1E7514348;
    v22 = completionCopy;
    dispatch_async(internalQueue2, block);

    activeSessions = v22;
LABEL_15:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:(id)d textSuggestionsChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  changedCopy = changed;
  v8 = RTILogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[RTIInputSystemClient remoteTextInputSessionWithID:textSuggestionsChanged:]";
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_19A2A6000, v8, OS_LOG_TYPE_DEFAULT, "%s  Text input session suggestions changed. sessionID = %@", buf, 0x16u);
  }

  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v10 = [activeSessions objectForKey:dCopy];

    if (v10)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__RTIInputSystemClient_remoteTextInputSessionWithID_textSuggestionsChanged___block_invoke;
      v13[3] = &unk_1E7514800;
      v14 = dCopy;
      v15 = changedCopy;
      [(RTIInputSystemClient *)self enumerateServices:0 force:0 withBlock:v13];

      v11 = v14;
    }

    else
    {
      v11 = RTILogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:textSuggestionsChanged:];
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __76__RTIInputSystemClient_remoteTextInputSessionWithID_textSuggestionsChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) textSuggestionsChanged:*(a1 + 40)];
  }
}

- (BOOL)hasActiveSessionWithID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  activeSessions = [(RTIInputSystemClient *)self activeSessions];
  v6 = [activeSessions objectForKey:dCopy];

  v7 = v6 != 0;
  return v7;
}

- (void)remoteTextInputSessionWithID:(id)d didAddSupplementalLexicon:(id)lexicon
{
  dCopy = d;
  lexiconCopy = lexicon;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v9 = [activeSessions objectForKey:dCopy];

    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__RTIInputSystemClient_remoteTextInputSessionWithID_didAddSupplementalLexicon___block_invoke;
      v11[3] = &unk_1E7514800;
      v12 = dCopy;
      v13 = lexiconCopy;
      [(RTIInputSystemClient *)self enumerateServices:0 force:1 withBlock:v11];

      v10 = v12;
    }

    else
    {
      v10 = RTILogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:didAddSupplementalLexicon:];
      }
    }
  }

  else
  {
    v9 = RTILogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemClient remoteTextInputSessionWithID:didAddSupplementalLexicon:];
    }
  }
}

void __79__RTIInputSystemClient_remoteTextInputSessionWithID_didAddSupplementalLexicon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) didAddSupplementalLexicon:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)d didAddRTISupplementalLexicon:(id)lexicon
{
  dCopy = d;
  lexiconCopy = lexicon;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v9 = [activeSessions objectForKey:dCopy];

    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __82__RTIInputSystemClient_remoteTextInputSessionWithID_didAddRTISupplementalLexicon___block_invoke;
      v11[3] = &unk_1E7514800;
      v12 = dCopy;
      v13 = lexiconCopy;
      [(RTIInputSystemClient *)self enumerateServices:0 force:1 withBlock:v11];

      v10 = v12;
    }

    else
    {
      v10 = RTILogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:didAddRTISupplementalLexicon:];
      }
    }
  }

  else
  {
    v9 = RTILogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemClient remoteTextInputSessionWithID:didAddRTISupplementalLexicon:];
    }
  }
}

void __82__RTIInputSystemClient_remoteTextInputSessionWithID_didAddRTISupplementalLexicon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) didAddRTISupplementalLexicon:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)d didRemoveSupplementalLexiconWithIdentifier:(unint64_t)identifier
{
  dCopy = d;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v8 = [activeSessions objectForKey:dCopy];

    if (v8)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __96__RTIInputSystemClient_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke;
      v10[3] = &unk_1E7514940;
      v11 = dCopy;
      identifierCopy = identifier;
      [(RTIInputSystemClient *)self enumerateServices:0 force:1 withBlock:v10];
      v9 = v11;
    }

    else
    {
      v9 = RTILogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:didRemoveSupplementalLexiconWithIdentifier:];
      }
    }
  }

  else
  {
    v8 = RTILogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemClient remoteTextInputSessionWithID:didRemoveSupplementalLexiconWithIdentifier:];
    }
  }
}

void __96__RTIInputSystemClient_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) didRemoveSupplementalLexiconWithIdentifier:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)d didRemoveRTISupplementalLexiconWithIdentifier:(unint64_t)identifier
{
  dCopy = d;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v8 = [activeSessions objectForKey:dCopy];

    if (v8)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __99__RTIInputSystemClient_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke;
      v10[3] = &unk_1E7514940;
      v11 = dCopy;
      identifierCopy = identifier;
      [(RTIInputSystemClient *)self enumerateServices:0 force:1 withBlock:v10];
      v9 = v11;
    }

    else
    {
      v9 = RTILogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:didRemoveRTISupplementalLexiconWithIdentifier:];
      }
    }
  }

  else
  {
    v8 = RTILogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemClient remoteTextInputSessionWithID:didRemoveRTISupplementalLexiconWithIdentifier:];
    }
  }
}

void __99__RTIInputSystemClient_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) didRemoveRTISupplementalLexiconWithIdentifier:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)d performInputOperation:(id)operation
{
  dCopy = d;
  operationCopy = operation;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v9 = [activeSessions objectForKey:dCopy];

    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __75__RTIInputSystemClient_remoteTextInputSessionWithID_performInputOperation___block_invoke;
      v11[3] = &unk_1E7514800;
      v12 = dCopy;
      v13 = operationCopy;
      [(RTIInputSystemClient *)self enumerateServices:0 force:0 withBlock:v11];

      v10 = v12;
    }

    else
    {
      v10 = RTILogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:performInputOperation:];
      }
    }
  }

  else
  {
    v9 = RTILogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemClient remoteTextInputSessionWithID:operationCopy performInputOperation:?];
    }
  }
}

void __75__RTIInputSystemClient_remoteTextInputSessionWithID_performInputOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 remoteTextInputSessionWithID:*(a1 + 32) performInputOperation:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)d performInputOperation:(id)operation withResponse:(id)response
{
  dCopy = d;
  operationCopy = operation;
  responseCopy = response;
  if (dCopy)
  {
    activeSessions = [(RTIInputSystemClient *)self activeSessions];
    v12 = [activeSessions objectForKey:dCopy];

    if (v12)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __88__RTIInputSystemClient_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke;
      v17[3] = &unk_1E7514990;
      v18 = dCopy;
      v19 = operationCopy;
      v13 = responseCopy;
      v20 = v13;
      v21 = &v22;
      [(RTIInputSystemClient *)self enumerateServices:0 force:0 withBlock:v17];
      if (v13 && (v23[3] & 1) == 0)
      {
        v14 = RTILogFacility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [RTIInputSystemClient remoteTextInputSessionWithID:performInputOperation:withResponse:];
        }

        (*(v13 + 2))(v13, 128);
      }

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v16 = RTILogFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [RTIInputSystemClient remoteTextInputSessionWithID:performInputOperation:withResponse:];
      }

      if (responseCopy)
      {
        (*(responseCopy + 2))(responseCopy, 128);
      }
    }
  }

  else
  {
    v15 = RTILogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemClient remoteTextInputSessionWithID:operationCopy performInputOperation:? withResponse:?];
    }

    if (responseCopy)
    {
      (*(responseCopy + 2))(responseCopy, 128);
    }
  }
}

void __88__RTIInputSystemClient_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__RTIInputSystemClient_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke_2;
  v6[3] = &unk_1E7514968;
  v7 = *(a1 + 48);
  [a2 remoteTextInputSessionWithID:v4 performInputOperation:v5 withResponse:v6];
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

uint64_t __88__RTIInputSystemClient_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performTextOperations:(id)operations
{
  operationsCopy = operations;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 performTextOperations:operationsCopy];
    }
  }
}

- (void)performTextOperations:(id)operations resultHandler:(id)handler
{
  operationsCopy = operations;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_delegate), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 performTextOperations:operationsCopy resultHandler:handlerCopy];
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    if (v12 && (v13 = v12, v14 = objc_loadWeakRetained(&self->_delegate), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 performTextOperations:operationsCopy];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 255);
      }
    }

    else if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)updateDefaultDocumentRequest:(id)request
{
  [(RTIInputSystemClient *)self setDefaultDocumentRequest:request];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 defaultDocumentRequestDidChange:self->_defaultDocumentRequest];
    }
  }
}

- (void)performDocumentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy)
  {
    defaultDocumentRequest = requestCopy;
  }

  else
  {
    defaultDocumentRequest = [(RTIInputSystemClient *)self defaultDocumentRequest];
  }

  v8 = defaultDocumentRequest;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v10 = WeakRetained, v11 = objc_loadWeakRetained(&self->_delegate), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 performDocumentRequest:v8 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)remoteTextInputSessionWithID:(id)d didUpdateServiceOptions:(id)options
{
  dCopy = d;
  optionsCopy = options;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  objc_initWeak(&location, currentConnection);

  objc_initWeak(&from, self);
  internalQueue = [(RTIInputSystemClient *)self internalQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__RTIInputSystemClient_remoteTextInputSessionWithID_didUpdateServiceOptions___block_invoke;
  v12[3] = &unk_1E75149B8;
  objc_copyWeak(&v15, &from);
  objc_copyWeak(&v16, &location);
  v13 = dCopy;
  v14 = optionsCopy;
  v10 = optionsCopy;
  v11 = dCopy;
  dispatch_async(internalQueue, v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __77__RTIInputSystemClient_remoteTextInputSessionWithID_didUpdateServiceOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _queueFromCurrentConnection:v2 remoteTextInputSessionWithID:*(a1 + 32) didUpdateServiceOptions:*(a1 + 40)];
}

- (void)_queueFromCurrentConnection:(id)connection remoteTextInputSessionWithID:(id)d didUpdateServiceOptions:(id)options
{
  connectionCopy = connection;
  dCopy = d;
  optionsCopy = options;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  os_unfair_lock_lock(&self->_connectionsLock);
  serviceName = [connectionCopy serviceName];
  if (serviceName)
  {
    connections = self->_connections;
    serviceName2 = [connectionCopy serviceName];
    v14 = [(NSMutableDictionary *)connections objectForKey:serviceName2];

    if (v14 == connectionCopy)
    {
      connectionServiceOptions = self->_connectionServiceOptions;
      serviceName3 = [connectionCopy serviceName];
      [(NSMutableDictionary *)connectionServiceOptions setObject:optionsCopy forKey:serviceName3];

      *(v33 + 24) = 1;
    }
  }

  os_unfair_lock_unlock(&self->_connectionsLock);
  if (v33[3])
  {
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_endpointsLock);
  endpointConnections = self->_endpointConnections;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __105__RTIInputSystemClient__queueFromCurrentConnection_remoteTextInputSessionWithID_didUpdateServiceOptions___block_invoke;
  v27 = &unk_1E75149E0;
  v28 = connectionCopy;
  selfCopy = self;
  v30 = optionsCopy;
  v31 = &v32;
  [(NSMutableArray *)endpointConnections enumerateObjectsUsingBlock:&v24];
  os_unfair_lock_unlock(&self->_endpointsLock);

  if (v33[3])
  {
LABEL_14:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v19 = WeakRetained;
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        serviceOptions = [(RTIInputSystemClient *)self serviceOptions];
        [v22 serviceOptionsDidChange:serviceOptions];
      }
    }
  }

  if ([optionsCopy displayOptions] == 2)
  {
    [(RTIInputSystemClient *)self _updateTextForSessionWithID:dCopy];
  }

  _Block_object_dispose(&v32, 8);
}

void *__105__RTIInputSystemClient__queueFromCurrentConnection_remoteTextInputSessionWithID_didUpdateServiceOptions___block_invoke(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (result[4] == a2)
  {
    v5 = result;
    result = [*(result[5] + 120) replaceObjectAtIndex:a3 withObject:result[6]];
    *(*(v5[7] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (RTIInputSystemClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__RTIInputSystemClient__configureConnection_withMachName___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Client connection to service was interrupted: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Error sending [service endRemoteTextInputSessionWithID:] message: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__RTIInputSystemClient__endSessionWithID_forServices_options_completion___block_invoke_2_149_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 136315394;
  v5 = "[RTIInputSystemClient _endSessionWithID:forServices:options:completion:]_block_invoke_2";
  v6 = 2112;
  v7 = v2;
  _os_log_fault_impl(&dword_19A2A6000, a2, OS_LOG_TYPE_FAULT, "%s  Timeout while waiting to end session. sessionID = %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __77__RTIInputSystemClient__endAllActiveSessionsForServices_animated_completion___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[RTIInputSystemClient _endAllActiveSessionsForServices:animated:completion:]_block_invoke_2";
  _os_log_fault_impl(&dword_19A2A6000, log, OS_LOG_TYPE_FAULT, "%s  Timeout while waiting to end all active sessions.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)endRemoteTextInputSessionWithID:options:completion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only end an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)endRemoteTextInputSessionWithID:options:completion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:textSuggestionsChanged:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only set suggestions for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didAddSupplementalLexicon:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only didAddSupplementalLexicon for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didAddSupplementalLexicon:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didAddRTISupplementalLexicon:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only didAddRTISupplementalLexicon for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didAddRTISupplementalLexicon:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didRemoveSupplementalLexiconWithIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only didRemoveSupplementalLexiconWithIdentifier for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didRemoveSupplementalLexiconWithIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didRemoveRTISupplementalLexiconWithIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only didRemoveRTISupplementalLexiconWithIdentifier for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:didRemoveRTISupplementalLexiconWithIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:performInputOperation:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only perform input operation for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:(void *)a1 performInputOperation:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _RTI_NSStringFromRTIInputModality([a1 inputModality]);
  sel_getName([a1 actionSelector]);
  v3 = [a1 customInfoType];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_19A2A6000, v4, v5, "%s  perform input operation requires a valid sessionID. inputModality = %@, inputOperation = %s, customInfoType = %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:performInputOperation:withResponse:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  No services for this session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:performInputOperation:withResponse:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_19A2A6000, v0, v1, "%s  Can only perform input operation for an active session. sessionID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteTextInputSessionWithID:(void *)a1 performInputOperation:withResponse:.cold.3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _RTI_NSStringFromRTIInputModality([a1 inputModality]);
  sel_getName([a1 actionSelector]);
  v3 = [a1 customInfoType];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_19A2A6000, v4, v5, "%s  perform input operation requires a valid sessionID. inputModality = %@, inputOperation = %s, customInfoType = %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

@end