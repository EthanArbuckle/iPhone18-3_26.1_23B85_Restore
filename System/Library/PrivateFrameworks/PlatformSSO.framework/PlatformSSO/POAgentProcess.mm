@interface POAgentProcess
- (BOOL)verifyAgentEntitlement;
- (BOOL)verifyLoginUserEntitlement;
- (BOOL)verifyPasswordChangeEntitlement;
- (POAgentProcess)initWithAuthenticationProcess:(id)process;
- (POAgentProcess)initWithXPCConnection:(id)connection authenticationProcess:(id)process;
- (POAuthPluginProcess)systemAuthPluginProcess;
- (void)_saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion;
- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed completion:(id)completion;
- (void)connectionInvalidated;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion;
- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion;
- (void)updateLocalAccountPassword:(id)password passwordContext:(id)context completion:(id)completion;
- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
@end

@implementation POAgentProcess

- (POAgentProcess)initWithXPCConnection:(id)connection authenticationProcess:(id)process
{
  connectionCopy = connection;
  processCopy = process;
  v8 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(POAgentProcess *)connectionCopy initWithXPCConnection:v8 authenticationProcess:?];
  }

  v9 = objc_alloc_init(PODirectoryServices);
  v10 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
  v21.receiver = self;
  v21.super_class = POAgentProcess;
  v11 = [(POAgentCoreProcess *)&v21 initWithXPCConnection:connectionCopy identifierProvider:v9 jwksStroageProvider:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_xpcConnection, connectionCopy);
    objc_storeStrong(&v11->_process, process);
    objc_storeStrong(&v11->_directoryServices, v9);
    v12 = objc_alloc_init(MEMORY[0x277D3D210]);
    keyWrap = v11->_keyWrap;
    v11->_keyWrap = v12;

    v14 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v11->_keychainHelper;
    v11->_keychainHelper = v14;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    distributedNotificationCenter = v11->_distributedNotificationCenter;
    v11->_distributedNotificationCenter = defaultCenter;
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

- (POAgentProcess)initWithAuthenticationProcess:(id)process
{
  processCopy = process;
  v5 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POAgentProcess *)self initWithAuthenticationProcess:v5];
  }

  v6 = [(POAgentProcess *)self initWithXPCConnection:0 authenticationProcess:processCopy];
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
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if (![(POAgentProcess *)self verifyAgentEntitlement]&& ![(POAgentProcess *)self verifyPasswordChangeEntitlement])
  {
    v8 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v8);
LABEL_18:

    goto LABEL_19;
  }

  if (+[POConfigurationUtil platformSSOEnabled])
  {
    v8 = [[POConfigurationManager alloc] initWithUserName:userCopy];
    v9 = PO_LOG_POAgentProcess();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(POAgentProcess *)userCopy getLoginTypeForUser:v9 completion:?];
    }

    currentUserConfiguration = [(POConfigurationManager *)v8 currentUserConfiguration];
    v11 = currentUserConfiguration;
    if (currentUserConfiguration)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, [currentUserConfiguration loginType], 0);
      }
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24;
      v14[3] = &unk_279A3A088;
      v15 = userCopy;
      v13 = __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24(v14);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v13);
      }
    }

    goto LABEL_18;
  }

  v12 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [POAgentProcess getLoginTypeForUser:completion:];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
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

- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion
{
  v8 = MEMORY[0x277CD4790];
  completionCopy = completion;
  dataCopy = data;
  passwordCopy = password;
  v12 = [[v8 alloc] initWithExternalizedContext:dataCopy];

  [(POAgentProcess *)self updateLocalAccountPassword:passwordCopy passwordContext:v12 completion:completionCopy];
}

- (void)updateLocalAccountPassword:(id)password passwordContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v6 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_INFO, "Checking local account", v7, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 3, 0);
  }
}

- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = [MEMORY[0x277D3D1E0] maskName:loginCopy];
    *buf = 136315906;
    v24 = "[POAgentProcess verifyPasswordLogin:passwordContext:completion:]";
    v25 = 2114;
    v26 = v19;
    v27 = 2114;
    v28 = contextCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEBUG, "%s loginUserName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [POConfigurationManager alloc];
  directoryServices = [(POAgentProcess *)self directoryServices];
  v14 = [(POConfigurationManager *)v12 initWithUserName:0 directoryServices:directoryServices sharedOnly:1];

  currentDeviceConfiguration = [(POConfigurationManager *)v14 currentDeviceConfiguration];
  if (currentDeviceConfiguration)
  {
    currentLoginConfiguration = [(POConfigurationManager *)v14 currentLoginConfiguration];
    if (currentLoginConfiguration)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __65__POAgentProcess_verifyPasswordLogin_passwordContext_completion___block_invoke_102;
      v21[3] = &unk_279A3A688;
      v22 = completionCopy;
      v20.receiver = self;
      v20.super_class = POAgentProcess;
      [(POAgentCoreProcess *)&v20 _verifyLogin:loginCopy passwordContext:contextCopy smartCardContext:0 tokenId:0 deviceConfiguration:currentDeviceConfiguration loginConfiguration:currentLoginConfiguration forAuthorization:1 completion:v21];
      v17 = v22;
    }

    else
    {
      v17 = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_37();
      (*(completionCopy + 2))(completionCopy, 2, v17);
    }
  }

  else
  {
    currentLoginConfiguration = __107__POAgentProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke_31();
    (*(completionCopy + 2))(completionCopy, 2, currentLoginConfiguration);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[POAgentProcess saveCredentialForUserName:passwordContext:completion:]";
    v16 = 2114;
    v17 = nameCopy;
    v18 = 2114;
    v19 = contextCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", &v14, 0x2Au);
  }

  if ([(POAgentProcess *)self verifyAgentEntitlement]|| [(POAgentProcess *)self verifyLoginUserEntitlement])
  {
    [(POAgentProcess *)self _saveCredentialForUserName:nameCopy passwordContext:contextCopy completion:completionCopy];
  }

  else
  {
    v12 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v29 = "[POAgentProcess _saveCredentialForUserName:passwordContext:completion:]";
    v30 = 2114;
    v31 = nameCopy;
    v32 = 2114;
    v33 = contextCopy;
    v34 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEBUG, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = [[POConfigurationManager alloc] initWithUserName:nameCopy];
  v13 = [objc_alloc(MEMORY[0x277CD4790]) initWithExternalizedContext:contextCopy];
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
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v17);
    }
  }

  else
  {
    keyWrap = [(POAgentProcess *)self keyWrap];
    v19 = [keyWrap wrapBlob:v14];
    currentUserConfiguration = [(POConfigurationManager *)v12 currentUserConfiguration];
    [currentUserConfiguration set_credential:v19];

    memset_s([v14 mutableBytes], objc_msgSend(v14, "length"), 0, objc_msgSend(v14, "length"));
    if ([(POConfigurationManager *)v12 saveCurrentUserConfigurationAndSyncToPreboot:0])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111;
      v23[3] = &unk_279A3A088;
      v24 = nameCopy;
      v21 = __72__POAgentProcess__saveCredentialForUserName_passwordContext_completion___block_invoke_111(v23);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v21);
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

- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  contextCopy = context;
  completionCopy = completion;
  v11 = PO_LOG_POAgentProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[POAgentProcess passwordDidChangeForUsername:passwordContext:completion:]";
    v16 = 2114;
    v17 = usernameCopy;
    v18 = 2114;
    v19 = contextCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", &v14, 0x2Au);
  }

  if ([(POAgentProcess *)self verifyPasswordChangeEntitlement])
  {
    [(POAgentProcess *)self _saveCredentialForUserName:usernameCopy passwordContext:contextCopy completion:completionCopy];
  }

  else
  {
    v12 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed completion:(id)completion
{
  removedCopy = removed;
  extensionCopy = extension;
  completionCopy = completion;
  if ([(POAgentProcess *)self verifyAgentEntitlement])
  {
    if (removedCopy)
    {
      process = [(POAgentProcess *)self process];
      [process configurationRemovedForExtension:extensionCopy];
    }

    process2 = [(POAgentProcess *)self process];
    [process2 configurationChanged];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v11 = __62__POAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke();
    completionCopy[2](completionCopy, 0, v11);

    completionCopy = v11;
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