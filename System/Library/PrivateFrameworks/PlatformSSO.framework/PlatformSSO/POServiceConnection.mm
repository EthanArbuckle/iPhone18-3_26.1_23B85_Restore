@interface POServiceConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (void)_connectToService;
- (void)createUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion;
- (void)dealloc;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion;
- (void)retainContextForUserName:(id)name context:(id)context completion:(id)completion;
- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion;
- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
- (void)verifyUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion;
@end

@implementation POServiceConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken != -1)
  {
    +[POServiceConnection xpcQueue];
  }

  v3 = xpcQueue_queue;

  return v3;
}

uint64_t __31__POServiceConnection_xpcQueue__block_invoke()
{
  xpcQueue_queue = dispatch_queue_create("com.apple.PlatformPSSO.auth-plugin-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[POServiceConnection dealloc]";
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 getLoginTypeForUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
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

void __98__POServiceConnection_performPasswordLogin_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

void __112__POServiceConnection_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
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
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__POServiceConnection_verifyPasswordLogin_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyPasswordLogin:loginCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v14);
  }
}

void __70__POServiceConnection_verifyPasswordLogin_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)createUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  cardContextCopy = cardContext;
  idCopy = id;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__POServiceConnection_createUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 createUserAccount:accountCopy passwordContext:contextCopy smartCardContext:cardContextCopy tokenId:idCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, 0, v20);
  }
}

void __93__POServiceConnection_createUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, v3);
  }
}

void __130__POServiceConnection_authenticateTemporaryUserAccount_forLogin_passwordContext_smartCardContext_tokenId_loginContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)verifyUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  cardContextCopy = cardContext;
  idCopy = id;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__POServiceConnection_verifyUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 verifyUserAccount:accountCopy passwordContext:contextCopy smartCardContext:cardContextCopy tokenId:idCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, 0, v20);
  }
}

void __93__POServiceConnection_verifyUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, v3);
  }
}

- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__POServiceConnection_saveCredentialForUserName_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveCredentialForUserName:nameCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __76__POServiceConnection_saveCredentialForUserName_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
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

- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion
{
  usernameCopy = username;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__POServiceConnection_passwordDidChangeForUsername_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 passwordDidChangeForUsername:usernameCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __79__POServiceConnection_passwordDidChangeForUsername_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
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

void __133__POServiceConnection_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)retainContextForUserName:(id)name context:(id)context completion:(id)completion
{
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__POServiceConnection_retainContextForUserName_context_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 retainContextForUserName:nameCopy context:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __67__POServiceConnection_retainContextForUserName_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion
{
  passwordCopy = password;
  dataCopy = data;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__POServiceConnection_updateLocalAccountPassword_passwordContextData_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 updateLocalAccountPassword:passwordCopy passwordContextData:dataCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 3, v14);
  }
}

void __81__POServiceConnection_updateLocalAccountPassword_passwordContextData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 3, v3);
  }
}

void __84__POServiceConnection_configurationDidChangeAndRemovedExtension_removed_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
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

void __65__POServiceConnection_updateRegistrationState_failed_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (BOOL)_connectToService
{
  if (self->_xpcConnection)
  {
    v3 = PO_LOG_POServiceConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceConnection _connectToService];
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
    if ([(POServiceConnection *)self uid]> 0x1F4 || [(POServiceConnection *)self uid]== 248)
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POServiceConnection *)self uid]];
    }

    v8 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_28708F1E0];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__POServiceConnection__connectToService__block_invoke;
    v16[3] = &unk_279A3A298;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__POServiceConnection__connectToService__block_invoke_83;
    v14[3] = &unk_279A3A298;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v14];
    v9 = self->_xpcConnection;
    v10 = +[POServiceConnection xpcQueue];
    [(NSXPCConnection *)v9 _setQueue:v10];

    [(NSXPCConnection *)self->_xpcConnection resume];
    v11 = PO_LOG_POServiceConnection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [POServiceConnection _connectToService];
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    return 1;
  }

  v13 = PO_LOG_POServiceConnection();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [POServiceConnection _connectToService];
  }

  return 0;
}

void __40__POServiceConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = PO_LOG_POServiceConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __40__POServiceConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __40__POServiceConnection__connectToService__block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PO_LOG_POServiceConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__POServiceConnection__connectToService__block_invoke_83_cold_1();
    }
  }
}

void __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "XPC error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_connectToService
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "%{public}@: failed to create XPC connection", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__POServiceConnection__connectToService__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_25E831000, v0, v1, "%{public}@: XPC connection invalidated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__POServiceConnection__connectToService__block_invoke_83_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "%{public}@: XPC connection interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end