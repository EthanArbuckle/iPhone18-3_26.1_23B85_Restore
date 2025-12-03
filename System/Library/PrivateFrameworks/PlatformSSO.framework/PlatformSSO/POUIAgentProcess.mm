@interface POUIAgentProcess
- (POUIAgentProcess)initWithXPCConnection:(id)connection authenticationProcess:(id)process;
- (void)connectionInvalidated;
- (void)deviceStatusWithCompletion:(id)completion;
- (void)startAction:(int64_t)action forUserName:(id)name completion:(id)completion;
- (void)startDeviceAction:(int64_t)action completion:(id)completion;
- (void)statusForUser:(id)user completion:(id)completion;
@end

@implementation POUIAgentProcess

- (POUIAgentProcess)initWithXPCConnection:(id)connection authenticationProcess:(id)process
{
  connectionCopy = connection;
  processCopy = process;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.platformsso.settings"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {
    v19.receiver = self;
    v19.super_class = POUIAgentProcess;
    v10 = [(POUIAgentProcess *)&v19 init];
    if (v10)
    {
      v11 = +[POConfigurationManager sharedInstance];
      configurationManager = v10->_configurationManager;
      v10->_configurationManager = v11;

      defaultManager = [MEMORY[0x277CEBEE0] defaultManager];
      configurationHost = v10->_configurationHost;
      v10->_configurationHost = defaultManager;

      v15 = objc_storeWeak(&v10->_xpcConnection, connectionCopy);
      [connectionCopy setInterruptionHandler:&__block_literal_global_10];

      objc_storeStrong(&v10->_agentProcess, process);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v17 = PO_LOG_POAgentProcess_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [POUIAgentProcess initWithXPCConnection:v17 authenticationProcess:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[POUIAgentProcess connectionInvalidated]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess deviceStatusWithCompletion:];
  }

  v6 = objc_alloc_init(PODeviceRegistrationStatus);
  [(PODeviceRegistrationStatus *)v6 setPlatformSSOEnabled:+[POConfigurationUtil platformSSOEnabled]];
  if (![(PODeviceRegistrationStatus *)v6 isPlatformSSOEnabled])
  {
    completionCopy[2](completionCopy, v6, 0);
    goto LABEL_43;
  }

  configurationManager = [(POUIAgentProcess *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];

  if (!currentDeviceConfiguration)
  {
    v9 = __47__POUIAgentProcess_deviceStatusWithCompletion___block_invoke();
  }

  v10 = [POProfile alloc];
  configurationHost = [(POUIAgentProcess *)self configurationHost];
  validatedProfileForPlatformSSO = [configurationHost validatedProfileForPlatformSSO];
  v13 = [(POProfile *)v10 initWithProfile:validatedProfileForPlatformSSO];

  if (!v13)
  {
    v14 = __47__POUIAgentProcess_deviceStatusWithCompletion___block_invoke_13();
  }

  accountDisplayName = [currentDeviceConfiguration accountDisplayName];
  if (accountDisplayName)
  {
    [(PODeviceRegistrationStatus *)v6 setAccountName:accountDisplayName];
  }

  else
  {
    configurationManager2 = [(POUIAgentProcess *)self configurationManager];
    currentLoginConfiguration = [configurationManager2 currentLoginConfiguration];
    accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
    [(PODeviceRegistrationStatus *)v6 setAccountName:accountDisplayName2];
  }

  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];
  if (extensionIdentifier)
  {
    [(PODeviceRegistrationStatus *)v6 setRegisteredBundleIdentifier:extensionIdentifier];
  }

  else
  {
    extensionBundleIdentifier = [(POProfile *)v13 extensionBundleIdentifier];
    [(PODeviceRegistrationStatus *)v6 setRegisteredBundleIdentifier:extensionBundleIdentifier];
  }

  v21 = MEMORY[0x277CC1E90];
  registeredBundleIdentifier = [(PODeviceRegistrationStatus *)v6 registeredBundleIdentifier];
  v39 = 0;
  v23 = [v21 bundleRecordWithBundleIdentifier:registeredBundleIdentifier allowPlaceholder:1 error:&v39];
  v24 = v39;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localizedName = [v23 localizedName];
    [(PODeviceRegistrationStatus *)v6 setRegisteredExtensionName:localizedName];
  }

  agentProcess = [(POUIAgentProcess *)self agentProcess];
  registrationManager = [agentProcess registrationManager];
  registrationState = [registrationManager registrationState];

  v29 = 1;
  v30 = 2;
  if (registrationState <= 3)
  {
    if (registrationState > 1)
    {
      if (registrationState == 2)
      {
LABEL_28:
        v29 = 0;
        v30 = 1;
        goto LABEL_36;
      }

      v30 = 1;
      v29 = 1;
    }

    else
    {
      if (registrationState)
      {
        v31 = 2;
        if (registrationState != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (currentDeviceConfiguration && ([currentDeviceConfiguration registrationCompleted] & 1) != 0)
      {
        v29 = 1;
        v30 = 2;
        v31 = 2;
        goto LABEL_37;
      }

      agentProcess2 = [(POUIAgentProcess *)self agentProcess];
      registrationManager2 = [agentProcess2 registrationManager];
      registrationFailed = [registrationManager2 registrationFailed];

      if (registrationFailed)
      {
        v30 = 3;
      }

      else
      {
        v30 = 0;
      }

      v29 = 1;
    }

LABEL_36:
    v31 = 1;
    goto LABEL_37;
  }

  v31 = 2;
  if ((registrationState - 6) < 3)
  {
LABEL_37:
    [(PODeviceRegistrationStatus *)v6 setDeviceRegistrationStatus:v30];
    [(PODeviceRegistrationStatus *)v6 setActionButtonEnabled:v29];
    [(PODeviceRegistrationStatus *)v6 setActionButtonAction:v31];
    goto LABEL_38;
  }

  if (registrationState == 4)
  {
    goto LABEL_28;
  }

  if (registrationState == 5)
  {
    v31 = 1;
    v30 = 3;
    v29 = 1;
    goto LABEL_37;
  }

LABEL_38:
  configurationManager3 = [(POUIAgentProcess *)self configurationManager];
  v36 = NSUserName();
  v37 = [configurationManager3 isTemporaryAccountUserName:v36];

  if (v37)
  {
    [(PODeviceRegistrationStatus *)v6 setActionButtonEnabled:0];
  }

  v38 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess deviceStatusWithCompletion:];
  }

  completionCopy[2](completionCopy, v6, 0);
LABEL_43:
}

id __47__POUIAgentProcess_deviceStatusWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"Device configuration not found when retrieving device UI status."];
  v1 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __47__POUIAgentProcess_deviceStatusWithCompletion___block_invoke_13()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"No validated Platform SSO Profiles found when retrieving device UI status."];
  v1 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)startDeviceAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  v7 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess startDeviceAction:action completion:?];
  }

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__POUIAgentProcess_startDeviceAction_completion___block_invoke;
  block[3] = &unk_279A3AB60;
  v11 = completionCopy;
  actionCopy = action;
  block[4] = self;
  v9 = completionCopy;
  dispatch_async(v8, block);
}

uint64_t __49__POUIAgentProcess_startDeviceAction_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v3 = 1;
  }

  v4 = [*(a1 + 32) agentProcess];
  v5 = [v4 registrationManager];
  [v5 handleDeviceAndUserRegistrationForRepair:v3 newPasswordUser:0 newSmartCardUser:0 notified:1 profile:0];

LABEL_6:
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)statusForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v8 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess statusForUser:completion:];
  }

  v9 = objc_alloc_init(POUserRegistrationStatus);
  [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:+[POConfigurationUtil platformSSOEnabled]];
  if ([(POUserRegistrationStatus *)v9 isPlatformSSOEnabled])
  {
    configurationManager = [(POUIAgentProcess *)self configurationManager];
    v11 = NSUserName();
    v12 = [userCopy isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [[POConfigurationManager alloc] initWithUserName:userCopy];

      configurationManager = v13;
    }

    currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];
    if (!currentDeviceConfiguration)
    {
      v25 = __45__POUIAgentProcess_statusForUser_completion___block_invoke();
      [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:0];
      completionCopy[2](completionCopy, v9, 0);
LABEL_45:

      goto LABEL_46;
    }

    currentUserConfiguration = [configurationManager currentUserConfiguration];
    if (!currentUserConfiguration)
    {
      v16 = __45__POUIAgentProcess_statusForUser_completion___block_invoke_28();
    }

    userLoginConfiguration = [currentUserConfiguration userLoginConfiguration];
    loginUserName = [userLoginConfiguration loginUserName];
    [(POUserRegistrationStatus *)v9 setLoginUserName:loginUserName];

    -[POUserRegistrationStatus setAuthenticationMethod:](v9, "setAuthenticationMethod:", [currentUserConfiguration loginType]);
    v19 = NSUserName();
    LOBYTE(loginUserName) = [userCopy isEqualToString:v19];

    if (loginUserName)
    {
      agentProcess = [(POUIAgentProcess *)self agentProcess];
      registrationManager = [agentProcess registrationManager];
      registrationState = [registrationManager registrationState];

      if (registrationState > 5)
      {
        if ((registrationState - 6) < 2)
        {
          v23 = v9;
          v24 = 1;
          goto LABEL_23;
        }

        if (registrationState == 8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if ((registrationState - 2) < 4)
        {
          [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:1];
          v23 = v9;
          v24 = 0;
LABEL_23:
          [(POUserRegistrationStatus *)v23 setUserRegistrationStatus:v24];
          v30 = v9;
          v31 = 0;
LABEL_30:
          [(POUserRegistrationStatus *)v30 setActionButtonEnabled:v31];
          [(POUserRegistrationStatus *)v9 setActionButtonAction:1];
          goto LABEL_33;
        }

        if (registrationState < 2)
        {
          agentProcess2 = [(POUIAgentProcess *)self agentProcess];
          registrationManager2 = [agentProcess2 registrationManager];
          registrationFailed = [registrationManager2 registrationFailed];

          if (!registrationFailed)
          {
            [(POUserRegistrationStatus *)v9 setUserRegistrationStatus:2];
            [(POUserRegistrationStatus *)v9 setActionButtonEnabled:1];
            [(POUserRegistrationStatus *)v9 setActionButtonAction:2];
            [(POUserRegistrationStatus *)v9 setAuthenticateButtonEnabled:1];
            goto LABEL_33;
          }

LABEL_29:
          [(POUserRegistrationStatus *)v9 setUserRegistrationStatus:3];
          v30 = v9;
          v31 = 1;
          goto LABEL_30;
        }
      }

LABEL_33:
      currentRefreshToken = [configurationManager currentRefreshToken];

      v49 = currentUserConfiguration;
      if (currentRefreshToken)
      {
        tokenExpiration = [configurationManager tokenExpiration];
        [tokenExpiration timeIntervalSinceNow];
        v38 = v37;

        if (v38 > 0.0)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }
      }

      else
      {
        v39 = 0;
      }

      [(POUserRegistrationStatus *)v9 setUserTokenStatus:v39];
      v40 = currentDeviceConfiguration;
      nonPlatformSSOAccounts = [currentDeviceConfiguration nonPlatformSSOAccounts];
      v42 = NSUserName();
      lowercaseString = [v42 lowercaseString];
      v44 = [nonPlatformSSOAccounts containsObject:lowercaseString];

      if (v44)
      {
        [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:0];
        [(POUserRegistrationStatus *)v9 setUserRegistrationStatus:0];
        [(POUserRegistrationStatus *)v9 setActionButtonAction:0];
        [(POUserRegistrationStatus *)v9 setActionButtonEnabled:0];
        [(POUserRegistrationStatus *)v9 setAuthenticateButtonEnabled:0];
      }

      configurationManager2 = [(POUIAgentProcess *)self configurationManager];
      v46 = NSUserName();
      v47 = [configurationManager2 isTemporaryAccountUserName:v46];

      if (v47)
      {
        [(POUserRegistrationStatus *)v9 setActionButtonEnabled:0];
        [(POUserRegistrationStatus *)v9 setActionButtonAction:0];
      }

      v48 = PO_LOG_POAgentProcess_0();
      currentDeviceConfiguration = v40;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [POUIAgentProcess statusForUser:completion:];
      }

      completionCopy[2](completionCopy, v9, 0);
      goto LABEL_45;
    }

    [(POUserRegistrationStatus *)v9 setActionButtonEnabled:0];
    [(POUserRegistrationStatus *)v9 setAuthenticateButtonEnabled:0];
    if (currentUserConfiguration)
    {
      state = [currentUserConfiguration state];
      if (state > 7)
      {
        goto LABEL_33;
      }

      if (((1 << state) & 0x2C) != 0)
      {
        v28 = v9;
        v29 = 3;
      }

      else
      {
        v27 = 1 << state;
        v28 = v9;
        if ((v27 & 0xD0) != 0)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }
      }
    }

    else
    {
      v28 = v9;
      v29 = 0;
    }

    [(POUserRegistrationStatus *)v28 setUserRegistrationStatus:v29];
    goto LABEL_33;
  }

  completionCopy[2](completionCopy, v9, 0);
LABEL_46:
}

id __45__POUIAgentProcess_statusForUser_completion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"Device configuration not found when retrieving user UI status."];
  v1 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __45__POUIAgentProcess_statusForUser_completion___block_invoke_28()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"User configuration not found when retrieving user UI status."];
  v1 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)startAction:(int64_t)action forUserName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v10 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess startAction:action forUserName:? completion:?];
  }

  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__POUIAgentProcess_startAction_forUserName_completion___block_invoke;
  v14[3] = &unk_279A3A560;
  v14[4] = self;
  v15 = nameCopy;
  v16 = completionCopy;
  actionCopy = action;
  v12 = completionCopy;
  v13 = nameCopy;
  dispatch_async(v11, v14);
}

uint64_t __55__POUIAgentProcess_startAction_forUserName_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  switch(v2)
  {
    case 3:
      v3 = [*(a1 + 32) agentProcess];
      [(POConfigurationManager *)v3 requestUserAuthenticationWithUserInfo:0 forceLogin:1];
      break;
    case 2:
      v3 = [[POConfigurationManager alloc] initWithUserName:*(a1 + 40)];
      v5 = [(POConfigurationManager *)v3 currentUserConfiguration];
      v6 = [v5 userLoginConfiguration];
      v7 = [v6 loginUserName];

      v8 = [*(a1 + 32) agentProcess];
      v9 = [v8 registrationManager];
      [v9 handleUserRegistrationForUser:v7 repair:1 newPasswordUser:0 newSmartCardUser:0 notified:1 profile:0];

      break;
    case 1:
      v3 = [*(a1 + 32) agentProcess];
      v4 = [(POConfigurationManager *)v3 registrationManager];
      [v4 handleUserRegistrationForUser:0 repair:0 newPasswordUser:0 newSmartCardUser:0 notified:1 profile:0];

      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

- (void)deviceStatusWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deviceStatusWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startDeviceAction:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [POConstantUtil stringForDeviceAction:a1];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5_3(&dword_25E831000, v2, v3, "%s action=%{public}@ on %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)statusForUser:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)statusForUser:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startAction:(uint64_t)a1 forUserName:completion:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [POConstantUtil stringForUserAction:a1];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5_3(&dword_25E831000, v2, v3, "%s action=%{public}@ on %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end