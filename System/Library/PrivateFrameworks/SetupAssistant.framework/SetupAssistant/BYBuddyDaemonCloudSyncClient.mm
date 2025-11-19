@interface BYBuddyDaemonCloudSyncClient
+ (id)clientInterface;
- (BYBuddyDaemonCloudSyncClient)init;
- (BYClientDaemonCloudSyncProtocol)delegate;
- (void)cancelSync;
- (void)cloudSyncProgressUpdate:(int64_t)a3 completedClients:(int64_t)a4 errors:(id)a5;
- (void)connectToDaemon;
- (void)fetchCurrentSyncState:(id)a3;
- (void)isSyncInProgress:(id)a3;
- (void)needsToSync:(id)a3;
- (void)startSync;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
@end

@implementation BYBuddyDaemonCloudSyncClient

- (BYBuddyDaemonCloudSyncClient)init
{
  v5.receiver = self;
  v5.super_class = BYBuddyDaemonCloudSyncClient;
  v2 = [(BYBuddyDaemonCloudSyncClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYBuddyDaemonCloudSyncClient *)v2 connectToDaemon];
  }

  return v3;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A8B68];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_syncCompletedWithErrors_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)needsToSync:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 needsToSync:v4];
}

- (void)startSync
{
  v3 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__BYBuddyDaemonCloudSyncClient_startSync__block_invoke_65;
  v5[3] = &unk_1E7D027A8;
  v5[4] = self;
  [v4 startSync:v5];
}

void __41__BYBuddyDaemonCloudSyncClient_startSync__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to communicate with daemon for cloud sync: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __41__BYBuddyDaemonCloudSyncClient_startSync__block_invoke_65(uint64_t a1)
{
  [*(a1 + 32) setSyncDidStart:1];
  v2 = *(a1 + 32);

  return [v2 setSyncDidComplete:0];
}

- (void)cancelSync
{
  v3 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_68];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__BYBuddyDaemonCloudSyncClient_cancelSync__block_invoke_69;
  v5[3] = &unk_1E7D027A8;
  v5[4] = self;
  [v4 cancelSync:v5];
}

void __42__BYBuddyDaemonCloudSyncClient_cancelSync__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to communicate with daemon for cloud sync: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __42__BYBuddyDaemonCloudSyncClient_cancelSync__block_invoke_69(uint64_t a1)
{
  [*(a1 + 32) setSyncDidStart:0];
  v2 = *(a1 + 32);

  return [v2 setSyncDidComplete:0];
}

- (void)isSyncInProgress:(id)a3
{
  v4 = a3;
  v5 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  v6 = [v5 remoteObjectProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__BYBuddyDaemonCloudSyncClient_isSyncInProgress___block_invoke;
  v8[3] = &unk_1E7D028A0;
  v9 = v4;
  v7 = v4;
  [v6 isSyncInProgress:v8];
}

- (void)fetchCurrentSyncState:(id)a3
{
  v4 = a3;
  v6 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 isSyncInProgress:v4];
}

- (void)cloudSyncProgressUpdate:(int64_t)a3 completedClients:(int64_t)a4 errors:(id)a5
{
  v8 = a5;
  v10 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  v9 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_72];
  [v9 cloudSyncProgressUpdate:a3 completedClients:a4 errors:v8 completion:&__block_literal_global_75];
}

void __80__BYBuddyDaemonCloudSyncClient_cloudSyncProgressUpdate_completedClients_errors___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (_BYIsInternalInstall())
    {
      v6 = 0;
      v7 = v3;
    }

    else if (v3)
    {
      v8 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v7 = [v8 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Failed to communicate with daemon for cloud sync: %{public}@", buf, 0xCu);
    if (v6)
    {
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.cloud.xpc" options:0];
  [(BYBuddyDaemonCloudSyncClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4C38];
  v5 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  [v5 setRemoteObjectInterface:v4];

  v6 = [objc_opt_class() clientInterface];
  v7 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  [v7 setExportedInterface:v6];

  v8 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  [v8 setExportedObject:self];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__BYBuddyDaemonCloudSyncClient_connectToDaemon__block_invoke;
  v14[3] = &unk_1E7D027F8;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  v9 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  [v9 setInvalidationHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__BYBuddyDaemonCloudSyncClient_connectToDaemon__block_invoke_92;
  v12[3] = &unk_1E7D027F8;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  v10 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  [v10 setInterruptionHandler:v12];

  v11 = [(BYBuddyDaemonCloudSyncClient *)self connection];
  [v11 resume];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __47__BYBuddyDaemonCloudSyncClient_connectToDaemon__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Cloud sync client connection invalidated!", v8, 2u);
  }

  if ([*(a1 + 32) syncDidStart] && (objc_msgSend(*(a1 + 32), "syncDidComplete") & 1) == 0)
  {
    v4 = [WeakRetained delegate];
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BYCloudSyncErrorDomain" code:0 userInfo:0];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v4 syncCompletedWithErrors:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __47__BYBuddyDaemonCloudSyncClient_connectToDaemon__block_invoke_92(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Cloud sync client connection interruption!", v8, 2u);
  }

  if ([*(a1 + 32) syncDidStart] && (objc_msgSend(*(a1 + 32), "syncDidComplete") & 1) == 0)
  {
    v4 = [WeakRetained delegate];
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BYCloudSyncErrorDomain" code:0 userInfo:0];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v4 syncCompletedWithErrors:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)syncProgress:(double)a3
{
  v4 = [(BYBuddyDaemonCloudSyncClient *)self delegate];
  [v4 syncProgress:a3];
}

- (void)syncCompletedWithErrors:(id)a3
{
  v4 = a3;
  [(BYBuddyDaemonCloudSyncClient *)self setSyncDidComplete:1];
  v5 = [(BYBuddyDaemonCloudSyncClient *)self delegate];
  [v5 syncCompletedWithErrors:v4];
}

- (BYClientDaemonCloudSyncProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end