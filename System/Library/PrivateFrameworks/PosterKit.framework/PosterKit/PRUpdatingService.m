@interface PRUpdatingService
+ (NSXPCInterface)interfaceToExtension;
+ (id)updatingServiceWithProcess:(id)a3 auditToken:(id)a4 target:(id)a5;
- (BOOL)_hasActiveSessions;
- (id)_acquireSessionForUUID:(id)a3 errorHandler:(id)a4;
- (id)_initWithProcess:(id)a3 auditToken:(id)a4 target:(id)a5;
- (void)_accessUpdatingService:(id)a3 errorHandler:(id)a4;
- (void)_invalidateSession:(id)a3;
- (void)_updateActiveSessions;
- (void)addUpdatingServiceObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeUpdatingServiceObserver:(id)a3;
- (void)updateConfiguration:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)updateDescriptors:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)updateSuggestionDescriptors:(id)a3 forConfiguration:(id)a4 sessionInfo:(id)a5 completion:(id)a6;
@end

@implementation PRUpdatingService

- (id)_initWithProcess:(id)a3 auditToken:(id)a4 target:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [PRUpdatingService _initWithProcess:a2 auditToken:? target:?];
  }

  if (!v11)
  {
    [PRUpdatingService _initWithProcess:a2 auditToken:? target:?];
  }

  v13 = v12;
  if (!v12)
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

    objc_storeStrong(&v14->_process, a3);
    objc_storeStrong(&v14->_auditToken, a4);
    objc_storeStrong(&v14->_target, a5);
    v17 = [v10 configuration];
    v18 = [v17 extensionIdentity];
    v19 = [v18 bundleIdentifier];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v19;

    v21 = objc_opt_new();
    activeSessions = v14->_activeSessions;
    v14->_activeSessions = v21;

    v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v14->_observers;
    v14->_observers = v23;
  }

  return v14;
}

+ (id)updatingServiceWithProcess:(id)a3 auditToken:(id)a4 target:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PRUpdatingService alloc] _initWithProcess:v9 auditToken:v8 target:v7];

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
  v2 = self;
  objc_sync_enter(v2);
  [(NSHashTable *)v2->_observers removeAllObjects];
  objc_sync_exit(v2);

  [(PRUpdatingService *)v2 invalidate];
  v3.receiver = v2;
  v3.super_class = PRUpdatingService;
  [(PRUpdatingService *)&v3 dealloc];
}

- (void)addUpdatingServiceObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeUpdatingServiceObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)updateDescriptors:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v11 = [(PRUpdatingService *)self invalidationError];
    v10[2](v10, 0, v11);
  }

  else
  {
    v12 = objc_opt_new();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke;
    v22[3] = &unk_1E7845028;
    v23 = v12;
    v24 = self;
    v25 = v10;
    v13 = v12;
    v14 = MEMORY[0x1AC574C60](v22);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__PRUpdatingService_updateDescriptors_sessionInfo_completion___block_invoke_2;
    v18[3] = &unk_1E7845078;
    v19 = v8;
    v20 = v9;
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

- (void)updateConfiguration:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v11 = [(PRUpdatingService *)self invalidationError];
    v10[2](v10, 0, v11);
  }

  else
  {
    v12 = objc_opt_new();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke;
    v22[3] = &unk_1E7845028;
    v23 = v12;
    v24 = self;
    v25 = v10;
    v13 = v12;
    v14 = MEMORY[0x1AC574C60](v22);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__PRUpdatingService_updateConfiguration_sessionInfo_completion___block_invoke_2;
    v18[3] = &unk_1E7845078;
    v19 = v8;
    v20 = v9;
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

- (void)updateSuggestionDescriptors:(id)a3 forConfiguration:(id)a4 sessionInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v14 = [(PRUpdatingService *)self invalidationError];
    v13[2](v13, 0, v14);
  }

  else
  {
    v15 = objc_opt_new();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke;
    v26[3] = &unk_1E7845028;
    v27 = v15;
    v28 = self;
    v29 = v13;
    v16 = v15;
    v17 = MEMORY[0x1AC574C60](v26);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PRUpdatingService_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2;
    v21[3] = &unk_1E78450C8;
    v22 = v11;
    v23 = v10;
    v24 = v12;
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

- (void)_accessUpdatingService:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PRUpdatingService__accessUpdatingService_errorHandler___block_invoke;
  v12[3] = &unk_1E7844E98;
  v8 = v7;
  v13 = v8;
  v9 = MEMORY[0x1AC574C60](v12);
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(PRUpdatingService *)self _acquireSessionForUUID:v10 errorHandler:v9];
  if (v11)
  {
    v6[2](v6, self->_proxy, v11);
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
    v4 = self;
    objc_sync_enter(v4);
    [(NSMutableDictionary *)v4->_activeSessions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_83];
    [(NSMutableDictionary *)v4->_activeSessions removeAllObjects];
    [(NSXPCConnection *)v4->_connection invalidate];
    connection = v4->_connection;
    v4->_connection = 0;

    process = v4->_process;
    v4->_process = 0;

    auditToken = v4->_auditToken;
    v4->_auditToken = 0;

    target = v4->_target;
    v4->_target = 0;

    v9 = [(NSHashTable *)v4->_observers allObjects];
    v10 = [v9 objectEnumerator];

    [(PRUpdatingService *)v4 setInvalidationError:v3];
    objc_sync_exit(v4);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
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
            [v15 updatingService:v4 didInvalidateWithError:{v3, v16}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(PRUpdatingService *)v4 _updateActiveSessions];
  }
}

- (BOOL)_hasActiveSessions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_activeSessions count]&& v2->_connection && v2->_proxy != 0;
  objc_sync_exit(v2);

  return v3;
}

- (id)_acquireSessionForUUID:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__6;
  v35 = __Block_byref_object_dispose__6;
  v36 = 0;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_proxy)
  {
    goto LABEL_2;
  }

  process = v8->_process;
  v30 = 0;
  v17 = [(_EXExtensionProcess *)process newXPCConnectionWithError:&v30];
  v18 = v30;
  connection = v8->_connection;
  v8->_connection = v17;

  if (!v18)
  {
    v21 = v8->_connection;
    v22 = +[PRUpdatingService interfaceToExtension];
    [(NSXPCConnection *)v21 setRemoteObjectInterface:v22];

    v23 = v8->_connection;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __57__PRUpdatingService__acquireSessionForUUID_errorHandler___block_invoke;
    v29[3] = &unk_1E7845110;
    v29[4] = &v31;
    v24 = [(NSXPCConnection *)v23 synchronousRemoteObjectProxyWithErrorHandler:v29];
    proxy = v8->_proxy;
    v8->_proxy = v24;

    [(NSXPCConnection *)v8->_connection resume];
LABEL_2:
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v10 = [v6 UUIDString];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PRUpdatingService__acquireSessionForUUID_errorHandler___block_invoke_2;
    v26[3] = &unk_1E7845138;
    objc_copyWeak(&v28, &location);
    v11 = v6;
    v27 = v11;
    v12 = [v9 initWithIdentifier:v10 forReason:@"accessUpdatingService" invalidationBlock:v26];

    v13 = [[_PRUpdatingSession alloc] initWithConnectionAssertion:v12 errorHandler:v7];
    v14 = v32[5];
    v32[5] = v13;

    [(NSMutableDictionary *)v8->_activeSessions setObject:v32[5] forKey:v11];
    objc_destroyWeak(&v28);
    objc_sync_exit(v8);

    v15 = v32[5];
    goto LABEL_5;
  }

  v7[2](v7, v18);

  objc_sync_exit(v8);
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

- (void)_invalidateSession:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_activeSessions removeObjectForKey:v5];
  [(PRUpdatingService *)v4 _updateActiveSessions];
  objc_sync_exit(v4);
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