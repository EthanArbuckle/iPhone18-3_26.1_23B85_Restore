@interface POServiceCoreConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (void)_connectToService;
- (void)dealloc;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
- (void)verifyPasswordUser:(id)user passwordContext:(id)context completion:(id)completion;
@end

@implementation POServiceCoreConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken_0 != -1)
  {
    +[POServiceCoreConnection xpcQueue];
  }

  v3 = xpcQueue_queue_0;

  return v3;
}

uint64_t __35__POServiceCoreConnection_xpcQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PlatformPSSO.auth-plugin-queue", 0);
  v1 = xpcQueue_queue_0;
  xpcQueue_queue_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[POServiceCoreConnection dealloc]";
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__POServiceCoreConnection_getLoginTypeForUser_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 getLoginTypeForUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __58__POServiceCoreConnection_getLoginTypeForUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __102__POServiceCoreConnection_performPasswordLogin_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

void __116__POServiceCoreConnection_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion
{
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__POServiceCoreConnection_verifyPasswordLogin_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyPasswordLogin:loginCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v14);
  }
}

void __74__POServiceCoreConnection_verifyPasswordLogin_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)verifyPasswordUser:(id)user passwordContext:(id)context completion:(id)completion
{
  userCopy = user;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__POServiceCoreConnection_verifyPasswordUser_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyPasswordUser:userCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, v14);
  }
}

void __73__POServiceCoreConnection_verifyPasswordUser_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, 0, 0, 0, v3);
  }
}

- (BOOL)_connectToService
{
  if (self->_xpcConnection)
  {
    v3 = PO_LOG_POServiceCoreConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceCoreConnection _connectToService];
    }

    return 1;
  }

  v4 = objc_alloc(MEMORY[0x277CCAE80]);
  if (self->_forLogin)
  {
    v5 = @"com.apple.PlatformSSO.login.service-xpc";
  }

  else
  {
    v5 = @"com.apple.PlatformSSO.service-xpc";
  }

  v6 = [v4 initWithMachServiceName:v5 options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v6;

  if (self->_xpcConnection)
  {
    if ([(POServiceCoreConnection *)self uid]> 0x1F4 || [(POServiceCoreConnection *)self uid]== 248)
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POServiceCoreConnection *)self uid]];
    }

    v8 = [POInternalProtocols interfaceWithInternalProtocol:&unk_2870B1AB8];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__POServiceCoreConnection__connectToService__block_invoke;
    v16[3] = &unk_279A3E4B0;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__POServiceCoreConnection__connectToService__block_invoke_64;
    v14[3] = &unk_279A3E4B0;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v14];
    v9 = self->_xpcConnection;
    v10 = +[POServiceCoreConnection xpcQueue];
    [(NSXPCConnection *)v9 _setQueue:v10];

    [(NSXPCConnection *)self->_xpcConnection resume];
    v11 = PO_LOG_POServiceCoreConnection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [POServiceCoreConnection _connectToService];
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    return 1;
  }

  v13 = PO_LOG_POServiceCoreConnection();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [PODaemonCoreConnection _connectToService];
  }

  return 0;
}

void __44__POServiceCoreConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = PO_LOG_POServiceCoreConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __44__POServiceCoreConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __44__POServiceCoreConnection__connectToService__block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PO_LOG_POServiceCoreConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43__PODaemonCoreConnection__connectToService__block_invoke_77_cold_1();
    }
  }
}

- (void)_connectToService
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "%{public}@: new XPC connection", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__POServiceCoreConnection__connectToService__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6(&dword_25E8B1000, v0, v1, "%{public}@: XPC connection invalidated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end