@interface POServiceLoginManagerConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (POServiceLoginManagerConnection)initWithUid:(unsigned int)a3;
- (void)_connectToService;
- (void)authenticationMethodWithCompletion:(id)a3;
- (void)completeRotationKeyForKeyType:(int64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)deviceRegistrationsNeedsRepairWithCompletion:(id)a3;
- (void)invalidate;
- (void)isDeviceRegisteredWithCompletion:(id)a3;
- (void)isUserRegisteredWithCompletion:(id)a3;
- (void)loginConfigurationWithCompletion:(id)a3;
- (void)loginUserNameWithCompletion:(id)a3;
- (void)registrationTokenWithCompletion:(id)a3;
- (void)resetDeviceKeysWithCompletion:(id)a3;
- (void)resetUserSecureEnclaveKeyWithCompletion:(id)a3;
- (void)rotateKeyForKeyType:(int64_t)a3 completion:(id)a4;
- (void)secIdentityProxyEndpointForKeyType:(int64_t)a3 completion:(id)a4;
- (void)secKeyProxyEndpointForKeyType:(int64_t)a3 completion:(id)a4;
- (void)setCertificateData:(id)a3 keyType:(int64_t)a4 completion:(id)a5;
- (void)setLoginConfiguration:(id)a3 completion:(id)a4;
- (void)setLoginUserName:(id)a3 completion:(id)a4;
- (void)setRegistrationToken:(id)a3 completion:(id)a4;
- (void)setSsoTokens:(id)a3 completion:(id)a4;
- (void)setUserLoginConfiguration:(id)a3 completion:(id)a4;
- (void)ssoTokensWithCompletion:(id)a3;
- (void)userLoginConfigurationWithCompletion:(id)a3;
- (void)userNeedsReauthenticationWithCompletion:(id)a3;
- (void)userRegistrationsNeedsRepairWithCompletion:(id)a3;
@end

@implementation POServiceLoginManagerConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken_0 != -1)
  {
    +[POServiceLoginManagerConnection xpcQueue];
  }

  v3 = xpcQueue_queue_0;

  return v3;
}

uint64_t __43__POServiceLoginManagerConnection_xpcQueue__block_invoke()
{
  xpcQueue_queue_0 = dispatch_queue_create("com.apple.PlatformPSSO.login-manager-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (POServiceLoginManagerConnection)initWithUid:(unsigned int)a3
{
  v5 = PO_LOG_POServiceLoginManagerConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POServiceLoginManagerConnection *)self initWithUid:a3, v5];
  }

  v9.receiver = self;
  v9.super_class = POServiceLoginManagerConnection;
  v6 = [(POServiceLoginManagerConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_uid = a3;
    [(POServiceLoginManagerConnection *)v6 _connectToService];
  }

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceRegisteredWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__POServiceLoginManagerConnection_isDeviceRegisteredWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 isDeviceRegisteredWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __68__POServiceLoginManagerConnection_isDeviceRegisteredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)isUserRegisteredWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__POServiceLoginManagerConnection_isUserRegisteredWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 isUserRegisteredWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __66__POServiceLoginManagerConnection_isUserRegisteredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)registrationTokenWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__POServiceLoginManagerConnection_registrationTokenWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 registrationTokenWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __67__POServiceLoginManagerConnection_registrationTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)setRegistrationToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v8 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__POServiceLoginManagerConnection_setRegistrationToken_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setRegistrationToken:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __67__POServiceLoginManagerConnection_setRegistrationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)authenticationMethodWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__POServiceLoginManagerConnection_authenticationMethodWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 authenticationMethodWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 1000, v8);
  }
}

void __70__POServiceLoginManagerConnection_authenticationMethodWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1000, v3);
  }
}

- (void)ssoTokensWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__POServiceLoginManagerConnection_ssoTokensWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 ssoTokensWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __59__POServiceLoginManagerConnection_ssoTokensWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)setSsoTokens:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v8 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__POServiceLoginManagerConnection_setSsoTokens_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setSsoTokens:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __59__POServiceLoginManagerConnection_setSsoTokens_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)loginConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__POServiceLoginManagerConnection_loginConfigurationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 loginConfigurationWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __68__POServiceLoginManagerConnection_loginConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)setLoginConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v8 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__POServiceLoginManagerConnection_setLoginConfiguration_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setLoginConfiguration:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __68__POServiceLoginManagerConnection_setLoginConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)setCertificateData:(id)a3 keyType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v10 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__POServiceLoginManagerConnection_setCertificateData_keyType_completion___block_invoke;
    v14[3] = &unk_279A3A270;
    v11 = v9;
    v15 = v11;
    v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 setCertificateData:v8 keyType:a4 completion:v11];
  }

  else if (v9)
  {
    v13 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v9 + 2))(v9, 0, v13);
  }
}

void __73__POServiceLoginManagerConnection_setCertificateData_keyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)secKeyProxyEndpointForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v7 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__POServiceLoginManagerConnection_secKeyProxyEndpointForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = v6;
    v12 = v8;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 secKeyProxyEndpointForKeyType:a3 completion:v8];
  }

  else if (v6)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v6 + 2))(v6, 0, v10);
  }
}

void __76__POServiceLoginManagerConnection_secKeyProxyEndpointForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)secIdentityProxyEndpointForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v7 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__POServiceLoginManagerConnection_secIdentityProxyEndpointForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = v6;
    v12 = v8;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 secIdentityProxyEndpointForKeyType:a3 completion:v8];
  }

  else if (v6)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v6 + 2))(v6, 0, v10);
  }
}

void __81__POServiceLoginManagerConnection_secIdentityProxyEndpointForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

void __79__POServiceLoginManagerConnection_attestKey_pending_clientDataHash_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)userNeedsReauthenticationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__POServiceLoginManagerConnection_userNeedsReauthenticationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 userNeedsReauthenticationWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __75__POServiceLoginManagerConnection_userNeedsReauthenticationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)deviceRegistrationsNeedsRepairWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__POServiceLoginManagerConnection_deviceRegistrationsNeedsRepairWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 deviceRegistrationsNeedsRepairWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __80__POServiceLoginManagerConnection_deviceRegistrationsNeedsRepairWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)userRegistrationsNeedsRepairWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__POServiceLoginManagerConnection_userRegistrationsNeedsRepairWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 userRegistrationsNeedsRepairWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __78__POServiceLoginManagerConnection_userRegistrationsNeedsRepairWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)resetDeviceKeysWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__POServiceLoginManagerConnection_resetDeviceKeysWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetDeviceKeysWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __65__POServiceLoginManagerConnection_resetDeviceKeysWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)resetUserSecureEnclaveKeyWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__POServiceLoginManagerConnection_resetUserSecureEnclaveKeyWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetUserSecureEnclaveKeyWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __75__POServiceLoginManagerConnection_resetUserSecureEnclaveKeyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)loginUserNameWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__POServiceLoginManagerConnection_loginUserNameWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 loginUserNameWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __63__POServiceLoginManagerConnection_loginUserNameWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)setLoginUserName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v8 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__POServiceLoginManagerConnection_setLoginUserName_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setLoginUserName:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __63__POServiceLoginManagerConnection_setLoginUserName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)userLoginConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v5 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__POServiceLoginManagerConnection_userLoginConfigurationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = v4;
    v10 = v6;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 userLoginConfigurationWithCompletion:v6];
  }

  else if (v4)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __72__POServiceLoginManagerConnection_userLoginConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)setUserLoginConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v8 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__POServiceLoginManagerConnection_setUserLoginConfiguration_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = v7;
    v13 = v9;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setUserLoginConfiguration:v6 completion:v9];
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __72__POServiceLoginManagerConnection_setUserLoginConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)rotateKeyForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v7 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__POServiceLoginManagerConnection_rotateKeyForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = v6;
    v12 = v8;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 rotateKeyForKeyType:a3 completion:v8];
  }

  else if (v6)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v6 + 2))(v6, 0, v10);
  }
}

void __66__POServiceLoginManagerConnection_rotateKeyForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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

- (void)completeRotationKeyForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    v7 = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__POServiceLoginManagerConnection_completeRotationKeyForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = v6;
    v12 = v8;
    v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 completeRotationKeyForKeyType:a3 completion:v8];
  }

  else if (v6)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(v6 + 2))(v6, 0, v10);
  }
}

void __76__POServiceLoginManagerConnection_completeRotationKeyForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection();
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
    v3 = PO_LOG_POServiceLoginManagerConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    return 1;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PlatformSSO.service-login-manager-xpc" options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  if (self->_xpcConnection)
  {
    if ([(POServiceLoginManagerConnection *)self uid])
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POServiceLoginManagerConnection *)self uid]];
    }

    v6 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_2870905A0];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__POServiceLoginManagerConnection__connectToService__block_invoke;
    v14[3] = &unk_279A3A298;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__POServiceLoginManagerConnection__connectToService__block_invoke_95;
    v12[3] = &unk_279A3A298;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v12];
    v7 = self->_xpcConnection;
    v8 = +[POServiceLoginManagerConnection xpcQueue];
    [(NSXPCConnection *)v7 _setQueue:v8];

    [(NSXPCConnection *)self->_xpcConnection resume];
    v9 = PO_LOG_POServiceLoginManagerConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    return 1;
  }

  v11 = PO_LOG_POServiceLoginManagerConnection();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [POServiceConnection _connectToService];
  }

  return 0;
}

void __52__POServiceLoginManagerConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcConnection:0];
    v3 = PO_LOG_POServiceLoginManagerConnection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__POServiceLoginManagerConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __52__POServiceLoginManagerConnection__connectToService__block_invoke_95(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PO_LOG_POServiceLoginManagerConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__POServiceConnection__connectToService__block_invoke_83_cold_1();
    }
  }
}

- (void)initWithUid:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[POServiceLoginManagerConnection initWithUid:]";
  v6 = 1026;
  v7 = a2;
  v8 = 2112;
  v9 = a1;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "%s uid = %{public}d on %@", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_connectToService
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__POServiceLoginManagerConnection__connectToService__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end