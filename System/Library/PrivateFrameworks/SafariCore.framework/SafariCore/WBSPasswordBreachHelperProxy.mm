@interface WBSPasswordBreachHelperProxy
- (WBSPasswordBreachHelperProxy)init;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)addResultRecordDictionaries:(id)dictionaries completionHandler:(id)handler;
- (void)clearAllRecordsWithCompletionHandler:(id)handler;
- (void)clearRecentlyBreachedResultRecordsWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)getPasswordEvaluationsForPersistentIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getResultRecordDictionariesForResultQueryDictionaries:(id)dictionaries withCompletionHandler:(id)handler;
- (void)invalidate;
- (void)recentlyBreachedResultRecordDictionariesWithCompletionHandler:(id)handler;
- (void)writePasswordEvaluationsToCache:(id)cache completionHandler:(id)handler;
@end

@implementation WBSPasswordBreachHelperProxy

- (WBSPasswordBreachHelperProxy)init
{
  v6.receiver = self;
  v6.super_class = WBSPasswordBreachHelperProxy;
  v2 = [(WBSPasswordBreachHelperProxy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_connectionLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(WBSPasswordBreachHelperProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = WBSPasswordBreachHelperProxy;
  [(WBSPasswordBreachHelperProxy *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_connectionLock);
  [(NSXPCConnection *)v3 invalidate];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_connectionLock);
  connection = self->_connection;
  v6 = &off_1B8573000;
  if (!connection)
  {
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.Safari.PasswordBreachHelper" options:0];
    v8 = self->_connection;
    self->_connection = v7;

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F309BB40];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    [v9 setClasses:v17 forSelector:sel_getPasswordEvaluationsForPersistentIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = v19;
    v6 = &off_1B8573000;
    v27 = [v18 setWithObjects:{v26, v20, v21, v22, v23, v24, v25, 0}];
    [v9 setClasses:v27 forSelector:sel_writePasswordEvaluationsToCache_completionHandler_ argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v9];
    objc_initWeak(&location, self);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke;
    v38[3] = &unk_1E7CF15E8;
    objc_copyWeak(&v39, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v38];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    connection = self->_connection;
  }

  v28 = connection;
  os_unfair_lock_unlock(&self->_connectionLock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = *(v6 + 400);
  v36[2] = __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke_2;
  v36[3] = &unk_1E7CF2CC0;
  v29 = handlerCopy;
  v37 = v29;
  v30 = [(NSXPCConnection *)v28 remoteObjectProxyWithErrorHandler:v36];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v33 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachHelperProxy _remoteObjectProxyWithErrorHandler:v33];
    }

    v34 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A798] code:14 privacyPreservingDescription:@"Failed to acquire remote object proxy."];
    (*(v29 + 2))(v29, v34);
  }

  return v31;
}

void __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    v2 = *&v3[2]._os_unfair_lock_opaque;
    *&v3[2]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 4);
    WeakRetained = v3;
  }
}

void __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke_2_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getResultRecordDictionariesForResultQueryDictionaries:(id)dictionaries withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__WBSPasswordBreachHelperProxy_getResultRecordDictionariesForResultQueryDictionaries_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E7CF2CC0;
  v11 = handlerCopy;
  v7 = handlerCopy;
  dictionariesCopy = dictionaries;
  v9 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  [v9 getResultRecordDictionariesForResultQueryDictionaries:dictionariesCopy withCompletionHandler:v7];
}

- (void)recentlyBreachedResultRecordDictionariesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__WBSPasswordBreachHelperProxy_recentlyBreachedResultRecordDictionariesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF2CC0;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 recentlyBreachedResultRecordDictionariesWithCompletionHandler:v5];
}

- (void)clearRecentlyBreachedResultRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSPasswordBreachHelperProxy_clearRecentlyBreachedResultRecordsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF2CC0;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 clearRecentlyBreachedResultRecordsWithCompletionHandler:v5];
}

- (void)clearAllRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WBSPasswordBreachHelperProxy_clearAllRecordsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF2CC0;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v7];
  [v6 clearAllRecordsWithCompletionHandler:v5];
}

- (void)addResultRecordDictionaries:(id)dictionaries completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__WBSPasswordBreachHelperProxy_addResultRecordDictionaries_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF2CC0;
  v11 = handlerCopy;
  v7 = handlerCopy;
  dictionariesCopy = dictionaries;
  v9 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  [v9 addResultRecordDictionaries:dictionariesCopy completionHandler:v7];
}

- (void)getPasswordEvaluationsForPersistentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__WBSPasswordBreachHelperProxy_getPasswordEvaluationsForPersistentIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF2CC0;
  v11 = handlerCopy;
  v7 = handlerCopy;
  identifiersCopy = identifiers;
  v9 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  [v9 getPasswordEvaluationsForPersistentIdentifiers:identifiersCopy completionHandler:v7];
}

- (void)writePasswordEvaluationsToCache:(id)cache completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__WBSPasswordBreachHelperProxy_writePasswordEvaluationsToCache_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF2CC0;
  v11 = handlerCopy;
  v7 = handlerCopy;
  cacheCopy = cache;
  v9 = [(WBSPasswordBreachHelperProxy *)self _remoteObjectProxyWithErrorHandler:v10];
  [v9 writePasswordEvaluationsToCache:cacheCopy completionHandler:v7];
}

uint64_t __82__WBSPasswordBreachHelperProxy_writePasswordEvaluationsToCache_completionHandler___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __82__WBSPasswordBreachHelperProxy_writePasswordEvaluationsToCache_completionHandler___block_invoke_cold_1(v2);
  }

  return (*(*(a1 + 32) + 16))();
}

void __67__WBSPasswordBreachHelperProxy__remoteObjectProxyWithErrorHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Remote proxy object error handler invoked with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end