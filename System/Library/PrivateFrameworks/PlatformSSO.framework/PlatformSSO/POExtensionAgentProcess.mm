@interface POExtensionAgentProcess
- (BOOL)isCallerCurrentSSOExtension;
- (BOOL)isURL:(id)a3 validForProfile:(id)a4;
- (POExtensionAgentProcess)init;
- (POExtensionAgentProcess)initWithXPCConnection:(id)a3 authenticationProcess:(id)a4;
- (__SecKey)_keyForKeyType:(int64_t)a3 error:(id *)a4;
- (id)bundleIdentifierForXPCConnection:(id)a3;
- (id)identityForKeyType:(int64_t)a3;
- (id)keyProxyEndpointForKeyType:(int64_t)a3;
- (void)addEvent:(id)a3;
- (void)addEvent:(id)a3 forKeyType:(int64_t)a4;
- (void)attestKey:(int64_t)a3 pending:(BOOL)a4 clientDataHash:(id)a5 completion:(id)a6;
- (void)authenticationMethodWithCompletion:(id)a3;
- (void)completeRotationKeyForKeyType:(int64_t)a3 completion:(id)a4;
- (void)connectionInvalidated;
- (void)deviceRegistrationsNeedsRepairWithCompletion:(id)a3;
- (void)invalidateAllKeyProxies;
- (void)isCallerCurrentSSOExtension;
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

@implementation POExtensionAgentProcess

- (POExtensionAgentProcess)init
{
  v14.receiver = self;
  v14.super_class = POExtensionAgentProcess;
  v2 = [(POExtensionAgentProcess *)&v14 init];
  if (v2)
  {
    v3 = +[POConfigurationManager sharedInstance];
    configurationManager = v2->_configurationManager;
    v2->_configurationManager = v3;

    v5 = [MEMORY[0x277CEBEE0] defaultManager];
    configurationHost = v2->_configurationHost;
    v2->_configurationHost = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    keyProxies = v2->_keyProxies;
    v2->_keyProxies = v7;

    v9 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v2->_keychainHelper;
    v2->_keychainHelper = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    analytics = v2->__analytics;
    v2->__analytics = v11;
  }

  return v2;
}

- (POExtensionAgentProcess)initWithXPCConnection:(id)a3 authenticationProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(POExtensionAgentProcess *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_xpcConnection, v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__POExtensionAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke;
    v13[3] = &unk_279A3A060;
    v10 = v9;
    v14 = v10;
    WeakRetained = objc_loadWeakRetained(&v9->_xpcConnection);
    [WeakRetained setInterruptionHandler:v13];

    objc_storeStrong(v10 + 4, a4);
  }

  return v9;
}

void __71__POExtensionAgentProcess_initWithXPCConnection_authenticationProcess___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateAllKeyProxies];
  v2 = [*(a1 + 32) authenticationObserver];

  if (v2)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = [*(a1 + 32) authenticationObserver];
    [v4 removeObserver:v3];
  }
}

- (void)connectionInvalidated
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[POExtensionAgentProcess connectionInvalidated]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v4 = MEMORY[0x277D3D1B8];
  v5 = [(POExtensionAgentProcess *)self _analytics];
  [v4 analyticsForLoginManager:v5];

  [(POExtensionAgentProcess *)self invalidateAllKeyProxies];
  v6 = [(POExtensionAgentProcess *)self authenticationObserver];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = [(POExtensionAgentProcess *)self authenticationObserver];
    [v7 removeObserver:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (__SecKey)_keyForKeyType:(int64_t)a3 error:(id *)a4
{
  v7 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess _keyForKeyType:error:];
  }

  if (a4)
  {
    *a4 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v9 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v9)
  {
    v10 = [(POExtensionAgentProcess *)self configurationManager];
    v11 = [v10 currentDeviceConfiguration];

    if (!v11 || ![(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_10;
      v48[3] = &unk_279A3A088;
      v49 = v9;
      v18 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_10(v48);
      v19 = 0;
      v12 = v49;
      goto LABEL_44;
    }

    v12 = objc_alloc_init(MEMORY[0x277CD4790]);
    v47 = 0;
    if (a3 <= 4)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v15 = [(POExtensionAgentProcess *)self configurationManager];
          v16 = [v15 currentUserConfiguration];
          v17 = [v16 sepKeyWithContext:v12];
LABEL_33:
          v19 = v17;
          v47 = v17;

          if (!v19)
          {
            goto LABEL_41;
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      else
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_41;
          }

          v13 = [(POExtensionAgentProcess *)self configurationManager];
          v14 = [v13 userDeviceConfiguration];

          if (v14)
          {
            v15 = [(POExtensionAgentProcess *)self configurationManager];
            v16 = [v15 userDeviceConfiguration];
            v17 = [v16 deviceEncryptionKeyWithContext:v12];
            goto LABEL_33;
          }

          goto LABEL_26;
        }

        v24 = [(POExtensionAgentProcess *)self configurationManager];
        v25 = [v24 userDeviceConfiguration];

        if (v25)
        {
          v15 = [(POExtensionAgentProcess *)self configurationManager];
          v16 = [v15 userDeviceConfiguration];
          v17 = [v16 deviceSigningKeyWithContext:v12];
          goto LABEL_33;
        }
      }

LABEL_29:
      v23 = [v11 deviceSigningKeyWithContext:v12];
LABEL_30:
      v19 = v23;
      v47 = v23;
      if (v23)
      {
        goto LABEL_44;
      }

LABEL_41:
      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v35 = [v33 stringWithFormat:@"%@, %@", v9, v34];

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_27;
      v42[3] = &unk_279A3A088;
      v43 = v35;
      v36 = v35;
      v37 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_27(v42);
      if (a4)
      {
        v37 = v37;
        *a4 = v37;
      }

      v19 = 0;
      goto LABEL_44;
    }

    if (a3 > 10)
    {
      if (a3 != 11)
      {
        if (a3 == 20)
        {
          cf = 0;
          v44 = 0u;
          v45 = 0u;
          v21 = objc_loadWeakRetained(&self->_xpcConnection);
          v22 = v21;
          if (v21)
          {
            [v21 auditToken];
          }

          else
          {
            v44 = 0u;
            v45 = 0u;
          }

          v26 = [MEMORY[0x277CBEA90] dataWithBytes:&v44 length:32];
          [v12 setOptionCallerAuditToken:v26];

          v39 = [(POExtensionAgentProcess *)self keychainHelper];
          v41 = [(POExtensionAgentProcess *)self configurationManager];
          v40 = [v41 currentUserConfiguration];
          v27 = [v40 smartCardTokenId];
          v28 = [(POExtensionAgentProcess *)self configurationManager];
          v29 = [v28 currentUserConfiguration];
          v30 = [v29 smartCardHash];
          v31 = [v39 retrieveCertAndKeyForTokenId:v27 context:v12 forSigning:1 hash:v30 certificate:&cf privateKey:&v47];

          if ((v31 & 1) == 0)
          {
            v32 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_16();
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v19 = v47;
          if (v47)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_41;
      }
    }

    else if (a3 != 5)
    {
      if (a3 != 10)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

LABEL_26:
    v23 = [v11 deviceEncryptionKeyWithContext:v12];
    goto LABEL_30;
  }

  v20 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
  v19 = 0;
LABEL_45:

  return v19;
}

id __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to retrieve extension identifier."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_10(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_16()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find SmartCard."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke_27(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"Key not found for extension identifier."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (id)keyProxyEndpointForKeyType:(int64_t)a3
{
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess keyProxyEndpointForKeyType:];
  }

  v6 = [(POExtensionAgentProcess *)self _keyForKeyType:a3 error:0];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CDBD80]) initWithKey:v6];
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(POExtensionAgentProcess *)v8 keyProxies];
    [v9 addObject:v7];

    objc_sync_exit(v8);
    v10 = [v7 endpoint];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)identityForKeyType:(int64_t)a3
{
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess identityForKeyType:];
  }

  v6 = [(POExtensionAgentProcess *)self configurationManager];
  v7 = [v6 currentDeviceConfiguration];

  if (!v7)
  {
    v8 = __46__POExtensionAgentProcess_identityForKeyType___block_invoke();
LABEL_25:
    v21 = 0;
    goto LABEL_29;
  }

  v40 = 0;
  if (a3 <= 4)
  {
    switch(a3)
    {
      case 1:
        v11 = [(POExtensionAgentProcess *)self configurationManager];
        v12 = [v11 userDeviceConfiguration];

        if (!v12)
        {
LABEL_20:
          v16 = [v7 deviceSigningIdentity];
          goto LABEL_27;
        }

        v13 = [(POExtensionAgentProcess *)self configurationManager];
        v14 = [v13 userDeviceConfiguration];
        v15 = [v14 deviceSigningIdentity];
        break;
      case 2:
        v17 = [(POExtensionAgentProcess *)self configurationManager];
        v18 = [v17 userDeviceConfiguration];

        if (!v18)
        {
          goto LABEL_26;
        }

        v13 = [(POExtensionAgentProcess *)self configurationManager];
        v14 = [v13 userDeviceConfiguration];
        v15 = [v14 deviceEncryptionIdentity];
        break;
      case 4:
        goto LABEL_20;
      default:
        goto LABEL_24;
    }

    v19 = v15;
    v40 = v15;

    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (a3 <= 10)
  {
    if (a3 != 5)
    {
      if (a3 != 10)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_26:
    v16 = [v7 deviceEncryptionIdentity];
LABEL_27:
    v40 = v16;
    if (v16)
    {
      goto LABEL_28;
    }

LABEL_24:
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __46__POExtensionAgentProcess_identityForKeyType___block_invoke_43;
    v37[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v37[4] = a3;
    v20 = __46__POExtensionAgentProcess_identityForKeyType___block_invoke_43(v37);
    goto LABEL_25;
  }

  if (a3 == 11)
  {
    goto LABEL_26;
  }

  if (a3 != 20)
  {
    goto LABEL_24;
  }

  v36 = objc_alloc_init(MEMORY[0x277CD4790]);
  v38 = 0u;
  v39 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained auditToken];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v27 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:32];
  [v36 setOptionCallerAuditToken:v27];

  v34 = [(POExtensionAgentProcess *)self keychainHelper];
  v35 = [(POExtensionAgentProcess *)self configurationManager];
  v28 = [v35 currentUserConfiguration];
  v29 = [v28 smartCardTokenId];
  v30 = [(POExtensionAgentProcess *)self configurationManager];
  v31 = [v30 currentUserConfiguration];
  v32 = [v31 smartCardHash];
  LOBYTE(v27) = [v34 retrieveIdentityForTokenId:v29 context:v36 forSigning:1 hash:v32 identity:&v40];

  if ((v27 & 1) == 0)
  {
    v33 = __46__POExtensionAgentProcess_identityForKeyType___block_invoke_37();
  }

  if (!v40)
  {
    goto LABEL_24;
  }

LABEL_28:
  v22 = objc_alloc(MEMORY[0x277CDBD80]);
  v23 = [v22 initWithIdentity:v40];
  v24 = self;
  objc_sync_enter(v24);
  v25 = [(POExtensionAgentProcess *)v24 keyProxies];
  [v25 addObject:v23];

  objc_sync_exit(v24);
  v21 = [v23 endpoint];

LABEL_29:

  return v21;
}

id __46__POExtensionAgentProcess_identityForKeyType___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"No device configuration for identity."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __46__POExtensionAgentProcess_identityForKeyType___block_invoke_37()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"Failed to find SmartCard identity."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __46__POExtensionAgentProcess_identityForKeyType___block_invoke_43(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"Key not found."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__POExtensionAgentProcess_identityForKeyType___block_invoke_43_cold_1(v2, a1, v3);
  }

  return v2;
}

- (void)invalidateAllKeyProxies
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)bundleIdentifierForXPCConnection:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  memset(&error[1], 0, 32);
  if (v3)
  {
    [v3 auditToken];
  }

  token = *&error[1];
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    if ((SecTaskGetCodeSignStatus(v5) & 0x4000) != 0)
    {
      error[0] = 0;
      token = *&error[1];
      if (CPCopyBundleIdentifierAndTeamFromAuditToken())
      {
        v11 = error[0];
        v9 = PO_LOG_POExtensionAgentProcess();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [POExtensionAgentProcess bundleIdentifierForXPCConnection:];
        }

        goto LABEL_32;
      }

      v14 = PO_LOG_POExtensionAgentProcess();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_25E831000, v14, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken() failed, trying SecTaskCopySigningIdentifier().", &token, 2u);
      }

      v19 = 0;
      v9 = SecTaskCopySigningIdentifier(v6, &v19);
      CFRelease(v6);
      if (v19)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __60__POExtensionAgentProcess_bundleIdentifierForXPCConnection___block_invoke;
        v18[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v18[4] = v19;
        v15 = __60__POExtensionAgentProcess_bundleIdentifierForXPCConnection___block_invoke(v18);
        goto LABEL_27;
      }

      v13 = PO_LOG_POExtensionAgentProcess();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        token.val[0] = 138543362;
        *&token.val[1] = v9;
        goto LABEL_30;
      }
    }

    else
    {
      v7 = PO_LOG_POExtensionAgentProcess();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [POExtensionAgentProcess bundleIdentifierForXPCConnection:v7];
      }

      v8 = PO_LOG_POExtensionAgentProcess();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: using SecTaskCopySigningIdentifier()", &token, 2u);
      }

      error[0] = 0;
      v9 = SecTaskCopySigningIdentifier(v6, error);
      CFRelease(v6);
      if (error[0])
      {
        v10 = PO_LOG_POExtensionAgentProcess();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          token.val[0] = 138543362;
          *&token.val[1] = error[0];
          _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_INFO, "bundleIdentifier: SecTaskCopySigningIdentifier() failed %{public}@", &token, 0xCu);
        }

        if (error[0])
        {
          CFRelease(error[0]);
          v11 = 0;
          error[0] = 0;
LABEL_32:

          goto LABEL_33;
        }

LABEL_27:
        v11 = 0;
        goto LABEL_32;
      }

      if (!v9)
      {
        goto LABEL_27;
      }

      v13 = PO_LOG_POExtensionAgentProcess();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        token.val[0] = 138543362;
        *&token.val[1] = v9;
LABEL_30:
        _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_INFO, "bundleIdentifier: %{public}@", &token, 0xCu);
      }
    }

    v11 = v9;
    goto LABEL_32;
  }

  v12 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&dword_25E831000, v12, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: SecTaskCreateWithAuditToken() failed", &token, 2u);
  }

  v11 = 0;
LABEL_33:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

id __60__POExtensionAgentProcess_bundleIdentifierForXPCConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:v1 description:@"bundleIdentifier: SecTaskCopySigningIdentifier() failed"];

  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v2;
}

- (BOOL)isCallerCurrentSSOExtension
{
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess isCallerCurrentSSOExtension];
  }

  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v5 = [WeakRetained valueForEntitlement:@"com.apple.private.platformsso.loginmanager"];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    v8 = objc_loadWeakRetained(&self->_xpcConnection);
    v9 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:v8];

    v10 = [(POExtensionAgentProcess *)self configurationManager];
    v11 = [v10 currentDeviceConfiguration];

    if (v11)
    {
      v12 = [(POExtensionAgentProcess *)self configurationManager];
      v13 = [v12 currentDeviceConfiguration];
      v14 = [v13 extensionIdentifier];
      v15 = [v14 isEqualToString:v9];

      if (v15)
      {
        v7 = 1;
LABEL_11:

        return v7;
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __54__POExtensionAgentProcess_isCallerCurrentSSOExtension__block_invoke_53;
      v20[3] = &unk_279A3A088;
      v16 = &v21;
      v21 = v9;
      v18 = __54__POExtensionAgentProcess_isCallerCurrentSSOExtension__block_invoke_53(v20);
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __54__POExtensionAgentProcess_isCallerCurrentSSOExtension__block_invoke;
      v22[3] = &unk_279A3A088;
      v16 = &v23;
      v23 = v9;
      v17 = __54__POExtensionAgentProcess_isCallerCurrentSSOExtension__block_invoke(v22);
    }

    v7 = 0;
    goto LABEL_11;
  }

  return 1;
}

id __54__POExtensionAgentProcess_isCallerCurrentSSOExtension__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __54__POExtensionAgentProcess_isCallerCurrentSSOExtension__block_invoke_53(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Caller is not current extension"];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (void)isDeviceRegisteredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess isDeviceRegisteredWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"isDeviceRegistered"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (!v7)
  {
    v15 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v4)
    {
      v4[2](v4, 0, v15);
    }

    goto LABEL_11;
  }

  v8 = [(POExtensionAgentProcess *)self configurationManager];
  v9 = [v8 currentDeviceConfiguration];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [(POExtensionAgentProcess *)self configurationManager];
  v12 = [v11 currentDeviceConfiguration];
  if (![v12 registrationCompleted])
  {

LABEL_13:
    goto LABEL_14;
  }

  v13 = [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension];

  if (v13)
  {
    v14 = [(POExtensionAgentProcess *)self configurationManager];
    v15 = [v14 currentLoginConfiguration];

    if (v4)
    {
      (v4)[2](v4, v15 != 0, 0);
    }

LABEL_11:

    goto LABEL_16;
  }

LABEL_14:
  if (v4)
  {
    v4[2](v4, 0, 0);
  }

LABEL_16:
}

- (void)isUserRegisteredWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess isUserRegisteredWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"isUserRegistered"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (!v7)
  {
    v9 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v4)
    {
      v4[2](v4, 0, v9);
    }

    goto LABEL_9;
  }

  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    v8 = [(POExtensionAgentProcess *)self configurationManager];
    v9 = [v8 currentUserConfiguration];

    if (v4)
    {
      (v4)[2](v4, v9 != 0, 0);
    }

LABEL_9:

    goto LABEL_12;
  }

  if (v4)
  {
    v4[2](v4, 0, 0);
  }

LABEL_12:
}

- (void)registrationTokenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess registrationTokenWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"registrationToken"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v7)
  {
    v8 = [POProfile alloc];
    v9 = [(POExtensionAgentProcess *)self configurationHost];
    v10 = [v9 validatedProfileForPlatformSSO];
    v11 = [(POProfile *)v8 initWithProfile:v10];

    if (v11)
    {
      if (![(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
      {
        (*(v4 + 2))(v4, 0, 0);
        goto LABEL_12;
      }

      v12 = [(POProfile *)v11 registrationToken];
      (*(v4 + 2))(v4, v12, 0);
    }

    else
    {
      v12 = __59__POExtensionAgentProcess_registrationTokenWithCompletion___block_invoke_73();
      (*(v4 + 2))(v4, 0, v12);
    }
  }

  else
  {
    v11 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v4)
    {
      (*(v4 + 2))(v4, 0, v11);
    }
  }

LABEL_12:
}

id __59__POExtensionAgentProcess_registrationTokenWithCompletion___block_invoke_73()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"No platform SSO Profiles."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setRegistrationToken:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess setRegistrationToken:completion:];
  }

  if (v4)
  {
    v6 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"not impl"];
    v4[2](v4, 0, v6);
  }
}

- (void)authenticationMethodWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess authenticationMethodWithCompletion:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v7)
  {
    v8 = [(POExtensionAgentProcess *)self configurationManager];
    v9 = [v8 currentDeviceConfiguration];
    v10 = [v9 loginType];

    v4[2](v4, v10, 0);
  }

  else
  {
    v11 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v4)
    {
      (v4)[2](v4, 1000, v11);
    }
  }
}

- (void)ssoTokensWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess ssoTokensWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"SSOTokens"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v7)
  {
    v8 = [(POExtensionAgentProcess *)self configurationManager];
    v9 = [v8 currentDeviceConfiguration];

    if (v9 && [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      v10 = getuid();
      v11 = [(POExtensionAgentProcess *)self configurationManager];
      v12 = [v9 extensionIdentifier];
      if (v10 == 248)
      {
        v13 = NSUserName();
        v14 = [v11 tokensForExtensionIdentifier:v12 user:v13];

LABEL_21:
        v20 = PO_LOG_POExtensionAgentProcess();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [POExtensionAgentProcess ssoTokensWithCompletion:v20];
        }

        if (v4)
        {
          (*(v4 + 2))(v4, 0, 0);
        }

        goto LABEL_25;
      }

      v16 = [v11 tokensForExtensionIdentifier:v12];

      if (!v16)
      {
        goto LABEL_21;
      }

      if ([v9 deviceEncryptionKey])
      {
        v17 = SecKeyCopyPublicKey([v9 deviceEncryptionKey]);
        if (v17)
        {
          v18 = v17;
          if (SecKeyIsAlgorithmSupported(v17, kSecKeyOperationTypeEncrypt, *MEMORY[0x277CDC328]))
          {
            error = 0;
            v19 = SecKeyCreateEncryptedData(v18, *MEMORY[0x277CDC338], v16, &error);
            CFRelease(v18);
            if (error || !v19)
            {
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_108;
              v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
              v23[4] = error;
              v22 = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_108(v23);
              if (v4)
              {
                (*(v4 + 2))(v4, 0, v22);
              }
            }

            else if (v4)
            {
              (*(v4 + 2))(v4, v19, 0);
            }

LABEL_31:

            goto LABEL_25;
          }

          CFRelease(v18);
          v21 = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_102();
        }

        else
        {
          v21 = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_96();
        }
      }

      else
      {
        v21 = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_90();
      }

      v19 = v21;
      if (v4)
      {
        (*(v4 + 2))(v4, 0, v21);
      }

      goto LABEL_31;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_89;
    v25[3] = &unk_279A3A088;
    v26 = v7;
    v15 = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_89(v25);
    if (v4)
    {
      (*(v4 + 2))(v4, 0, v15);
    }
  }

  else
  {
    v9 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v4)
    {
      (*(v4 + 2))(v4, 0, v9);
    }
  }

LABEL_25:
}

id __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_89(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_90()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Missing device encryption key."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_96()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Missing device encryption public key."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_102()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Encryption algorithm not supported."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:v1 description:@"Failed to encrypt tokens."];

  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v2;
}

- (void)setSsoTokens:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess setSsoTokens:completion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"setSSOTokens"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v10 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v10)
  {
    v11 = [(POExtensionAgentProcess *)self configurationManager];
    v12 = [v11 currentDeviceConfiguration];

    if (v12 && [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      if (v6)
      {
        v13 = [v12 deviceEncryptionKey];
        if (SecKeyIsAlgorithmSupported(v13, kSecKeyOperationTypeDecrypt, *MEMORY[0x277CDC328]))
        {
          error = 0;
          v14 = [v12 deviceEncryptionKey];
          v15 = SecKeyCreateDecryptedData(v14, *MEMORY[0x277CDC338], v6, &error);
          v16 = v15;
          if (error || !v15)
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_125;
            v49[3] = &__block_descriptor_40_e14___NSError_8__0l;
            v49[4] = error;
            v20 = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_125(v49);
            if (v7)
            {
              v7[2](v7, 0, v20);
            }
          }

          else
          {
            v17 = [(POExtensionAgentProcess *)self configurationManager];
            v18 = [v12 extensionIdentifier];
            v48 = 0;
            v19 = [v17 setTokens:v16 extensionIdentifier:v18 returningError:&v48];
            v20 = v48;

            if (v19)
            {
              v21 = [(POExtensionAgentProcess *)self configurationManager];
              v22 = NSUserName();
              v23 = [v21 saveStashedSSOTokens:v16 forUserName:v22];

              if (v23)
              {
                v24 = dispatch_get_global_queue(0, 0);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_137;
                block[3] = &unk_279A3A7B0;
                block[4] = self;
                v42 = v16;
                v43 = v10;
                dispatch_async(v24, block);

                if (v7)
                {
                  v7[2](v7, 1, 0);
                }

                v25 = v42;
              }

              else
              {
                v44[0] = MEMORY[0x277D85DD0];
                v44[1] = 3221225472;
                v44[2] = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_133;
                v44[3] = &unk_279A3A088;
                v20 = v20;
                v45 = v20;
                v38 = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_133(v44);
                v7[2](v7, 0, v38);

                v25 = v45;
              }
            }

            else
            {
              v46[0] = MEMORY[0x277D85DD0];
              v46[1] = 3221225472;
              v46[2] = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_129;
              v46[3] = &unk_279A3A088;
              v20 = v20;
              v47 = v20;
              v36 = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_129(v46);
              v7[2](v7, 0, v36);

              v25 = v47;
            }
          }
        }

        else
        {
          v16 = __51__POExtensionAgentProcess_ssoTokensWithCompletion___block_invoke_102();
          if (v7)
          {
            v7[2](v7, 0, v16);
          }
        }

        goto LABEL_38;
      }

      v27 = [(POExtensionAgentProcess *)self configurationManager];
      v28 = [v12 extensionIdentifier];
      v53 = 0;
      v29 = [v27 setTokens:0 extensionIdentifier:v28 returningError:&v53];
      v30 = v53;
      v31 = v30;
      if (v29)
      {
        v40 = v30;
        v32 = [(POExtensionAgentProcess *)self configurationManager];
        v33 = NSUserName();
        if ([v32 savePendingSSOTokens:0 forUserName:v33])
        {
          v34 = [(POExtensionAgentProcess *)self configurationManager];
          v35 = NSUserName();
          v39 = [v34 saveStashedSSOTokens:0 forUserName:v35];

          v31 = v40;
          if (v39)
          {
            if (v7)
            {
              v7[2](v7, 1, 0);
            }

            goto LABEL_33;
          }

LABEL_32:
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_118;
          v51[3] = &unk_279A3A088;
          v52 = v31;
          v37 = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_118(v51);
          v7[2](v7, 0, v37);

LABEL_33:
          goto LABEL_38;
        }

        v31 = v40;
      }

      goto LABEL_32;
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_117;
    v54[3] = &unk_279A3A088;
    v55 = v10;
    v26 = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_117(v54);
    if (v7)
    {
      v7[2](v7, 0, v26);
    }
  }

  else
  {
    v12 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v7)
    {
      v7[2](v7, 0, v12);
    }
  }

LABEL_38:
}

id __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_117(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_118(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to remove tokens."];
  v2 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_125(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:v1 description:@"Failed to decrypt tokens."];

  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v2;
}

id __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_129(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save tokens."];
  v2 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_133(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to stash tokens."];
  v2 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

void __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_137(uint64_t a1)
{
  v2 = [*(a1 + 32) agentProcess];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) configurationManager];
  v6 = [v5 currentUserConfiguration];
  [v2 handleKerberosMappingForTokens:v4 extensionIdentifier:v3 userConfiguration:v6];

  v7 = [*(a1 + 32) configurationManager];
  LOBYTE(v2) = [v7 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((v2 & 1) == 0)
  {
    v8 = __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_2();
  }
}

id __51__POExtensionAgentProcess_setSsoTokens_completion___block_invoke_2()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after handling kerberos mapping."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)loginConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess loginConfigurationWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"loginConfiguration"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v7)
  {
    v8 = [(POExtensionAgentProcess *)self configurationManager];
    v9 = [v8 currentLoginConfiguration];

    if (v4)
    {
      v4[2](v4, v9, 0);
    }
  }

  else
  {
    v9 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v4)
    {
      (v4)[2](v4, 0, v9);
    }
  }
}

- (void)setLoginConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess setLoginConfiguration:completion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"setLoginConfiguration"];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v10 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (!v10)
  {
    v38 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    goto LABEL_63;
  }

  if (![MEMORY[0x277CEBEF0] isAssociatedDomainValidated])
  {
    goto LABEL_11;
  }

  v11 = [POProfile alloc];
  v12 = [(POExtensionAgentProcess *)self configurationHost];
  v13 = [v12 validatedProfileForPlatformSSO];
  v14 = [(POProfile *)v11 initWithProfile:v13];

  if (!v14)
  {
    v39 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_154();
LABEL_47:
    v50 = v39;
    if (v7)
    {
      v7[2](v7, 0, v39);
    }

    goto LABEL_66;
  }

  v15 = [v6 tokenEndpointURL];
  v16 = [(POExtensionAgentProcess *)self isURL:v15 validForProfile:v14];

  if (!v16)
  {
    v39 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_160();
    goto LABEL_47;
  }

  v17 = [v6 nonceEndpointURL];
  v18 = [(POExtensionAgentProcess *)self isURL:v17 validForProfile:v14];

  if (!v18)
  {
    v39 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_166();
    goto LABEL_47;
  }

  v19 = [v6 refreshEndpointURL];
  if (v19)
  {
    v20 = v19;
    v21 = [v6 refreshEndpointURL];
    v22 = [(POExtensionAgentProcess *)self isURL:v21 validForProfile:v14];

    if (!v22)
    {
      v39 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_172();
      goto LABEL_47;
    }
  }

LABEL_11:
  v23 = [v6 invalidCredentialPredicate];
  v24 = [v23 length];

  if (v24)
  {
    v25 = MEMORY[0x277CCAC30];
    v26 = [v6 invalidCredentialPredicate];
    v27 = [v25 predicateWithFormat:v26];

    [v27 evaluateWithObject:MEMORY[0x277CBEC10]];
  }

  if ([v6 federationType] == 1 || objc_msgSend(v6, "federationType") == 2)
  {
    v28 = [v6 federationRequestURN];

    if (!v28)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_185();
      goto LABEL_63;
    }
  }

  if ([v6 federationType] == 2)
  {
    v29 = [v6 federationUserPreauthenticationURL];

    if (!v29)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_191();
      goto LABEL_63;
    }

    v30 = [v6 federationMexURLKeypath];

    if (!v30)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_197();
      goto LABEL_63;
    }

    v31 = MEMORY[0x277CCAC30];
    v32 = [v6 federationPredicate];
    v33 = [v31 predicateWithFormat:v32];

    [v33 evaluateWithObject:MEMORY[0x277CBEC10]];
  }

  if ([v6 federationType] == 1)
  {
    v34 = [v6 federationMexURL];

    if (!v34)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_209();
      goto LABEL_63;
    }
  }

  v35 = [v6 hpkePsk];

  if (v35)
  {
    v36 = [v6 hpkePsk];
    v37 = [v36 length];

    if (v37 <= 0x1F)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_215();
LABEL_63:
      v59 = v38;
      if (v7)
      {
        v7[2](v7, 0, v38);
      }

      goto LABEL_66;
    }

    v40 = [v6 hpkePsk_id];
    v41 = [v40 length];

    if (!v41)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_221();
      goto LABEL_63;
    }
  }

  v42 = [v6 hpkePsk_id];
  if ([v42 length])
  {
    v43 = [v6 hpkePsk];
    v44 = [v43 length];

    if (!v44)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_227();
      goto LABEL_63;
    }
  }

  else
  {
  }

  if (![v6 hpkeAuthPublicKey])
  {
    goto LABEL_40;
  }

  v45 = [(POExtensionAgentProcess *)self configurationManager];
  v46 = [v45 currentDeviceConfiguration];
  v14 = [v46 encryptionAlgorithm];

  if (([MEMORY[0x277D3D230] isEncryptionAlgorithm:v14 validForKey:{objc_msgSend(v6, "hpkeAuthPublicKey")}] & 1) == 0)
  {
    v39 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_234();
    goto LABEL_47;
  }

LABEL_40:
  v47 = [v6 loginRequestHpkePsk];

  if (v47)
  {
    v48 = [v6 loginRequestHpkePsk];
    v49 = [v48 length];

    if (v49 <= 0x1F)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_240();
      goto LABEL_63;
    }

    v51 = [v6 loginRequestHpkePsk_id];
    v52 = [v51 length];

    if (!v52)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_246();
      goto LABEL_63;
    }
  }

  v53 = [v6 loginRequestHpkePsk_id];
  if ([v53 length])
  {
    v54 = [v6 loginRequestHpkePsk];
    v55 = [v54 length];

    if (!v55)
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_252();
      goto LABEL_63;
    }
  }

  else
  {
  }

  if ([v6 userSEPKeyBiometricPolicy])
  {
    v56 = [v6 userSEPKeyBiometricPolicy] & 2;
    if (!(v56 & 0xFFFFFFFFFFFFFFFELL | [v6 userSEPKeyBiometricPolicy] & 1))
    {
      v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_258();
      goto LABEL_63;
    }
  }

  v57 = [(POExtensionAgentProcess *)self configurationManager];
  v58 = [v57 saveLoginConfiguration:v6];

  if ((v58 & 1) == 0)
  {
    v38 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_264();
    goto LABEL_63;
  }

  [MEMORY[0x277D3D1B8] analyticsForLoginConfiguration:v6];
  if (v7)
  {
    v7[2](v7, 1, 0);
  }

LABEL_66:
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_154()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"No validated Platform SSO Profiles."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_160()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Token endpoint URL is not approved profile URL."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_166()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Nonce endpoint URL is not approved profile URL."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_172()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Refresh endpoint URL is not approved profile URL."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_179()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The invalidCredentialPredicate is not formatted correctly."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_185()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The federationRequestURN is missing."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_191()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The federationUserPreauthenticationURL is missing."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_197()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The federationMexURLKeypath is missing."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_203()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The federationPredicate is not formatted correctly."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_209()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The federationMexURL is missing."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_215()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The HPKE PSK must be at least 32 bytes."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_221()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The HPKE PSK_id is required when the PSK is set."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_227()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The HPKE PSK is required when the PSK_id is set."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_234()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The HPKE Auth Key is not valid for current encryption algorithm."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_240()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The login request HPKE PSK must be at least 32 bytes."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_246()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The login request HPKE PSK_id is required when the PSK is set."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_252()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"The login request HPKE PSK is required when the login request PSK_id is set."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_258()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Invalid user secure enclave key biometric policy."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_264()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save the login configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)isURL:(id)a3 validForProfile:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 absoluteString];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 URLPrefix];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v18 = v5;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x277CCAC30];
        v13 = [*(*(&v19 + 1) + 8 * i) stringByAppendingString:@"*"];
        v14 = [v12 predicateWithFormat:@"SELF LIKE[c] %@", v13];

        LOBYTE(v13) = [v14 evaluateWithObject:v6];
        if (v13)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_11:
    v5 = v18;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)setCertificateData:(id)a3 keyType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess setCertificateData:keyType:completion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"setCertificateData" forKeyType:a4];
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v12 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

  if (v12)
  {
    v13 = [(POExtensionAgentProcess *)self configurationManager];
    v14 = [v13 currentDeviceConfiguration];

    if (v14 && [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      if (a4 <= 0xB)
      {
        if (((1 << a4) & 0x412) != 0)
        {
          [v14 setDeviceSigningCertificate:{objc_msgSend(MEMORY[0x277D3D230], "certificateForData:", v8)}];
          goto LABEL_16;
        }

        if (((1 << a4) & 0x824) != 0)
        {
          [v14 setDeviceEncryptionCertificate:{objc_msgSend(MEMORY[0x277D3D230], "certificateForData:", v8)}];
          goto LABEL_16;
        }
      }

      if (v9)
      {
        v18 = __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_282();
        goto LABEL_23;
      }

LABEL_16:
      v16 = [(POExtensionAgentProcess *)self configurationManager];
      v17 = [v16 saveDeviceConfiguration:v14];

      if (v17)
      {
        if (v9)
        {
          v9[2](v9, 1, 0);
        }

        goto LABEL_25;
      }

      v18 = __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_288();
      if (!v9)
      {
LABEL_24:

        goto LABEL_25;
      }

LABEL_23:
      (v9)[2](v9, 0, v18);
      goto LABEL_24;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_281;
    v19[3] = &unk_279A3A088;
    v20 = v12;
    v15 = __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_281(v19);
    if (v9)
    {
      (v9)[2](v9, 0, v15);
    }
  }

  else
  {
    v14 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
    if (v9)
    {
      (v9)[2](v9, 0, v14);
    }
  }

LABEL_25:
}

id __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_281(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_282()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Invalid key type for certificate."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __65__POExtensionAgentProcess_setCertificateData_keyType_completion___block_invoke_288()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save the device configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)secKeyProxyEndpointForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess secKeyProxyEndpointForKeyType:completion:];
  }

  v8 = [(POExtensionAgentProcess *)self keyProxyEndpointForKeyType:a3];
  if (v8)
  {
    if (v6)
    {
      v6[2](v6, v8, 0);
    }
  }

  else
  {
    v9 = __68__POExtensionAgentProcess_secKeyProxyEndpointForKeyType_completion___block_invoke();
    if (v6)
    {
      (v6)[2](v6, 0, v9);
    }
  }
}

id __68__POExtensionAgentProcess_secKeyProxyEndpointForKeyType_completion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to receive key proxy endpoint."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)secIdentityProxyEndpointForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess secIdentityProxyEndpointForKeyType:completion:];
  }

  v8 = [(POExtensionAgentProcess *)self identityForKeyType:a3];
  if (v8)
  {
    if (v6)
    {
      v6[2](v6, v8, 0);
    }
  }

  else
  {
    v9 = __73__POExtensionAgentProcess_secIdentityProxyEndpointForKeyType_completion___block_invoke();
    if (v6)
    {
      (v6)[2](v6, 0, v9);
    }
  }
}

id __73__POExtensionAgentProcess_secIdentityProxyEndpointForKeyType_completion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to receive identity key proxy endpoint."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)attestKey:(int64_t)a3 pending:(BOOL)a4 clientDataHash:(id)a5 completion:(id)a6
{
  v6 = a6;
  v7 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess attestKey:pending:clientDataHash:completion:];
  }

  v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"not impl"];
  v6[2](v6, 0, v8);
}

- (void)userNeedsReauthenticationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess userNeedsReauthenticationWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"userNeedsReauthentication"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    v6 = [(POExtensionAgentProcess *)self authenticationCompletion];

    if (v6)
    {
      v7 = [(POExtensionAgentProcess *)self authenticationCompletion];
      v8 = MEMORY[0x277CCA9B8];
      v9 = getASAuthorizationErrorDomain_0();
      v10 = [v8 errorWithDomain:v9 code:1001 userInfo:0];
      (v7)[2](v7, 0, v10);

      [(POExtensionAgentProcess *)self setAuthenticationCompletion:0];
    }

    [(POExtensionAgentProcess *)self setAuthenticationCompletion:v4];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke_313;
    v16[3] = &unk_279A3ADB8;
    v16[4] = self;
    v12 = [v11 addObserverForName:@"com.apple.PlatformSSO.authenticationCompleted" object:0 queue:0 usingBlock:v16];
    [(POExtensionAgentProcess *)self setAuthenticationObserver:v12];

    v13 = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke_2;
    v15[3] = &unk_279A3A060;
    v15[4] = self;
    dispatch_async(v13, v15);
  }

  else
  {
    v14 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
    v4[2](v4, 0, v14);
  }
}

id __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Caller is not current SSO extension."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v18 = [v3 objectForKeyedSubscript:@"authenticationResult"];

  v4 = [v18 intValue];
  v5 = 0;
  v6 = 0;
  if (v4 > 2)
  {
    if (v4 <= 4)
    {
LABEL_7:
      v7 = MEMORY[0x277CCA9B8];
      v8 = getASAuthorizationErrorDomain_0();
      v9 = v7;
      v10 = v8;
      v11 = 1004;
LABEL_12:
      v6 = [v9 errorWithDomain:v10 code:v11 userInfo:0];

      v5 = 0;
      goto LABEL_13;
    }

    if (v4 != 5)
    {
      if (v4 != 6)
      {
        goto LABEL_13;
      }

      v12 = MEMORY[0x277CCA9B8];
      v8 = getASAuthorizationErrorDomain_0();
      v9 = v12;
      v10 = v8;
      v11 = 1001;
      goto LABEL_12;
    }

LABEL_11:
    v13 = MEMORY[0x277CCA9B8];
    v8 = getASAuthorizationErrorDomain_0();
    v9 = v13;
    v10 = v8;
    v11 = 1000;
    goto LABEL_12;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v6 = 0;
  v5 = 1;
LABEL_13:
  v14 = [*(a1 + 32) authenticationCompletion];

  if (v14)
  {
    v15 = [*(a1 + 32) authenticationCompletion];
    (v15)[2](v15, v5, v6);

    [*(a1 + 32) setAuthenticationCompletion:0];
  }

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = [*(a1 + 32) authenticationObserver];
  [v16 removeObserver:v17];

  [*(a1 + 32) setAuthenticationObserver:0];
}

void __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) agentProcess];
  v3 = [v2 handleUserNeedsReauthenticationAfterDelay:1.0];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [*(a1 + 32) authenticationObserver];
    [v4 removeObserver:v5];

    [*(a1 + 32) setAuthenticationObserver:0];
    v6 = [*(a1 + 32) authenticationCompletion];

    if (v6)
    {
      v7 = [*(a1 + 32) authenticationCompletion];
      v8 = MEMORY[0x277CCA9B8];
      v9 = getASAuthorizationErrorDomain_0();
      v10 = [v8 errorWithDomain:v9 code:1004 userInfo:0];
      (v7)[2](v7, 0, v10);

      v11 = *(a1 + 32);

      [v11 setAuthenticationCompletion:0];
    }
  }
}

- (void)deviceRegistrationsNeedsRepairWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess deviceRegistrationsNeedsRepairWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"deviceRegistrationNeedsRepair"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__POExtensionAgentProcess_deviceRegistrationsNeedsRepairWithCompletion___block_invoke_320;
    block[3] = &unk_279A3A060;
    block[4] = self;
    dispatch_async(v6, block);

    if (v4)
    {
      v4[2](v4, 1, 0);
    }
  }

  else
  {
    v7 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
    (v4)[2](v4, 0, v7);
  }
}

void __72__POExtensionAgentProcess_deviceRegistrationsNeedsRepairWithCompletion___block_invoke_320(uint64_t a1)
{
  v2 = [*(a1 + 32) agentProcess];
  v1 = [v2 registrationManager];
  [v1 handleDeviceAndUserRegistrationForRepair:1];
}

- (void)userRegistrationsNeedsRepairWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess userRegistrationsNeedsRepairWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"userRegistrationNeedsRepair"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    v6 = [(POExtensionAgentProcess *)self configurationManager];
    v7 = NSUserName();
    v8 = [v6 userConfigurationForUserName:v7];

    v9 = [v8 userLoginConfiguration];
    v10 = [v9 loginUserName];

    v11 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__POExtensionAgentProcess_userRegistrationsNeedsRepairWithCompletion___block_invoke_326;
    v13[3] = &unk_279A3A7D8;
    v13[4] = self;
    v14 = v10;
    v12 = v10;
    dispatch_async(v11, v13);

    if (v4)
    {
      v4[2](v4, 1, 0);
    }
  }

  else
  {
    v8 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
    (v4)[2](v4, 0, v8);
  }
}

void __70__POExtensionAgentProcess_userRegistrationsNeedsRepairWithCompletion___block_invoke_326(uint64_t a1)
{
  v3 = [*(a1 + 32) agentProcess];
  v2 = [v3 registrationManager];
  [v2 handleUserRegistrationForUser:*(a1 + 40) repair:1];
}

- (void)resetDeviceKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess resetDeviceKeysWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"resetDeviceKeys"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

    if (v7)
    {
      v8 = [(POExtensionAgentProcess *)self configurationManager];
      v9 = [v8 currentDeviceConfiguration];

      if (v9 && [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
      {
        [(POExtensionAgentProcess *)self invalidateAllKeyProxies];
        v10 = [(POExtensionAgentProcess *)self keychainHelper];
        v11 = [v9 extensionIdentifier];
        [v10 _deleteCachedAttestationForExtensionIdentifier:v11 key:{objc_msgSend(v9, "deviceSigningKey")}];

        v12 = MEMORY[0x277D3D230];
        v13 = [v9 signingAlgorithm];
        [v9 setDeviceSigningKey:{objc_msgSend(v12, "createSEPSigningKeyForAlgorithm:shared:", v13, objc_msgSend(v9, "sharedDeviceKeys"))}];

        v14 = [(POExtensionAgentProcess *)self keychainHelper];
        v15 = [v9 extensionIdentifier];
        [v14 _deleteCachedAttestationForExtensionIdentifier:v15 key:{objc_msgSend(v9, "deviceEncryptionKey")}];

        v16 = MEMORY[0x277D3D230];
        v17 = [v9 encryptionAlgorithm];
        [v9 setDeviceEncryptionKey:{objc_msgSend(v16, "createSEPEncryptionKeyForAlgorithm:shared:", v17, objc_msgSend(v9, "sharedDeviceKeys"))}];

        v18 = [(POExtensionAgentProcess *)self configurationManager];
        LOBYTE(v16) = [v18 saveDeviceConfiguration:v9];

        if (v16)
        {
          if (v4)
          {
            v4[2](v4, 1, 0);
          }
        }

        else
        {
          v20 = __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_336();
          if (v4)
          {
            (v4)[2](v4, 0, v20);
          }
        }
      }

      else
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_335;
        v21[3] = &unk_279A3A088;
        v22 = v7;
        v19 = __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_335(v21);
        if (v4)
        {
          (v4)[2](v4, 0, v19);
        }
      }
    }

    else
    {
      v9 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
      if (v4)
      {
        (v4)[2](v4, 0, v9);
      }
    }
  }

  else
  {
    v7 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
    (v4)[2](v4, 0, v7);
  }
}

id __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_335(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_336()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save device configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)resetUserSecureEnclaveKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess resetUserSecureEnclaveKeyWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"resetUserSecureEnclaveKey"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    v7 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

    if (!v7)
    {
      v9 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
      if (v4)
      {
        v4[2](v4, 0, v9);
      }

      goto LABEL_38;
    }

    v8 = [(POExtensionAgentProcess *)self configurationManager];
    v9 = [v8 currentDeviceConfiguration];

    if (!v9 || ![(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_350;
      v35[3] = &unk_279A3A088;
      v36 = v7;
      v24 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_350(v35);
      if (v4)
      {
        v4[2](v4, 0, v24);
      }

      v12 = v36;
      goto LABEL_37;
    }

    v10 = [(POExtensionAgentProcess *)self configurationManager];
    v11 = NSUserName();
    v12 = [v10 userConfigurationForUserName:v11];

    if (!v12)
    {
      v25 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_351();
      goto LABEL_34;
    }

    [(POExtensionAgentProcess *)self invalidateAllKeyProxies];
    v13 = [(POExtensionAgentProcess *)self keychainHelper];
    v14 = [v9 extensionIdentifier];
    [v13 _deleteCachedAttestationForExtensionIdentifier:v14 key:{objc_msgSend(v12, "sepKey")}];

    if (![v12 sepKey] || objc_msgSend(v12, "loginType") != 2)
    {
      [v12 setSepKey:0];
LABEL_30:
      v31 = [(POExtensionAgentProcess *)self configurationManager];
      v32 = NSUserName();
      v33 = [v31 saveUserConfiguration:v12 forUserName:v32 syncToPreboot:1];

      if (v33)
      {
        if (v4)
        {
          v4[2](v4, 1, 0);
        }

LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v25 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_363();
LABEL_34:
      v34 = v25;
      if (v4)
      {
        v4[2](v4, 0, v25);
      }

      goto LABEL_37;
    }

    v15 = [(POExtensionAgentProcess *)self configurationManager];
    v16 = [v15 currentLoginConfiguration];
    v17 = [v16 userSEPKeyBiometricPolicy];

    v18 = PO_LOG_POExtensionAgentProcess();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [POExtensionAgentProcess resetUserSecureEnclaveKeyWithCompletion:v17];
    }

    if (!v17)
    {
      goto LABEL_16;
    }

    v19 = objc_alloc_init(MEMORY[0x277CD4790]);
    v20 = [v19 canEvaluatePolicy:1 error:0];

    if ((v20 & 1) == 0)
    {
      v25 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_357();
      goto LABEL_34;
    }

    if (v17)
    {
      v26 = MEMORY[0x277D3D230];
      v22 = [v12 signingAlgorithm];
      v27 = v26;
      v28 = v22;
      v29 = 1;
    }

    else
    {
      if ((v17 & 2) == 0)
      {
LABEL_16:
        v21 = MEMORY[0x277D3D230];
        v22 = [v12 signingAlgorithm];
        v23 = [v21 createUserSEPSigningKeyForAlgorithm:v22];
LABEL_29:
        [v12 setSepKey:v23];

        goto LABEL_30;
      }

      v30 = MEMORY[0x277D3D230];
      v22 = [v12 signingAlgorithm];
      v27 = v30;
      v28 = v22;
      v29 = 0;
    }

    v23 = [v27 createUserSEPSigningKeyForAlgorithm:v28 userPresence:1 currentSet:v29];
    goto LABEL_29;
  }

  v7 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
  v4[2](v4, 0, v7);
LABEL_39:
}

id __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_350(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_351()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"Failed to retrieve user configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_357()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to create key during reset key because companion is not available."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_363()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)loginUserNameWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess loginUserNameWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"loginUserName"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    v6 = [(POExtensionAgentProcess *)self configurationManager];
    v7 = NSUserName();
    v8 = [v6 userConfigurationForUserName:v7];

    if (!v8)
    {
      v9 = __55__POExtensionAgentProcess_loginUserNameWithCompletion___block_invoke_374();
      if (v4)
      {
        v4[2](v4, 0, v9);
      }

      goto LABEL_10;
    }

    if (v4)
    {
      v9 = [v8 userLoginConfiguration];
      v10 = [v9 loginUserName];
      (v4)[2](v4, v10, 0);

LABEL_10:
    }
  }

  else
  {
    v8 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
    v4[2](v4, 0, v8);
  }
}

id __55__POExtensionAgentProcess_loginUserNameWithCompletion___block_invoke_374()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to retrieve user configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setLoginUserName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess setLoginUserName:completion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"setLoginUserName"];
  if (![(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    v11 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
    v7[2](v7, 0, v11);
    goto LABEL_17;
  }

  v9 = [(POExtensionAgentProcess *)self configurationManager];
  v10 = NSUserName();
  v11 = [v9 userConfigurationForUserName:v10];

  if (v11)
  {
    v12 = [v11 userLoginConfiguration];

    if (v12)
    {
      v13 = [v11 userLoginConfiguration];
      [v13 setLoginUserName:v6];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277D3D248]) initWithLoginUserName:v6];
      [v11 setUserLoginConfiguration:v13];
    }

    v15 = [(POExtensionAgentProcess *)self configurationManager];
    v16 = NSUserName();
    v17 = [v15 saveUserConfiguration:v11 forUserName:v16 syncToPreboot:1];

    if (v17)
    {
      if (v7)
      {
        v7[2](v7, 1, 0);
      }

      goto LABEL_17;
    }

    v14 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_363();
  }

  else
  {
    v14 = __55__POExtensionAgentProcess_loginUserNameWithCompletion___block_invoke_374();
  }

  v18 = v14;
  if (v7)
  {
    v7[2](v7, 0, v14);
  }

LABEL_17:
}

- (void)userLoginConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess userLoginConfigurationWithCompletion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"userLoginConfiguration"];
  v6 = [(POExtensionAgentProcess *)self configurationManager];
  v7 = [v6 currentUserConfiguration];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension];

  if (!v9)
  {
LABEL_7:
    v12 = __64__POExtensionAgentProcess_userLoginConfigurationWithCompletion___block_invoke();
    v4[2](v4, 0, v12);
    goto LABEL_8;
  }

  v10 = [(POExtensionAgentProcess *)self configurationManager];
  v11 = [v10 currentUserConfiguration];
  v12 = [v11 userLoginConfiguration];

  (v4)[2](v4, v12, 0);
LABEL_8:
}

id __64__POExtensionAgentProcess_userLoginConfigurationWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to retrieve user login configuration."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setUserLoginConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess setUserLoginConfiguration:completion:];
  }

  [(POExtensionAgentProcess *)self addEvent:@"setUserLoginConfiguration"];
  v9 = [(POExtensionAgentProcess *)self configurationManager];
  v10 = [v9 currentUserConfiguration];
  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(POExtensionAgentProcess *)self isCallerCurrentSSOExtension];

  if (!v12)
  {
LABEL_8:
    v16 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_351();
LABEL_9:
    v17 = v16;
    v7[2](v7, 0, v16);

    goto LABEL_10;
  }

  v13 = [(POExtensionAgentProcess *)self configurationManager];
  v14 = [v13 currentUserConfiguration];
  [v14 setUserLoginConfiguration:v6];

  v15 = [(POExtensionAgentProcess *)self configurationManager];
  LOBYTE(v13) = [v15 saveCurrentUserConfigurationAndSyncToPreboot:1];

  if ((v13 & 1) == 0)
  {
    v16 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_363();
    goto LABEL_9;
  }

  v7[2](v7, 1, 0);
LABEL_10:
}

- (void)rotateKeyForKeyType:(int64_t)a3 completion:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess rotateKeyForKeyType:a3 completion:?];
  }

  [(POExtensionAgentProcess *)self addEvent:@"rotateKeyForKeyType"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    v9 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

    if (!v9)
    {
      v11 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
      if (v6)
      {
        v6[2](v6, 0, v11);
      }

      goto LABEL_30;
    }

    v10 = [(POExtensionAgentProcess *)self configurationManager];
    v11 = [v10 currentDeviceConfiguration];

    if (!v11 || ![(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_413;
      v47[3] = &unk_279A3A088;
      v48 = v9;
      v27 = __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_413(v47);
      if (v6)
      {
        v6[2](v6, 0, v27);
      }

      v12 = v48;
      goto LABEL_27;
    }

    v12 = self;
    objc_sync_enter(v12);
    if (a3 == 11)
    {
      v34 = [v11 pendingEncryptionAlgorithm];
      v35 = v34;
      if (!v34)
      {
        v35 = [v11 encryptionAlgorithm];
      }

      [(POExtensionAgentProcess *)v12 setPendingEncryptionAlgorithm:v35];
      if (!v34)
      {
      }

      v36 = MEMORY[0x277D3D230];
      v37 = [(POExtensionAgentProcess *)v12 pendingEncryptionAlgorithm];
      v38 = [v36 createSEPEncryptionKeyForAlgorithm:v37 shared:{objc_msgSend(v11, "sharedDeviceKeys")}];
      [v11 setDeviceEncryptionKey:v38];
      [(POExtensionAgentProcess *)v12 setPendingEncryptionKey:v38];

      v33 = [(POExtensionAgentProcess *)v12 pendingEncryptionKey];
    }

    else
    {
      if (a3 != 10)
      {
        if (a3 == 3)
        {
          v13 = [(POExtensionAgentProcess *)v12 configurationManager];
          v14 = NSUserName();
          v15 = [v13 userConfigurationForUserName:v14];

          if (v15)
          {
            if ([v15 loginType] != 2)
            {
              [(POExtensionAgentProcess *)v12 setPendingUserSEPKey:0];
              v39 = 0;
LABEL_54:

LABEL_55:
              objc_sync_exit(v12);

              if (v39)
              {
                v43 = [objc_alloc(MEMORY[0x277CDBD80]) initWithKey:v39];
                v44 = v12;
                objc_sync_enter(v44);
                v45 = [(POExtensionAgentProcess *)v44 keyProxies];
                [v45 addObject:v43];

                objc_sync_exit(v44);
                v46 = [(POExtensionAgentProcess *)v43 endpoint];
                (v6)[2](v6, v46, 0);

                v12 = v43;
              }

              else
              {
                v12 = __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_426();
                v6[2](v6, 0, v12);
              }

              goto LABEL_27;
            }

            v16 = [v15 pendingSigningAlgorithm];
            v17 = v16;
            if (!v16)
            {
              v17 = [v15 signingAlgorithm];
            }

            [(POExtensionAgentProcess *)v12 setPendingUserSEPSigningAlgorithm:v17];
            if (!v16)
            {
            }

            v18 = [(POExtensionAgentProcess *)v12 configurationManager];
            v19 = [v18 currentLoginConfiguration];
            v20 = [v19 userSEPKeyBiometricPolicy];

            v21 = PO_LOG_POExtensionAgentProcess();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
              [(POExtensionAgentProcess *)v22 rotateKeyForKeyType:buf completion:v21];
            }

            if (!v20)
            {
              goto LABEL_22;
            }

            v23 = objc_alloc_init(MEMORY[0x277CD4790]);
            v24 = [v23 canEvaluatePolicy:1 error:0];

            if (v24)
            {
              if (v20)
              {
                v41 = MEMORY[0x277D3D230];
                v26 = [(POExtensionAgentProcess *)v12 pendingUserSEPSigningAlgorithm];
                -[POExtensionAgentProcess setPendingUserSEPKey:](v12, "setPendingUserSEPKey:", [v41 createUserSEPSigningKeyForAlgorithm:v26 userPresence:1 currentSet:1]);
                goto LABEL_53;
              }

              if ((v20 & 2) != 0)
              {
                v42 = MEMORY[0x277D3D230];
                v26 = [(POExtensionAgentProcess *)v12 pendingUserSEPSigningAlgorithm];
                -[POExtensionAgentProcess setPendingUserSEPKey:](v12, "setPendingUserSEPKey:", [v42 createUserSEPSigningKeyForAlgorithm:v26 userPresence:1 currentSet:0]);
                goto LABEL_53;
              }

LABEL_22:
              v25 = MEMORY[0x277D3D230];
              v26 = [(POExtensionAgentProcess *)v12 pendingUserSEPSigningAlgorithm];
              -[POExtensionAgentProcess setPendingUserSEPKey:](v12, "setPendingUserSEPKey:", [v25 createUserSEPSigningKeyForAlgorithm:v26]);
LABEL_53:

              v39 = [(POExtensionAgentProcess *)v12 pendingUserSEPKey];
              goto LABEL_54;
            }

            v40 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_357();
            if (v6)
            {
              v6[2](v6, 0, v40);
            }
          }

          else
          {
            v40 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_351();
            if (v6)
            {
              v6[2](v6, 0, v40);
            }
          }
        }

        else
        {
          v15 = __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_420();
          v6[2](v6, 0, v15);
        }

        objc_sync_exit(v12);
LABEL_27:

LABEL_30:
        goto LABEL_31;
      }

      v29 = [v11 pendingSigningAlgorithm];
      v30 = v29;
      if (!v29)
      {
        v30 = [v11 signingAlgorithm];
      }

      [(POExtensionAgentProcess *)v12 setPendingSigningAlgorithm:v30];
      if (!v29)
      {
      }

      v31 = MEMORY[0x277D3D230];
      v32 = [(POExtensionAgentProcess *)v12 pendingSigningAlgorithm];
      -[POExtensionAgentProcess setPendingSigningKey:](v12, "setPendingSigningKey:", [v31 createSEPSigningKeyForAlgorithm:v32 shared:{objc_msgSend(v11, "sharedDeviceKeys")}]);

      v33 = [(POExtensionAgentProcess *)v12 pendingSigningKey];
    }

    v39 = v33;
    goto LABEL_55;
  }

  v9 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
  v6[2](v6, 0, v9);
LABEL_31:

  v28 = *MEMORY[0x277D85DE8];
}

id __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_413(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_420()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Invalid key type for rotation."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __58__POExtensionAgentProcess_rotateKeyForKeyType_completion___block_invoke_426()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Missing key for rotation."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)completeRotationKeyForKeyType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POExtensionAgentProcess completeRotationKeyForKeyType:a3 completion:?];
  }

  [(POExtensionAgentProcess *)self addEvent:@"completeRotationKeyForKeyType"];
  if ([(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
  {
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    v9 = [(POExtensionAgentProcess *)self bundleIdentifierForXPCConnection:WeakRetained];

    if (!v9)
    {
      v11 = __48__POExtensionAgentProcess__keyForKeyType_error___block_invoke();
      if (v6)
      {
        v6[2](v6, 0, v11);
      }

      goto LABEL_34;
    }

    v10 = [(POExtensionAgentProcess *)self configurationManager];
    v11 = [v10 currentDeviceConfiguration];

    if (!v11 || ![(POExtensionAgentProcess *)self isCallerCurrentSSOExtension])
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __68__POExtensionAgentProcess_completeRotationKeyForKeyType_completion___block_invoke_440;
      v36[3] = &unk_279A3A088;
      v37 = v9;
      v23 = __68__POExtensionAgentProcess_completeRotationKeyForKeyType_completion___block_invoke_440(v36);
      if (v6)
      {
        v6[2](v6, 0, v23);
      }

      v12 = v37;
      goto LABEL_33;
    }

    v12 = self;
    objc_sync_enter(v12);
    if (a3 == 11)
    {
      if (![(POExtensionAgentProcess *)v12 pendingEncryptionKey])
      {
        goto LABEL_30;
      }

      v29 = [(POExtensionAgentProcess *)v12 pendingEncryptionAlgorithm];

      if (!v29)
      {
        goto LABEL_30;
      }

      v30 = [(POExtensionAgentProcess *)v12 keychainHelper];
      v31 = [v11 extensionIdentifier];
      [v30 _deleteCachedAttestationForExtensionIdentifier:v31 key:{objc_msgSend(v11, "deviceEncryptionKey")}];

      [v11 setDeviceEncryptionKey:{-[POExtensionAgentProcess pendingEncryptionKey](v12, "pendingEncryptionKey")}];
      v32 = [(POExtensionAgentProcess *)v12 pendingEncryptionAlgorithm];
      [v11 setEncryptionAlgorithm:v32];

      v33 = [MEMORY[0x277CBEAA8] date];
      [v11 setLastEncryptionKeyChange:v33];

      [v11 setPendingEncryptionAlgorithm:0];
      v34 = [(POExtensionAgentProcess *)v12 configurationManager];
      LOBYTE(v31) = [v34 saveDeviceConfiguration:v11];

      if (v31)
      {
        [(POExtensionAgentProcess *)v12 setPendingEncryptionKey:0];
        [(POExtensionAgentProcess *)v12 setPendingEncryptionAlgorithm:0];
        goto LABEL_29;
      }

      v16 = __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_336();
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 != 10)
      {
        if (a3 == 3)
        {
          if ([(POExtensionAgentProcess *)v12 pendingUserSEPKey])
          {
            v13 = [(POExtensionAgentProcess *)v12 pendingUserSEPSigningAlgorithm];

            if (v13)
            {
              v14 = [(POExtensionAgentProcess *)v12 configurationManager];
              v15 = NSUserName();
              v16 = [v14 userConfigurationForUserName:v15];

              if (v16)
              {
                v17 = [(POExtensionAgentProcess *)v12 keychainHelper];
                v18 = [v11 extensionIdentifier];
                [v17 _deleteCachedAttestationForExtensionIdentifier:v18 key:{objc_msgSend(v16, "sepKey")}];

                [v16 setSepKey:{-[POExtensionAgentProcess pendingUserSEPKey](v12, "pendingUserSEPKey")}];
                v19 = [(POExtensionAgentProcess *)v12 pendingUserSEPSigningAlgorithm];
                [v16 setSigningAlgorithm:v19];

                [v16 setPendingSigningAlgorithm:0];
                v20 = [(POExtensionAgentProcess *)v12 configurationManager];
                v21 = NSUserName();
                v22 = [v20 saveUserConfiguration:v16 forUserName:v21 syncToPreboot:1];

                if (v22)
                {
                  [(POExtensionAgentProcess *)v12 setPendingUserSEPKey:0];
                  [(POExtensionAgentProcess *)v12 setPendingUserSEPSigningAlgorithm:0];
                  v6[2](v6, 1, 0);
LABEL_31:

                  goto LABEL_32;
                }

                v35 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_363();
                v6[2](v6, 0, v35);
              }

              else
              {
                v35 = __67__POExtensionAgentProcess_resetUserSecureEnclaveKeyWithCompletion___block_invoke_351();
                v6[2](v6, 0, v35);
              }

              goto LABEL_31;
            }
          }
        }

LABEL_30:
        v16 = __68__POExtensionAgentProcess_completeRotationKeyForKeyType_completion___block_invoke_454();
        v6[2](v6, 0, v16);
        goto LABEL_31;
      }

      if (![(POExtensionAgentProcess *)v12 pendingSigningKey])
      {
        goto LABEL_30;
      }

      v24 = [(POExtensionAgentProcess *)v12 pendingSigningAlgorithm];

      if (!v24)
      {
        goto LABEL_30;
      }

      v25 = [(POExtensionAgentProcess *)v12 keychainHelper];
      v26 = [v11 extensionIdentifier];
      [v25 _deleteCachedAttestationForExtensionIdentifier:v26 key:{objc_msgSend(v11, "deviceSigningKey")}];

      [v11 setDeviceSigningKey:{-[POExtensionAgentProcess pendingSigningKey](v12, "pendingSigningKey")}];
      v27 = [(POExtensionAgentProcess *)v12 pendingSigningAlgorithm];
      [v11 setSigningAlgorithm:v27];

      [v11 setPendingSigningAlgorithm:0];
      v28 = [(POExtensionAgentProcess *)v12 configurationManager];
      LOBYTE(v26) = [v28 saveDeviceConfiguration:v11];

      if (v26)
      {
        [(POExtensionAgentProcess *)v12 setPendingSigningKey:0];
        [(POExtensionAgentProcess *)v12 setPendingSigningAlgorithm:0];
LABEL_29:
        v6[2](v6, 1, 0);
LABEL_32:
        objc_sync_exit(v12);
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      v16 = __57__POExtensionAgentProcess_resetDeviceKeysWithCompletion___block_invoke_336();
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    v6[2](v6, 0, v16);
    goto LABEL_31;
  }

  v9 = __67__POExtensionAgentProcess_userNeedsReauthenticationWithCompletion___block_invoke();
  v6[2](v6, 0, v9);
LABEL_35:
}

id __68__POExtensionAgentProcess_completeRotationKeyForKeyType_completion___block_invoke_440(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Failed to retrieve device configuration for extension."];
  v3 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

id __68__POExtensionAgentProcess_completeRotationKeyForKeyType_completion___block_invoke_454()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Invalid key type for rotation completion."];
  v1 = PO_LOG_POExtensionAgentProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)addEvent:(id)a3
{
  v8 = a3;
  v4 = [(POExtensionAgentProcess *)self _analytics];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
    v7 = [(POExtensionAgentProcess *)self _analytics];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  else
  {
    v6 = [(POExtensionAgentProcess *)self _analytics];
    [v6 setObject:&unk_28708C408 forKeyedSubscript:v8];
  }
}

- (void)addEvent:(id)a3 forKeyType:(int64_t)a4
{
  v6 = MEMORY[0x277D3D1D0];
  v7 = a3;
  v13 = [v6 stringForKeyType:a4];
  v8 = [v7 stringByAppendingString:?];

  v9 = [(POExtensionAgentProcess *)self _analytics];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
    v12 = [(POExtensionAgentProcess *)self _analytics];
    [v12 setObject:v11 forKeyedSubscript:v8];
  }

  else
  {
    v11 = [(POExtensionAgentProcess *)self _analytics];
    [v11 setObject:&unk_28708C408 forKeyedSubscript:v8];
  }
}

- (void)_keyForKeyType:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)keyProxyEndpointForKeyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)identityForKeyType:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__POExtensionAgentProcess_identityForKeyType___block_invoke_43_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a2 + 32)];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_25E831000, a3, OS_LOG_TYPE_ERROR, "%{public}@, %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)bundleIdentifierForXPCConnection:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25E831000, v0, OS_LOG_TYPE_DEBUG, "bundleIdentifier: CPCopyBundleIdentifierAndTeamFromAuditToken(): %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)isCallerCurrentSSOExtension
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceRegisteredWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isUserRegisteredWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registrationTokenWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setRegistrationToken:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)authenticationMethodWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)ssoTokensWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSsoTokens:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loginConfigurationWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLoginConfiguration:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLoginConfiguration:(uint64_t)a3 completion:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  objc_begin_catch(a1);
  objc_end_catch();
  v4 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_179();
  if (a3)
  {
    v5 = OUTLINED_FUNCTION_10();
    v6(v5);
  }
}

- (void)setLoginConfiguration:(uint64_t)a3 completion:.cold.3(void *a1, uint64_t a2, uint64_t a3)
{
  objc_begin_catch(a1);
  objc_end_catch();
  v4 = __60__POExtensionAgentProcess_setLoginConfiguration_completion___block_invoke_203();
  if (a3)
  {
    v5 = OUTLINED_FUNCTION_10();
    v6(v5);
  }
}

- (void)setCertificateData:keyType:completion:.cold.1()
{
  OUTLINED_FUNCTION_9_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)secKeyProxyEndpointForKeyType:completion:.cold.1()
{
  OUTLINED_FUNCTION_9_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)secIdentityProxyEndpointForKeyType:completion:.cold.1()
{
  OUTLINED_FUNCTION_9_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)attestKey:pending:clientDataHash:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userNeedsReauthenticationWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceRegistrationsNeedsRepairWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userRegistrationsNeedsRepairWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetDeviceKeysWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetUserSecureEnclaveKeyWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetUserSecureEnclaveKeyWithCompletion:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loginUserNameWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLoginUserName:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userLoginConfigurationWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUserLoginConfiguration:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)rotateKeyForKeyType:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)rotateKeyForKeyType:(os_log_t)log completion:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "Key policy = %{public}@", buf, 0xCu);
}

- (void)completeRotationKeyForKeyType:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end