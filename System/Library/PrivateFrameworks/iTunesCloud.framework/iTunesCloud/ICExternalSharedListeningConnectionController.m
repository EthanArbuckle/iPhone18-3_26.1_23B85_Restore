@interface ICExternalSharedListeningConnectionController
- (ICExternalSharedListeningConnectionController)initWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5;
- (void)_initializeConnectionIfNeeded;
- (void)dealloc;
- (void)receiveConnectionError:(id)a3;
- (void)receiveFatalError:(id)a3;
- (void)receiveMessageData:(id)a3;
- (void)receiveStartWithSessionIdentifier:(id)a3 sessionToken:(id)a4 inviteURLString:(id)a5;
- (void)sendMessage:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation ICExternalSharedListeningConnectionController

- (void)receiveMessageData:(id)a3
{
  v4 = a3;
  v5 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [[_ICLLProtocolMessage alloc] initWithData:v4];
    v7 = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICExternalSharedListeningConnectionController_receiveMessageData___block_invoke;
    block[3] = &unk_1E7BFA178;
    v10 = v5;
    v11 = self;
    v12 = v6;
    v8 = v6;
    dispatch_async(v7, block);
  }
}

- (void)receiveFatalError:(id)a3
{
  v4 = a3;
  v5 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__ICExternalSharedListeningConnectionController_receiveFatalError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v8 = v5;
    v9 = self;
    v10 = v4;
    dispatch_async(v6, block);
  }
}

- (void)receiveConnectionError:(id)a3
{
  v4 = a3;
  v5 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICExternalSharedListeningConnectionController_receiveConnectionError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v8 = v5;
    v9 = self;
    v10 = v4;
    dispatch_async(v6, block);
  }
}

- (void)receiveStartWithSessionIdentifier:(id)a3 sessionToken:(id)a4 inviteURLString:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(ICSharedListeningConnectionController *)self setSessionIdentifier:a3];
  [(ICSharedListeningConnectionController *)self setSessionToken:v9];

  v10 = [MEMORY[0x1E695DFF8] URLWithString:v8];

  [(ICSharedListeningConnectionController *)self setInviteURL:v10];
  v11 = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __112__ICExternalSharedListeningConnectionController_receiveStartWithSessionIdentifier_sessionToken_inviteURLString___block_invoke;
    v13[3] = &unk_1E7BFA078;
    v14 = v11;
    v15 = self;
    dispatch_async(v12, v13);
  }
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__ICExternalSharedListeningConnectionController_sendMessage___block_invoke;
  v8[3] = &unk_1E7BF9308;
  v8[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v8];
  v7 = [v4 data];

  [v6 sendMessageData:v7];
}

void __61__ICExternalSharedListeningConnectionController_sendMessage___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][E] <%p> Error retrieving proxy.", &v4, 0xCu);
  }
}

- (void)stop
{
  v3 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICExternalSharedListeningConnectionController_stop__block_invoke;
  v5[3] = &unk_1E7BF9308;
  v5[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
  [v4 stop];
}

void __53__ICExternalSharedListeningConnectionController_stop__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][E] <%p> Error retrieving proxy.", &v4, 0xCu);
  }
}

- (void)start
{
  v9 = *MEMORY[0x1E69E9840];
  [(ICExternalSharedListeningConnectionController *)self _initializeConnectionIfNeeded];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][E] <%p> Requesting hosted connection.", buf, 0xCu);
  }

  v4 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__ICExternalSharedListeningConnectionController_start__block_invoke;
  v6[3] = &unk_1E7BF9308;
  v6[4] = self;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 start];
}

void __54__ICExternalSharedListeningConnectionController_start__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][E] <%p> Error retrieving proxy.", &v4, 0xCu);
  }
}

- (void)_initializeConnectionIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];

  if (!v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = self;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][E] <%p> Initializing XPC connection.", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.iTunesCloud.SharedListeningConnectionService"];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CBB600];
    v7 = [MEMORY[0x1E69B14E8] proxyWithObject:self protocol:&unk_1F2CBB600];
    [v5 setExportedObject:v7];

    [v5 setExportedInterface:v6];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCF1D8];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v8 setClasses:v9 forSelector:sel_populateSessionIdentifier_identity_ argumentIndex:1 ofReply:0];

    [v5 setRemoteObjectInterface:v8];
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke;
    v17[3] = &unk_1E7BFA328;
    objc_copyWeak(&v18, buf);
    [v5 setInterruptionHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke_198;
    v15[3] = &unk_1E7BFA328;
    objc_copyWeak(&v16, buf);
    [v5 setInvalidationHandler:v15];
    [(ICExternalSharedListeningConnectionController *)self setXpcConnection:v5];
    [v5 resume];
    v10 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke_202;
    v14[3] = &unk_1E7BF9308;
    v14[4] = self;
    v11 = [v10 remoteObjectProxyWithErrorHandler:v14];
    v12 = [(ICSharedListeningConnectionController *)self sessionIdentifier];
    v13 = [(ICSharedListeningConnectionController *)self identity];
    [v11 populateSessionIdentifier:v12 identity:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 134217984;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][E] <%p> XPC interrupted.", &v4, 0xCu);
    }

    [WeakRetained setXpcConnection:0];
    v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICSharedListeningConnectionControllerError" code:1 debugDescription:@"XPC connection interrupted."];
    [WeakRetained receiveConnectionError:v3];
  }
}

void __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke_198(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 134217984;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][E] <%p> XPC invalidated.", &v4, 0xCu);
    }

    [WeakRetained setXpcConnection:0];
    v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICSharedListeningConnectionControllerError" code:1 debugDescription:@"XPC connection invalidated."];
    [WeakRetained receiveConnectionError:v3];
  }
}

void __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke_202(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_ERROR, "[ICSharedListeningConnectionController][E] <%p> Error retrieving proxy.", &v4, 0xCu);
  }
}

- (void)dealloc
{
  v3 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = ICExternalSharedListeningConnectionController;
  [(ICExternalSharedListeningConnectionController *)&v4 dealloc];
}

- (ICExternalSharedListeningConnectionController)initWithSessionIdentifier:(id)a3 identity:(id)a4 bundleID:(id)a5
{
  v10.receiver = self;
  v10.super_class = ICExternalSharedListeningConnectionController;
  v5 = [(ICSharedListeningConnectionController *)&v10 initWithSessionIdentifier:a3 identity:a4 bundleID:a5];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICExternalSharedListeningConnectionController.delegateQueue", v6);
    delegateQueue = v5->_delegateQueue;
    v5->_delegateQueue = v7;
  }

  return v5;
}

@end