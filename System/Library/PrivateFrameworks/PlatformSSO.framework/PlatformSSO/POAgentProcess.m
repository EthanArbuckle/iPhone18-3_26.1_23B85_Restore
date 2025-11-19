@interface POAgentProcess
- (BOOL)verifyAgentEntitlement;
- (BOOL)verifyLoginUserEntitlement;
- (BOOL)verifyPasswordChangeEntitlement;
- (POAgentProcess)initWithAuthenticationProcess:(id)a3;
- (POAgentProcess)initWithXPCConnection:(id)a3 authenticationProcess:(id)a4;
- (POAuthPluginProcess)systemAuthPluginProcess;
- (void)_saveCredentialForUserName:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)configurationDidChangeAndRemovedExtension:(id)a3 removed:(BOOL)a4 completion:(id)a5;
- (void)connectionInvalidated;
- (void)getLoginTypeForUser:(id)a3 completion:(id)a4;
- (void)passwordDidChangeForUsername:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)saveCredentialForUserName:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)updateLocalAccountPassword:(id)a3 passwordContext:(id)a4 completion:(id)a5;
- (void)updateLocalAccountPassword:(id)a3 passwordContextData:(id)a4 completion:(id)a5;
- (void)verifyPasswordLogin:(id)a3 passwordContext:(id)a4 completion:(id)a5;
@end

@implementation POAgentProcess

- (POAgentProcess)initWithXPCConnection:(id)a3 authenticationProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(POAgentProcess *)v6 initWithXPCConnection:v8 authenticationProcess:?];
  }

  v9 = objc_alloc_init(PODirectoryServices);
  v10 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
  v21.receiver = self;
  v21.super_class = POAgentProcess;
  v11 = [(POAgentCoreProcess *)&v21 initWithXPCConnection:v6 identifierProvider:v9 jwksStroageProvider:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_xpcConnection, v6);
    objc_storeStrong(&v11->_process, a4);
    objc_storeStrong(&v11->_directoryServices, v9);
    v12 = objc_alloc_init(MEMORY[0x277D3D210]);
    keyWrap = v11->_keyWrap;
    v11->_keyWrap = v12;

    v14 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v11->_keychainHelper;
    v11->_keychainHelper = v14;

    v16 = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v11->_distributedNotificationCenter;
    v11->_distributedNotificationCenter = v16;
  }

  if ([(POAgentProcess *)v11 verifyAgentEntitlement]|| [(POAgentProcess *)v11 verifyLoginUserEntitlement]|| [(POAgentProcess *)v11 verifyPasswordChangeEntitlement])
  {
    v18 = v11;
  }

  else
  {
    v20 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    v18 = 0;
  }

  return v18;
}

id __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1002 description:@"missing required entitlement"];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (POAgentProcess)initWithAuthenticationProcess:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POAgentProcess *)self initWithAuthenticationProcess:v5];
  }

  v6 = [(POAgentProcess *)self initWithXPCConnection:0 authenticationProcess:v4];
  return v6;
}

- (POAuthPluginProcess)systemAuthPluginProcess
{
  systemAuthPluginProcess = self->_systemAuthPluginProcess;
  if (!systemAuthPluginProcess)
  {
    v4 = [[POAuthPluginProcess alloc] initWithUid:92 forLogin:1];
    v5 = self->_systemAuthPluginProcess;
    self->_systemAuthPluginProcess = v4;

    systemAuthPluginProcess = self->_systemAuthPluginProcess;
  }

  v6 = systemAuthPluginProcess;

  return v6;
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
    [POAgentProcess verifyAgentEntitlement];
  }

  if (verifyAgentEntitlement_agentEntitlement)
  {
LABEL_6:
    v4 = 1;
  }

  else
  {
    v5 = PO_LOG_POAgentProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentProcess verifyAgentEntitlement];
    }

    v4 = 0;
  }

  return v4;
}

void __40__POAgentProcess_verifyAgentEntitlement__block_invoke()
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
    v5 = PO_LOG_POAgentProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentProcess verifyAgentEntitlement];
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
    v5 = PO_LOG_POAgentProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [POAgentProcess verifyAgentEntitlement];
    }

    v4 = 0;
  }

  return v4;
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POAgentProcess connectionInvalidated]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getLoginTypeForUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(POAgentProcess *)self verifyAgentEntitlement]&& ![(POAgentProcess *)self verifyPasswordChangeEntitlement])
  {
    v8 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    v7[2](v7, 0, v8);
LABEL_18:

    goto LABEL_19;
  }

  if (+[POConfigurationUtil platformSSOEnabled])
  {
    v8 = [[POConfigurationManager alloc] initWithUserName:v6];
    v9 = PO_LOG_POAgentProcess();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(POAgentProcess *)v6 getLoginTypeForUser:v9 completion:?];
    }

    v10 = [(POConfigurationManager *)v8 currentUserConfiguration];
    v11 = v10;
    if (v10)
    {
      if (v7)
      {
        v7[2](v7, [v10 loginType], 0);
      }
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24;
      v14[3] = &unk_279A3A088;
      v15 = v6;
      v13 = __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24(v14);
      if (v7)
      {
        v7[2](v7, 0, v13);
      }
    }

    goto LABEL_18;
  }

  v12 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAgentProcess getLoginTypeForUser:completion:];
  }

  if (v7)
  {
    v7[2](v7, 0, 0);
  }

LABEL_19:
}

id __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration for user."];
  v3 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_31()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No device configuration."];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_37()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No login configuration."];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_43(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No user configuration for user."];
  v3 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_46(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"no credential for user for login"];
  v3 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

void __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_50(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POAgentProcess();
  v10 = v9;
  v11 = *(a1 + 112);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E831000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PlatformSSO_PasswordAuth", "", buf, 2u);
  }

  v12 = MEMORY[0x277D3D1B8];
  v13 = [MEMORY[0x277D3D1D0] stringForLoginType:{objc_msgSend(*(a1 + 32), "loginType")}];
  v14 = [MEMORY[0x277D3D1D0] stringForLoginResult:a2];
  [v12 analyticsForLoginType:v13 result:v14];

  if (PO_LOG_PODiagnostics_once != -1)
  {
    __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_50_cold_1();
  }

  v15 = PO_LOG_PODiagnostics_log;
  if (os_log_type_enabled(PO_LOG_PODiagnostics_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = MEMORY[0x277D3D1D0];
    v17 = v15;
    v18 = [v16 stringForLoginResult:a2];
    *buf = 138543362;
    v65 = v18;
    _os_log_impl(&dword_25E831000, v17, OS_LOG_TYPE_DEFAULT, "Login Result = %{public}@", buf, 0xCu);
  }

  if (a2 <= 2)
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_40;
      }

      v20 = [*(a1 + 40) currentUserConfiguration];
      [v20 setState:2];

      if ([*(a1 + 40) saveCurrentUserConfigurationAndSyncToPreboot:1])
      {
        goto LABEL_10;
      }

      v21 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_86();
      v22 = *(*(a1 + 104) + 16);
      goto LABEL_24;
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = [MEMORY[0x277CBEAA8] date];
    [v23 updateLoginStateForUserName:v24 state:0 loginDate:v25 loginType:{objc_msgSend(*(a1 + 56), "loginType")}];

    v26 = [*(a1 + 40) currentUserConfiguration];
    [v26 setState:0];

    v27 = [MEMORY[0x277CBEAA8] date];
    v28 = [*(a1 + 40) currentUserConfiguration];
    [v28 setLastLoginDate:v27];

    v29 = SecKeyCopyPublicKey([*(a1 + 64) deviceEncryptionKey]);
    if (!v29)
    {
      v21 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_54();
      v22 = *(*(a1 + 104) + 16);
LABEL_24:
      v22();
LABEL_46:

      goto LABEL_47;
    }

    v30 = v29;
    v21 = [MEMORY[0x277D3D1E0] passwordDataFromContext:*(a1 + 72) error:0];
    v63 = 0;
    v31 = [MEMORY[0x277D3D1E0] encryptPendingSSOTokens:v8 usingPublicKey:v30 sharedData:v21 encryptedTokens:&v63];
    v32 = v63;
    memset_s([v21 mutableBytes], objc_msgSend(v21, "length"), 0, objc_msgSend(v21, "length"));
    if ((v31 & 1) == 0)
    {
      v36 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_60();
      CFRelease(v30);
LABEL_44:
      (*(*(a1 + 104) + 16))();
      goto LABEL_45;
    }

    CFRelease(v30);
    if ([*(a1 + 40) isTemporaryAccountUserName:*(a1 + 48)] & 1) != 0 || (objc_msgSend(*(a1 + 40), "saveStashedSSOTokens:forUserName:", v32, *(a1 + 48)))
    {
      v33 = getuid();
      v34 = *(a1 + 40);
      if (v33 == 92)
      {
        if (([*(a1 + 40) savePendingSSOTokens:v32 forUserName:*(a1 + 48)] & 1) == 0)
        {
          v35 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_76();
LABEL_43:
          v36 = v35;
          goto LABEL_44;
        }
      }

      else
      {
        v37 = [*(a1 + 64) extensionIdentifier];
        v62 = 0;
        v38 = [v34 setTokens:v8 extensionIdentifier:v37 returningError:&v62];
        v39 = v62;

        if (!v38)
        {
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_72;
          v60[3] = &unk_279A3A088;
          v61 = v39;
          v36 = v39;
          v54 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_72(v60);
          (*(*(a1 + 104) + 16))();

LABEL_45:
          goto LABEL_46;
        }

        v40 = [*(a1 + 80) process];
        [v40 setupTimerForAuthentication];

        v41 = [*(a1 + 80) process];
        v42 = *(a1 + 88);
        v43 = [*(a1 + 40) currentUserConfiguration];
        [v41 handleKerberosMappingForTokens:v8 loginConfiguration:v42 userConfiguration:v43];

        v44 = [*(a1 + 80) distributedNotificationCenter];
        [v44 postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
      }

      v45 = *(a1 + 96);
      if (v45)
      {
        v46 = [*(a1 + 32) userLoginConfiguration];
        v47 = [v46 loginUserName];
        v48 = [v45 isEqualToString:v47];

        if ((v48 & 1) == 0)
        {
          v49 = [*(a1 + 40) currentUserConfiguration];
          v50 = [v49 userLoginConfiguration];

          if (v50)
          {
            v51 = *(a1 + 96);
            v52 = [*(a1 + 40) currentUserConfiguration];
            v53 = [v52 userLoginConfiguration];
            [v53 setLoginUserName:v51];
          }

          else
          {
            v52 = [objc_alloc(MEMORY[0x277D3D248]) initWithLoginUserName:*(a1 + 96)];
            [*(a1 + 32) setUserLoginConfiguration:v52];
          }
        }
      }

      if ([*(a1 + 40) saveCurrentUserConfigurationAndSyncToPreboot:1])
      {
        v55 = [*(a1 + 80) process];
        [v55 handleUserAuthorizationUsing:v7 userName:*(a1 + 48) tokens:v8 configurationManager:*(a1 + 40)];

        v56 = PO_LOG_POAgentProcess();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25E831000, v56, OS_LOG_TYPE_INFO, "Authentication completed successfully", buf, 2u);
        }

        goto LABEL_40;
      }

      v35 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_80();
      goto LABEL_43;
    }

    v35 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_66();
    goto LABEL_43;
  }

  if ((a2 - 3) < 4)
  {
LABEL_10:
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92;
    v59[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v59[4] = a2;
    v19 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92(v59);
    (*(*(a1 + 104) + 16))();

    goto LABEL_47;
  }

LABEL_40:
  v57 = *(a1 + 104);
  if (v57)
  {
    (*(v57 + 16))(v57, 1, 0);
  }

LABEL_47:

  v58 = *MEMORY[0x277D85DE8];
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_54()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to get public key for encrypting tokens"];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_60()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to encrypt login tokens"];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_66()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to stash login tokens"];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_72(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save login tokens"];
  v2 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_76()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save login tokens"];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_80()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after login success."];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_86()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after permanent failure."];
  v1 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Login failed"];
  v3 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92_cold_1(v2, a1, v3);
  }

  return v2;
}

- (void)updateLocalAccountPassword:(id)a3 passwordContextData:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CD4790];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithExternalizedContext:v10];

  [(POAgentProcess *)self updateLocalAccountPassword:v11 passwordContext:v12 completion:v9];
}

- (void)updateLocalAccountPassword:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_INFO, "Checking local account", v7, 2u);
  }

  if (v5)
  {
    v5[2](v5, 3, 0);
  }
}

- (void)verifyPasswordLogin:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = [MEMORY[0x277D3D1E0] maskName:v8];
    *buf = 136315906;
    v24 = "[POAgentProcess verifyPasswordLogin:passwordContext:completion:]";
    v25 = 2114;
    v26 = v19;
    v27 = 2114;
    v28 = v9;
    v29 = 2112;
    v30 = self;
    _os_log_debug_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationManager alloc];
  v13 = [(POAgentProcess *)self directoryServices];
  v14 = [(POConfigurationManager *)v12 initWithUserName:0 directoryServices:v13 sharedOnly:1];

  v15 = [(POConfigurationManager *)v14 currentDeviceConfiguration];
  if (v15)
  {
    v16 = [(POConfigurationManager *)v14 currentLoginConfiguration];
    if (v16)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__POAgentProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_102;
      v21[3] = &unk_279A3A688;
      v22 = v10;
      v20.receiver = self;
      v20.super_class = POAgentProcess;
      [(POAgentCoreProcess *)&v20 _verifyLogin:v8 passwordContext:v9 smartCardContext:0 tokenId:0 deviceConfiguration:v15 loginConfiguration:v16 forAuthorization:1 completion:v21];
      v17 = v22;
    }

    else
    {
      v17 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_37();
      (*(v10 + 2))(v10, 2, v17);
    }
  }

  else
  {
    v16 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_31();
    (*(v10 + 2))(v10, 2, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)saveCredentialForUserName:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[POAgentProcess saveCredentialForUserName:passwordContext:completion:]";
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", &v14, 0x2Au);
  }

  if ([(POAgentProcess *)self verifyAgentEntitlement]|| [(POAgentProcess *)self verifyLoginUserEntitlement])
  {
    [(POAgentProcess *)self _saveCredentialForUserName:v8 passwordContext:v9 completion:v10];
  }

  else
  {
    v12 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    v10[2](v10, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_saveCredentialForUserName:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[POAgentProcess _saveCredentialForUserName:passwordContext:completion:]";
    v30 = 2114;
    v31 = v8;
    v32 = 2114;
    v33 = v9;
    v34 = 2112;
    v35 = self;
    _os_log_debug_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [[POConfigurationManager alloc] initWithUserName:v8];
  v13 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:v9];
  v27 = 0;
  v14 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v13 error:&v27];
  v15 = v27;
  v16 = v15;
  if (v15)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke;
    v25[3] = &unk_279A3A088;
    v26 = v15;
    v17 = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke(v25);
    if (v10)
    {
      v10[2](v10, 0, v17);
    }
  }

  else
  {
    v18 = [(POAgentProcess *)self keyWrap];
    v19 = [v18 wrapBlob:v14];
    v20 = [(POConfigurationManager *)v12 currentUserConfiguration];
    [v20 set_credential:v19];

    memset_s([v14 mutableBytes], objc_msgSend(v14, "length"), 0, objc_msgSend(v14, "length"));
    if ([(POConfigurationManager *)v12 saveCurrentUserConfigurationAndSyncToPreboot:0])
    {
      if (v10)
      {
        v10[2](v10, 1, 0);
      }
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111;
      v23[3] = &unk_279A3A088;
      v24 = v8;
      v21 = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111(v23);
      if (v10)
      {
        v10[2](v10, 0, v21);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Credential not found when saving credential for user"];
  v2 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user credential."];
  v3 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (void)passwordDidChangeForUsername:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[POAgentProcess passwordDidChangeForUsername:passwordContext:completion:]";
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", &v14, 0x2Au);
  }

  if ([(POAgentProcess *)self verifyPasswordChangeEntitlement])
  {
    [(POAgentProcess *)self _saveCredentialForUserName:v8 passwordContext:v9 completion:v10];
  }

  else
  {
    v12 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    v10[2](v10, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)configurationDidChangeAndRemovedExtension:(id)a3 removed:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v12 = a3;
  v8 = a5;
  if ([(POAgentProcess *)self verifyAgentEntitlement])
  {
    if (v6)
    {
      v9 = [(POAgentProcess *)self process];
      [v9 configurationRemovedForExtension:v12];
    }

    v10 = [(POAgentProcess *)self process];
    [v10 configurationChanged];

    v8[2](v8, 1, 0);
  }

  else
  {
    v11 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    v8[2](v8, 0, v11);

    v8 = v11;
  }
}

- (void)initWithXPCConnection:(NSObject *)a3 authenticationProcess:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 136315650;
  v7 = "[POAgentProcess initWithXPCConnection:authenticationProcess:]";
  v8 = 1026;
  v9 = [a1 auditSessionIdentifier];
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_25E831000, a3, OS_LOG_TYPE_DEBUG, "%s asid= %{public}d on %@", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithAuthenticationProcess:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[POAgentProcess initWithAuthenticationProcess:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getLoginTypeForUser:(os_log_t)log completion:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[POAgentProcess getLoginTypeForUser:completion:]";
  v6 = 2114;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@ on %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1(&dword_25E831000, v2, v3, "%{public}@, %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_92_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a2 + 32)];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_25E831000, a3, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end