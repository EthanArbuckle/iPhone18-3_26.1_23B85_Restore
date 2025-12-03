@interface POUIServiceConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (POUIServiceConnection)init;
- (void)dealloc;
- (void)deviceStatusWithCompletion:(id)completion;
- (void)init;
- (void)startAction:(int64_t)action forUserName:(id)name completion:(id)completion;
- (void)startDeviceAction:(int64_t)action completion:(id)completion;
- (void)statusForUser:(id)user completion:(id)completion;
@end

@implementation POUIServiceConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken_2 != -1)
  {
    +[POUIServiceConnection xpcQueue];
  }

  v3 = xpcQueue_queue_2;

  return v3;
}

uint64_t __33__POUIServiceConnection_xpcQueue__block_invoke()
{
  xpcQueue_queue_2 = dispatch_queue_create("com.apple.PlatformPSSO.ui-settings-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (POUIServiceConnection)init
{
  v3 = PO_LOG_POUIServiceConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POUIServiceConnection init];
  }

  v7.receiver = self;
  v7.super_class = POUIServiceConnection;
  v4 = [(POUIServiceConnection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(POUIServiceConnection *)v4 _connectToService];
  }

  return v5;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POUIServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POUIServiceConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__POUIServiceConnection_deviceStatusWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 deviceStatusWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __52__POUIServiceConnection_deviceStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POUIServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)statusForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(POUIServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POUIServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__POUIServiceConnection_statusForUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 statusForUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __50__POUIServiceConnection_statusForUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POUIServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)startAction:(int64_t)action forUserName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([(POUIServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POUIServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__POUIServiceConnection_startAction_forUserName_completion___block_invoke;
    v14[3] = &unk_279A3A270;
    v11 = completionCopy;
    v15 = v11;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 startAction:action forUserName:nameCopy completion:v11];
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __60__POUIServiceConnection_startAction_forUserName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POUIServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)startDeviceAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  if ([(POUIServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POUIServiceConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__POUIServiceConnection_startDeviceAction_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = completionCopy;
    v12 = v8;
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 startDeviceAction:action completion:v8];
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __54__POUIServiceConnection_startDeviceAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POUIServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (BOOL)_connectToService
{
  if (self->_xpcConnection)
  {
    v3 = PO_LOG_POUIServiceConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    return 1;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PlatformSSO.settings.service-xpc" options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  if (self->_xpcConnection)
  {
    if ([(POUIServiceConnection *)self uid])
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POUIServiceConnection *)self uid]];
    }

    v6 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_287096150];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__POUIServiceConnection__connectToService__block_invoke;
    v14[3] = &unk_279A3A298;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__POUIServiceConnection__connectToService__block_invoke_64;
    v12[3] = &unk_279A3A298;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v12];
    v7 = self->_xpcConnection;
    v8 = +[POUIServiceConnection xpcQueue];
    [(NSXPCConnection *)v7 _setQueue:v8];

    [(NSXPCConnection *)self->_xpcConnection resume];
    v9 = PO_LOG_POUIServiceConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    return 1;
  }

  v11 = PO_LOG_POUIServiceConnection();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [POServiceConnection _connectToService];
  }

  return 0;
}

void __42__POUIServiceConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = PO_LOG_POUIServiceConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__POServiceLoginManagerConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __42__POUIServiceConnection__connectToService__block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PO_LOG_POUIServiceConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__POServiceConnection__connectToService__block_invoke_83_cold_1();
    }
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end