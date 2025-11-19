@interface PORegistrationManager
- (BOOL)createOrRepairDeviceConfigurationWithError:(id *)a3;
- (BOOL)createOrRepairUserConfigurationWithError:(id *)a3;
- (BOOL)handleUserAuthorizationForRegistration;
- (BOOL)handleUserAuthorizationNeededForAccountDisplayName:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)reloadSSOExtensionIfNeeded;
- (POAgentAuthenticationProcess)process;
- (POAuthPluginProcess)systemAuthPluginProcess;
- (POAuthPluginProcess)userAuthPluginProcess;
- (PORegistrationManager)initWithAgentAuthenticationProcess:(id)a3 userNotificationCenter:(id)a4 configurationHost:(id)a5;
- (id)createRegistrationNotificationWithAccountName:(id)a3;
- (id)createRegistrationUpdateNotificationWithAccountName:(id)a3;
- (id)loadSSOExtensionWithExtensionBundleIdentifier:(id)a3;
- (id)retrieveProfilePicture;
- (id)saveSSOTokens:(id)a3 toKeychainUsingContext:(id)a4 tokenId:(id)a5;
- (int)ssoMethodToUse:(id)a3 profile:(id)a4;
- (int64_t)registrationState;
- (unint64_t)requestSmartCardForBinding:(BOOL)a3 window:(id)a4 tokenId:(id *)a5 tokenHash:(id *)a6 wrapTokenHash:(id *)a7 pinContext:(id *)a8;
- (void)_startDeviceRegistrationWithCompletionHandler:(id)a3;
- (void)_startUserRegistrationWithCompletionHandler:(id)a3;
- (void)cleanupUserConfigAfterMigrationToShared;
- (void)completeLegacyUserRegistration;
- (void)continueDeviceRegistration:(id)a3;
- (void)continueUserRegistration:(id)a3;
- (void)createContextForUserCredential;
- (void)createUserConfigurationForBuddyUser;
- (void)exitDeviceRegistration:(id)a3;
- (void)exitRegistration:(id)a3;
- (void)exitUserRegistration:(id)a3;
- (void)failDeviceRegistrationBeforeAuthorization;
- (void)failDeviceRegistrationPostRegistrationWithUserInteractionAllowed:(BOOL)a3;
- (void)failUserRegistrationBeforeAuthorization;
- (void)findExistingSmartCardBinding;
- (void)finishRegistrationWithRetry;
- (void)handleAuthorizationForNewUsers;
- (void)handleDeviceRegistrationNotification;
- (void)handleRegistrationViewControllerWithCompletion:(id)a3;
- (void)handleRemovingRegistrationForExtension:(id)a3 alreadyDeleted:(BOOL)a4;
- (void)handleUserCredentialNeededAtLogin:(BOOL)a3 smartCard:(BOOL)a4 accountDisplayName:(id)a5 bundleIdentifier:(id)a6 returningContext:(id *)a7;
- (void)handleUserRegistrationNotification;
- (void)notifyDeviceRegistrationDidChange;
- (void)notifyUserRegistrationDidChange;
- (void)promptUserForRegistration;
- (void)requestDidCompleteWithError:(id)a3;
- (void)resetRegistrationWithCompletion:(id)a3;
- (void)retrieveProfilePicture;
- (void)setupDeviceRegistrationOptions;
- (void)setupUserRegistrationOptions;
- (void)showAlertMessage:(id)a3 messageText:(id)a4 completion:(id)a5;
- (void)showAlertWithError:(id)a3 completion:(id)a4;
- (void)storeCredentialAndUpdatePasswordHint;
- (void)windowDidClose;
@end

@implementation PORegistrationManager

- (PORegistrationManager)initWithAgentAuthenticationProcess:(id)a3 userNotificationCenter:(id)a4 configurationHost:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = PORegistrationManager;
  v11 = [(PORegistrationManager *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_process, v8);
    v13 = +[POConfigurationManager sharedInstance];
    configurationManager = v12->_configurationManager;
    v12->_configurationManager = v13;

    v15 = [[POKeychainJWKSStorageProvider alloc] initWithSystem:0];
    jwksStorageProvider = v12->_jwksStorageProvider;
    v12->_jwksStorageProvider = v15;

    v17 = objc_alloc_init(PODirectoryServices);
    directoryServices = v12->_directoryServices;
    v12->_directoryServices = v17;

    v19 = [objc_alloc(MEMORY[0x277D3D238]) initWithIdentifierProvider:v12->_directoryServices];
    tokenHelper = v12->_tokenHelper;
    v12->_tokenHelper = v19;

    v21 = objc_alloc_init(MEMORY[0x277D3D218]);
    keychainHelper = v12->_keychainHelper;
    v12->_keychainHelper = v21;

    v23 = objc_alloc_init(MEMORY[0x277D3D1C0]);
    authenticationProcess = v12->_authenticationProcess;
    v12->_authenticationProcess = v23;

    v25 = objc_alloc_init(MEMORY[0x277D3D210]);
    keyWrap = v12->_keyWrap;
    v12->_keyWrap = v25;

    objc_storeStrong(&v12->_userNotificationCenter, a4);
    v27 = [MEMORY[0x277CEBEE8] sharedInstance];
    extensionManager = v12->_extensionManager;
    v12->_extensionManager = v27;

    objc_storeStrong(&v12->_configurationHost, a5);
  }

  return v12;
}

- (int64_t)registrationState
{
  v2 = [(PORegistrationManager *)self registrationContext];
  v3 = [v2 state];

  return v3;
}

- (POAuthPluginProcess)userAuthPluginProcess
{
  userAuthPluginProcess = self->_userAuthPluginProcess;
  if (!userAuthPluginProcess)
  {
    v4 = [[POAuthPluginProcess alloc] initWithUid:0 forLogin:0];
    v5 = self->_userAuthPluginProcess;
    self->_userAuthPluginProcess = v4;

    userAuthPluginProcess = self->_userAuthPluginProcess;
  }

  v6 = userAuthPluginProcess;

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

- (void)continueDeviceRegistration:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PORegistrationManager_continueDeviceRegistration___block_invoke;
  block[3] = &unk_279A3A060;
  block[4] = self;
  dispatch_async(v4, block);
}

void __52__PORegistrationManager_continueDeviceRegistration___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __52__PORegistrationManager_continueDeviceRegistration___block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)continueUserRegistration:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PORegistrationManager_continueUserRegistration___block_invoke;
  block[3] = &unk_279A3A060;
  block[4] = self;
  dispatch_async(v4, block);
}

void __50__PORegistrationManager_continueUserRegistration___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__PORegistrationManager_continueUserRegistration___block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)exitDeviceRegistration:(id)a3
{
  v4 = [(PORegistrationManager *)self registrationContext];
  [v4 registrationUI];

  [(PORegistrationManager *)self failDeviceRegistrationBeforeAuthorization];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)exitUserRegistration:(id)a3
{
  v4 = [(PORegistrationManager *)self registrationContext];
  [v4 registrationUI];

  [(PORegistrationManager *)self failUserRegistrationBeforeAuthorization];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)exitRegistration:(id)a3
{
  v4 = [(PORegistrationManager *)self registrationContext];
  [v4 registrationUI];

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)handleUserCredentialNeededAtLogin:(BOOL)a3 smartCard:(BOOL)a4 accountDisplayName:(id)a5 bundleIdentifier:(id)a6 returningContext:(id *)a7
{
  v8 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager handleUserCredentialNeededAtLogin:smartCard:accountDisplayName:bundleIdentifier:returningContext:];
  }

  if (a7)
  {
    *a7 = 0;
  }
}

- (BOOL)handleUserAuthorizationNeededForAccountDisplayName:(id)a3 bundleIdentifier:(id)a4
{
  v4 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager handleUserAuthorizationNeededForAccountDisplayName:bundleIdentifier:];
  }

  return 1;
}

- (BOOL)handleUserAuthorizationForRegistration
{
  v3 = [(PORegistrationManager *)self registrationContext];
  v4 = [v3 authorizationProvided];

  if (v4)
  {
    v5 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_INFO, "Authorization already provided.", buf, 2u);
    }

    return 1;
  }

  v8 = [(PORegistrationManager *)self registrationContext];
  v9 = [v8 userIsPlatformSSOUser];

  v10 = [(PORegistrationManager *)self registrationContext];
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v14 = [v10 profile];
    v15 = [v14 accountDisplayName];
    v16 = [(PORegistrationManager *)self registrationContext];
    v17 = [v16 extensionIdentifier];
    v18 = [(PORegistrationManager *)self handleUserAuthorizationNeededForAccountDisplayName:v15 bundleIdentifier:v17];

    if (!v18)
    {
      v20 = PO_LOG_PORegistrationManager();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
LABEL_16:

        return 0;
      }

      *buf = 0;
LABEL_15:
      _os_log_impl(&dword_25E831000, v20, OS_LOG_TYPE_INFO, "Authorization not provided, starting over.", buf, 2u);
      goto LABEL_16;
    }

LABEL_12:
    v19 = [(PORegistrationManager *)self registrationContext];
    v6 = 1;
    [v19 setAuthorizationProvided:1];

    return v6;
  }

  v12 = [v10 credentialContext];

  if (!v12)
  {
    v29 = [(PORegistrationManager *)self registrationContext];
    v30 = [v29 authMethod];

    v31 = [(PORegistrationManager *)self registrationContext];
    v32 = v31;
    if (v30 == 1)
    {
      v33 = [v31 profile];
      v34 = [v33 accountDisplayName];
      v35 = [(PORegistrationManager *)self registrationContext];
      v36 = [v35 extensionIdentifier];
      v48 = 0;
      [(PORegistrationManager *)self handleUserCredentialNeededAtLogin:0 smartCard:0 accountDisplayName:v34 bundleIdentifier:v36 returningContext:&v48];
      v37 = v48;

      v6 = v37 != 0;
      if (v37)
      {
LABEL_23:
        v38 = [(PORegistrationManager *)self registrationContext];
        [v38 setCredentialContext:v37];

        v39 = [(PORegistrationManager *)self registrationContext];
        [v39 setAuthorizationProvided:1];
LABEL_33:

        return v6;
      }

      v39 = PO_LOG_PORegistrationManager();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    else
    {
      if ([v31 authMethod] != 3)
      {

        goto LABEL_9;
      }

      v40 = [(PORegistrationManager *)self registrationContext];
      v41 = [v40 smartCardTokenId];

      if (v41)
      {
        goto LABEL_9;
      }

      v42 = [(PORegistrationManager *)self registrationContext];
      v43 = [v42 profile];
      v44 = [v43 accountDisplayName];
      v45 = [(PORegistrationManager *)self registrationContext];
      v46 = [v45 extensionIdentifier];
      v47 = 0;
      [(PORegistrationManager *)self handleUserCredentialNeededAtLogin:0 smartCard:1 accountDisplayName:v44 bundleIdentifier:v46 returningContext:&v47];
      v37 = v47;

      v6 = v37 != 0;
      if (v37)
      {
        goto LABEL_23;
      }

      v39 = PO_LOG_PORegistrationManager();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_25E831000, v39, OS_LOG_TYPE_INFO, "Credential not provided, starting over.", buf, 2u);
    goto LABEL_33;
  }

LABEL_9:
  v13 = [(PORegistrationManager *)self registrationContext];
  if ([v13 authMethod] != 1)
  {
    v21 = [(PORegistrationManager *)self registrationContext];
    v22 = [v21 isNewPasswordUser];

    if (v22)
    {
      return 1;
    }

    v23 = [(PORegistrationManager *)self registrationContext];
    v24 = [v23 profile];
    v25 = [v24 accountDisplayName];
    v26 = [(PORegistrationManager *)self registrationContext];
    v27 = [v26 extensionIdentifier];
    v28 = [(PORegistrationManager *)self handleUserAuthorizationNeededForAccountDisplayName:v25 bundleIdentifier:v27];

    if (!v28)
    {
      v20 = PO_LOG_PORegistrationManager();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *buf = 0;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  return 1;
}

- (BOOL)reloadSSOExtensionIfNeeded
{
  v3 = [(PORegistrationManager *)self registrationContext];
  v4 = [v3 ssoExtension];

  if (v4)
  {
    return 1;
  }

  v5 = [(PORegistrationManager *)self registrationContext];
  v6 = [v5 extensionIdentifier];
  v7 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:v6];

  if (v7)
  {
    v8 = [(PORegistrationManager *)self registrationContext];
    [v8 setSsoExtension:v7];

    v9 = [(PORegistrationManager *)self registrationContext];
    v10 = [v9 ssoExtension];
    [v10 setDelegate:self];

    return 1;
  }

  [(PORegistrationManager *)self updateRegistrationState:5 failed:1];
  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  return 0;
}

- (void)findExistingSmartCardBinding
{
  v3 = [(PORegistrationManager *)self tokenHelper];
  v4 = [(PORegistrationManager *)self registrationContext];
  v5 = [v4 userName];
  v20 = 0;
  v6 = [v3 findTokenIdForSmartCardBoundUser:v5 tokenHash:&v20];
  v7 = v20;
  v8 = [(PORegistrationManager *)self registrationContext];
  [v8 setSmartCardTokenId:v6];

  v9 = [(PORegistrationManager *)self registrationContext];
  v10 = [v9 smartCardTokenId];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = [(PORegistrationManager *)self tokenHelper];
    v13 = [(PORegistrationManager *)self registrationContext];
    v14 = [v13 userName];
    v19 = v7;
    v15 = [v12 findTokenIdForSmartCardAMUser:v14 tokenHash:&v19];
    v16 = v19;

    v17 = [(PORegistrationManager *)self registrationContext];
    [v17 setSmartCardTokenId:v15];

    v7 = v16;
  }

  v18 = [(PORegistrationManager *)self registrationContext];
  [v18 setSmartCardHash:v7];
}

- (BOOL)createOrRepairDeviceConfigurationWithError:(id *)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = [(PORegistrationManager *)self configurationManager];
  v5 = [v4 currentDeviceConfiguration];
  v6 = [v5 deviceEncryptionKey];

  if (v6)
  {
    v7 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_INFO, "Verifying device encryption key", buf, 2u);
    }

    v8 = MEMORY[0x277D3D230];
    v9 = [(PORegistrationManager *)self configurationManager];
    v10 = [v9 currentDeviceConfiguration];
    LOBYTE(v8) = [v8 verifyKey:{objc_msgSend(v10, "deviceEncryptionKey")}];

    v11 = v8 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PORegistrationManager *)self configurationManager];
  v13 = [v12 currentDeviceConfiguration];
  v14 = [v13 deviceSigningKey];

  if (v14)
  {
    v15 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_INFO, "Verifying device sigining key", buf, 2u);
    }

    v16 = MEMORY[0x277D3D230];
    v17 = [(PORegistrationManager *)self configurationManager];
    v18 = [v17 currentDeviceConfiguration];
    LOBYTE(v16) = [v16 verifyKey:{objc_msgSend(v18, "deviceSigningKey")}];

    v19 = v16 ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(PORegistrationManager *)self registrationContext];
  if (![v20 isRepair])
  {
    goto LABEL_16;
  }

  v21 = [(PORegistrationManager *)self configurationManager];
  v22 = [v21 currentDeviceConfiguration];
  if (!v22)
  {

LABEL_16:
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [(PORegistrationManager *)self registrationContext];
  v25 = [v24 deviceKeysShouldChange] | v11 | v19;

  if ((v25 & 1) == 0)
  {
    v26 = 1;
    goto LABEL_41;
  }

LABEL_17:
  v27 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v96 = "[PORegistrationManager createOrRepairDeviceConfigurationWithError:]";
    v97 = 2112;
    v98 = self;
    _os_log_impl(&dword_25E831000, v27, OS_LOG_TYPE_DEFAULT, "%s creating new device configuration on %@", buf, 0x16u);
  }

  v28 = [(PORegistrationManager *)self configurationManager];
  v29 = [v28 currentDeviceConfiguration];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277D3D1E8]);
  }

  v32 = v31;

  [v32 setRegistrationCompleted:0];
  v33 = [(PORegistrationManager *)self registrationContext];
  v34 = [v33 extensionIdentifier];
  [v32 setExtensionIdentifier:v34];

  v35 = [(PORegistrationManager *)self registrationContext];
  [v32 setProtocolVersion:{objc_msgSend(v35, "protocolVersion")}];

  v36 = [(PORegistrationManager *)self registrationContext];
  v37 = [v36 ssoExtension];
  v38 = [v37 sdkVersionString];
  [v32 setSdkVersionString:v38];

  v39 = [(PORegistrationManager *)self registrationContext];
  [v32 setLoginType:{objc_msgSend(v39, "authMethod")}];

  v40 = [MEMORY[0x277CBEAA8] date];
  [v32 setAuthGracePeriodStart:v40];

  v41 = [(PORegistrationManager *)self registrationContext];
  v42 = [v41 profile];
  v43 = [v42 administratorGroups];
  [v32 setAdministratorGroups:v43];

  v44 = [(PORegistrationManager *)self registrationContext];
  v45 = [v44 profile];
  v46 = [v45 authorizationGroups];
  [v32 setAuthorizationGroups:v46];

  v47 = [(PORegistrationManager *)self registrationContext];
  v48 = [v47 profile];
  v49 = [v48 otherGroups];
  [v32 setOtherGroups:v49];

  v50 = [(PORegistrationManager *)self registrationContext];
  v51 = [v50 profile];
  [v32 updateWithProfile:v51];

  if (![v32 deviceSigningKey] || (-[PORegistrationManager registrationContext](self, "registrationContext"), v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "deviceKeysShouldChange") | v19, v52, (v53 & 1) != 0))
  {
    v54 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v54, OS_LOG_TYPE_INFO, "Creating new signing key", buf, 2u);
    }

    v55 = [(PORegistrationManager *)self registrationContext];
    v56 = [v55 ssoExtension];
    v57 = [POAlgorithmUtil deviceSigningAlgorithmToUse:v56 deviceConfiguration:v32];
    v58 = [(PORegistrationManager *)self registrationContext];
    [v58 setSigningAlgorithm:v57];

    v59 = [(PORegistrationManager *)self keychainHelper];
    v60 = [v32 extensionIdentifier];
    [v59 _deleteCachedAttestationForExtensionIdentifier:v60 key:{objc_msgSend(v32, "deviceSigningKey")}];

    v61 = MEMORY[0x277D3D230];
    v62 = [(PORegistrationManager *)self registrationContext];
    v63 = [v62 signingAlgorithm];
    v64 = [(PORegistrationManager *)self registrationContext];
    [v32 setDeviceSigningKey:{objc_msgSend(v61, "createSEPSigningKeyForAlgorithm:shared:", v63, objc_msgSend(v64, "useSharedDeviceKeys"))}];

    v65 = [(PORegistrationManager *)self registrationContext];
    [v32 setSharedDeviceKeys:{objc_msgSend(v65, "useSharedDeviceKeys")}];

    v66 = [(PORegistrationManager *)self registrationContext];
    v67 = [v66 signingAlgorithm];
    [v32 setSigningAlgorithm:v67];

    [v32 setPendingSigningAlgorithm:0];
  }

  if (![v32 deviceEncryptionKey] || (-[PORegistrationManager registrationContext](self, "registrationContext"), v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "deviceKeysShouldChange") | v11, v68, (v69 & 1) != 0))
  {
    v70 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v70, OS_LOG_TYPE_INFO, "Creating new encryption key", buf, 2u);
    }

    v71 = [(PORegistrationManager *)self registrationContext];
    v72 = [v71 ssoExtension];
    v73 = [POAlgorithmUtil deviceEncryptionAlgorithmToUse:v72 deviceConfiguration:v32];
    v74 = [(PORegistrationManager *)self registrationContext];
    [v74 setEncryptionAlgorithm:v73];

    v75 = [(PORegistrationManager *)self keychainHelper];
    v76 = [v32 extensionIdentifier];
    [v75 _deleteCachedAttestationForExtensionIdentifier:v76 key:{objc_msgSend(v32, "deviceEncryptionKey")}];

    v77 = MEMORY[0x277D3D230];
    v78 = [(PORegistrationManager *)self registrationContext];
    v79 = [v78 encryptionAlgorithm];
    v80 = [(PORegistrationManager *)self registrationContext];
    [v32 setDeviceEncryptionKey:{objc_msgSend(v77, "createSEPEncryptionKeyForAlgorithm:shared:", v79, objc_msgSend(v80, "useSharedDeviceKeys"))}];

    v81 = [MEMORY[0x277CBEAA8] date];
    [v32 setLastEncryptionKeyChange:v81];

    v82 = [(PORegistrationManager *)self registrationContext];
    [v32 setSharedDeviceKeys:{objc_msgSend(v82, "useSharedDeviceKeys")}];

    v83 = [(PORegistrationManager *)self registrationContext];
    v84 = [v83 encryptionAlgorithm];
    [v32 setEncryptionAlgorithm:v84];

    [v32 setPendingEncryptionAlgorithm:0];
  }

  v85 = [(PORegistrationManager *)self registrationContext];
  v86 = [v85 deviceKeysShouldChange];

  if (v86)
  {
    v87 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v87, OS_LOG_TYPE_INFO, "Keys have changed", buf, 2u);
    }

    v88 = [(PORegistrationManager *)self registrationContext];
    [v88 setDeviceKeysShouldChange:0];
  }

  v89 = [(PORegistrationManager *)self configurationManager];
  [v89 setSharedOnly:0];

  v90 = [(PORegistrationManager *)self configurationManager];
  v26 = [v90 saveDeviceConfigurationSyncAllConfigToPreboot:v32];

  if ((v26 & 1) == 0)
  {
    v91 = __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke();
    if (a3)
    {
      v91 = v91;
      *a3 = v91;
    }
  }

LABEL_41:
  v92 = *MEMORY[0x277D85DE8];
  return v26;
}

id __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new device configuration during device registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)setupDeviceRegistrationOptions
{
  v3 = [(PORegistrationManager *)self registrationContext];
  v4 = [v3 isRepair];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PORegistrationManager *)self registrationContext];
  v7 = [v6 useSharedDeviceKeys];

  if (v7)
  {
    v5 |= 4uLL;
  }

  v8 = [(PORegistrationManager *)self registrationContext];
  v9 = [v8 migratingDeviceKeys];

  if (v9)
  {
    v5 |= 8uLL;
  }

  v10 = [(PORegistrationManager *)self registrationContext];
  v11 = [v10 isBuddyFlow];

  if (v11)
  {
    v12 = v5 | 0x40;
  }

  else
  {
    v12 = v5;
  }

  v13 = [(PORegistrationManager *)self registrationContext];
  [v13 setOptions:v12];
}

- (void)failDeviceRegistrationBeforeAuthorization
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PORegistrationManager failDeviceRegistrationBeforeAuthorization]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v4 = [(PORegistrationManager *)self registrationContext];
  [v4 setRetry:1];

  v5 = [(PORegistrationManager *)self registrationContext];
  [v5 setState:5];

  v6 = [(PORegistrationManager *)self registrationContext];
  [v6 setAuthorizationProvided:0];

  v7 = [(PORegistrationManager *)self registrationContext];
  v8 = [v7 registrationUI];

  if (!v8)
  {
    [(PORegistrationManager *)self promptUserForRegistration];
  }

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDeviceRegistrationDidChange
{
  v2 = [(PORegistrationManager *)self distributedNotificationCenter];
  [v2 postNotificationName:@"com.apple.platformSSO.DeviceRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)notifyUserRegistrationDidChange
{
  v2 = [(PORegistrationManager *)self distributedNotificationCenter];
  [v2 postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)handleAuthorizationForNewUsers
{
  v3 = [(PORegistrationManager *)self registrationContext];
  if (([v3 isNewPasswordUser] & 1) == 0)
  {

LABEL_6:
    v15 = [(PORegistrationManager *)self registrationContext];
    v16 = [v15 isNewSmartCardUser];

    v17 = [(PORegistrationManager *)self registrationContext];
    v19 = v17;
    if (v16)
    {
      [v17 setAuthorizationProvided:1];
    }

    else if ([v17 isNewPasswordUser])
    {
      v18 = [(PORegistrationManager *)self registrationContext];
      [v18 authMethod];
    }

    goto LABEL_10;
  }

  v4 = [(PORegistrationManager *)self registrationContext];
  v5 = [v4 authMethod];

  if (v5 != 1)
  {
    goto LABEL_6;
  }

  v6 = [(PORegistrationManager *)self keyWrap];
  v7 = [(PORegistrationManager *)self configurationManager];
  v8 = [v7 currentUserConfiguration];
  v9 = [v8 _credential];
  v19 = [v6 unwrapBlob:v9];

  v10 = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x277CD4790]);
  [v11 setCredential:v19 type:-9];
  v12 = v19;
  memset_s([v19 mutableBytes], objc_msgSend(v19, "length"), 0, objc_msgSend(v19, "length"));
  v13 = [(PORegistrationManager *)self registrationContext];
  [v13 setCredentialContext:v11];

  v14 = [(PORegistrationManager *)self registrationContext];
  [v14 setAuthorizationProvided:1];

LABEL_10:
  v10 = v19;
LABEL_11:
}

- (void)setupUserRegistrationOptions
{
  v3 = [(PORegistrationManager *)self registrationContext];
  v4 = [v3 userNotified];

  v5 = v4;
  v6 = [(PORegistrationManager *)self registrationContext];
  v7 = [v6 isRepair];

  if (v7)
  {
    v5 |= 2uLL;
  }

  v8 = [(PORegistrationManager *)self registrationContext];
  v9 = [v8 useSharedDeviceKeys];

  if (v9)
  {
    v5 |= 4uLL;
  }

  v10 = [(PORegistrationManager *)self registrationContext];
  v11 = [v10 migratingDeviceKeys];

  if (v11)
  {
    v5 |= 8uLL;
  }

  v12 = [(PORegistrationManager *)self registrationContext];
  v13 = [v12 userSEPKeyInvalid];

  if (v13)
  {
    v5 |= 0x20uLL;
  }

  v14 = [(PORegistrationManager *)self registrationContext];
  v15 = [v14 isBuddyFlow];

  if (v15)
  {
    v16 = v5 | 0x40;
  }

  else
  {
    v16 = v5;
  }

  v17 = [(PORegistrationManager *)self registrationContext];
  [v17 setOptions:v16];
}

- (BOOL)createOrRepairUserConfigurationWithError:(id *)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = [(PORegistrationManager *)self configurationManager];
  v6 = [v5 currentUserConfiguration];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [(PORegistrationManager *)self registrationContext];
  if ([v8 authMethod] != 2)
  {

LABEL_10:
    goto LABEL_11;
  }

  v9 = [(PORegistrationManager *)self configurationManager];
  v10 = [v9 currentUserConfiguration];
  v11 = [v10 sepKey];

  if (!v11)
  {
LABEL_11:
    v17 = 1;
    goto LABEL_12;
  }

  v12 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v12, OS_LOG_TYPE_INFO, "Verifying user key", buf, 2u);
  }

  v13 = objc_alloc_init(MEMORY[0x277CD4790]);
  [v13 setInteractionNotAllowed:1];
  v14 = [(PORegistrationManager *)self configurationManager];
  v15 = [v14 currentUserConfiguration];
  v16 = [v15 sepKeyWithContext:v13];

  v17 = [MEMORY[0x277D3D230] verifyKey:v16];
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_12:
  v18 = [(PORegistrationManager *)self registrationContext];
  if (([v18 isBuddyFlow] & 1) == 0)
  {
    v19 = [(PORegistrationManager *)self configurationManager];
    v20 = [v19 currentUserConfiguration];
    if (v20)
    {
      v21 = v20;
      v22 = [(PORegistrationManager *)self configurationManager];
      v23 = [v22 currentUserConfiguration];
      v24 = [v23 _setupContext];
      if (v24)
      {
      }

      else
      {
        [(PORegistrationManager *)self configurationManager];
        v83 = v17;
        v26 = v25 = a3;
        v27 = [v26 currentUserConfiguration];
        v28 = [v27 _loginContext];

        a3 = v25;
        v17 = v83;

        if (!v28)
        {
          goto LABEL_22;
        }
      }

      v29 = PO_LOG_PORegistrationManager();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E831000, v29, OS_LOG_TYPE_INFO, "Cleaning up contexts", buf, 2u);
      }

      v30 = [(PORegistrationManager *)self configurationManager];
      v18 = [v30 currentUserConfiguration];

      [v18 set_setupContext:0];
      [v18 set_loginContext:0];
      v31 = [(PORegistrationManager *)self configurationManager];
      v32 = [(PORegistrationManager *)self registrationContext];
      v33 = [v32 userName];
      v34 = [v31 saveUserConfiguration:v18 forUserName:v33 syncToPreboot:0];

      if ((v34 & 1) == 0)
      {
        v68 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke();
        if (!a3)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    else
    {
    }
  }

LABEL_22:
  v35 = [(PORegistrationManager *)self registrationContext];
  if ([v35 authMethod] == 2)
  {
    v36 = [(PORegistrationManager *)self configurationManager];
    v37 = [v36 currentUserConfiguration];
    v38 = [v37 sepKey] == 0;
  }

  else
  {
    v38 = 0;
  }

  v39 = [(PORegistrationManager *)self registrationContext];
  if (([v39 isRepair] & 1) == 0)
  {

LABEL_29:
    v46 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v85 = "[PORegistrationManager createOrRepairUserConfigurationWithError:]";
      v86 = 2112;
      v87 = self;
      _os_log_impl(&dword_25E831000, v46, OS_LOG_TYPE_DEFAULT, "%s creating new user configuration on %@", buf, 0x16u);
    }

    v47 = [(PORegistrationManager *)self configurationManager];
    v48 = [v47 currentUserConfiguration];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = objc_alloc_init(MEMORY[0x277D3D240]);
    }

    v18 = v50;

    v51 = [(PORegistrationManager *)self registrationContext];
    [v18 setLoginType:{objc_msgSend(v51, "authMethod")}];

    [v18 setState:2];
    v52 = [(PORegistrationManager *)self registrationContext];
    v53 = [v52 authMethod];

    if (v53 != 2)
    {
LABEL_51:
      v77 = [(PORegistrationManager *)self configurationManager];
      v78 = [(PORegistrationManager *)self registrationContext];
      v79 = [v78 userName];
      v45 = 1;
      v80 = [v77 saveUserConfiguration:v18 forUserName:v79 syncToPreboot:1];

      if (v80)
      {
LABEL_55:

        goto LABEL_56;
      }

      v68 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_44();
      if (!a3)
      {
LABEL_54:

        v45 = 0;
        goto LABEL_55;
      }

LABEL_53:
      v68 = v68;
      *a3 = v68;
      goto LABEL_54;
    }

    v54 = [(PORegistrationManager *)self registrationContext];
    v55 = [v54 ssoExtension];
    v56 = [POAlgorithmUtil userSigningAlgorithmToUse:v55 userConfiguration:v18];
    v57 = [(PORegistrationManager *)self registrationContext];
    [v57 setUserSigningAlgorithm:v56];

    v58 = [(PORegistrationManager *)self configurationManager];
    v59 = [v58 currentLoginConfiguration];
    v60 = [v59 userSEPKeyBiometricPolicy];

    v61 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [(PORegistrationManager *)v60 createOrRepairUserConfigurationWithError:v61];
    }

    if (!v60)
    {
      goto LABEL_41;
    }

    v62 = objc_alloc_init(MEMORY[0x277CD4790]);
    v63 = [v62 canEvaluatePolicy:1 error:0];

    if ((v63 & 1) == 0)
    {
      v68 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_38();
      if (!a3)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (v60)
    {
      v69 = MEMORY[0x277D3D230];
      v65 = [(PORegistrationManager *)self registrationContext];
      v66 = [v65 userSigningAlgorithm];
      v70 = v69;
      v71 = v66;
      v72 = 1;
    }

    else
    {
      if ((v60 & 2) == 0)
      {
LABEL_41:
        v64 = MEMORY[0x277D3D230];
        v65 = [(PORegistrationManager *)self registrationContext];
        v66 = [v65 userSigningAlgorithm];
        v67 = [v64 createUserSEPSigningKeyForAlgorithm:v66];
        goto LABEL_49;
      }

      v73 = MEMORY[0x277D3D230];
      v65 = [(PORegistrationManager *)self registrationContext];
      v66 = [v65 userSigningAlgorithm];
      v70 = v73;
      v71 = v66;
      v72 = 0;
    }

    v67 = [v70 createUserSEPSigningKeyForAlgorithm:v71 userPresence:1 currentSet:v72];
LABEL_49:
    [v18 setSepKey:v67];

    v74 = [(PORegistrationManager *)self registrationContext];
    v75 = [v74 userSigningAlgorithm];
    [v18 setSigningAlgorithm:v75];

    [v18 setPendingSigningAlgorithm:0];
    if ((v17 & 1) == 0)
    {
      v76 = [(PORegistrationManager *)self registrationContext];
      [v76 setOptions:{objc_msgSend(v76, "options") | 0x20}];
    }

    goto LABEL_51;
  }

  v40 = [(PORegistrationManager *)self configurationManager];
  v41 = [(PORegistrationManager *)self registrationContext];
  v42 = [v41 userName];
  v43 = [v40 userConfigurationForUserName:v42];
  v44 = (v43 == 0) | ~v17 | v38;

  if (v44)
  {
    goto LABEL_29;
  }

  v45 = 1;
LABEL_56:
  v81 = *MEMORY[0x277D85DE8];
  return v45;
}

id __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new user configuration after cleanup."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_38()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1006 description:@"Failed to create key during user registration because touchID or watch is not available."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_44()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save new user configuration during user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)createUserConfigurationForBuddyUser
{
  v3 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_INFO, "Creating setup user configuration", v8, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277D3D240]);
  v5 = [(PORegistrationManager *)self registrationContext];
  [v4 setLoginType:{objc_msgSend(v5, "authMethod")}];

  [v4 setState:2];
  v6 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(v5) = [v6 saveUserConfiguration:v4 forUserName:@"_mbsetupuser" syncToPreboot:0];

  if ((v5 & 1) == 0)
  {
    v7 = __60__PORegistrationManager_createUserConfigurationForBuddyUser__block_invoke();
  }
}

id __60__PORegistrationManager_createUserConfigurationForBuddyUser__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save setup user configuration during user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)cleanupUserConfigAfterMigrationToShared
{
  v3 = [(PORegistrationManager *)self registrationContext];
  v4 = [v3 options];

  if ((v4 & 8) != 0)
  {
    v5 = [(PORegistrationManager *)self configurationManager];
    v6 = [v5 removeUserDeviceConfiguration];

    if ((v6 & 1) == 0)
    {
      v7 = __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke();
    }

    v8 = [(PORegistrationManager *)self configurationManager];
    v9 = [v8 removeUserLoginConfiguration];

    if ((v9 & 1) == 0)
    {
      v10 = __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke_63();
    }
  }
}

id __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove user device configuration after successful user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke_63()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove user login configuration after successful user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)storeCredentialAndUpdatePasswordHint
{
  v3 = [(PORegistrationManager *)self configurationManager];
  v4 = [v3 currentUserConfiguration];

  v5 = MEMORY[0x277D3D1E0];
  v6 = [(PORegistrationManager *)self registrationContext];
  v7 = [v6 credentialContext];
  v17 = 0;
  v8 = [v5 passwordDataFromContext:v7 error:&v17];
  v9 = v17;

  if (v8)
  {
    v10 = [(PORegistrationManager *)self keyWrap];
    v11 = [v10 wrapBlob:v8];
    [v4 set_credential:v11];

    memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
    v12 = [(PORegistrationManager *)self configurationManager];
    LOBYTE(v10) = [v12 saveCurrentUserConfigurationAndSyncToPreboot:0];

    if ((v10 & 1) == 0)
    {
      v13 = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke_73();
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke;
    v15[3] = &unk_279A3A088;
    v16 = v9;
    v14 = __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke(v15);
  }
}

id __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to find user credential after successful user registration."];
  v2 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __61__PORegistrationManager_storeCredentialAndUpdatePasswordHint__block_invoke_73()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)completeLegacyUserRegistration
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(PORegistrationManager *)self registrationContext];
  if ([v3 isNewPasswordUser])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PORegistrationManager *)self registrationContext];
    v6 = [v5 isNewSmartCardUser];

    v4 = v6 ^ 1u;
  }

  v7 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PORegistrationManager completeLegacyUserRegistration]";
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s calling registrationDidComplete on %@", buf, 0x16u);
  }

  v8 = [(PORegistrationManager *)self registrationContext];
  v9 = [v8 ssoExtension];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke;
  v21[3] = &unk_279A3A060;
  v21[4] = self;
  [v9 registrationDidCompleteWithCompletion:v21];

  [(PORegistrationManager *)self updateRegistrationState:1 failed:0];
  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
  v10 = [(PORegistrationManager *)self configurationManager];
  v11 = [v10 currentUserConfiguration];
  [v11 setState:v4];

  v12 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(v10) = [v12 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((v10 & 1) == 0)
  {
    v13 = __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke_2();
  }

  v14 = [(PORegistrationManager *)self registrationContext];
  v15 = [v14 isRepair];

  v16 = [(PORegistrationManager *)self process];
  v17 = v16;
  if (v15)
  {
    v18 = [(PORegistrationManager *)self registrationContext];
    v19 = [v18 credentialContext];
    [v17 performLoginForCurrentUserWithPasswordContext:v19];
  }

  else
  {
    [v16 performLoginForCurrentUserWithPasswordContext:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v3 = [v2 ssoExtension];
  [v3 unload];

  v4 = [*(a1 + 32) registrationContext];
  v5 = [v4 registrationUI];

  if (!v5)
  {
    v6 = *(a1 + 32);

    [v6 setRegistrationContext:0];
  }
}

id __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke_2()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after successful SDK 13 user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)createContextForUserCredential
{
  v10 = objc_alloc_init(MEMORY[0x277CD4790]);
  v3 = [(PORegistrationManager *)self registrationContext];
  [v3 setCredentialContext:v10];

  v4 = [(PORegistrationManager *)self keyWrap];
  v5 = [(PORegistrationManager *)self configurationManager];
  v6 = [v5 currentUserConfiguration];
  v7 = [v6 _credential];
  v8 = [v4 unwrapBlob:v7];

  if (v8)
  {
    [v10 setCredential:v8 type:-9];
    memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
  }

  else
  {
    v9 = __55__PORegistrationManager_createContextForUserCredential__block_invoke();
    [(PORegistrationManager *)self finishRegistrationWithRetry];
  }
}

id __55__PORegistrationManager_createContextForUserCredential__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find user credential after successful authentication during user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)failUserRegistrationBeforeAuthorization
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PORegistrationManager failUserRegistrationBeforeAuthorization]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  v4 = [(PORegistrationManager *)self registrationContext];
  [v4 setRetry:1];

  v5 = [(PORegistrationManager *)self registrationContext];
  [v5 setState:8];

  v6 = [(PORegistrationManager *)self registrationContext];
  [v6 setAuthorizationProvided:0];

  v7 = [(PORegistrationManager *)self registrationContext];
  v8 = [v7 registrationUI];

  if (!v8)
  {
    [(PORegistrationManager *)self promptUserForRegistration];
  }

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  v9 = *MEMORY[0x277D85DE8];
}

void __62__PORegistrationManager_finishRegistrationWithStatus_message___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v1 = [v2 ssoExtension];
  [v1 unload];
}

- (void)finishRegistrationWithRetry
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PORegistrationManager finishRegistrationWithRetry]";
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v4 = [(PORegistrationManager *)self registrationContext];
  [v4 setRetry:1];

  v5 = [(PORegistrationManager *)self registrationContext];
  [v5 setState:8];

  v6 = [(PORegistrationManager *)self configurationManager];
  v7 = [v6 currentUserConfiguration];
  [v7 setState:2];

  v8 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(v7) = [v8 saveCurrentUserConfigurationAndSyncToPreboot:1];

  if ((v7 & 1) == 0)
  {
    v9 = __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke();
  }

  v10 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PORegistrationManager finishRegistrationWithRetry]";
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s calling registrationDidComplete on %@", buf, 0x16u);
  }

  v11 = [(PORegistrationManager *)self registrationContext];
  v12 = [v11 ssoExtension];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke_103;
  v14[3] = &unk_279A3A060;
  v14[4] = self;
  [v12 registrationDidCompleteWithCompletion:v14];

  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
  v13 = *MEMORY[0x277D85DE8];
}

id __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save user configuration after failed user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in device registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_111()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found in device registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_117()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No supported authentication methods in device registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_124(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:4];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

void __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_2(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __116__PORegistrationManager_handleDeviceAndUserRegistrationForRepair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_3;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Device registration not complete in user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_132()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_138()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found in user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_144()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No supported authentication methods in user registration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

uint64_t __112__PORegistrationManager_handleUserRegistrationForUser_repair_newPasswordUser_newSmartCardUser_notified_profile___block_invoke_150(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:7];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (void)promptUserForRegistration
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = [(PORegistrationManager *)self registrationContext];

  if (v3)
  {
    v4 = [(PORegistrationManager *)self configurationManager];
    v5 = [v4 currentLoginConfiguration];

    v6 = [(PORegistrationManager *)self registrationContext];
    if ([v6 isRepair])
    {
    }

    else
    {
      v7 = [(PORegistrationManager *)self registrationContext];
      v8 = [v7 migratingDeviceKeys];

      if (!v8)
      {
        v9 = [(PORegistrationManager *)self configurationManager];
        v10 = [v9 currentDeviceConfiguration];
        v11 = [v10 accountDisplayName];
        v12 = v11;
        if (!v11)
        {
          v12 = [v5 accountDisplayName];
        }

        v13 = [(PORegistrationManager *)self createRegistrationNotificationWithAccountName:v12];
        goto LABEL_13;
      }
    }

    v9 = [(PORegistrationManager *)self configurationManager];
    v10 = [v9 currentDeviceConfiguration];
    v11 = [v10 accountDisplayName];
    v12 = v11;
    if (!v11)
    {
      v12 = [v5 accountDisplayName];
    }

    v13 = [(PORegistrationManager *)self createRegistrationUpdateNotificationWithAccountName:v12];
LABEL_13:
    v14 = v13;
    if (!v11)
    {
    }

    v15 = [(PORegistrationManager *)self userNotificationCenter];
    v34[0] = @"com.apple.PlatformSSO.registration";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v15 removeDeliveredNotificationsWithIdentifiers:v16];

    v17 = [(PORegistrationManager *)self userNotificationCenter];
    v33 = @"com.apple.PlatformSSO.registration";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v17 removePendingNotificationRequestsWithIdentifiers:v18];

    v19 = [(PORegistrationManager *)self registrationContext];
    LODWORD(v18) = [v19 isRetry];

    if (v18)
    {
      v20 = 600.0;
      v21 = 1;
    }

    else
    {
      v20 = 1.0;
      v21 = 0;
    }

    v22 = [MEMORY[0x277CE2020] triggerWithTimeInterval:v21 repeats:v20];
    v23 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.PlatformSSO.registration" content:v14 trigger:v22 destinations:5];
    v24 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&dword_25E831000, v24, OS_LOG_TYPE_INFO, "Sending registration notification", v32, 2u);
    }

    v25 = [(PORegistrationManager *)self userNotificationCenter];
    [v25 addNotificationRequest:v23 withCompletionHandler:&__block_literal_global_155];

    v26 = [(PORegistrationManager *)self registrationContext];
    v27 = [v26 ssoExtension];
    [v27 close];

    v28 = [(PORegistrationManager *)self registrationContext];
    v29 = [v28 ssoExtension];
    [v29 unload];

    v30 = [(PORegistrationManager *)self registrationContext];
    [v30 setSsoExtension:0];

    goto LABEL_21;
  }

  v5 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager promptUserForRegistration];
  }

LABEL_21:

  v31 = *MEMORY[0x277D85DE8];
}

void __50__PORegistrationManager_promptUserForRegistration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__PORegistrationManager_promptUserForRegistration__block_invoke_2;
    v5[3] = &unk_279A3A088;
    v6 = v2;
    v4 = __50__PORegistrationManager_promptUserForRegistration__block_invoke_2(v5);
  }
}

id __50__PORegistrationManager_promptUserForRegistration__block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error sending local notification for registration."];
  v2 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)resetRegistrationWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[PORegistrationManager resetRegistrationWithCompletion:]";
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = [(PORegistrationManager *)self userNotificationCenter];
  v17 = @"com.apple.PlatformSSO.registration";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [v6 removeDeliveredNotificationsWithIdentifiers:v7];

  v8 = [(PORegistrationManager *)self userNotificationCenter];
  v16 = @"com.apple.PlatformSSO.registration";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [v8 removePendingNotificationRequestsWithIdentifiers:v9];

  [(PORegistrationManager *)self updateRegistrationStateFailed:0];
  v10 = [(PORegistrationManager *)self registrationContext];
  v11 = [v10 ssoExtension];

  v12 = [(PORegistrationManager *)self registrationContext];
  [v12 registrationUI];

  [(PORegistrationManager *)self setRegistrationContext:0];
  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__PORegistrationManager_resetRegistrationWithCompletion___block_invoke;
    v14[3] = &unk_279A3A0D0;
    v14[4] = self;
    v15 = v4;
    [v11 registrationDidCancelWithCompletion:v14];
  }

  else
  {
    [(PORegistrationManager *)self notifyUserRegistrationDidChange];
    [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
    v4[2](v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PORegistrationManager_resetRegistrationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notifyUserRegistrationDidChange];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)handleDeviceRegistrationNotification
{
  v3 = [(PORegistrationManager *)self registrationContext];

  if (v3)
  {
    v4 = [(PORegistrationManager *)self registrationContext];
    [v4 setUserNotified:1];

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __61__PORegistrationManager_handleDeviceRegistrationNotification__block_invoke;
    activity_block[3] = &unk_279A3A060;
    activity_block[4] = self;
    _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v5 = [(PORegistrationManager *)self process];
    [v5 handleConfigurationChanged:1];
  }
}

uint64_t __61__PORegistrationManager_handleDeviceRegistrationNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:4];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (void)handleUserRegistrationNotification
{
  v3 = [(PORegistrationManager *)self registrationContext];
  if (v3 && (v4 = v3, -[PORegistrationManager registrationContext](self, "registrationContext"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v4, v6 != 1))
  {
    v7 = [(PORegistrationManager *)self registrationContext];
    [v7 setUserNotified:1];

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __59__PORegistrationManager_handleUserRegistrationNotification__block_invoke;
    activity_block[3] = &unk_279A3A060;
    activity_block[4] = self;
    _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v8 = [(PORegistrationManager *)self process];
    [v8 handleConfigurationChanged:1];
  }
}

uint64_t __59__PORegistrationManager_handleUserRegistrationNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:7];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (int)ssoMethodToUse:(id)a3 profile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 1000;
  if ([v6 authenticationMethod] != 1000)
  {
    v8 = [v5 supportedGrantTypes];
    if (v8)
    {
      v9 = v8;
      if (v8)
      {
        v10 = [v6 authenticationMethod];
        if (v10 == 1)
        {
          goto LABEL_7;
        }
      }

      if ((v9 & 2) != 0)
      {
        v10 = [v6 authenticationMethod];
        if (v10 == 2)
        {
LABEL_7:
          v7 = v10;
          goto LABEL_14;
        }

        if ([v6 authenticationMethod] == 3)
        {
          v7 = 3;
        }

        else
        {
          v7 = 1000;
        }
      }
    }

    else
    {
      v11 = [v5 authenticationMethods];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "authenticationMethod")}];
      v13 = [v11 containsObject:v12];

      if (v13)
      {
        v7 = [v6 authenticationMethod];
      }
    }
  }

LABEL_14:

  return v7;
}

- (id)loadSSOExtensionWithExtensionBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [POExtension alloc];
  v6 = [(PORegistrationManager *)self extensionManager];
  v7 = [(POExtension *)v5 initWithExtensionBundleIdentifier:v4 extensionManager:v6 delegate:self];

  return v7;
}

- (void)handleRegistrationViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PORegistrationManager *)self registrationContext];

  if (!v5)
  {
    v10 = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke();
    v11 = v10;
    if (v4)
    {
      v4[2](v4, 0, v10);

      goto LABEL_9;
    }
  }

  v6 = [(PORegistrationManager *)self registrationContext];
  v7 = [v6 options];

  if (v7)
  {
LABEL_8:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_171;
    block[3] = &unk_279A3A0F8;
    v13 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_9;
  }

  v8 = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_165();
  v9 = v8;
  if (!v4)
  {

    goto LABEL_8;
  }

  v4[2](v4, 0, v8);

LABEL_9:
}

id __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Registration not in progress when presenting registration view controller."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_165()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"User interaction not allowed when presenting registration view controller."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)handleRemovingRegistrationForExtension:(id)a3 alreadyDeleted:(BOOL)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[PORegistrationManager handleRemovingRegistrationForExtension:alreadyDeleted:]";
    v41 = 2112;
    v42 = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (!a4)
  {
    v33 = v6;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [(PORegistrationManager *)self configurationManager];
    v9 = [v8 currentUserConfiguration];
    v10 = [v9 kerberosStatus];

    v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = PO_LOG_PORegistrationManager();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 cacheName];
            *buf = 138543362;
            v40 = v17;
            _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Removing kerberos tickets for cache: %{public}@", buf, 0xCu);
          }

          v18 = [(PORegistrationManager *)self process];
          v19 = [v18 kerberosHelper];
          v20 = [v15 cacheName];
          [v19 destroyCredentialForUUID:v20];
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    v21 = [(PORegistrationManager *)self configurationManager];
    v22 = [v21 resetStoredConfiguration];

    v6 = v33;
    if ((v22 & 1) == 0)
    {
      v23 = __79__PORegistrationManager_handleRemovingRegistrationForExtension_alreadyDeleted___block_invoke();
    }
  }

  v24 = [(PORegistrationManager *)self configurationManager];
  [v24 setTokens:0 extensionIdentifier:v6 returningError:0];

  v25 = [(PORegistrationManager *)self keychainHelper];
  [v25 _deleteAllCachedAttestations];

  v26 = [(PORegistrationManager *)self process];
  [v26 setupTimerForAuthentication];

  v27 = [(PORegistrationManager *)self configurationManager];
  [v27 setSharedOnly:0];

  v28 = [(PORegistrationManager *)self userNotificationCenter];
  [v28 removeAllDeliveredNotifications];

  v29 = [(PORegistrationManager *)self userNotificationCenter];
  [v29 removeAllPendingNotificationRequests];

  v30 = [(PORegistrationManager *)self process];
  [v30 setPlatformSSOActive:0];

  v31 = [(PORegistrationManager *)self registrationContext];
  [v31 registrationUI];

  [(PORegistrationManager *)self setRegistrationContext:0];
  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  [(PORegistrationManager *)self notifyUserRegistrationDidChange];

  v32 = *MEMORY[0x277D85DE8];
}

id __79__PORegistrationManager_handleRemovingRegistrationForExtension_alreadyDeleted___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove Platform SSO configuration folder when removing configuration."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (unint64_t)requestSmartCardForBinding:(BOOL)a3 window:(id)a4 tokenId:(id *)a5 tokenHash:(id *)a6 wrapTokenHash:(id *)a7 pinContext:(id *)a8
{
  v8 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager requestSmartCardForBinding:window:tokenId:tokenHash:wrapTokenHash:pinContext:];
  }

  return 0;
}

- (id)saveSSOTokens:(id)a3 toKeychainUsingContext:(id)a4 tokenId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_INFO, "Saving SSO tokens to keychain", buf, 2u);
  }

  v11 = +[POConfigurationManager sharedInstance];
  v12 = v11;
  v13 = MEMORY[0x277D3D1E0];
  if (v9)
  {
    v29 = v8;
    v14 = [v11 currentDeviceConfiguration];
    v15 = [v14 deviceEncryptionKey];
    v16 = [v9 dataUsingEncoding:4];
    v17 = [v13 decryptPendingSSOTokens:v7 UsingPrivateKey:v15 sharedData:v16];

    v18 = 0;
  }

  else
  {
    v33 = 0;
    v14 = [MEMORY[0x277D3D1E0] passwordDataFromContext:v8 error:&v33];
    v18 = v33;
    if (!v14)
    {
      v28 = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke();
      v17 = 0;
      goto LABEL_10;
    }

    v29 = v8;
    v19 = MEMORY[0x277D3D1E0];
    v20 = [v12 currentDeviceConfiguration];
    v17 = [v19 decryptPendingSSOTokens:v7 UsingPrivateKey:objc_msgSend(v20 sharedData:{"deviceEncryptionKey"), v14}];

    memset_s([v14 mutableBytes], objc_msgSend(v14, "length"), 0, objc_msgSend(v14, "length"));
  }

  v21 = v18;

  v22 = NSUserName();
  v23 = [v12 currentDeviceConfiguration];
  v24 = [v23 extensionIdentifier];
  v32 = v18;
  v25 = [v12 setTokens:v17 user:v22 extensionIdentifier:v24 returningError:&v32];
  v18 = v32;

  if ((v25 & 1) == 0)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke_182;
    v30[3] = &unk_279A3A088;
    v18 = v18;
    v31 = v18;
    v26 = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke_182(v30);
  }

  v8 = v29;
LABEL_10:

  return v17;
}

id __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to find credential after setup authentication"];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke_182(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to save SSO tokens."];
  v2 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (id)retrieveProfilePicture
{
  v3 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager retrieveProfilePicture];
  }

  v4 = [(PORegistrationManager *)self configurationManager];
  v5 = [v4 currentDeviceConfiguration];

  if (!v5)
  {
    v19 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke();
LABEL_14:
    v18 = 0;
    goto LABEL_19;
  }

  v6 = [v5 synchronizeProfilePicture];
  v7 = PO_LOG_PORegistrationManager();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if ((v6 & 1) == 0)
  {
    if (v8)
    {
      [PORegistrationManager retrieveProfilePicture];
    }

    goto LABEL_14;
  }

  if (v8)
  {
    [PORegistrationManager retrieveProfilePicture];
  }

  v9 = [v5 extensionIdentifier];
  v10 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:v9];

  if (v10)
  {
    v11 = [POProfile alloc];
    v12 = [(PORegistrationManager *)self configurationHost];
    v13 = [v12 platformSSOProfile];
    v14 = [(POProfile *)v11 initWithProfile:v13];

    if (v14)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy_;
      v34 = __Block_byref_object_dispose_;
      v35 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy_;
      v28 = __Block_byref_object_dispose_;
      v29 = dispatch_semaphore_create(0);
      v15 = [(POProfile *)v14 extensionData];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_203;
      v23[3] = &unk_279A3A120;
      v23[4] = &v24;
      v23[5] = &v30;
      [v10 profilePictureForUserUsingExtensionData:v15 completion:v23];

      v16 = v25[5];
      v17 = dispatch_time(0, (60.0 * 1000000000.0));
      dispatch_semaphore_wait(v16, v17);
      v18 = v31[5];
      _Block_object_dispose(&v24, 8);

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v21 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_197();
      v18 = 0;
    }
  }

  else
  {
    v20 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_191();
    v18 = 0;
  }

LABEL_19:

  return v18;
}

id __47__PORegistrationManager_retrieveProfilePicture__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"No device configuration for profile pic sync."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __47__PORegistrationManager_retrieveProfilePicture__block_invoke_191()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Platform SSO extension not found for profile pic sync."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __47__PORegistrationManager_retrieveProfilePicture__block_invoke_197()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"No platform SSO Profiles in profile pic sync."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __47__PORegistrationManager_retrieveProfilePicture__block_invoke_203(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_INFO, "No profile picture data.", v6, 2u);
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
}

- (void)windowDidClose
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(PORegistrationManager *)self registrationContext];
    v6 = [v4 numberWithInteger:{objc_msgSend(v5, "state")}];
    v7 = MEMORY[0x277CCABB0];
    v8 = [(PORegistrationManager *)self registrationContext];
    v9 = [v7 numberWithInt:{objc_msgSend(v8, "failureCount")}];
    v12 = 136315906;
    v13 = "[PORegistrationManager windowDidClose]";
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s state = %{public}@, failureCount = %{public}@ on %@", &v12, 0x2Au);
  }

  v10 = [(PORegistrationManager *)self registrationContext];
  [v10 state];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestDidCompleteWithError:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [(PORegistrationManager *)self registrationContext];
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "state")}];
    v9 = MEMORY[0x277CCABB0];
    v10 = [(PORegistrationManager *)self registrationContext];
    v11 = [v9 numberWithInt:{objc_msgSend(v10, "failureCount")}];
    *buf = 136315906;
    v25 = "[PORegistrationManager requestDidCompleteWithError:]";
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v11;
    v30 = 2112;
    v31 = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s state = %{public}@, failureCount = %{public}@ on %@", buf, 0x2Au);
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(PORegistrationManager *)v12 registrationContext];
  v14 = [v13 ssoExtension];
  v15 = v14 == 0;

  if (v15)
  {
    objc_sync_exit(v12);
  }

  else
  {
    v16 = [(PORegistrationManager *)v12 registrationContext];
    v17 = [v16 ssoExtension];
    [v17 unload];

    v18 = [(PORegistrationManager *)v12 registrationContext];
    [v18 setSsoExtension:0];

    objc_sync_exit(v12);
    v19 = [(PORegistrationManager *)v12 registrationContext];
    LOBYTE(v17) = [v19 state] == 1;

    if ((v17 & 1) == 0)
    {
      v20 = [(PORegistrationManager *)v12 registrationContext];
      v21 = [v20 isBuddyFlow];

      if ((v21 & 1) == 0)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke;
        v23[3] = &unk_279A3A148;
        v23[4] = v12;
        [(PORegistrationManager *)v12 showAlertWithError:v4 completion:v23];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __53__PORegistrationManager_requestDidCompleteWithError___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationContext];
  [v2 setFailureCount:{objc_msgSend(v2, "failureCount") + 1}];

  v3 = [*(a1 + 32) registrationContext];
  v4 = [v3 failureCount];

  v5 = *(a1 + 32);
  if (v4 >= 2)
  {
    [v5 updateRegistrationStateFailed:1];
    v6 = [*(a1 + 32) registrationContext];
    if ([v6 isRetry])
    {
    }

    else
    {
      v12 = [*(a1 + 32) registrationContext];
      v13 = [v12 state];

      if (v13 == 4)
      {
        v14 = PO_LOG_PORegistrationManager();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 136315394;
          v38 = "[PORegistrationManager requestDidCompleteWithError:]_block_invoke";
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&dword_25E831000, v14, OS_LOG_TYPE_DEFAULT, "%s removing login configuration on %@", buf, 0x16u);
        }

        v16 = [*(a1 + 32) configurationManager];
        v17 = [v16 removeLoginConfiguration];

        if ((v17 & 1) == 0)
        {
          v18 = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_205();
        }

        goto LABEL_21;
      }
    }

    v19 = [*(a1 + 32) registrationContext];
    if ([v19 isRetry])
    {
    }

    else
    {
      v22 = [*(a1 + 32) registrationContext];
      v23 = [v22 state];

      if (v23 == 7)
      {
        v24 = PO_LOG_PORegistrationManager();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 32);
          *buf = 136315394;
          v38 = "[PORegistrationManager requestDidCompleteWithError:]_block_invoke";
          v39 = 2112;
          v40 = v25;
          _os_log_impl(&dword_25E831000, v24, OS_LOG_TYPE_DEFAULT, "%s removing user configuration on %@", buf, 0x16u);
        }

        v26 = [*(a1 + 32) configurationManager];
        v27 = [v26 currentUserConfiguration];
        [v27 setState:2];

        v28 = [*(a1 + 32) configurationManager];
        LOBYTE(v27) = [v28 saveCurrentUserConfigurationAndSyncToPreboot:1];

        if ((v27 & 1) == 0)
        {
          v29 = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_211();
        }
      }
    }

LABEL_21:
    v30 = [*(a1 + 32) registrationContext];
    v31 = [v30 registrationUI];

    if (!v31)
    {
      [*(a1 + 32) setRegistrationContext:0];
    }

    [*(a1 + 32) notifyUserRegistrationDidChange];
    [*(a1 + 32) notifyDeviceRegistrationDidChange];
    goto LABEL_24;
  }

  v7 = [v5 registrationContext];
  v8 = [v7 state];

  if (v8 == 4)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10 = v9;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_217;
    v36[3] = &unk_279A3A060;
    v36[4] = *(a1 + 32);
    v11 = v36;
LABEL_15:
    dispatch_async(v9, v11);

LABEL_24:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  v20 = [*(a1 + 32) registrationContext];
  v21 = [v20 state];

  if (v21 == 7)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10 = v9;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_4;
    v35[3] = &unk_279A3A060;
    v35[4] = *(a1 + 32);
    v11 = v35;
    goto LABEL_15;
  }

  [*(a1 + 32) updateRegistrationStateFailed:1];
  [*(a1 + 32) notifyUserRegistrationDidChange];
  v33 = *(a1 + 32);
  v34 = *MEMORY[0x277D85DE8];

  [v33 notifyDeviceRegistrationDidChange];
}

id __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_205()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove login configuration after extension crash."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

id __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_211()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to remove user configuration after extension crash."];
  v1 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_217(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_2;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v3 = [v2 userNotified];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 _startDeviceRegistrationWithCompletionHandler:&__block_literal_global_219];
  }

  else
  {

    return [v4 reloadSSOExtensionIfNeeded];
  }
}

void __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_4(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_5;
  activity_block[3] = &unk_279A3A060;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __53__PORegistrationManager_requestDidCompleteWithError___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  v3 = [v2 userNotified];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 _startUserRegistration];
  }

  else
  {

    return [v4 reloadSSOExtensionIfNeeded];
  }
}

- (void)showAlertMessage:(id)a3 messageText:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager showAlertMessage:messageText:completion:];
  }

  v5[2](v5, 3);
}

- (void)showAlertWithError:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager showAlertWithError:completion:];
  }

  v8 = [v6 code];
  if (v8 != -3 || v5)
  {
    v5[2](v5, 3);
  }
}

- (id)createRegistrationNotificationWithAccountName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v5 setShouldBackgroundDefaultAction:1];
  v6 = MEMORY[0x277CE1FB0];
  v7 = [(PORegistrationManager *)self registrationContext];
  v8 = [v7 containerAppBundleIdentifier];
  v9 = [v6 iconForApplicationIdentifier:v8];
  [v5 setIcon:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_REGISTRATION_TITLE" value:&stru_287080C08 table:0];
  [v5 setTitle:v11];

  v12 = [v4 length];
  v13 = [(PORegistrationManager *)self registrationContext];
  v14 = [v13 isNewPasswordUser];

  if (v12)
  {
    if (v14)
    {
      v15 = @"CUSTOM_NOTIFICATION_COMPLETE_REGISTRATION_BODY";
    }

    else
    {
      v17 = [(PORegistrationManager *)self registrationContext];
      v18 = [v17 authMethod];

      if (v18 == 1)
      {
        v15 = @"CUSTOM_PASSWORD_NOTIFICATION_REGISTRATION_BODY";
      }

      else
      {
        v15 = @"CUSTOM_NOTIFICATION_REGISTRATION_BODY";
      }
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:v15 value:&stru_287080C08 table:0];
    v22 = [v19 localizedStringWithFormat:v21, v4];
    [v5 setBody:v22];
  }

  else
  {
    if (v14)
    {
      v16 = @"DEFAULT_NOTIFICATION_COMPLETE_REGISTRATION_BODY";
    }

    else
    {
      v23 = [(PORegistrationManager *)self registrationContext];
      v24 = [v23 authMethod];

      if (v24 == 1)
      {
        v16 = @"DEFAULT_PASSWORD_NOTIFICATION_REGISTRATION_BODY";
      }

      else
      {
        v16 = @"DEFAULT_NOTIFICATION_REGISTRATION_BODY";
      }
    }

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:v16 value:&stru_287080C08 table:0];
    [v5 setBody:v21];
  }

  v25 = [(PORegistrationManager *)self registrationContext];
  if ([v25 isUserNotification])
  {
    v26 = @"REGISTER_USER";
  }

  else
  {
    v26 = @"REGISTER_DEVICE";
  }

  [v5 setCategoryIdentifier:v26];

  [v5 setInterruptionLevel:2];
  [v5 setShouldPreventNotificationDismissalAfterDefaultAction:1];

  return v5;
}

- (id)createRegistrationUpdateNotificationWithAccountName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v5 setShouldBackgroundDefaultAction:1];
  v6 = MEMORY[0x277CE1FB0];
  v7 = [(PORegistrationManager *)self registrationContext];
  v8 = [v7 containerAppBundleIdentifier];
  v9 = [v6 iconForApplicationIdentifier:v8];
  [v5 setIcon:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_REGISTRATION_UPDATE_TITLE" value:&stru_287080C08 table:0];
  [v5 setTitle:v11];

  if ([v4 length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CUSTOM_NOTIFICATION_REGISTRATION_UPDATE_BODY" value:&stru_287080C08 table:0];
    v15 = [v12 localizedStringWithFormat:v14, v4];
    [v5 setBody:v15];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"DEFAULT_NOTIFICATION_REGISTRATION_UPDATE_BODY" value:&stru_287080C08 table:0];
    [v5 setBody:v14];
  }

  v16 = [(PORegistrationManager *)self registrationContext];
  if ([v16 isUserNotification])
  {
    v17 = @"REGISTER_USER";
  }

  else
  {
    v17 = @"REGISTER_DEVICE";
  }

  [v5 setCategoryIdentifier:v17];

  [v5 setInterruptionLevel:2];
  [v5 setShouldPreventNotificationDismissalAfterDefaultAction:1];

  return v5;
}

- (POAgentAuthenticationProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

- (void)_startDeviceRegistrationWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_25E88C59C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_25E890880;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_25E890888;
  v12[5] = v11;
  v13 = self;
  sub_25E884D3C(0, 0, v7, &unk_25E890890, v12);
}

- (void)failDeviceRegistrationPostRegistrationWithUserInteractionAllowed:(BOOL)a3
{
  v4 = self;
  sub_25E8813F4(a3);
}

- (void)_startUserRegistrationWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_25E88C59C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_25E890830;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_25E890840;
  v12[5] = v11;
  v13 = self;
  sub_25E884D3C(0, 0, v7, &unk_25E890850, v12);
}

- (void)handleUserCredentialNeededAtLogin:smartCard:accountDisplayName:bundleIdentifier:returningContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleUserAuthorizationNeededForAccountDisplayName:bundleIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createOrRepairUserConfigurationWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "Key policy = %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceAndUserRegistrationForRepair:newPasswordUser:newSmartCardUser:notified:profile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestSmartCardForBinding:window:tokenId:tokenHash:wrapTokenHash:pinContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retrieveProfilePicture
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showAlertMessage:messageText:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)showAlertWithError:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end