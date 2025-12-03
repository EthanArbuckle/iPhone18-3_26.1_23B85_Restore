@interface PRUpdatingService
+ (NSXPCInterface)interfaceToExtension;
+ (id)updatingServiceWithProcess:(id)process auditToken:(id)token target:(id)target;
- (BOOL)_hasActiveSessions;
- (id)_acquireSessionForUUID:(id)d errorHandler:(id)handler;
- (id)_initWithProcess:(id)process auditToken:(id)token target:(id)target;
- (void)_accessUpdatingService:(id)service errorHandler:(id)handler;
- (void)_invalidateSession:(id)session;
- (void)_updateActiveSessions;
- (void)addUpdatingServiceObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)removeUpdatingServiceObserver:(id)observer;
- (void)updateConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion;
- (void)updateDescriptors:(id)descriptors sessionInfo:(id)info completion:(id)completion;
- (void)updateSuggestionDescriptors:(id)descriptors forConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion;
@end

@implementation PRUpdatingService

- (id)_initWithProcess:(id)process auditToken:(id)token target:(id)target
{
  processCopy = process;
  tokenCopy = token;
  targetCopy = target;
  if (!processCopy)
  {
    [PRUpdatingService _initWithProcess:a2 auditToken:? target:?];
  }

  if (!tokenCopy)
  {
    [PRUpdatingService _initWithProcess:a2 auditToken:? target:?];
  }

  v13 = targetCopy;
  if (!targetCopy)
  {
    [PRUpdatingService _initWithProcess:a2 auditToken:? target:?];
  }

  v26.receiver = self;
  v26.super_class = PRUpdatingService;
  v14 = [(PRUpdatingService *)&v26 init];
  if (v14)
  {
    v15 = objc_opt_new();
    invalidationFlag = v14->_invalidationFlag;
    v14->_invalidationFlag = v15;

    objc_storeStrong(&v14->_process, process);
    objc_storeStrong(&v14->_auditToken, token);
    objc_storeStrong(&v14->_target, target);
    configuration = [processCopy configuration];
    extensionIdentity = [configuration extensionIdentity];
    bundleIdentifier = [extensionIdentity bundleIdentifier];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = bundleIdentifier;

    v21 = objc_opt_new();
    activeSessions = v14->_activeSessions;
    v14->_activeSessions = v21;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v14->_observers;
    v14->_observers = weakObjectsHashTable;
  }

  return v14;
}

+ (id)updatingServiceWithProcess:(id)process auditToken:(id)token target:(id)target
{
  targetCopy = target;
  tokenCopy = token;
  processCopy = process;
  v10 = [[PRUpdatingService alloc] _initWithProcess:processCopy auditToken:tokenCopy target:targetCopy];

  return v10;
}

+ (NSXPCInterface)interfaceToExtension
{
  if (interfaceToExtension_onceToken != -1)
  {
    +[PRUpdatingService interfaceToExtension];
  }

  v3 = interfaceToExtension___interfaceToExtension;

  return v3;
}

void __41__PRUpdatingService_interfaceToExtension__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1CC76B8];
  v1 = interfaceToExtension___interfaceToExtension;
  interfaceToExtension___interfaceToExtension = v0;

  v2 = interfaceToExtension___interfaceToExtension;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_updateDescriptors_sessionInfo_completion_ argumentIndex:0 ofReply:0];

  v6 = interfaceToExtension___interfaceToExtension;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion_ argumentIndex:0 ofReply:0];
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeAllObjects];
  objc_sync_exit(selfCopy);

  [(PRUpdatingService *)selfCopy invalidate];
  v3.receiver = selfCopy;
  v3.super_class = PRUpdatingService;
  [(PRUpdatingService *)&v3 dealloc];
}

- (void)addUpdatingServiceObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeUpdatingServiceObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)updateDescriptors:(id)descriptors sessionInfo:(id)info completion:(id)completion
{
  descriptorsCopy = descriptors;
  infoCopy = info;
  completionCopy = completion;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    invalidationError = [(PRUpdatingService *)self invalidationError];
    completionCopy[2](completionCopy, 0, invalidationError);
  }

  else
  {
    v12 = objc_opt_new();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke;
    v22[3] = &unk_1E7845028;
    v23 = v12;
    selfCopy = self;
    v25 = completionCopy;
    v13 = v12;
    v14 = MEMORY[0x1AC574C60](v22);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke_2;
    v18[3] = &unk_1E7845078;
    v19 = descriptorsCopy;
    v20 = infoCopy;
    v21 = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke_4;
    v16[3] = &unk_1E7844E98;
    v17 = v21;
    v15 = v21;
    [(PRUpdatingService *)self _accessUpdatingService:v18 errorHandler:v16];
  }
}

void __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) signal])
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v7, v5);
    }
  }

  [*(a1 + 40) _updateActiveSessions];
}

void __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v22 = 0;
        v14 = [v13 extendContentsReadAccessToAuditToken:0 error:&v22];
        v15 = v22;
        v16 = v15;
        if (!v14)
        {
          if (!v15)
          {
            v16 = [MEMORY[0x1E696ABC0] pr_errorWithCode:4];
          }

          [v6 fireError:v16];

          goto LABEL_13;
        }

        [v7 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = [v7 copy];
  v18 = *(a1 + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke_3;
  v19[3] = &unk_1E7845050;
  v20 = v6;
  v21 = *(a1 + 48);
  [v5 updateDescriptors:v17 sessionInfo:v18 completion:v19];

  v8 = v20;
LABEL_13:
}

uint64_t __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    return [v4 fireError:?];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v6 = *(a1 + 32);

    return [v6 noteSessionIsComplete];
  }
}

- (void)updateConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion
{
  configurationCopy = configuration;
  infoCopy = info;
  completionCopy = completion;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    invalidationError = [(PRUpdatingService *)self invalidationError];
    completionCopy[2](completionCopy, 0, invalidationError);
  }

  else
  {
    v12 = objc_opt_new();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke;
    v22[3] = &unk_1E7845028;
    v23 = v12;
    selfCopy = self;
    v25 = completionCopy;
    v13 = v12;
    v14 = MEMORY[0x1AC574C60](v22);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke_2;
    v18[3] = &unk_1E7845078;
    v19 = configurationCopy;
    v20 = infoCopy;
    v21 = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke_4;
    v16[3] = &unk_1E7844E98;
    v17 = v21;
    v15 = v21;
    [(PRUpdatingService *)self _accessUpdatingService:v18 errorHandler:v16];
  }
}

void __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) signal])
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v7, v5);
    }
  }

  [*(a1 + 40) _updateActiveSessions];
}

void __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v16 = 0;
  v8 = [v7 extendContentsReadAccessToAuditToken:0 error:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke_3;
    v13[3] = &unk_1E78450A0;
    v12 = *(a1 + 40);
    v15 = *(a1 + 48);
    v14 = v6;
    [v5 updateConfiguration:v8 sessionInfo:v12 completion:v13];

    v11 = v15;
  }

  else
  {
    v11 = v9;
    if (!v9)
    {
      v11 = [MEMORY[0x1E696ABC0] pr_errorWithCode:4];
    }

    [v6 fireError:v11];
  }
}

uint64_t __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 noteSessionIsComplete];
}

- (void)updateSuggestionDescriptors:(id)descriptors forConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion
{
  descriptorsCopy = descriptors;
  configurationCopy = configuration;
  infoCopy = info;
  completionCopy = completion;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    invalidationError = [(PRUpdatingService *)self invalidationError];
    completionCopy[2](completionCopy, 0, invalidationError);
  }

  else
  {
    v15 = objc_opt_new();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke;
    v26[3] = &unk_1E7845028;
    v27 = v15;
    selfCopy = self;
    v29 = completionCopy;
    v16 = v15;
    v17 = MEMORY[0x1AC574C60](v26);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2;
    v21[3] = &unk_1E78450C8;
    v22 = configurationCopy;
    v23 = descriptorsCopy;
    v24 = infoCopy;
    v25 = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_4;
    v19[3] = &unk_1E7844E98;
    v20 = v25;
    v18 = v25;
    [(PRUpdatingService *)self _accessUpdatingService:v21 errorHandler:v19];
  }
}

void __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) signal])
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v7, v5);
    }
  }

  [*(a1 + 40) _updateActiveSessions];
}

void __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v22 = a3;
  v5 = *(a1 + 32);
  v32 = 0;
  v6 = [v5 extendContentsReadAccessToAuditToken:0 error:&v32];
  v7 = v32;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        v15 = [v14 extendContentsReadAccessToAuditToken:0 error:&v27];
        v16 = v27;
        v17 = v16;
        if (!v15)
        {
          if (!v16)
          {
            v17 = [MEMORY[0x1E696ABC0] pr_errorWithCode:4];
          }

          v20 = v22;
          [v22 fireError:v17];

          v21 = v23;
          goto LABEL_18;
        }

        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (!v6 || v7)
  {
    v20 = v22;
    v21 = v23;
    if (!v7)
    {
      v7 = [MEMORY[0x1E696ABC0] pr_errorWithCode:4];
    }

    [v22 fireError:v7];
  }

  else
  {
    v18 = [v8 copy];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_3;
    v24[3] = &unk_1E78450A0;
    v19 = *(a1 + 48);
    v26 = *(a1 + 56);
    v20 = v22;
    v25 = v22;
    v21 = v23;
    [v23 updateSuggestionDescriptors:v18 forConfiguration:v6 sessionInfo:v19 completion:v24];

    v7 = v26;
  }

LABEL_18:
}

uint64_t __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 noteSessionIsComplete];
}

- (void)_accessUpdatingService:(id)service errorHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PRUpdatingService__accessUpdatingService_errorHandler___block_invoke;
  v12[3] = &unk_1E7844E98;
  v8 = handlerCopy;
  v13 = v8;
  v9 = MEMORY[0x1AC574C60](v12);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(PRUpdatingService *)self _acquireSessionForUUID:uUID errorHandler:v9];
  if (v11)
  {
    serviceCopy[2](serviceCopy, self->_proxy, v11);
  }
}

uint64_t __57__PRUpdatingService__accessUpdatingService_errorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(BSAtomicSignal *)self->_invalidationFlag signal])
  {
    v3 = [MEMORY[0x1E696ABC0] pr_errorWithCode:5];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_activeSessions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_83];
    [(NSMutableDictionary *)selfCopy->_activeSessions removeAllObjects];
    [(NSXPCConnection *)selfCopy->_connection invalidate];
    connection = selfCopy->_connection;
    selfCopy->_connection = 0;

    process = selfCopy->_process;
    selfCopy->_process = 0;

    auditToken = selfCopy->_auditToken;
    selfCopy->_auditToken = 0;

    target = selfCopy->_target;
    selfCopy->_target = 0;

    allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
    objectEnumerator = [allObjects objectEnumerator];

    [(PRUpdatingService *)selfCopy setInvalidationError:v3];
    objc_sync_exit(selfCopy);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = objectEnumerator;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 updatingService:selfCopy didInvalidateWithError:{v3, v16}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(PRUpdatingService *)selfCopy _updateActiveSessions];
  }
}

- (BOOL)_hasActiveSessions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_activeSessions count]&& selfCopy->_connection && selfCopy->_proxy != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_acquireSessionForUUID:(id)d errorHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__6;
  v35 = __Block_byref_object_dispose__6;
  v36 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_proxy)
  {
    goto LABEL_2;
  }

  process = selfCopy->_process;
  v30 = 0;
  v17 = [(_EXExtensionProcess *)process newXPCConnectionWithError:&v30];
  v18 = v30;
  connection = selfCopy->_connection;
  selfCopy->_connection = v17;

  if (!v18)
  {
    v21 = selfCopy->_connection;
    v22 = +[PRUpdatingService interfaceToExtension];
    [(NSXPCConnection *)v21 setRemoteObjectInterface:v22];

    v23 = selfCopy->_connection;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __57__PRUpdatingService__acquireSessionForUUID_errorHandler___block_invoke;
    v29[3] = &unk_1E7845110;
    v29[4] = &v31;
    v24 = [(NSXPCConnection *)v23 synchronousRemoteObjectProxyWithErrorHandler:v29];
    proxy = selfCopy->_proxy;
    selfCopy->_proxy = v24;

    [(NSXPCConnection *)selfCopy->_connection resume];
LABEL_2:
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    uUIDString = [dCopy UUIDString];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PRUpdatingService__acquireSessionForUUID_errorHandler___block_invoke_2;
    v26[3] = &unk_1E7845138;
    objc_copyWeak(&v28, &location);
    v11 = dCopy;
    v27 = v11;
    v12 = [v9 initWithIdentifier:uUIDString forReason:@"accessUpdatingService" invalidationBlock:v26];

    v13 = [[_PRUpdatingSession alloc] initWithConnectionAssertion:v12 errorHandler:handlerCopy];
    v14 = v32[5];
    v32[5] = v13;

    [(NSMutableDictionary *)selfCopy->_activeSessions setObject:v32[5] forKey:v11];
    objc_destroyWeak(&v28);
    objc_sync_exit(selfCopy);

    v15 = v32[5];
    goto LABEL_5;
  }

  handlerCopy[2](handlerCopy, v18);

  objc_sync_exit(selfCopy);
  v15 = 0;
LABEL_5:
  _Block_object_dispose(&v31, 8);

  objc_destroyWeak(&location);

  return v15;
}

void __57__PRUpdatingService__acquireSessionForUUID_errorHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _invalidateSession:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_invalidateSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_activeSessions removeObjectForKey:sessionCopy];
  [(PRUpdatingService *)selfCopy _updateActiveSessions];
  objc_sync_exit(selfCopy);
}

- (void)_updateActiveSessions
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(NSMutableDictionary *)obj->_activeSessions count];
  v3 = obj;
  if (!v2)
  {
    connection = obj->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection invalidate];
      v5 = obj->_connection;
      obj->_connection = 0;

      v3 = obj;
    }

    proxy = v3->_proxy;
    if (proxy)
    {
      v3->_proxy = 0;

      v3 = obj;
    }
  }

  objc_sync_exit(v3);
}

- (void)_initWithProcess:(const char *)a1 auditToken:target:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"target", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcess:(const char *)a1 auditToken:target:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"auditToken", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcess:(const char *)a1 auditToken:target:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"process", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end