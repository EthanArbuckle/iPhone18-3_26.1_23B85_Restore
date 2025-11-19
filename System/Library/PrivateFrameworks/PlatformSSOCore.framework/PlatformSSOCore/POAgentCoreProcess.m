@interface POAgentCoreProcess
- (BOOL)verifyAgentEntitlement;
- (BOOL)verifyLoginUserEntitlement;
- (BOOL)verifyPasswordChangeEntitlement;
- (BOOL)verifySecurityEntitlement;
- (POAgentCoreProcess)initWithXPCConnection:(id)a3 identifierProvider:(id)a4 jwksStroageProvider:(id)a5;
- (void)_verifyLogin:(id)a3 passwordContext:(id)a4 smartCardContext:(id)a5 tokenId:(id)a6 deviceConfiguration:(id)a7 loginConfiguration:(id)a8 forAuthorization:(BOOL)a9 completion:(id)a10;
- (void)connectionInvalidated;
- (void)getLoginTypeForUser:(id)a3 completion:(id)a4;
- (void)verifyAgentEntitlement;
- (void)verifyPasswordLogin:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)verifyPasswordUser:(id)a3 passwordContext:(id)a4 completion:(id)a5;
@end

@implementation POAgentCoreProcess

- (POAgentCoreProcess)initWithXPCConnection:(id)a3 identifierProvider:(id)a4 jwksStroageProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [POAgentCoreProcess initWithXPCConnection:v8 identifierProvider:self jwksStroageProvider:v11];
  }

  v22.receiver = self;
  v22.super_class = POAgentCoreProcess;
  v12 = [(POAgentCoreProcess *)&v22 init];
  if (v12)
  {
    v13 = objc_alloc_init(POAuthenticationProcess);
    authenticationProcess = v12->_authenticationProcess;
    v12->_authenticationProcess = v13;

    [(POAuthenticationProcess *)v12->_authenticationProcess setWaitForConnectivity:1];
    [(POAuthenticationProcess *)v12->_authenticationProcess setTimeoutIntervalForResource:15.0];
    objc_storeWeak(&v12->_xpcConnection, v8);
    objc_storeStrong(&v12->_userIdentifierProvider, a4);
    objc_storeStrong(&v12->_jwksStorageProvider, a5);
    v15 = [[POTokenHelper alloc] initWithIdentifierProvider:v12->_userIdentifierProvider];
    tokenHelper = v12->_tokenHelper;
    v12->_tokenHelper = v15;

    v17 = objc_alloc_init(POKeychainHelper);
    keychainHelper = v12->_keychainHelper;
    v12->_keychainHelper = v17;

    v12->_callerUid = [v8 effectiveUserIdentifier];
  }

  if ([(POAgentCoreProcess *)v12 verifyAgentEntitlement]|| [(POAgentCoreProcess *)v12 verifyLoginUserEntitlement]|| [(POAgentCoreProcess *)v12 verifyPasswordChangeEntitlement]|| [(POAgentCoreProcess *)v12 verifySecurityEntitlement])
  {
    v19 = v12;
  }

  else
  {
    v21 = __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke();
    v19 = 0;
  }

  return v19;
}

id __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke()
{
  v0 = [POError errorWithCode:-1002 description:@"missing required entitlement"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)verifyAgentEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.agent"];

  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    goto LABEL_6;
  }

  if (verifyAgentEntitlement_sOnce != -1)
  {
    [POAgentCoreProcess verifyAgentEntitlement];
  }

  if (verifyAgentEntitlement_agentEntitlement)
  {
LABEL_6:
    v4 = 1;
  }

  else
  {
    v5 = PO_LOG_POAgentCoreProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v4 = 0;
  }

  return v4;
}

void __44__POAgentCoreProcess_verifyAgentEntitlement__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.platformsso.agent", 0);
    CFRelease(v1);
    if (v2)
    {
      v3 = CFGetTypeID(v2);
      if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2))
      {
        CFRelease(v2);
        verifyAgentEntitlement_agentEntitlement = 1;
      }

      else
      {

        CFRelease(v2);
      }
    }
  }
}

- (BOOL)verifySecurityEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.security"];

  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = PO_LOG_POAgentCoreProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)verifyLoginUserEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.loginuser"];

  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = PO_LOG_POAgentCoreProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)verifyPasswordChangeEntitlement
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.passwordchange"];

  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = PO_LOG_POAgentCoreProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentCoreProcess verifyAgentEntitlement];
    }

    v4 = 0;
  }

  return v4;
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POAgentCoreProcess connectionInvalidated]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_25E8B1000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getLoginTypeForUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(POAgentCoreProcess *)self verifyAgentEntitlement]&& ![(POAgentCoreProcess *)self verifyPasswordChangeEntitlement])
  {
    v10 = __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke();
    v7[2](v7, 0, v10);
LABEL_18:

    goto LABEL_19;
  }

  if (+[POCoreConfigurationUtil platformSSOEnabled])
  {
    v8 = [POConfigurationCoreManager alloc];
    v9 = [(POAgentCoreProcess *)self userIdentifierProvider];
    v10 = [(POConfigurationCoreManager *)v8 initWithUserName:v6 identifierProvider:v9 sharedOnly:0];

    v11 = PO_LOG_POAgentCoreProcess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(POAgentCoreProcess *)v6 getLoginTypeForUser:v11 completion:?];
    }

    v12 = [(POConfigurationCoreManager *)v10 currentUserConfiguration];
    v13 = v12;
    if (v12)
    {
      if (v7)
      {
        v7[2](v7, [v12 loginType], 0);
      }
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__POAgentCoreProcess_getLoginTypeForUser_completion___block_invoke_24;
      v16[3] = &unk_279A3DC48;
      v17 = v6;
      v15 = __53__POAgentCoreProcess_getLoginTypeForUser_completion___block_invoke_24(v16);
      if (v7)
      {
        v7[2](v7, 0, v15);
      }
    }

    goto LABEL_18;
  }

  v14 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [POAgentCoreProcess getLoginTypeForUser:completion:];
  }

  if (v7)
  {
    v7[2](v7, 0, 0);
  }

LABEL_19:
}

id __53__POAgentCoreProcess_getLoginTypeForUser_completion___block_invoke_24(uint64_t a1)
{
  v2 = [POError errorWithCode:-1004 description:@"No user configuration for user."];
  v3 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (void)verifyPasswordLogin:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v23 = [POCredentialUtil maskName:v8];
    *buf = 136315906;
    v32 = "[POAgentCoreProcess verifyPasswordLogin:passwordContext:completion:]";
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v9;
    v37 = 2112;
    v38 = self;
    _os_log_debug_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationCoreManager alloc];
  v13 = [(POAgentCoreProcess *)self userIdentifierProvider];
  v14 = [(POConfigurationCoreManager *)v12 initWithUserName:0 identifierProvider:v13 sharedOnly:1];

  v15 = [(POConfigurationCoreManager *)v14 currentDeviceConfiguration];
  if (v15)
  {
    v16 = [(POConfigurationCoreManager *)v14 currentLoginConfiguration];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v9];
      v18 = [POCredentialUtil passwordDataFromContext:v17 error:0];
      v19 = v18;
      if (v18 && [v18 length])
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_45;
        v25[3] = &unk_279A3E3E0;
        v28 = v10;
        v26 = v15;
        v27 = v17;
        LOBYTE(v24) = 1;
        v20 = &v28;
        [(POAgentCoreProcess *)self _verifyLogin:v8 passwordContext:v9 smartCardContext:0 tokenId:0 deviceConfiguration:v26 loginConfiguration:v16 forAuthorization:v24 completion:v25];

        v21 = v26;
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_41;
        v29[3] = &unk_279A3DC48;
        v20 = &v30;
        v30 = v8;
        v21 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_41(v29);
        (*(v10 + 2))(v10, 2, v21);
      }
    }

    else
    {
      v17 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_34();
      (*(v10 + 2))(v10, 2, v17);
    }
  }

  else
  {
    v16 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke();
    (*(v10 + 2))(v10, 2, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"No device configuration."];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_34()
{
  v0 = [POError errorWithCode:-1004 description:@"No login configuration."];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_41(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"no credential for user for login"];
  v3 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_45(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a3;
  v11 = a7;
  if (a2 == 1)
  {
    v12 = SecKeyCopyPublicKey([*(a1 + 32) deviceEncryptionKey]);
    if (v12)
    {
      v13 = v12;
      v14 = [POCredentialUtil passwordDataFromContext:*(a1 + 40) error:0];
      v18 = 0;
      v15 = [POCredentialUtil encryptPendingSSOTokens:v10 usingPublicKey:v13 sharedData:v14 encryptedTokens:&v18];
      v16 = v18;
      memset_s([v14 mutableBytes], objc_msgSend(v14, "length"), 0, objc_msgSend(v14, "length"));
      if (v15)
      {
        CFRelease(v13);
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v17 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_51();
        CFRelease(v13);
        (*(*(a1 + 48) + 16))();

        v16 = v17;
      }
    }

    else
    {
      v14 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_2();
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_2()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to get public key for encrypting tokens"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_51()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to encrypt login tokens"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)verifyPasswordUser:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v23 = [POCredentialUtil maskName:v8];
    *buf = 136315906;
    v37 = "[POAgentCoreProcess verifyPasswordUser:passwordContext:completion:]";
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v9;
    v42 = 2112;
    v43 = self;
    _os_log_debug_impl(&dword_25E8B1000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationCoreManager alloc];
  v13 = [(POAgentCoreProcess *)self userIdentifierProvider];
  v14 = [(POConfigurationCoreManager *)v12 initWithUserName:v8 identifierProvider:v13 sharedOnly:1];

  v15 = [(POConfigurationCoreManager *)v14 currentDeviceConfiguration];
  if (v15)
  {
    v16 = [(POConfigurationCoreManager *)v14 currentLoginConfiguration];
    if (v16)
    {
      v17 = [(POConfigurationCoreManager *)v14 currentUserConfiguration];
      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v9];
        v19 = [POCredentialUtil passwordDataFromContext:v18 error:0];
        v20 = v19;
        if (v19 && [v19 length])
        {
          v26 = [v17 userLoginConfiguration];
          v25 = [v26 loginUserName];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_73;
          v28[3] = &unk_279A3E408;
          v27 = &v33;
          v33 = v10;
          v29 = v14;
          v30 = v8;
          v31 = v15;
          v32 = v18;
          LOBYTE(v24) = 1;
          [(POAgentCoreProcess *)self _verifyLogin:v25 passwordContext:v9 smartCardContext:0 tokenId:0 deviceConfiguration:v31 loginConfiguration:v16 forAuthorization:v24 completion:v28];

          v21 = v29;
        }

        else
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_69;
          v34[3] = &unk_279A3DC48;
          v27 = &v35;
          v35 = v8;
          v21 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_69(v34);
          (*(v10 + 2))(v10, 2, 0, 0, 0, 0, v21);
        }
      }

      else
      {
        v18 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_63();
        (*(v10 + 2))(v10, 2, 0, 0, 0, 0, v18);
      }
    }

    else
    {
      v17 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_34();
      (*(v10 + 2))(v10, 2, 0, 0, 0, 0, v17);
    }
  }

  else
  {
    v16 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke();
    (*(v10 + 2))(v10, 2, 0, 0, 0, 0, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_63()
{
  v0 = [POError errorWithCode:-1004 description:@"No user configuration."];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_69(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"no credential for user"];
  v3 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_73(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a2 == 1)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [MEMORY[0x277CBEAA8] date];
    [v18 updateLoginStateForUserName:v19 state:0 loginDate:v20 loginType:1];

    v21 = SecKeyCopyPublicKey([*(a1 + 48) deviceEncryptionKey]);
    if (!v21)
    {
      v23 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_2();
      (*(*(a1 + 64) + 16))();
LABEL_14:

      goto LABEL_15;
    }

    v22 = v21;
    v30 = v15;
    v31 = v14;
    v23 = [POCredentialUtil passwordDataFromContext:*(a1 + 56) error:0];
    v32 = 0;
    v24 = [POCredentialUtil encryptPendingSSOTokens:v13 usingPublicKey:v22 sharedData:v23 encryptedTokens:&v32];
    v25 = v32;
    memset_s([v23 mutableBytes], objc_msgSend(v23, "length"), 0, objc_msgSend(v23, "length"));
    if (v24)
    {
      CFRelease(v22);
      v26 = v25;
      if ([*(a1 + 32) savePendingSSOTokens:v25 forUserName:*(a1 + 40)])
      {
        v15 = v30;
        v14 = v31;
        if ([*(a1 + 32) isTemporaryAccountUserName:*(a1 + 40)] & 1) != 0 || (objc_msgSend(*(a1 + 32), "saveStashedSSOTokens:forUserName:", v26, *(a1 + 40)))
        {
          (*(*(a1 + 64) + 16))();
        }

        else
        {
          v29 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_86();
          (*(*(a1 + 64) + 16))();
        }

        goto LABEL_13;
      }

      v28 = __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_80();
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v27 = __69__POAgentCoreProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_51();
      CFRelease(v22);
      (*(*(a1 + 64) + 16))();

      v26 = v25;
    }

    v15 = v30;
    v14 = v31;
LABEL_13:

    goto LABEL_14;
  }

  (*(*(a1 + 64) + 16))();
LABEL_15:
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_80()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to save login tokens"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __68__POAgentCoreProcess_verifyPasswordUser_passwordContext_completion___block_invoke_86()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to stash login tokens"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)_verifyLogin:(id)a3 passwordContext:(id)a4 smartCardContext:(id)a5 tokenId:(id)a6 deviceConfiguration:(id)a7 loginConfiguration:(id)a8 forAuthorization:(BOOL)a9 completion:(id)a10
{
  v119 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [POCredentialUtil maskName:v16];
    v69 = v16;
    v59 = v21;
    v61 = v60 = v20;
    *buf = 136316418;
    *&buf[4] = "[POAgentCoreProcess _verifyLogin:passwordContext:smartCardContext:tokenId:deviceConfiguration:loginConfiguration:forAuthorization:completion:]";
    v109 = 2114;
    v110 = v61;
    v111 = 2114;
    v112 = v17;
    v113 = 2114;
    v114 = v18;
    v115 = 2114;
    v116 = v19;
    v117 = 2112;
    v118 = self;
    _os_log_debug_impl(&dword_25E8B1000, v23, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@, smartcardContext = %{public}@, tokenId = %{public}@ on %@", buf, 0x3Eu);

    v20 = v60;
    v21 = v59;
    v16 = v69;
  }

  if ([(POAgentCoreProcess *)self verifyAgentEntitlement])
  {
    v24 = objc_alloc_init(POAuthenticationProcess);
    v80 = v18;
    if (!v17 || v18)
    {
      if ([POTokenHelper tokenIsAccessKey:v19])
      {
        v73 = v21;
        v35 = PO_LOG_POAgentCoreProcess();
        v36 = os_signpost_id_generate(v35);

        v37 = PO_LOG_POAgentCoreProcess();
        v38 = v37;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E8B1000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "PlatformSSO_AccessKeyAuth", " enableTelemetry=YES ", buf, 2u);
        }

        v66 = v36;

        *buf = 92;
        v39 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v18 userSession:buf];
        v98 = 0;
        v70 = [objc_alloc(MEMORY[0x277CD47B8]) initWithDomain:0 authenticationContext:v39];
        v40 = [v70 dataForKey:26 error:&v98];
        v41 = v98;
        [v39 invalidate];
        v76 = v20;
        if (v40)
        {
          v79 = v41;
          v42 = [(POAuthenticationProcess *)v24 createAuthenticationContextUsingLoginConfiguration:v73 deviceConfiguration:v20 userName:v16 resumeData:v40];
          v43 = [(POAgentCoreProcess *)self jwksStorageProvider];
          [v42 setJwksStorageProvider:v43];

          [v42 addRequiredScope:@"profile"];
          if (a9)
          {
            v44 = [v73 additionalAuthorizationScopes];
            [v42 addRequiredScope:v44];
          }

          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_115;
          v92[3] = &unk_279A3E430;
          v95 = v66;
          v93 = v24;
          v94 = v22;
          [(POAuthenticationProcess *)v93 completeAccessTokenLoginUsingContext:v42 completion:v92];

          v41 = v79;
        }

        else
        {
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_111;
          v96[3] = &unk_279A3DC48;
          v97 = v41;
          v62 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_111(v96);
          (*(v22 + 2))(v22, 3, 0, 0, 0, 0, v62);

          v42 = v97;
        }

        v21 = v73;
        v20 = v76;
        goto LABEL_43;
      }

      if (!v18 || !v19)
      {
        v41 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_133();
        (*(v22 + 2))(v22, 2, 0, 0, 0, 0, v41);
        goto LABEL_43;
      }

      v91 = 0;
      v74 = objc_alloc_init(MEMORY[0x277CD4790]);
      [v74 setInteractionNotAllowed:1];
      v90 = 0;
      v71 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v18 userSession:&v91];
      v46 = [POCredentialUtil passwordDataFromContext:"passwordDataFromContext:error:" error:?];
      v78 = 0;
      if (v46)
      {
        v77 = v20;
        [v74 setCredential:v46 type:-3];
        v67 = v46;
        memset_s([v46 mutableBytes], objc_msgSend(v46, "length"), 0, objc_msgSend(v46, "length"));
        *buf = 0;
        v88[0] = 0;
        v47 = [(POAgentCoreProcess *)self tokenHelper];
        v48 = [v47 retrieveCertAndKeyForTokenId:v19 context:v74 certificate:v88 privateKey:buf];

        v68 = v16;
        if (v48 & 1) != 0 || (-[POAgentCoreProcess keychainHelper](self, "keychainHelper"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 retrieveCertAndKeyForTokenId:v19 context:v74 forSigning:1 hash:0 certificate:v88 privateKey:buf], v49, (v50))
        {
          v51 = PO_LOG_POAgentCoreProcess();
          v52 = os_signpost_id_generate(v51);

          v53 = PO_LOG_POAgentCoreProcess();
          v54 = v53;
          if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            *v85 = 0;
            _os_signpost_emit_with_name_impl(&dword_25E8B1000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v52, "PlatformSSO_SmartCardAuth", " enableTelemetry=YES ", v85, 2u);
          }

          v55 = v21;
          v56 = [(POAuthenticationProcess *)v24 createAuthenticationContextUsingLoginConfiguration:v21 deviceConfiguration:v77 userName:v68];
          [v56 setEmbeddedAssertionSigningKey:*buf];
          [v56 setEmbeddedAssertionCertificate:v88[0]];
          v57 = [(POAgentCoreProcess *)self jwksStorageProvider];
          [v56 setJwksStorageProvider:v57];

          [v56 addRequiredScope:@"profile"];
          if (a9)
          {
            v58 = [v55 additionalAuthorizationScopes];
            [v56 addRequiredScope:v58];
          }

          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_128;
          v81[3] = &unk_279A3E430;
          v84 = v52;
          v82 = v24;
          v83 = v22;
          [(POAuthenticationProcess *)v82 performSmartCardLoginUsingContext:v56 completion:v81];
        }

        else
        {
          v55 = v21;
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_124;
          v86[3] = &unk_279A3DC48;
          v87 = v19;
          v64 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_124(v86);
          (*(v22 + 2))(v22, 3, 0, 0, 0, 0, v64);

          v56 = v87;
        }

        v20 = v77;
        v41 = v78;

        v21 = v55;
        v16 = v68;
        goto LABEL_43;
      }

      v88[1] = MEMORY[0x277D85DD0];
      v88[2] = 3221225472;
      v88[3] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_120;
      v88[4] = &unk_279A3DC48;
      v89 = v16;
      v63 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_120();
      (*(v22 + 2))(v22, 3, 0, 0, 0, 0, v63);
    }

    else
    {
      v72 = v19;
      v25 = v21;
      v78 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v17];
      v26 = [POCredentialUtil passwordDataFromContext:"passwordDataFromContext:error:" error:?];
      v27 = v26;
      if (v26 && [v26 length])
      {
        v75 = v20;
        v28 = PO_LOG_POAgentCoreProcess();
        v29 = os_signpost_id_generate(v28);

        v30 = PO_LOG_POAgentCoreProcess();
        v31 = v30;
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25E8B1000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PlatformSSO_PasswordAuth", " enableTelemetry=YES ", buf, 2u);
        }

        v32 = [(POAuthenticationProcess *)v24 createAuthenticationContextUsingLoginConfiguration:v25 deviceConfiguration:v75 userName:v16];
        [v32 setPassword:v27];
        v33 = [(POAgentCoreProcess *)self jwksStorageProvider];
        [v32 setJwksStorageProvider:v33];

        [v32 addRequiredScope:@"profile"];
        if (a9)
        {
          v34 = [v25 additionalAuthorizationScopes];
          [v32 addRequiredScope:v34];
        }

        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_101;
        v99[3] = &unk_279A3E430;
        v102 = v29;
        v100 = v24;
        v101 = v22;
        [(POAuthenticationProcess *)v100 performPasswordLoginUsingContext:v32 completion:v99];

        v20 = v75;
      }

      else
      {
        v103 = MEMORY[0x277D85DD0];
        v104 = 3221225472;
        v105 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94;
        v106 = &unk_279A3DC48;
        v107 = v16;
        v45 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94();
        (*(v22 + 2))(v22, 3, 0, 0, 0, 0, v45);
      }

      v21 = v25;
      v19 = v72;
    }

    v41 = v78;
LABEL_43:

    v18 = v80;
    goto LABEL_44;
  }

  v24 = __83__POAgentCoreProcess_initWithXPCConnection_identifierProvider_jwksStroageProvider___block_invoke();
  (*(v22 + 2))(v22, 2, 0, 0, 0, 0, v24);
LABEL_44:

  v65 = *MEMORY[0x277D85DE8];
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing password credential for user."];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94_cold_1();
  }

  return v0;
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_101(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentCoreProcess();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_PasswordAuth", "", buf, 2u);
  }

  v12 = [POConstantCoreUtil stringForLoginType:1];
  v13 = [POConstantCoreUtil stringForLoginResult:a2];
  [POAnalytics analyticsForLoginType:v12 result:v13];

  if ((a2 - 2) >= 5 && a2)
  {
    if (a2 == 1)
    {
      v18 = PO_LOG_POAgentCoreProcess();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v18, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
      }

      v19 = a1[4];
      v20 = [v7 loginConfiguration];
      v23 = 0;
      v24 = 0;
      v22 = 0;
      [v19 extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:v20 tokens:v8 returningGroups:&v24 identifier:&v23 refreshToken:&v22];
      v17 = v24;
      v16 = v23;
      v15 = v22;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v21 = a1[5];
    if (v21)
    {
      (*(v21 + 16))(v21, 1, v8, v16, v17, v15, 0);
    }
  }

  else
  {
    v14 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104();
    (*(a1[5] + 16))(a1[5], a2, 0, 0, 0);

    v15 = 0;
    v16 = 0;
    v17 = 0;
  }
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104()
{
  v0 = [POError errorWithCode:-1001 description:@"Password login failed"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v0;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_111(uint64_t a1)
{
  v1 = [POError errorWithCode:-1004 underlyingError:*(a1 + 32) description:@"Failed to retrieve auth data"];
  v2 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_115(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentCoreProcess();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_AccessKeyAuth", "", buf, 2u);
  }

  v12 = [POConstantCoreUtil stringForLoginType:4];
  v13 = [POConstantCoreUtil stringForLoginResult:a2];
  [POAnalytics analyticsForLoginType:v12 result:v13];

  if ((a2 - 2) >= 5 && a2)
  {
    if (a2 == 1)
    {
      v18 = PO_LOG_POAgentCoreProcess();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v18, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
      }

      v19 = a1[4];
      v20 = [v7 loginConfiguration];
      v23 = 0;
      v24 = 0;
      v22 = 0;
      [v19 extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:v20 tokens:v8 returningGroups:&v24 identifier:&v23 refreshToken:&v22];
      v17 = v24;
      v16 = v23;
      v15 = v22;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v21 = a1[5];
    if (v21)
    {
      (*(v21 + 16))(v21, 1, v8, v16, v17, v15, 0);
    }
  }

  else
  {
    v14 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_116();
    (*(a1[5] + 16))(a1[5], a2, 0, 0, 0);

    v15 = 0;
    v16 = 0;
    v17 = 0;
  }
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_116()
{
  v0 = [POError errorWithCode:-1001 description:@"Access key login failed"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v0;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_120()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing SmartCard credential for user"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94_cold_1();
  }

  return v0;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_124(uint64_t a1)
{
  v2 = [POError errorWithCode:-1008 description:@"Failed to find smartcard."];
  v3 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_128(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentCoreProcess();
  v10 = v9;
  v11 = a1[6];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E8B1000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_SmartCardAuth", "", buf, 2u);
  }

  v12 = [POConstantCoreUtil stringForLoginType:1];
  v13 = [POConstantCoreUtil stringForLoginResult:a2];
  [POAnalytics analyticsForLoginType:v12 result:v13];

  if ((a2 - 2) >= 5 && a2)
  {
    if (a2 == 1)
    {
      v18 = PO_LOG_POAgentCoreProcess();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v18, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
      }

      v19 = a1[4];
      v20 = [v7 loginConfiguration];
      v23 = 0;
      v24 = 0;
      v22 = 0;
      [v19 extractGroupsAndSubUsingAuthorizationWithLoginConfiguration:v20 tokens:v8 returningGroups:&v24 identifier:&v23 refreshToken:&v22];
      v17 = v24;
      v16 = v23;
      v15 = v22;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v21 = a1[5];
    if (v21)
    {
      (*(v21 + 16))(v21, 1, v8, v16, v17, v15, 0);
    }
  }

  else
  {
    v14 = __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_129();
    (*(a1[5] + 16))(a1[5], a2, 0, 0, 0);

    v15 = 0;
    v16 = 0;
    v17 = 0;
  }
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_129()
{
  v0 = [POError errorWithCode:-1001 description:@"SmartCard login failed"];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v0;
}

id __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_133()
{
  v0 = [POError errorWithCode:-1001 description:@"Invalid login request."];
  v1 = PO_LOG_POAgentCoreProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)initWithXPCConnection:(void *)a1 identifierProvider:(uint64_t)a2 jwksStroageProvider:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 136315906;
  v8 = "[POAgentCoreProcess initWithXPCConnection:identifierProvider:jwksStroageProvider:]";
  v9 = 1026;
  v10 = [a1 auditSessionIdentifier];
  v11 = 1026;
  v12 = [a1 effectiveUserIdentifier];
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_DEBUG, "%s asid= %{public}d, euid= %{public}d on %@", &v7, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyAgentEntitlement
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getLoginTypeForUser:(os_log_t)log completion:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[POAgentCoreProcess getLoginTypeForUser:completion:]";
  v6 = 2114;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_25E8B1000, log, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@ on %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_94_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [POCredentialUtil maskName:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v0 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v2, v3, "%{public}@, %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end