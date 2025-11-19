@interface TUNeighborhoodActivityConduitXPCClient
+ (NSXPCInterface)neighborhoodActivityClientXPCInterface;
+ (NSXPCInterface)neighborhoodActivityServerXPCInterface;
+ (id)allowedXPCClasses;
- (NSXPCConnection)xpcConnection;
- (TUNeighborhoodActivityConduitXPCClient)init;
- (TUNeighborhoodActivityConduitXPCClientDelegate)delegate;
- (id)server;
- (id)serverWithErrorHandler:(id)a3;
- (void)activeSplitSessionTVDeviceWithCompletion:(id)a3;
- (void)approveSplitSessionForConversation:(id)a3 requestedFromDevice:(id)a4 pullContext:(int64_t)a5 completion:(id)a6;
- (void)cancelSplitSessionApproval;
- (void)dealloc;
- (void)disconnectTVDevice:(id)a3 completion:(id)a4;
- (void)ensureConduitInitialized:(id)a3;
- (void)ensureConnection;
- (void)handoffConversation:(id)a3 toTVDevice:(id)a4 completion:(id)a5;
- (void)inviteTVDevice:(id)a3 toConversationWithUUID:(id)a4 completion:(id)a5;
- (void)isRingingFaceTimeCallsOnConnectedTVDeviceChanged:(BOOL)a3;
- (void)isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:(id)a3;
- (void)nearbyTVDevicesWithCompletion:(id)a3;
- (void)pullConversation:(id)a3 fromTVDevice:(id)a4 completion:(id)a5;
- (void)registerApprovalClientEnabled:(BOOL)a3;
- (void)respondToSuggestionWithResult:(id)a3 completion:(id)a4;
- (void)setSuggestedTVDeviceName:(id)a3 completion:(id)a4;
- (void)splitSessionUpdated;
- (void)startConversationWith:(id)a3 on:(id)a4 completion:(id)a5;
- (void)suggestionUpdated:(id)a3;
- (void)suggestionWithCompletion:(id)a3;
- (void)tvDeviceAppeared:(id)a3;
- (void)tvDeviceDisappeared:(id)a3;
@end

@implementation TUNeighborhoodActivityConduitXPCClient

- (NSXPCConnection)xpcConnection
{
  if (+[TUNeighborhoodActivityConduit isConduitAvailable])
  {
    xpcConnection = self->_xpcConnection;
    if (!xpcConnection)
    {
      v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.NeighborhoodActivityConduitService" options:0];
      v5 = self->_xpcConnection;
      self->_xpcConnection = v4;

      v6 = [objc_opt_class() neighborhoodActivityServerXPCInterface];
      [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

      v7 = [objc_opt_class() neighborhoodActivityClientXPCInterface];
      [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v7];

      [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
      objc_initWeak(&location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke;
      v14[3] = &unk_1E7424998;
      objc_copyWeak(&v15, &location);
      [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v14];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke_11;
      v12[3] = &unk_1E7424998;
      objc_copyWeak(&v13, &location);
      [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v12];
      [(NSXPCConnection *)self->_xpcConnection resume];
      v8 = [(TUNeighborhoodActivityConduitXPCClient *)self delegate];
      [v8 connectionEstablishedForClient:self];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      xpcConnection = self->_xpcConnection;
    }

    v9 = xpcConnection;
  }

  else
  {
    v10 = TUConduitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(TUNeighborhoodActivityConduitXPCClient *)v10 xpcConnection];
    }

    v9 = 0;
  }

  return v9;
}

- (void)ensureConnection
{
  v3 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TUNeighborhoodActivityConduitXPCClient_ensureConnection__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__TUNeighborhoodActivityConduitXPCClient_ensureConnection__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) xpcConnection];

  if (!v1)
  {
    v2 = TUConduitLog();
    if (os_log_type_enabled(v2, 0x90u))
    {
      __58__TUNeighborhoodActivityConduitXPCClient_ensureConnection__block_invoke_cold_1(v2);
    }
  }
}

- (TUNeighborhoodActivityConduitXPCClient)init
{
  v10.receiver = self;
  v10.super_class = TUNeighborhoodActivityConduitXPCClient;
  v2 = [(TUNeighborhoodActivityConduitXPCClient *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyservices.neighborhoodactivityconduitxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    objc_initWeak(&location, v2);
    v5 = v2->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__TUNeighborhoodActivityConduitXPCClient_init__block_invoke;
    v7[3] = &unk_1E7424C60;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("NeighborhoodActivityConduitClientsShouldConnectNotification", &v2->_token, v5, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __46__TUNeighborhoodActivityConduitXPCClient_init__block_invoke(uint64_t a1)
{
  v2 = TUConduitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "TUConduitXPCClient: NeighborhoodActivityConduit restarted and requested re-connection", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = TUConduitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__TUNeighborhoodActivityConduitXPCClient_init__block_invoke_cold_1(v4);
    }

    v5 = [WeakRetained delegate];
    v6 = v5;
    if (WeakRetained[4])
    {
      [v5 connectionEstablishedForClient:WeakRetained];
    }

    else
    {
      [WeakRetained xpcConnection];
    }
  }
}

- (void)dealloc
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating TUNeighborhoodActivityConduitXPCClient", buf, 2u);
  }

  notify_cancel(self->_token);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v4.receiver = self;
  v4.super_class = TUNeighborhoodActivityConduitXPCClient;
  [(TUNeighborhoodActivityConduitXPCClient *)&v4 dealloc];
}

- (void)nearbyTVDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 nearbyTVDevicesWithCompletion:*(a1 + 40)];
}

void __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__TUNeighborhoodActivityConduitXPCClient_isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __98__TUNeighborhoodActivityConduitXPCClient_isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__TUNeighborhoodActivityConduitXPCClient_isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:*(a1 + 40)];
}

void __98__TUNeighborhoodActivityConduitXPCClient_isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)activeSplitSessionTVDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__TUNeighborhoodActivityConduitXPCClient_activeSplitSessionTVDeviceWithCompletion___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __83__TUNeighborhoodActivityConduitXPCClient_activeSplitSessionTVDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__TUNeighborhoodActivityConduitXPCClient_activeSplitSessionTVDeviceWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 activeSplitSessionTVDeviceWithCompletion:*(a1 + 40)];
}

void __83__TUNeighborhoodActivityConduitXPCClient_activeSplitSessionTVDeviceWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __83__TUNeighborhoodActivityConduitXPCClient_activeSplitSessionTVDeviceWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setSuggestedTVDeviceName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__TUNeighborhoodActivityConduitXPCClient_setSuggestedTVDeviceName_completion___block_invoke;
  block[3] = &unk_1E7425F68;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __78__TUNeighborhoodActivityConduitXPCClient_setSuggestedTVDeviceName_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__TUNeighborhoodActivityConduitXPCClient_setSuggestedTVDeviceName_completion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v5 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 setSuggestedTVDeviceName:*(a1 + 40) completion:*(a1 + 48)];
}

void __78__TUNeighborhoodActivityConduitXPCClient_setSuggestedTVDeviceName_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __78__TUNeighborhoodActivityConduitXPCClient_setSuggestedTVDeviceName_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)suggestionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__TUNeighborhoodActivityConduitXPCClient_suggestionWithCompletion___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__TUNeighborhoodActivityConduitXPCClient_suggestionWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__TUNeighborhoodActivityConduitXPCClient_suggestionWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 suggestionWithCompletion:*(a1 + 40)];
}

void __67__TUNeighborhoodActivityConduitXPCClient_suggestionWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __67__TUNeighborhoodActivityConduitXPCClient_suggestionWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)inviteTVDevice:(id)a3 toConversationWithUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__TUNeighborhoodActivityConduitXPCClient_inviteTVDevice_toConversationWithUUID_completion___block_invoke;
  v15[3] = &unk_1E74264F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __91__TUNeighborhoodActivityConduitXPCClient_inviteTVDevice_toConversationWithUUID_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__TUNeighborhoodActivityConduitXPCClient_inviteTVDevice_toConversationWithUUID_completion___block_invoke_2;
  v4[3] = &unk_1E74256A8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 inviteTVDevice:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
}

void __91__TUNeighborhoodActivityConduitXPCClient_inviteTVDevice_toConversationWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __91__TUNeighborhoodActivityConduitXPCClient_inviteTVDevice_toConversationWithUUID_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)disconnectTVDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__TUNeighborhoodActivityConduitXPCClient_disconnectTVDevice_completion___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __72__TUNeighborhoodActivityConduitXPCClient_disconnectTVDevice_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __72__TUNeighborhoodActivityConduitXPCClient_disconnectTVDevice_completion___block_invoke_2;
  v7 = &unk_1E74264D0;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:&v4];
  [v3 disconnectTVDevice:*(a1 + 40) completion:{*(a1 + 48), v4, v5, v6, v7}];
}

void __72__TUNeighborhoodActivityConduitXPCClient_disconnectTVDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __72__TUNeighborhoodActivityConduitXPCClient_disconnectTVDevice_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)respondToSuggestionWithResult:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__TUNeighborhoodActivityConduitXPCClient_respondToSuggestionWithResult_completion___block_invoke;
  block[3] = &unk_1E7426458;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __83__TUNeighborhoodActivityConduitXPCClient_respondToSuggestionWithResult_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __83__TUNeighborhoodActivityConduitXPCClient_respondToSuggestionWithResult_completion___block_invoke_2;
  v7 = &unk_1E74264D0;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 serverWithErrorHandler:&v4];
  [v3 respondToSuggestionWithResult:*(a1 + 40) completion:{*(a1 + 48), v4, v5, v6, v7}];
}

void __83__TUNeighborhoodActivityConduitXPCClient_respondToSuggestionWithResult_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __83__TUNeighborhoodActivityConduitXPCClient_respondToSuggestionWithResult_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerApprovalClientEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUConduitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    *buf = 136315138;
    v12 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Sending approval registration: %s", buf, 0xCu);
  }

  v7 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__TUNeighborhoodActivityConduitXPCClient_registerApprovalClientEnabled___block_invoke;
  v9[3] = &unk_1E7425000;
  v9[4] = self;
  v10 = v3;
  dispatch_async(v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __72__TUNeighborhoodActivityConduitXPCClient_registerApprovalClientEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverWithErrorHandler:&__block_literal_global_37];
  [v2 registerSplitSessionApprovalEnabled:*(a1 + 40)];
}

void __72__TUNeighborhoodActivityConduitXPCClient_registerApprovalClientEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUConduitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__TUNeighborhoodActivityConduitXPCClient_registerApprovalClientEnabled___block_invoke_2_cold_1();
  }
}

- (void)ensureConduitInitialized:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__TUNeighborhoodActivityConduitXPCClient_ensureConduitInitialized___block_invoke;
  v7[3] = &unk_1E7424E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__TUNeighborhoodActivityConduitXPCClient_ensureConduitInitialized___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__TUNeighborhoodActivityConduitXPCClient_ensureConduitInitialized___block_invoke_2;
  v4[3] = &unk_1E7424A10;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 ensureConduitInitialized:*(a1 + 40)];
}

void __67__TUNeighborhoodActivityConduitXPCClient_ensureConduitInitialized___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __67__TUNeighborhoodActivityConduitXPCClient_ensureConduitInitialized___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handoffConversation:(id)a3 toTVDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__TUNeighborhoodActivityConduitXPCClient_handoffConversation_toTVDevice_completion___block_invoke;
  v15[3] = &unk_1E74264F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __84__TUNeighborhoodActivityConduitXPCClient_handoffConversation_toTVDevice_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__TUNeighborhoodActivityConduitXPCClient_handoffConversation_toTVDevice_completion___block_invoke_2;
  v4[3] = &unk_1E74256A8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 handoffConversation:*(a1 + 40) toTVDevice:*(a1 + 48) completion:*(a1 + 56)];
}

void __84__TUNeighborhoodActivityConduitXPCClient_handoffConversation_toTVDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __84__TUNeighborhoodActivityConduitXPCClient_handoffConversation_toTVDevice_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)pullConversation:(id)a3 fromTVDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__TUNeighborhoodActivityConduitXPCClient_pullConversation_fromTVDevice_completion___block_invoke;
  v15[3] = &unk_1E74264F8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __83__TUNeighborhoodActivityConduitXPCClient_pullConversation_fromTVDevice_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__TUNeighborhoodActivityConduitXPCClient_pullConversation_fromTVDevice_completion___block_invoke_2;
  v4[3] = &unk_1E74256A8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v3 = [v2 serverWithErrorHandler:v4];
  [v3 pullConversation:*(a1 + 40) fromTVDevice:*(a1 + 48) completion:*(a1 + 56)];
}

void __83__TUNeighborhoodActivityConduitXPCClient_pullConversation_fromTVDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __83__TUNeighborhoodActivityConduitXPCClient_pullConversation_fromTVDevice_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)startConversationWith:(id)a3 on:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__TUNeighborhoodActivityConduitXPCClient_startConversationWith_on_completion___block_invoke;
  v15[3] = &unk_1E7425680;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __78__TUNeighborhoodActivityConduitXPCClient_startConversationWith_on_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __78__TUNeighborhoodActivityConduitXPCClient_startConversationWith_on_completion___block_invoke_2;
  v7 = &unk_1E74264D0;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v3 = [v2 serverWithErrorHandler:&v4];
  [v3 startConversationWith:*(a1 + 48) on:*(a1 + 40) completion:{*(a1 + 56), v4, v5, v6, v7}];
}

void __78__TUNeighborhoodActivityConduitXPCClient_startConversationWith_on_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TUConduitLog();
  if (os_log_type_enabled(v4, 0x90u))
  {
    __78__TUNeighborhoodActivityConduitXPCClient_startConversationWith_on_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)splitSessionUpdated
{
  v3 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TUNeighborhoodActivityConduitXPCClient_splitSessionUpdated__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

void __61__TUNeighborhoodActivityConduitXPCClient_splitSessionUpdated__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 splitSessionUpdated];
}

- (void)tvDeviceAppeared:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__TUNeighborhoodActivityConduitXPCClient_tvDeviceAppeared___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__TUNeighborhoodActivityConduitXPCClient_tvDeviceAppeared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 tvDeviceAppeared:*(a1 + 40)];
}

- (void)tvDeviceDisappeared:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__TUNeighborhoodActivityConduitXPCClient_tvDeviceDisappeared___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__TUNeighborhoodActivityConduitXPCClient_tvDeviceDisappeared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 tvDeviceDisappeared:*(a1 + 40)];
}

- (void)suggestionUpdated:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__TUNeighborhoodActivityConduitXPCClient_suggestionUpdated___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__TUNeighborhoodActivityConduitXPCClient_suggestionUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 suggestionUpdated:*(a1 + 40)];
}

- (void)isRingingFaceTimeCallsOnConnectedTVDeviceChanged:(BOOL)a3
{
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__TUNeighborhoodActivityConduitXPCClient_isRingingFaceTimeCallsOnConnectedTVDeviceChanged___block_invoke;
  v6[3] = &unk_1E7425000;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __91__TUNeighborhoodActivityConduitXPCClient_isRingingFaceTimeCallsOnConnectedTVDeviceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 isRingingFaceTimeCallsOnConnectedTVDeviceChanged:*(a1 + 40)];
}

- (void)approveSplitSessionForConversation:(id)a3 requestedFromDevice:(id)a4 pullContext:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__TUNeighborhoodActivityConduitXPCClient_approveSplitSessionForConversation_requestedFromDevice_pullContext_completion___block_invoke;
  block[3] = &unk_1E74267E0;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __120__TUNeighborhoodActivityConduitXPCClient_approveSplitSessionForConversation_requestedFromDevice_pullContext_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 approveSplitSessionForConversation:*(a1 + 40) device:*(a1 + 48) pullContext:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)cancelSplitSessionApproval
{
  v3 = [(TUNeighborhoodActivityConduitXPCClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUNeighborhoodActivityConduitXPCClient_cancelSplitSessionApproval__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

void __68__TUNeighborhoodActivityConduitXPCClient_cancelSplitSessionApproval__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 cancelSplitSessionApproval];
}

void __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = TUConduitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v8 = 136446210;
    Name = class_getName(v4);
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: XPC connection invalidated", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = *MEMORY[0x1E69E9840];
}

void __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke_2_12;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __55__TUNeighborhoodActivityConduitXPCClient_xpcConnection__block_invoke_2_12(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUConduitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v9 = 136446210;
    Name = class_getName(v4);
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: XPC connection interrupted", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;

  v7 = [*(a1 + 32) delegate];
  [v7 connectionLostForClient:*(a1 + 32)];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)server
{
  v2 = [(TUNeighborhoodActivityConduitXPCClient *)self xpcConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)serverWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUNeighborhoodActivityConduitXPCClient *)self xpcConnection];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v8 = TUMakeNeighborhoodConduitError(4, 0);
    v4[2](v4, v8);

    v7 = 0;
  }

  return v7;
}

+ (id)allowedXPCClasses
{
  v15 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v15 setWithObjects:{v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

+ (NSXPCInterface)neighborhoodActivityClientXPCInterface
{
  if (neighborhoodActivityClientXPCInterface_onceToken != -1)
  {
    +[TUNeighborhoodActivityConduitXPCClient neighborhoodActivityClientXPCInterface];
  }

  v3 = neighborhoodActivityClientXPCInterface_interface;

  return v3;
}

void __80__TUNeighborhoodActivityConduitXPCClient_neighborhoodActivityClientXPCInterface__block_invoke()
{
  v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09E4BC0];
  v11 = neighborhoodActivityClientXPCInterface_interface;
  neighborhoodActivityClientXPCInterface_interface = v10;

  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [neighborhoodActivityClientXPCInterface_interface setClasses:v9 forSelector:sel_tvDeviceAppeared_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityClientXPCInterface_interface setClasses:v9 forSelector:sel_tvDeviceDisappeared_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityClientXPCInterface_interface setClasses:v9 forSelector:sel_suggestionUpdated_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityClientXPCInterface_interface setClasses:v13 forSelector:sel_approveSplitSessionForConversation_requestedFromDevice_pullContext_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityClientXPCInterface_interface setClasses:v9 forSelector:sel_approveSplitSessionForConversation_requestedFromDevice_pullContext_completion_ argumentIndex:1 ofReply:0];
  [neighborhoodActivityClientXPCInterface_interface setClasses:v12 forSelector:sel_approveSplitSessionForConversation_requestedFromDevice_pullContext_completion_ argumentIndex:1 ofReply:1];
}

+ (NSXPCInterface)neighborhoodActivityServerXPCInterface
{
  if (neighborhoodActivityServerXPCInterface_onceToken != -1)
  {
    +[TUNeighborhoodActivityConduitXPCClient neighborhoodActivityServerXPCInterface];
  }

  v3 = neighborhoodActivityServerXPCInterface_interface;

  return v3;
}

void __80__TUNeighborhoodActivityConduitXPCClient_neighborhoodActivityServerXPCInterface__block_invoke()
{
  v25 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A100];
  v20 = neighborhoodActivityServerXPCInterface_interface;
  neighborhoodActivityServerXPCInterface_interface = v19;

  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_nearbyTVDevicesWithCompletion_ argumentIndex:0 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_nearbyTVDevicesWithCompletion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_activeSplitSessionTVDeviceWithCompletion_ argumentIndex:0 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_activeSplitSessionTVDeviceWithCompletion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_suggestionWithCompletion_ argumentIndex:0 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_suggestionWithCompletion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_setSuggestedTVDeviceName_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_setSuggestedTVDeviceName_completion_ argumentIndex:0 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_setSuggestedTVDeviceName_completion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_inviteTVDevice_toConversation_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v25 forSelector:sel_inviteTVDevice_toConversation_completion_ argumentIndex:1 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_inviteTVDevice_toConversation_completion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_disconnectTVDevice_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_disconnectTVDevice_completion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_respondToSuggestionWithResult_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_respondToSuggestionWithResult_completion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v25 forSelector:sel_handoffConversation_toTVDevice_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_handoffConversation_toTVDevice_completion_ argumentIndex:1 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_handoffConversation_toTVDevice_completion_ argumentIndex:1 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v25 forSelector:sel_pullConversation_fromTVDevice_completion_ argumentIndex:0 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_pullConversation_fromTVDevice_completion_ argumentIndex:1 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_pullConversation_fromTVDevice_completion_ argumentIndex:1 ofReply:1];
  v21 = neighborhoodActivityServerXPCInterface_interface;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:sel_startConversationWith_on_completion_ argumentIndex:0 ofReply:0];

  [neighborhoodActivityServerXPCInterface_interface setClasses:v10 forSelector:sel_pullConversation_fromTVDevice_completion_ argumentIndex:1 ofReply:0];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v25 forSelector:sel_pullConversation_fromTVDevice_completion_ argumentIndex:0 ofReply:1];
  [neighborhoodActivityServerXPCInterface_interface setClasses:v18 forSelector:sel_pullConversation_fromTVDevice_completion_ argumentIndex:1 ofReply:1];
}

- (TUNeighborhoodActivityConduitXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __72__TUNeighborhoodActivityConduitXPCClient_nearbyTVDevicesWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1956FD000, v0, v1, "Error fetching nearby TVs: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __83__TUNeighborhoodActivityConduitXPCClient_activeSplitSessionTVDeviceWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1956FD000, v0, v1, "Error fetching active split session TV: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__TUNeighborhoodActivityConduitXPCClient_setSuggestedTVDeviceName_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1956FD000, v0, v1, "Error setting suggested TV name: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__TUNeighborhoodActivityConduitXPCClient_suggestionWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1956FD000, v0, v1, "Error fetching suggested TV: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __91__TUNeighborhoodActivityConduitXPCClient_inviteTVDevice_toConversationWithUUID_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __72__TUNeighborhoodActivityConduitXPCClient_disconnectTVDevice_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __83__TUNeighborhoodActivityConduitXPCClient_respondToSuggestionWithResult_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __72__TUNeighborhoodActivityConduitXPCClient_registerApprovalClientEnabled___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1956FD000, v0, OS_LOG_TYPE_ERROR, "Error registering as approval handler: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __67__TUNeighborhoodActivityConduitXPCClient_ensureConduitInitialized___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1956FD000, v0, v1, "Error validating conduit state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __84__TUNeighborhoodActivityConduitXPCClient_handoffConversation_toTVDevice_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __83__TUNeighborhoodActivityConduitXPCClient_pullConversation_fromTVDevice_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __78__TUNeighborhoodActivityConduitXPCClient_startConversationWith_on_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

@end