@interface TUMomentsControllerXPCClient
+ (NSXPCInterface)momentsControllerClientXPCInterface;
+ (NSXPCInterface)momentsControllerServerXPCInterface;
+ (TUMomentsControllerXPCServer)asynchronousServer;
+ (TUMomentsControllerXPCServer)synchronousServer;
- (NSString)processName;
- (NSXPCConnection)xpcConnection;
- (TUMomentsControllerDataSourceDelegate)delegate;
- (TUMomentsControllerXPCClient)init;
- (id)processBundleIdentifier;
- (id)serverWithErrorHandler:(id)a3;
- (id)synchronousServerWithErrorHandler:(id)a3;
- (int)processIdentifier;
- (void)_registerConnection;
- (void)dealloc;
- (void)didFinishProcessingRawVideoMessage:(id)a3;
- (void)didFinishRecordingMedia:(id)a3;
- (void)didReceiveLocallyRequestedMomentDescriptor:(id)a3;
- (void)didReceiveMediaRecordingError:(id)a3;
- (void)didReceiveMessageRecordingError:(id)a3;
- (void)didUpdateCapabilities:(id)a3 forVideoStreamToken:(int64_t)a4;
- (void)discardVideoMessageWithUUID:(id)a3 completion:(id)a4;
- (void)endMediaRequestWithUUID:(id)a3 completion:(id)a4;
- (void)endRecordingMessageWithUUID:(id)a3 completion:(id)a4;
- (void)endRequestWithTransactionID:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)prewarmAudioClientWithCompletion:(id)a3;
- (void)prewarmMediaRequest:(id)a3 completion:(id)a4;
- (void)registerStreamToken:(int64_t)a3 requesterID:(id)a4 remoteIDSDestinations:(id)a5 remoteMomentsAvailable:(BOOL)a6 completion:(id)a7;
- (void)requestSandboxExtensionForURL:(id)a3 reply:(id)a4;
- (void)resetVideoMessagingWithSessionUUID:(id)a3 completion:(id)a4;
- (void)saveVideoMessageWithUUID:(id)a3 completion:(id)a4;
- (void)sendVideoMessageWithRequest:(id)a3 completion:(id)a4;
- (void)startMediaRequest:(id)a3 completion:(id)a4;
- (void)startRecordingMessageWithMediaType:(int)a3 completion:(id)a4;
- (void)startRequestWithMediaType:(int)a3 forStreamToken:(int64_t)a4 requesteeID:(id)a5 destinationID:(id)a6 completion:(id)a7;
- (void)unregisterStreamToken:(int64_t)a3 completion:(id)a4;
- (void)willCaptureRemoteRequestFromRequesterID:(id)a3;
@end

@implementation TUMomentsControllerXPCClient

+ (TUMomentsControllerXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_6);

  return WeakRetained;
}

+ (TUMomentsControllerXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_6);

  return WeakRetained;
}

- (int)processIdentifier
{
  v2 = [(TUMomentsControllerXPCClient *)self xpcConnection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (id)processBundleIdentifier
{
  v2 = [(TUMomentsControllerXPCClient *)self xpcConnection];
  v3 = [v2 processBundleIdentifier];

  return v3;
}

- (NSString)processName
{
  v2 = [(TUMomentsControllerXPCClient *)self xpcConnection];
  v3 = [v2 serviceName];

  return v3;
}

- (TUMomentsControllerXPCClient)init
{
  v15.receiver = self;
  v15.super_class = TUMomentsControllerXPCClient;
  v2 = [(TUMomentsControllerXPCClient *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.telephonyutilities.momentscontrollerxpcclient", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    objc_initWeak(&location, v2);
    v6 = v2->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __36__TUMomentsControllerXPCClient_init__block_invoke;
    handler[3] = &unk_1E7424C60;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch("com.apple.telephonyutilities.callservicesdaemon.connectionrequest", &v2->_token, v6, handler);
    WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_6);
    [WeakRetained registerClient:v2];

    v8 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__TUMomentsControllerXPCClient_init__block_invoke_3;
    block[3] = &unk_1E7424950;
    v11 = v2;
    dispatch_async(v8, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__TUMomentsControllerXPCClient_init__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "com.apple.telephonyutilities.callservicesdaemon.connectionrequest";
      _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", &v4, 0xCu);
    }

    [WeakRetained _registerConnection];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  notify_cancel(self->_token);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUMomentsControllerXPCClient;
  [(TUMomentsControllerXPCClient *)&v3 dealloc];
}

- (void)registerStreamToken:(int64_t)a3 requesterID:(id)a4 remoteIDSDestinations:(id)a5 remoteMomentsAvailable:(BOOL)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(TUMomentsControllerXPCClient *)self queue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __120__TUMomentsControllerXPCClient_registerStreamToken_requesterID_remoteIDSDestinations_remoteMomentsAvailable_completion___block_invoke;
  v19[3] = &unk_1E7427760;
  v22 = v14;
  v23 = a3;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v24 = a6;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  dispatch_async(v15, v19);
}

void __120__TUMomentsControllerXPCClient_registerStreamToken_requesterID_remoteIDSDestinations_remoteMomentsAvailable_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __120__TUMomentsControllerXPCClient_registerStreamToken_requesterID_remoteIDSDestinations_remoteMomentsAvailable_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 56);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 registerStreamToken:*(a1 + 64) requesterID:*(a1 + 40) remoteIDSDestinations:*(a1 + 48) remoteMomentsAvailable:*(a1 + 72) reply:*(a1 + 56)];
}

void __120__TUMomentsControllerXPCClient_registerStreamToken_requesterID_remoteIDSDestinations_remoteMomentsAvailable_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __120__TUMomentsControllerXPCClient_registerStreamToken_requesterID_remoteIDSDestinations_remoteMomentsAvailable_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)unregisterStreamToken:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__TUMomentsControllerXPCClient_unregisterStreamToken_completion___block_invoke;
  block[3] = &unk_1E7427788;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

void __65__TUMomentsControllerXPCClient_unregisterStreamToken_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__TUMomentsControllerXPCClient_unregisterStreamToken_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 unregisterStreamToken:*(a1 + 48) reply:*(a1 + 40)];
}

void __65__TUMomentsControllerXPCClient_unregisterStreamToken_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__TUMomentsControllerXPCClient_unregisterStreamToken_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startRequestWithMediaType:(int)a3 forStreamToken:(int64_t)a4 requesteeID:(id)a5 destinationID:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(TUMomentsControllerXPCClient *)self queue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110__TUMomentsControllerXPCClient_startRequestWithMediaType_forStreamToken_requesteeID_destinationID_completion___block_invoke;
  v19[3] = &unk_1E74277B0;
  v24 = a3;
  v22 = v14;
  v23 = a4;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  dispatch_async(v15, v19);
}

void __110__TUMomentsControllerXPCClient_startRequestWithMediaType_forStreamToken_requesteeID_destinationID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __110__TUMomentsControllerXPCClient_startRequestWithMediaType_forStreamToken_requesteeID_destinationID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 56);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 startRequestWithMediaType:*(a1 + 72) forStreamToken:*(a1 + 64) requesteeID:*(a1 + 40) destinationID:*(a1 + 48) reply:*(a1 + 56)];
}

void __110__TUMomentsControllerXPCClient_startRequestWithMediaType_forStreamToken_requesteeID_destinationID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __110__TUMomentsControllerXPCClient_startRequestWithMediaType_forStreamToken_requesteeID_destinationID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)endRequestWithTransactionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUMomentsControllerXPCClient_endRequestWithTransactionID_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __71__TUMomentsControllerXPCClient_endRequestWithTransactionID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__TUMomentsControllerXPCClient_endRequestWithTransactionID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 endRequestWithTransactionID:*(a1 + 40) reply:*(a1 + 48)];
}

void __71__TUMomentsControllerXPCClient_endRequestWithTransactionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUMomentsControllerXPCClient_endRequestWithTransactionID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  v3 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__TUMomentsControllerXPCClient_invalidate__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

void __42__TUMomentsControllerXPCClient_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_6);
  [WeakRetained unregisterClient:*(a1 + 32)];
}

- (void)prewarmAudioClientWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__TUMomentsControllerXPCClient_prewarmAudioClientWithCompletion___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__TUMomentsControllerXPCClient_prewarmAudioClientWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__TUMomentsControllerXPCClient_prewarmAudioClientWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 prewarmAudioClientWithCompletion:*(a1 + 40)];
}

void __65__TUMomentsControllerXPCClient_prewarmAudioClientWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__TUMomentsControllerXPCClient_prewarmAudioClientWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startRecordingMessageWithMediaType:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__TUMomentsControllerXPCClient_startRecordingMessageWithMediaType_completion___block_invoke;
  block[3] = &unk_1E7424DD0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

void __78__TUMomentsControllerXPCClient_startRecordingMessageWithMediaType_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__TUMomentsControllerXPCClient_startRecordingMessageWithMediaType_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 startRecordingMessageWithMediaType:*(a1 + 48) completion:*(a1 + 40)];
}

void __78__TUMomentsControllerXPCClient_startRecordingMessageWithMediaType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__TUMomentsControllerXPCClient_startRecordingMessageWithMediaType_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)endRecordingMessageWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUMomentsControllerXPCClient_endRecordingMessageWithUUID_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __71__TUMomentsControllerXPCClient_endRecordingMessageWithUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__TUMomentsControllerXPCClient_endRecordingMessageWithUUID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 endRecordingMessageWithUUID:*(a1 + 40) completion:*(a1 + 48)];
}

void __71__TUMomentsControllerXPCClient_endRecordingMessageWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUMomentsControllerXPCClient_endRecordingMessageWithUUID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)discardVideoMessageWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUMomentsControllerXPCClient_discardVideoMessageWithUUID_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __71__TUMomentsControllerXPCClient_discardVideoMessageWithUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__TUMomentsControllerXPCClient_discardVideoMessageWithUUID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 discardVideoMessageWithUUID:*(a1 + 40) completion:*(a1 + 48)];
}

void __71__TUMomentsControllerXPCClient_discardVideoMessageWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUMomentsControllerXPCClient_discardVideoMessageWithUUID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendVideoMessageWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TUMomentsControllerXPCClient_sendVideoMessageWithRequest_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __71__TUMomentsControllerXPCClient_sendVideoMessageWithRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__TUMomentsControllerXPCClient_sendVideoMessageWithRequest_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 sendVideoMessageWithRequest:*(a1 + 40) completion:*(a1 + 48)];
}

void __71__TUMomentsControllerXPCClient_sendVideoMessageWithRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__TUMomentsControllerXPCClient_sendVideoMessageWithRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveVideoMessageWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUMomentsControllerXPCClient_saveVideoMessageWithUUID_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __68__TUMomentsControllerXPCClient_saveVideoMessageWithUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__TUMomentsControllerXPCClient_saveVideoMessageWithUUID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 saveVideoMessageWithUUID:*(a1 + 40) completion:*(a1 + 48)];
}

void __68__TUMomentsControllerXPCClient_saveVideoMessageWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__TUMomentsControllerXPCClient_saveVideoMessageWithUUID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)resetVideoMessagingWithSessionUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 resetVideoMessagingWithSessionUUID:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)prewarmMediaRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__TUMomentsControllerXPCClient_prewarmMediaRequest_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __63__TUMomentsControllerXPCClient_prewarmMediaRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__TUMomentsControllerXPCClient_prewarmMediaRequest_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 prewarmMediaRequest:*(a1 + 40) completion:*(a1 + 48)];
}

void __63__TUMomentsControllerXPCClient_prewarmMediaRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__TUMomentsControllerXPCClient_prewarmMediaRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startMediaRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TUMomentsControllerXPCClient_startMediaRequest_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __61__TUMomentsControllerXPCClient_startMediaRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__TUMomentsControllerXPCClient_startMediaRequest_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 startMediaRequest:*(a1 + 40) completion:*(a1 + 48)];
}

void __61__TUMomentsControllerXPCClient_startMediaRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__TUMomentsControllerXPCClient_startMediaRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)endMediaRequestWithUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__TUMomentsControllerXPCClient_endMediaRequestWithUUID_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __67__TUMomentsControllerXPCClient_endMediaRequestWithUUID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__TUMomentsControllerXPCClient_endMediaRequestWithUUID_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 endMediaRequestWithUUID:*(a1 + 40) completion:*(a1 + 48)];
}

void __67__TUMomentsControllerXPCClient_endMediaRequestWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_registerConnection
{
  v3 = [(TUMomentsControllerXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUMomentsControllerXPCClient *)self serverWithErrorHandler:&__block_literal_global_57];
  [v4 registerXPCClientWithReply:&__block_literal_global_10_2];
}

void __51__TUMomentsControllerXPCClient__registerConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__TUMomentsControllerXPCClient__registerConnection__block_invoke_cold_1();
  }
}

void __51__TUMomentsControllerXPCClient__registerConnection__block_invoke_8()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "Registered moments connection", v1, 2u);
  }
}

- (NSXPCConnection)xpcConnection
{
  v3 = [(TUMomentsControllerXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.FTLivePhotoService"];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    v7 = +[TUMomentsControllerXPCClient momentsControllerServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v7];

    v8 = +[TUMomentsControllerXPCClient momentsControllerClientXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v8];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke;
    v12[3] = &unk_1E7424998;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke_12;
    v10[3] = &unk_1E7424998;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v10];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Moments XPC connection invalidated (client side)", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  v5 = [*(a1 + 32) delegate];
  [v5 serverDiedForDataSource:*(a1 + 32)];
}

void __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke_2_13;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __45__TUMomentsControllerXPCClient_xpcConnection__block_invoke_2_13(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Moments XPC connection interrupted (client side)", v4, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 serverDiedForDataSource:*(a1 + 32)];
}

- (id)serverWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  dispatch_assert_queue_V2(v5);

  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_6);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v9 = [(TUMomentsControllerXPCClient *)self xpcConnection];
    v8 = [v9 remoteObjectProxyWithErrorHandler:v4];
  }

  return v8;
}

- (id)synchronousServerWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  dispatch_assert_queue_V2(v5);

  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_6);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v9 = [(TUMomentsControllerXPCClient *)self xpcConnection];
    v8 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  return v8;
}

- (void)didUpdateCapabilities:(id)a3 forVideoStreamToken:(int64_t)a4
{
  v6 = a3;
  v7 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUMomentsControllerXPCClient_didUpdateCapabilities_forVideoStreamToken___block_invoke;
  block[3] = &unk_1E7425028;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __74__TUMomentsControllerXPCClient_didUpdateCapabilities_forVideoStreamToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didUpdateCapabilities:*(a1 + 40) forVideoStreamToken:*(a1 + 48)];
}

- (void)willCaptureRemoteRequestFromRequesterID:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__TUMomentsControllerXPCClient_willCaptureRemoteRequestFromRequesterID___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__TUMomentsControllerXPCClient_willCaptureRemoteRequestFromRequesterID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) willCaptureRemoteRequestFromRequesterID:*(a1 + 40)];
}

- (void)didReceiveLocallyRequestedMomentDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__TUMomentsControllerXPCClient_didReceiveLocallyRequestedMomentDescriptor___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __75__TUMomentsControllerXPCClient_didReceiveLocallyRequestedMomentDescriptor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didReceiveLocallyRequestedMomentDescriptor:*(a1 + 40)];
}

- (void)requestSandboxExtensionForURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUMomentsControllerXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUMomentsControllerXPCClient_requestSandboxExtensionForURL_reply___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__TUMomentsControllerXPCClient_requestSandboxExtensionForURL_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) requestSandboxExtensionForURL:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)didFinishProcessingRawVideoMessage:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__TUMomentsControllerXPCClient_didFinishProcessingRawVideoMessage___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__TUMomentsControllerXPCClient_didFinishProcessingRawVideoMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didFinishProcessingRawVideoMessage:*(a1 + 40)];
}

- (void)didFinishRecordingMedia:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__TUMomentsControllerXPCClient_didFinishRecordingMedia___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__TUMomentsControllerXPCClient_didFinishRecordingMedia___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didFinishRecordingMedia:*(a1 + 40)];
}

- (void)didReceiveMessageRecordingError:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__TUMomentsControllerXPCClient_didReceiveMessageRecordingError___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__TUMomentsControllerXPCClient_didReceiveMessageRecordingError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didReceiveMessageRecordingError:*(a1 + 40)];
}

- (void)didReceiveMediaRecordingError:(id)a3
{
  v4 = a3;
  v5 = [(TUMomentsControllerXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__TUMomentsControllerXPCClient_didReceiveMediaRecordingError___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__TUMomentsControllerXPCClient_didReceiveMediaRecordingError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didReceiveMediaRecordingError:*(a1 + 40)];
}

+ (NSXPCInterface)momentsControllerClientXPCInterface
{
  if (momentsControllerClientXPCInterface_onceToken != -1)
  {
    +[TUMomentsControllerXPCClient momentsControllerClientXPCInterface];
  }

  v3 = momentsControllerClientXPCInterface_momentsControllerClientXPCInterface;

  return v3;
}

uint64_t __67__TUMomentsControllerXPCClient_momentsControllerClientXPCInterface__block_invoke()
{
  momentsControllerClientXPCInterface_momentsControllerClientXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09F37D8];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSXPCInterface)momentsControllerServerXPCInterface
{
  if (momentsControllerServerXPCInterface_onceToken != -1)
  {
    +[TUMomentsControllerXPCClient momentsControllerServerXPCInterface];
  }

  v3 = momentsControllerServerXPCInterface_momentsControllerServerXPCInterface;

  return v3;
}

void __67__TUMomentsControllerXPCClient_momentsControllerServerXPCInterface__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A280];
  v1 = momentsControllerServerXPCInterface_momentsControllerServerXPCInterface;
  momentsControllerServerXPCInterface_momentsControllerServerXPCInterface = v0;

  v2 = momentsControllerServerXPCInterface_momentsControllerServerXPCInterface;
  v3 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:3];
  v5 = [v3 setWithArray:{v4, v7, v8}];
  [v2 setClasses:v5 forSelector:sel_sendVideoMessageWithRequest_completion_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (TUMomentsControllerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __120__TUMomentsControllerXPCClient_registerStreamToken_requesterID_remoteIDSDestinations_remoteMomentsAvailable_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error registering stream token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__TUMomentsControllerXPCClient_unregisterStreamToken_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error unregistering stream token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __110__TUMomentsControllerXPCClient_startRequestWithMediaType_forStreamToken_requesteeID_destinationID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error starting request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__TUMomentsControllerXPCClient_endRequestWithTransactionID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error ending request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__TUMomentsControllerXPCClient_prewarmAudioClientWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error prewarming audio client: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__TUMomentsControllerXPCClient_startRecordingMessageWithMediaType_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error starting recording video message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__TUMomentsControllerXPCClient_endRecordingMessageWithUUID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error ending recording video message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__TUMomentsControllerXPCClient_discardVideoMessageWithUUID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error discarding video message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__TUMomentsControllerXPCClient_sendVideoMessageWithRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error sending video message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__TUMomentsControllerXPCClient_saveVideoMessageWithUUID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error saving video message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__TUMomentsControllerXPCClient_resetVideoMessagingWithSessionUUID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error resetting video messaging: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__TUMomentsControllerXPCClient_prewarmMediaRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error prewarming media request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__TUMomentsControllerXPCClient_startMediaRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error Starting media request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__TUMomentsControllerXPCClient__registerConnection__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1956FD000, v0, v1, "Error registering moments connection: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end