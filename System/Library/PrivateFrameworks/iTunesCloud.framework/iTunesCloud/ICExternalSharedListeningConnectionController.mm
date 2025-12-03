@interface ICExternalSharedListeningConnectionController
- (ICExternalSharedListeningConnectionController)initWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d;
- (void)_initializeConnectionIfNeeded;
- (void)dealloc;
- (void)receiveConnectionError:(id)error;
- (void)receiveFatalError:(id)error;
- (void)receiveMessageData:(id)data;
- (void)receiveStartWithSessionIdentifier:(id)identifier sessionToken:(id)token inviteURLString:(id)string;
- (void)sendMessage:(id)message;
- (void)start;
- (void)stop;
@end

@implementation ICExternalSharedListeningConnectionController

- (void)receiveMessageData:(id)data
{
  dataCopy = data;
  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [[_ICLLProtocolMessage alloc] initWithData:dataCopy];
    delegateQueue = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICExternalSharedListeningConnectionController_receiveMessageData___block_invoke;
    block[3] = &unk_1E7BFA178;
    v10 = delegate;
    selfCopy = self;
    v12 = v6;
    v8 = v6;
    dispatch_async(delegateQueue, block);
  }
}

- (void)receiveFatalError:(id)error
{
  errorCopy = error;
  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__ICExternalSharedListeningConnectionController_receiveFatalError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v8 = delegate;
    selfCopy = self;
    v10 = errorCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)receiveConnectionError:(id)error
{
  errorCopy = error;
  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICExternalSharedListeningConnectionController_receiveConnectionError___block_invoke;
    block[3] = &unk_1E7BFA178;
    v8 = delegate;
    selfCopy = self;
    v10 = errorCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)receiveStartWithSessionIdentifier:(id)identifier sessionToken:(id)token inviteURLString:(id)string
{
  stringCopy = string;
  tokenCopy = token;
  [(ICSharedListeningConnectionController *)self setSessionIdentifier:identifier];
  [(ICSharedListeningConnectionController *)self setSessionToken:tokenCopy];

  v10 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];

  [(ICSharedListeningConnectionController *)self setInviteURL:v10];
  delegate = [(ICSharedListeningConnectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(ICExternalSharedListeningConnectionController *)self delegateQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __112__ICExternalSharedListeningConnectionController_receiveStartWithSessionIdentifier_sessionToken_inviteURLString___block_invoke;
    v13[3] = &unk_1E7BFA078;
    v14 = delegate;
    selfCopy = self;
    dispatch_async(delegateQueue, v13);
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  xpcConnection = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__ICExternalSharedListeningConnectionController_sendMessage___block_invoke;
  v8[3] = &unk_1E7BF9308;
  v8[4] = self;
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  data = [messageCopy data];

  [v6 sendMessageData:data];
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
  xpcConnection = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ICExternalSharedListeningConnectionController_stop__block_invoke;
  v5[3] = &unk_1E7BF9308;
  v5[4] = self;
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v5];
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
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "[ICSharedListeningConnectionController][E] <%p> Requesting hosted connection.", buf, 0xCu);
  }

  xpcConnection = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__ICExternalSharedListeningConnectionController_start__block_invoke;
  v6[3] = &unk_1E7BF9308;
  v6[4] = self;
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:v6];
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
  xpcConnection = [(ICExternalSharedListeningConnectionController *)self xpcConnection];

  if (!xpcConnection)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
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
    xpcConnection2 = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__ICExternalSharedListeningConnectionController__initializeConnectionIfNeeded__block_invoke_202;
    v14[3] = &unk_1E7BF9308;
    v14[4] = self;
    v11 = [xpcConnection2 remoteObjectProxyWithErrorHandler:v14];
    sessionIdentifier = [(ICSharedListeningConnectionController *)self sessionIdentifier];
    identity = [(ICSharedListeningConnectionController *)self identity];
    [v11 populateSessionIdentifier:sessionIdentifier identity:identity];

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
  xpcConnection = [(ICExternalSharedListeningConnectionController *)self xpcConnection];
  [xpcConnection invalidate];

  v4.receiver = self;
  v4.super_class = ICExternalSharedListeningConnectionController;
  [(ICExternalSharedListeningConnectionController *)&v4 dealloc];
}

- (ICExternalSharedListeningConnectionController)initWithSessionIdentifier:(id)identifier identity:(id)identity bundleID:(id)d
{
  v10.receiver = self;
  v10.super_class = ICExternalSharedListeningConnectionController;
  v5 = [(ICSharedListeningConnectionController *)&v10 initWithSessionIdentifier:identifier identity:identity bundleID:d];
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