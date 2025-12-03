@interface TUConversationLinkDescriptorXPCClientDataSource
+ (NSXPCInterface)clientXPCInterface;
+ (NSXPCInterface)serverXPCInterface;
+ (TUConversationLinkDescriptorXPCServer)asynchronousServer;
+ (TUConversationLinkDescriptorXPCServer)synchronousServer;
+ (void)setAsynchronousServer:(id)server;
+ (void)setSynchronousServer:(id)server;
- (BOOL)addConversationLinkDescriptors:(id)descriptors error:(id *)error;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors error:(id *)error;
- (BOOL)setInteger:(int64_t)integer forKey:(id)key error:(id *)error;
- (BOOL)setString:(id)string forKey:(id)key error:(id *)error;
- (NSXPCConnection)xpcConnection;
- (TUConversationLinkDescriptorDataSourceDelegate)conversationLinkDescriptorDataSourceDelegate;
- (TUConversationLinkDescriptorXPCClientDataSource)init;
- (id)asynchronousServerWithErrorHandler:(id)handler;
- (id)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)stringForKey:(id)key error:(id *)error;
- (id)synchronousServerWithErrorHandler:(id)handler;
- (int64_t)integerForKey:(id)key error:(id *)error;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason error:(id *)error;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (void)addConversationLinkDescriptors:(id)descriptors completion:(id)completion;
- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors completion:(id)completion;
- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate completion:(id)completion;
- (void)conversationLinkDescriptorsDidChange;
- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset completion:(id)completion;
- (void)dealloc;
- (void)integerForKey:(id)key completion:(id)completion;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason completion:(id)completion;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate completion:(id)completion;
- (void)setConversationLinkDescriptorDataSourceDelegate:(id)delegate;
- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setInteger:(int64_t)integer forKey:(id)key completion:(id)completion;
- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setString:(id)string forKey:(id)key completion:(id)completion;
- (void)setXpcConnection:(id)connection;
- (void)stringForKey:(id)key completion:(id)completion;
@end

@implementation TUConversationLinkDescriptorXPCClientDataSource

- (NSXPCConnection)xpcConnection
{
  os_unfair_lock_lock(&self->_accessorLock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.FaceTime.FTConversationService"];
    v5 = self->_xpcConnection;
    self->_xpcConnection = v4;

    serverXPCInterface = [objc_opt_class() serverXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:serverXPCInterface];

    clientXPCInterface = [objc_opt_class() clientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:clientXPCInterface];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __64__TUConversationLinkDescriptorXPCClientDataSource_xpcConnection__block_invoke;
    v13 = &unk_1E7424998;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_102, v10, v11, v12, v13];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  v8 = xpcConnection;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v8;
}

- (TUConversationLinkDescriptorXPCClientDataSource)init
{
  v3.receiver = self;
  v3.super_class = TUConversationLinkDescriptorXPCClientDataSource;
  result = [(TUConversationLinkDescriptorXPCClientDataSource *)&v3 init];
  if (result)
  {
    result->_accessorLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUConversationLinkDescriptorXPCClientDataSource;
  [(TUConversationLinkDescriptorXPCClientDataSource *)&v3 dealloc];
}

+ (TUConversationLinkDescriptorXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer);

  return WeakRetained;
}

+ (void)setAsynchronousServer:(id)server
{
  obj = server;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer);

  v4 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&sAsynchronousServer, obj);
    v4 = obj;
  }
}

+ (TUConversationLinkDescriptorXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer);

  return WeakRetained;
}

+ (void)setSynchronousServer:(id)server
{
  obj = server;
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer);

  v4 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&sSynchronousServer, obj);
    v4 = obj;
  }
}

+ (NSXPCInterface)clientXPCInterface
{
  if (clientXPCInterface_onceToken != -1)
  {
    +[TUConversationLinkDescriptorXPCClientDataSource clientXPCInterface];
  }

  v3 = clientXPCInterface_sClientXPCInterface;

  return v3;
}

uint64_t __69__TUConversationLinkDescriptorXPCClientDataSource_clientXPCInterface__block_invoke()
{
  clientXPCInterface_sClientXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09C7EA8];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)serverXPCInterface
{
  if (serverXPCInterface_onceToken != -1)
  {
    +[TUConversationLinkDescriptorXPCClientDataSource serverXPCInterface];
  }

  v3 = serverXPCInterface_sServerXPCInterface;

  return v3;
}

void __69__TUConversationLinkDescriptorXPCClientDataSource_serverXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A09F20];
  v1 = serverXPCInterface_sServerXPCInterface;
  serverXPCInterface_sServerXPCInterface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  [serverXPCInterface_sServerXPCInterface setClasses:v6 forSelector:sel_addConversationLinkDescriptors_reply_ argumentIndex:0 ofReply:0];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];

  [serverXPCInterface_sServerXPCInterface setClasses:v11 forSelector:sel_addOrUpdateConversationLinkDescriptors_reply_ argumentIndex:0 ofReply:0];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v12 forSelector:sel_removeConversationLinkDescriptorsWithPredicate_deleteReason_reply_ argumentIndex:0 ofReply:0];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v13 forSelector:sel_conversationLinkDescriptorCountWithPredicate_reply_ argumentIndex:0 ofReply:0];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v14 forSelector:sel_conversationLinkDescriptorsWithPredicate_limit_offset_reply_ argumentIndex:0 ofReply:0];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];

  [serverXPCInterface_sServerXPCInterface setClasses:v19 forSelector:sel_conversationLinkDescriptorsWithPredicate_limit_offset_reply_ argumentIndex:0 ofReply:1];
  v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v20 forSelector:sel_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:2 ofReply:0];
  v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v21 forSelector:sel_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:0 ofReply:0];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v22 forSelector:sel_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:2 ofReply:0];
  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];

  [serverXPCInterface_sServerXPCInterface setClasses:v25 forSelector:sel_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:0 ofReply:0];
  v26 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v26 forSelector:sel_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:2 ofReply:0];
  v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];

  [serverXPCInterface_sServerXPCInterface setClasses:v27 forSelector:sel_setName_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:0 ofReply:0];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];

  [serverXPCInterface_sServerXPCInterface setClasses:v28 forSelector:sel_setName_withRevision_forConversationLinkDescriptorsWithPredicate_reply_ argumentIndex:2 ofReply:0];
}

- (id)asynchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUConversationLinkDescriptorXPCClientDataSource *)self xpcConnection];
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (id)synchronousServerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    xpcConnection = [(TUConversationLinkDescriptorXPCClientDataSource *)self xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

void __64__TUConversationLinkDescriptorXPCClientDataSource_xpcConnection__block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
  }
}

void __64__TUConversationLinkDescriptorXPCClientDataSource_xpcConnection__block_invoke_100()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted.", v1, 2u);
  }
}

- (void)setXpcConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_xpcConnection != connectionCopy)
  {
    objc_storeStrong(&self->_xpcConnection, connection);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (TUConversationLinkDescriptorDataSourceDelegate)conversationLinkDescriptorDataSourceDelegate
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_conversationLinkDescriptorDataSourceDelegate;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setConversationLinkDescriptorDataSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_conversationLinkDescriptorDataSourceDelegate != delegateCopy)
  {
    objc_storeStrong(&self->_conversationLinkDescriptorDataSourceDelegate, delegate);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)addConversationLinkDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_error___block_invoke;
  v12[3] = &unk_1E74249C0;
  v12[4] = &v13;
  v7 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_error___block_invoke_104;
  v11[3] = &unk_1E74249E8;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 addConversationLinkDescriptors:descriptorsCopy reply:v11];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __88__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)addConversationLinkDescriptors:(id)descriptors completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_completion___block_invoke;
  v13[3] = &unk_1E7424A10;
  v7 = completionCopy;
  v14 = v7;
  descriptorsCopy = descriptors;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_completion___block_invoke_106;
  v11[3] = &unk_1E7424A38;
  v12 = v7;
  v10 = v7;
  [v9 addConversationLinkDescriptors:descriptorsCopy reply:v11];
}

void __93__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __93__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_completion___block_invoke_106(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_error___block_invoke;
  v12[3] = &unk_1E74249C0;
  v12[4] = &v13;
  v7 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_error___block_invoke_107;
  v11[3] = &unk_1E74249E8;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 addOrUpdateConversationLinkDescriptors:descriptorsCopy reply:v11];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __96__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __96__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_completion___block_invoke;
  v13[3] = &unk_1E7424A10;
  v7 = completionCopy;
  v14 = v7;
  descriptorsCopy = descriptors;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_completion___block_invoke_108;
  v11[3] = &unk_1E7424A38;
  v12 = v7;
  v10 = v7;
  [v9 addOrUpdateConversationLinkDescriptors:descriptorsCopy reply:v11];
}

void __101__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __101__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __101__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_completion___block_invoke_108(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_error___block_invoke;
  v12[3] = &unk_1E74249C0;
  v12[4] = &v13;
  v7 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_error___block_invoke_109;
  v11[3] = &unk_1E7424A60;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 conversationLinkDescriptorCountWithPredicate:predicateCopy reply:v11];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __102__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_completion___block_invoke;
  v13[3] = &unk_1E7424A10;
  v7 = completionCopy;
  v14 = v7;
  predicateCopy = predicate;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_completion___block_invoke_111;
  v11[3] = &unk_1E7424A88;
  v12 = v7;
  v10 = v7;
  [v9 conversationLinkDescriptorCountWithPredicate:predicateCopy reply:v11];
}

void __107__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __107__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_completion___block_invoke_111(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  predicateCopy = predicate;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke;
  v16[3] = &unk_1E74249C0;
  v16[4] = &v17;
  v11 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke_112;
  v15[3] = &unk_1E7424AB0;
  v15[4] = &v23;
  v15[5] = &v17;
  [v11 conversationLinkDescriptorsWithPredicate:predicateCopy limit:limit offset:offset reply:v15];

  if (error)
  {
    v12 = v18[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __116__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_completion___block_invoke;
  v17[3] = &unk_1E7424A10;
  v11 = completionCopy;
  v18 = v11;
  predicateCopy = predicate;
  v13 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_completion___block_invoke_114;
  v15[3] = &unk_1E7424AD8;
  v16 = v11;
  v14 = v11;
  [v13 conversationLinkDescriptorsWithPredicate:predicateCopy limit:limit offset:offset reply:v15];
}

void __116__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __116__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_completion___block_invoke_114(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason error:(id *)error
{
  predicateCopy = predicate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke;
  v14[3] = &unk_1E74249C0;
  v14[4] = &v15;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke_115;
  v13[3] = &unk_1E7424A60;
  v13[4] = &v21;
  v13[5] = &v15;
  [v9 removeConversationLinkDescriptorsWithPredicate:predicateCopy deleteReason:reason reply:v13];

  if (error)
  {
    v10 = v16[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __122__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_completion___block_invoke;
  v15[3] = &unk_1E7424A10;
  v9 = completionCopy;
  v16 = v9;
  predicateCopy = predicate;
  v11 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __122__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_completion___block_invoke_116;
  v13[3] = &unk_1E7424A88;
  v14 = v9;
  v12 = v9;
  [v11 removeConversationLinkDescriptorsWithPredicate:predicateCopy deleteReason:reason reply:v13];
}

void __122__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __122__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_completion___block_invoke_116(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_error___block_invoke;
  v12[3] = &unk_1E74249C0;
  v12[4] = &v13;
  v7 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_error___block_invoke_117;
  v11[3] = &unk_1E7424A60;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 removeLinkDescriptorsFromDataSourceWithPredicate:predicateCopy reply:v11];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __106__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __111__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_completion___block_invoke;
  v13[3] = &unk_1E7424A10;
  v7 = completionCopy;
  v14 = v7;
  predicateCopy = predicate;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __111__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_completion___block_invoke_118;
  v11[3] = &unk_1E7424A88;
  v12 = v7;
  v10 = v7;
  [v9 removeLinkDescriptorsFromDataSourceWithPredicate:predicateCopy reply:v11];
}

void __111__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __111__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __111__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_completion___block_invoke_118(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __132__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __132__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_120(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  dateCopy = date;
  predicateCopy = predicate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __132__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke;
  v17[3] = &unk_1E74249C0;
  v17[4] = &v18;
  v12 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __132__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_121;
  v16[3] = &unk_1E7424A60;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 setExpirationDate:dateCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:v16];

  if (error)
  {
    v13 = v19[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v25[3];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v14;
}

void __132__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __137__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke;
  v18[3] = &unk_1E7424A10;
  v11 = completionCopy;
  v19 = v11;
  predicateCopy = predicate;
  dateCopy = date;
  v14 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __137__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_122;
  v16[3] = &unk_1E7424A88;
  v17 = v11;
  v15 = v11;
  [v14 setExpirationDate:dateCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:v16];
}

void __137__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __137__TUConversationLinkDescriptorXPCClientDataSource_setExpirationDate_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_122(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  handlesCopy = handles;
  predicateCopy = predicate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __132__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke;
  v17[3] = &unk_1E74249C0;
  v17[4] = &v18;
  v12 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __132__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_123;
  v16[3] = &unk_1E7424A60;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 setInvitedHandles:handlesCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:v16];

  if (error)
  {
    v13 = v19[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v25[3];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v14;
}

void __132__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __137__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke;
  v18[3] = &unk_1E7424A10;
  v11 = completionCopy;
  v19 = v11;
  predicateCopy = predicate;
  handlesCopy = handles;
  v14 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __137__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_124;
  v16[3] = &unk_1E7424A88;
  v17 = v11;
  v15 = v11;
  [v14 setInvitedHandles:handlesCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:v16];
}

void __137__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __137__TUConversationLinkDescriptorXPCClientDataSource_setInvitedHandles_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_124(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  nameCopy = name;
  predicateCopy = predicate;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __122__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke;
  v17[3] = &unk_1E74249C0;
  v17[4] = &v18;
  v12 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __122__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_125;
  v16[3] = &unk_1E7424A60;
  v16[4] = &v24;
  v16[5] = &v18;
  [v12 setName:nameCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:v16];

  if (error)
  {
    v13 = v19[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v25[3];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v14;
}

void __122__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __127__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke;
  v18[3] = &unk_1E7424A10;
  v11 = completionCopy;
  v19 = v11;
  predicateCopy = predicate;
  nameCopy = name;
  v14 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __127__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_126;
  v16[3] = &unk_1E7424A88;
  v17 = v11;
  v15 = v11;
  [v14 setName:nameCopy withRevision:revision forConversationLinkDescriptorsWithPredicate:predicateCopy reply:v16];
}

void __127__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __127__TUConversationLinkDescriptorXPCClientDataSource_setName_withRevision_forConversationLinkDescriptorsWithPredicate_completion___block_invoke_126(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)setInteger:(int64_t)integer forKey:(id)key error:(id *)error
{
  keyCopy = key;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_error___block_invoke;
  v14[3] = &unk_1E74249C0;
  v14[4] = &v15;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_error___block_invoke_127;
  v13[3] = &unk_1E74249E8;
  v13[4] = &v21;
  v13[5] = &v15;
  [v9 setInteger:integer forKey:keyCopy reply:v13];

  if (error)
  {
    v10 = v16[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __75__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)setInteger:(int64_t)integer forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke;
  v15[3] = &unk_1E7424A10;
  v9 = completionCopy;
  v16 = v9;
  keyCopy = key;
  v11 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke_128;
  v13[3] = &unk_1E7424A38;
  v14 = v9;
  v12 = v9;
  [v11 setInteger:integer forKey:keyCopy reply:v13];
}

void __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke_128(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)integerForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke;
  v13[3] = &unk_1E7424A10;
  v7 = completionCopy;
  v14 = v7;
  keyCopy = key;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke_129;
  v11[3] = &unk_1E7424B00;
  v12 = v7;
  v10 = v7;
  [v9 integerForKey:keyCopy reply:v11];
}

void __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0x7FFFFFFFFFFFFFFFLL, v3);
  }
}

uint64_t __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke_129(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)integerForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_error___block_invoke;
  v12[3] = &unk_1E74249C0;
  v12[4] = &v13;
  v7 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_error___block_invoke_131;
  v11[3] = &unk_1E7424B28;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 integerForKey:keyCopy reply:v11];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __71__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)setString:(id)string forKey:(id)key error:(id *)error
{
  stringCopy = string;
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_error___block_invoke;
  v15[3] = &unk_1E74249C0;
  v15[4] = &v16;
  v10 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_error___block_invoke_132;
  v14[3] = &unk_1E74249E8;
  v14[4] = &v22;
  v14[5] = &v16;
  [v10 setString:stringCopy forKey:keyCopy reply:v14];

  if (error)
  {
    v11 = v17[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(v23 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v12;
}

void __74__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)setString:(id)string forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_completion___block_invoke;
  v16[3] = &unk_1E7424A10;
  v9 = completionCopy;
  v17 = v9;
  keyCopy = key;
  stringCopy = string;
  v12 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_completion___block_invoke_133;
  v14[3] = &unk_1E7424A38;
  v15 = v9;
  v13 = v9;
  [v12 setString:stringCopy forKey:keyCopy reply:v14];
}

void __79__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __79__TUConversationLinkDescriptorXPCClientDataSource_setString_forKey_completion___block_invoke_133(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stringForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_completion___block_invoke;
  v13[3] = &unk_1E7424A10;
  v7 = completionCopy;
  v14 = v7;
  keyCopy = key;
  v9 = [(TUConversationLinkDescriptorXPCClientDataSource *)self asynchronousServerWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_completion___block_invoke_134;
  v11[3] = &unk_1E7424B50;
  v12 = v7;
  v10 = v7;
  [v9 stringForKey:keyCopy reply:v11];
}

void __75__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __75__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_completion___block_invoke_134(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)stringForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_error___block_invoke;
  v12[3] = &unk_1E74249C0;
  v12[4] = &v13;
  v7 = [(TUConversationLinkDescriptorXPCClientDataSource *)self synchronousServerWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_error___block_invoke_136;
  v11[3] = &unk_1E7424B78;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 stringForKey:keyCopy reply:v11];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __70__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __70__TUConversationLinkDescriptorXPCClientDataSource_stringForKey_error___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)conversationLinkDescriptorsDidChange
{
  conversationLinkDescriptorDataSourceDelegate = [(TUConversationLinkDescriptorXPCClientDataSource *)self conversationLinkDescriptorDataSourceDelegate];
  [conversationLinkDescriptorDataSourceDelegate conversationLinkDescriptorsDidChangeForDataSource:self];
}

void __88__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not add converation links due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __93__TUConversationLinkDescriptorXPCClientDataSource_addConversationLinkDescriptors_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not add conversation link descriptors due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not add or update converation links due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __101__TUConversationLinkDescriptorXPCClientDataSource_addOrUpdateConversationLinkDescriptors_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not add or update conversation link descriptors due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __102__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorCountWithPredicate_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not retrieve conversation link count due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __111__TUConversationLinkDescriptorXPCClientDataSource_conversationLinkDescriptorsWithPredicate_limit_offset_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not retrieve conversation link descriptors due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __117__TUConversationLinkDescriptorXPCClientDataSource_removeConversationLinkDescriptorsWithPredicate_deleteReason_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not remove conversation link descriptors due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __111__TUConversationLinkDescriptorXPCClientDataSource_removeLinkDescriptorsFromDataSourceWithPredicate_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not remove conversation link descriptors from data source due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __127__TUConversationLinkDescriptorXPCClientDataSource_setActivated_withRevision_forConversationLinkDescriptorsWithPredicate_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not update conversation link descriptors due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__TUConversationLinkDescriptorXPCClientDataSource_setInteger_forKey_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not update TU KV due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not fetch TU KV due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__TUConversationLinkDescriptorXPCClientDataSource_integerForKey_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Could not synch fetch conversation link descriptors due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end