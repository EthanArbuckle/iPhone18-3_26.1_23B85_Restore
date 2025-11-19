@interface POUIAgentProcess
- (POUIAgentProcess)initWithXPCConnection:(id)a3 authenticationProcess:(id)a4;
- (void)connectionInvalidated;
- (void)deviceStatusWithCompletion:(id)a3;
- (void)startAction:(int64_t)a3 forUserName:(id)a4 completion:(id)a5;
- (void)startDeviceAction:(int64_t)a3 completion:(id)a4;
- (void)statusForUser:(id)a3 completion:(id)a4;
@end

@implementation POUIAgentProcess

- (POUIAgentProcess)initWithXPCConnection:(id)a3 authenticationProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForEntitlement:@"com.apple.private.platformsso.settings"];
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

      v13 = [MEMORY[0x277CEBEE0] defaultManager];
      configurationHost = v10->_configurationHost;
      v10->_configurationHost = v13;

      v15 = objc_storeWeak(&v10->_xpcConnection, v6);
      [v6 setInterruptionHandler:&__block_literal_global_10];

      objc_storeStrong(&v10->_agentProcess, a4);
    }

    self = v10;
    v16 = self;
  }

  else
  {
    v17 = PO_LOG_POAgentProcess_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [POUIAgentProcess initWithXPCConnection:v17 authenticationProcess:?];
    }

    v16 = 0;
  }

  return v16;
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
    v8 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)deviceStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess deviceStatusWithCompletion:];
  }

  v6 = objc_alloc_init(PODeviceRegistrationStatus);
  [(PODeviceRegistrationStatus *)v6 setPlatformSSOEnabled:+[POConfigurationUtil platformSSOEnabled]];
  if (![(PODeviceRegistrationStatus *)v6 isPlatformSSOEnabled])
  {
    v4[2](v4, v6, 0);
    goto LABEL_43;
  }

  v7 = [(POUIAgentProcess *)self configurationManager];
  v8 = [v7 currentDeviceConfiguration];

  if (!v8)
  {
    v9 = __47__POUIAgentProcess_deviceStatusWithCompletion___block_invoke();
  }

  v10 = [POProfile alloc];
  v11 = [(POUIAgentProcess *)self configurationHost];
  v12 = [v11 validatedProfileForPlatformSSO];
  v13 = [(POProfile *)v10 initWithProfile:v12];

  if (!v13)
  {
    v14 = __47__POUIAgentProcess_deviceStatusWithCompletion___block_invoke_13();
  }

  v15 = [v8 accountDisplayName];
  if (v15)
  {
    [(PODeviceRegistrationStatus *)v6 setAccountName:v15];
  }

  else
  {
    v16 = [(POUIAgentProcess *)self configurationManager];
    v17 = [v16 currentLoginConfiguration];
    v18 = [v17 accountDisplayName];
    [(PODeviceRegistrationStatus *)v6 setAccountName:v18];
  }

  v19 = [v8 extensionIdentifier];
  if (v19)
  {
    [(PODeviceRegistrationStatus *)v6 setRegisteredBundleIdentifier:v19];
  }

  else
  {
    v20 = [(POProfile *)v13 extensionBundleIdentifier];
    [(PODeviceRegistrationStatus *)v6 setRegisteredBundleIdentifier:v20];
  }

  v21 = MEMORY[0x277CC1E90];
  v22 = [(PODeviceRegistrationStatus *)v6 registeredBundleIdentifier];
  v39 = 0;
  v23 = [v21 bundleRecordWithBundleIdentifier:v22 allowPlaceholder:1 error:&v39];
  v24 = v39;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v23 localizedName];
    [(PODeviceRegistrationStatus *)v6 setRegisteredExtensionName:v25];
  }

  v26 = [(POUIAgentProcess *)self agentProcess];
  v27 = [v26 registrationManager];
  v28 = [v27 registrationState];

  v29 = 1;
  v30 = 2;
  if (v28 <= 3)
  {
    if (v28 > 1)
    {
      if (v28 == 2)
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
      if (v28)
      {
        v31 = 2;
        if (v28 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v8 && ([v8 registrationCompleted] & 1) != 0)
      {
        v29 = 1;
        v30 = 2;
        v31 = 2;
        goto LABEL_37;
      }

      v32 = [(POUIAgentProcess *)self agentProcess];
      v33 = [v32 registrationManager];
      v34 = [v33 registrationFailed];

      if (v34)
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
  if ((v28 - 6) < 3)
  {
LABEL_37:
    [(PODeviceRegistrationStatus *)v6 setDeviceRegistrationStatus:v30];
    [(PODeviceRegistrationStatus *)v6 setActionButtonEnabled:v29];
    [(PODeviceRegistrationStatus *)v6 setActionButtonAction:v31];
    goto LABEL_38;
  }

  if (v28 == 4)
  {
    goto LABEL_28;
  }

  if (v28 == 5)
  {
    v31 = 1;
    v30 = 3;
    v29 = 1;
    goto LABEL_37;
  }

LABEL_38:
  v35 = [(POUIAgentProcess *)self configurationManager];
  v36 = NSUserName();
  v37 = [v35 isTemporaryAccountUserName:v36];

  if (v37)
  {
    [(PODeviceRegistrationStatus *)v6 setActionButtonEnabled:0];
  }

  v38 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess deviceStatusWithCompletion:];
  }

  v4[2](v4, v6, 0);
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

- (void)startDeviceAction:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess startDeviceAction:a3 completion:?];
  }

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__POUIAgentProcess_startDeviceAction_completion___block_invoke;
  block[3] = &unk_279A3AB60;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
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

- (void)statusForUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess statusForUser:completion:];
  }

  v9 = objc_alloc_init(POUserRegistrationStatus);
  [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:+[POConfigurationUtil platformSSOEnabled]];
  if ([(POUserRegistrationStatus *)v9 isPlatformSSOEnabled])
  {
    v10 = [(POUIAgentProcess *)self configurationManager];
    v11 = NSUserName();
    v12 = [v6 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [[POConfigurationManager alloc] initWithUserName:v6];

      v10 = v13;
    }

    v14 = [v10 currentDeviceConfiguration];
    if (!v14)
    {
      v25 = __45__POUIAgentProcess_statusForUser_completion___block_invoke();
      [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:0];
      v7[2](v7, v9, 0);
LABEL_45:

      goto LABEL_46;
    }

    v15 = [v10 currentUserConfiguration];
    if (!v15)
    {
      v16 = __45__POUIAgentProcess_statusForUser_completion___block_invoke_28();
    }

    v17 = [v15 userLoginConfiguration];
    v18 = [v17 loginUserName];
    [(POUserRegistrationStatus *)v9 setLoginUserName:v18];

    -[POUserRegistrationStatus setAuthenticationMethod:](v9, "setAuthenticationMethod:", [v15 loginType]);
    v19 = NSUserName();
    LOBYTE(v18) = [v6 isEqualToString:v19];

    if (v18)
    {
      v20 = [(POUIAgentProcess *)self agentProcess];
      v21 = [v20 registrationManager];
      v22 = [v21 registrationState];

      if (v22 > 5)
      {
        if ((v22 - 6) < 2)
        {
          v23 = v9;
          v24 = 1;
          goto LABEL_23;
        }

        if (v22 == 8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if ((v22 - 2) < 4)
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

        if (v22 < 2)
        {
          v32 = [(POUIAgentProcess *)self agentProcess];
          v33 = [v32 registrationManager];
          v34 = [v33 registrationFailed];

          if (!v34)
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
      v35 = [v10 currentRefreshToken];

      v49 = v15;
      if (v35)
      {
        v36 = [v10 tokenExpiration];
        [v36 timeIntervalSinceNow];
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
      v40 = v14;
      v41 = [v14 nonPlatformSSOAccounts];
      v42 = NSUserName();
      v43 = [v42 lowercaseString];
      v44 = [v41 containsObject:v43];

      if (v44)
      {
        [(POUserRegistrationStatus *)v9 setPlatformSSOEnabled:0];
        [(POUserRegistrationStatus *)v9 setUserRegistrationStatus:0];
        [(POUserRegistrationStatus *)v9 setActionButtonAction:0];
        [(POUserRegistrationStatus *)v9 setActionButtonEnabled:0];
        [(POUserRegistrationStatus *)v9 setAuthenticateButtonEnabled:0];
      }

      v45 = [(POUIAgentProcess *)self configurationManager];
      v46 = NSUserName();
      v47 = [v45 isTemporaryAccountUserName:v46];

      if (v47)
      {
        [(POUserRegistrationStatus *)v9 setActionButtonEnabled:0];
        [(POUserRegistrationStatus *)v9 setActionButtonAction:0];
      }

      v48 = PO_LOG_POAgentProcess_0();
      v14 = v40;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [POUIAgentProcess statusForUser:completion:];
      }

      v7[2](v7, v9, 0);
      goto LABEL_45;
    }

    [(POUserRegistrationStatus *)v9 setActionButtonEnabled:0];
    [(POUserRegistrationStatus *)v9 setAuthenticateButtonEnabled:0];
    if (v15)
    {
      v26 = [v15 state];
      if (v26 > 7)
      {
        goto LABEL_33;
      }

      if (((1 << v26) & 0x2C) != 0)
      {
        v28 = v9;
        v29 = 3;
      }

      else
      {
        v27 = 1 << v26;
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

  v7[2](v7, v9, 0);
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

- (void)startAction:(int64_t)a3 forUserName:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = PO_LOG_POAgentProcess_0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POUIAgentProcess startAction:a3 forUserName:? completion:?];
  }

  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__POUIAgentProcess_startAction_forUserName_completion___block_invoke;
  v14[3] = &unk_279A3A560;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v12 = v9;
  v13 = v8;
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