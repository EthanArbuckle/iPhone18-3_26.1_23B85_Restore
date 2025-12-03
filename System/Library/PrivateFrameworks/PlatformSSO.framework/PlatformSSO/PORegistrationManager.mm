@interface PORegistrationManager
- (BOOL)createOrRepairDeviceConfigurationWithError:(id *)error;
- (BOOL)createOrRepairUserConfigurationWithError:(id *)error;
- (BOOL)handleUserAuthorizationForRegistration;
- (BOOL)handleUserAuthorizationNeededForAccountDisplayName:(id)name bundleIdentifier:(id)identifier;
- (BOOL)reloadSSOExtensionIfNeeded;
- (POAgentAuthenticationProcess)process;
- (POAuthPluginProcess)systemAuthPluginProcess;
- (POAuthPluginProcess)userAuthPluginProcess;
- (PORegistrationManager)initWithAgentAuthenticationProcess:(id)process userNotificationCenter:(id)center configurationHost:(id)host;
- (id)createRegistrationNotificationWithAccountName:(id)name;
- (id)createRegistrationUpdateNotificationWithAccountName:(id)name;
- (id)loadSSOExtensionWithExtensionBundleIdentifier:(id)identifier;
- (id)retrieveProfilePicture;
- (id)saveSSOTokens:(id)tokens toKeychainUsingContext:(id)context tokenId:(id)id;
- (int)ssoMethodToUse:(id)use profile:(id)profile;
- (int64_t)registrationState;
- (unint64_t)requestSmartCardForBinding:(BOOL)binding window:(id)window tokenId:(id *)id tokenHash:(id *)hash wrapTokenHash:(id *)tokenHash pinContext:(id *)context;
- (void)_startDeviceRegistrationWithCompletionHandler:(id)handler;
- (void)_startUserRegistrationWithCompletionHandler:(id)handler;
- (void)cleanupUserConfigAfterMigrationToShared;
- (void)completeLegacyUserRegistration;
- (void)continueDeviceRegistration:(id)registration;
- (void)continueUserRegistration:(id)registration;
- (void)createContextForUserCredential;
- (void)createUserConfigurationForBuddyUser;
- (void)exitDeviceRegistration:(id)registration;
- (void)exitRegistration:(id)registration;
- (void)exitUserRegistration:(id)registration;
- (void)failDeviceRegistrationBeforeAuthorization;
- (void)failDeviceRegistrationPostRegistrationWithUserInteractionAllowed:(BOOL)allowed;
- (void)failUserRegistrationBeforeAuthorization;
- (void)findExistingSmartCardBinding;
- (void)finishRegistrationWithRetry;
- (void)handleAuthorizationForNewUsers;
- (void)handleDeviceRegistrationNotification;
- (void)handleRegistrationViewControllerWithCompletion:(id)completion;
- (void)handleRemovingRegistrationForExtension:(id)extension alreadyDeleted:(BOOL)deleted;
- (void)handleUserCredentialNeededAtLogin:(BOOL)login smartCard:(BOOL)card accountDisplayName:(id)name bundleIdentifier:(id)identifier returningContext:(id *)context;
- (void)handleUserRegistrationNotification;
- (void)notifyDeviceRegistrationDidChange;
- (void)notifyUserRegistrationDidChange;
- (void)promptUserForRegistration;
- (void)requestDidCompleteWithError:(id)error;
- (void)resetRegistrationWithCompletion:(id)completion;
- (void)retrieveProfilePicture;
- (void)setupDeviceRegistrationOptions;
- (void)setupUserRegistrationOptions;
- (void)showAlertMessage:(id)message messageText:(id)text completion:(id)completion;
- (void)showAlertWithError:(id)error completion:(id)completion;
- (void)storeCredentialAndUpdatePasswordHint;
- (void)windowDidClose;
@end

@implementation PORegistrationManager

- (PORegistrationManager)initWithAgentAuthenticationProcess:(id)process userNotificationCenter:(id)center configurationHost:(id)host
{
  processCopy = process;
  centerCopy = center;
  hostCopy = host;
  v30.receiver = self;
  v30.super_class = PORegistrationManager;
  v11 = [(PORegistrationManager *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_process, processCopy);
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

    objc_storeStrong(&v12->_userNotificationCenter, center);
    mEMORY[0x277CEBEE8] = [MEMORY[0x277CEBEE8] sharedInstance];
    extensionManager = v12->_extensionManager;
    v12->_extensionManager = mEMORY[0x277CEBEE8];

    objc_storeStrong(&v12->_configurationHost, host);
  }

  return v12;
}

- (int64_t)registrationState
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  state = [registrationContext state];

  return state;
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

- (void)continueDeviceRegistration:(id)registration
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

- (void)continueUserRegistration:(id)registration
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

- (void)exitDeviceRegistration:(id)registration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self failDeviceRegistrationBeforeAuthorization];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)exitUserRegistration:(id)registration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self failUserRegistrationBeforeAuthorization];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)exitRegistration:(id)registration
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];

  [(PORegistrationManager *)self setRegistrationContext:0];
}

- (void)handleUserCredentialNeededAtLogin:(BOOL)login smartCard:(BOOL)card accountDisplayName:(id)name bundleIdentifier:(id)identifier returningContext:(id *)context
{
  v8 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager handleUserCredentialNeededAtLogin:smartCard:accountDisplayName:bundleIdentifier:returningContext:];
  }

  if (context)
  {
    *context = 0;
  }
}

- (BOOL)handleUserAuthorizationNeededForAccountDisplayName:(id)name bundleIdentifier:(id)identifier
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  authorizationProvided = [registrationContext authorizationProvided];

  if (authorizationProvided)
  {
    v5 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_INFO, "Authorization already provided.", buf, 2u);
    }

    return 1;
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  userIsPlatformSSOUser = [registrationContext2 userIsPlatformSSOUser];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  v11 = registrationContext3;
  if ((userIsPlatformSSOUser & 1) == 0)
  {
    profile = [registrationContext3 profile];
    accountDisplayName = [profile accountDisplayName];
    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    extensionIdentifier = [registrationContext4 extensionIdentifier];
    v18 = [(PORegistrationManager *)self handleUserAuthorizationNeededForAccountDisplayName:accountDisplayName bundleIdentifier:extensionIdentifier];

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
    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    v6 = 1;
    [registrationContext5 setAuthorizationProvided:1];

    return v6;
  }

  credentialContext = [registrationContext3 credentialContext];

  if (!credentialContext)
  {
    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    authMethod = [registrationContext6 authMethod];

    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    v32 = registrationContext7;
    if (authMethod == 1)
    {
      profile2 = [registrationContext7 profile];
      accountDisplayName2 = [profile2 accountDisplayName];
      registrationContext8 = [(PORegistrationManager *)self registrationContext];
      extensionIdentifier2 = [registrationContext8 extensionIdentifier];
      v48 = 0;
      [(PORegistrationManager *)self handleUserCredentialNeededAtLogin:0 smartCard:0 accountDisplayName:accountDisplayName2 bundleIdentifier:extensionIdentifier2 returningContext:&v48];
      v37 = v48;

      v6 = v37 != 0;
      if (v37)
      {
LABEL_23:
        registrationContext9 = [(PORegistrationManager *)self registrationContext];
        [registrationContext9 setCredentialContext:v37];

        registrationContext10 = [(PORegistrationManager *)self registrationContext];
        [registrationContext10 setAuthorizationProvided:1];
LABEL_33:

        return v6;
      }

      registrationContext10 = PO_LOG_PORegistrationManager();
      if (!os_log_type_enabled(registrationContext10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    else
    {
      if ([registrationContext7 authMethod] != 3)
      {

        goto LABEL_9;
      }

      registrationContext11 = [(PORegistrationManager *)self registrationContext];
      smartCardTokenId = [registrationContext11 smartCardTokenId];

      if (smartCardTokenId)
      {
        goto LABEL_9;
      }

      registrationContext12 = [(PORegistrationManager *)self registrationContext];
      profile3 = [registrationContext12 profile];
      accountDisplayName3 = [profile3 accountDisplayName];
      registrationContext13 = [(PORegistrationManager *)self registrationContext];
      extensionIdentifier3 = [registrationContext13 extensionIdentifier];
      v47 = 0;
      [(PORegistrationManager *)self handleUserCredentialNeededAtLogin:0 smartCard:1 accountDisplayName:accountDisplayName3 bundleIdentifier:extensionIdentifier3 returningContext:&v47];
      v37 = v47;

      v6 = v37 != 0;
      if (v37)
      {
        goto LABEL_23;
      }

      registrationContext10 = PO_LOG_PORegistrationManager();
      if (!os_log_type_enabled(registrationContext10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_25E831000, registrationContext10, OS_LOG_TYPE_INFO, "Credential not provided, starting over.", buf, 2u);
    goto LABEL_33;
  }

LABEL_9:
  registrationContext14 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext14 authMethod] != 1)
  {
    registrationContext15 = [(PORegistrationManager *)self registrationContext];
    isNewPasswordUser = [registrationContext15 isNewPasswordUser];

    if (isNewPasswordUser)
    {
      return 1;
    }

    registrationContext16 = [(PORegistrationManager *)self registrationContext];
    profile4 = [registrationContext16 profile];
    accountDisplayName4 = [profile4 accountDisplayName];
    registrationContext17 = [(PORegistrationManager *)self registrationContext];
    extensionIdentifier4 = [registrationContext17 extensionIdentifier];
    v28 = [(PORegistrationManager *)self handleUserAuthorizationNeededForAccountDisplayName:accountDisplayName4 bundleIdentifier:extensionIdentifier4];

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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext ssoExtension];

  if (ssoExtension)
  {
    return 1;
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  extensionIdentifier = [registrationContext2 extensionIdentifier];
  v7 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:extensionIdentifier];

  if (v7)
  {
    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    [registrationContext3 setSsoExtension:v7];

    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    ssoExtension2 = [registrationContext4 ssoExtension];
    [ssoExtension2 setDelegate:self];

    return 1;
  }

  [(PORegistrationManager *)self updateRegistrationState:5 failed:1];
  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  return 0;
}

- (void)findExistingSmartCardBinding
{
  tokenHelper = [(PORegistrationManager *)self tokenHelper];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  userName = [registrationContext userName];
  v20 = 0;
  v6 = [tokenHelper findTokenIdForSmartCardBoundUser:userName tokenHash:&v20];
  v7 = v20;
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setSmartCardTokenId:v6];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  smartCardTokenId = [registrationContext3 smartCardTokenId];
  v11 = [smartCardTokenId length];

  if (!v11)
  {
    tokenHelper2 = [(PORegistrationManager *)self tokenHelper];
    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    userName2 = [registrationContext4 userName];
    v19 = v7;
    v15 = [tokenHelper2 findTokenIdForSmartCardAMUser:userName2 tokenHash:&v19];
    v16 = v19;

    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    [registrationContext5 setSmartCardTokenId:v15];

    v7 = v16;
  }

  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  [registrationContext6 setSmartCardHash:v7];
}

- (BOOL)createOrRepairDeviceConfigurationWithError:(id *)error
{
  v99 = *MEMORY[0x277D85DE8];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];
  deviceEncryptionKey = [currentDeviceConfiguration deviceEncryptionKey];

  if (deviceEncryptionKey)
  {
    v7 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_INFO, "Verifying device encryption key", buf, 2u);
    }

    v8 = MEMORY[0x277D3D230];
    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration2 = [configurationManager2 currentDeviceConfiguration];
    LOBYTE(v8) = [v8 verifyKey:{objc_msgSend(currentDeviceConfiguration2, "deviceEncryptionKey")}];

    v11 = v8 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  configurationManager3 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration3 = [configurationManager3 currentDeviceConfiguration];
  deviceSigningKey = [currentDeviceConfiguration3 deviceSigningKey];

  if (deviceSigningKey)
  {
    v15 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v15, OS_LOG_TYPE_INFO, "Verifying device sigining key", buf, 2u);
    }

    v16 = MEMORY[0x277D3D230];
    configurationManager4 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration4 = [configurationManager4 currentDeviceConfiguration];
    LOBYTE(v16) = [v16 verifyKey:{objc_msgSend(currentDeviceConfiguration4, "deviceSigningKey")}];

    v19 = v16 ^ 1;
  }

  else
  {
    v19 = 0;
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (![registrationContext isRepair])
  {
    goto LABEL_16;
  }

  configurationManager5 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration5 = [configurationManager5 currentDeviceConfiguration];
  if (!currentDeviceConfiguration5)
  {

LABEL_16:
    goto LABEL_17;
  }

  v23 = currentDeviceConfiguration5;
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  v25 = [registrationContext2 deviceKeysShouldChange] | v11 | v19;

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
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v27, OS_LOG_TYPE_DEFAULT, "%s creating new device configuration on %@", buf, 0x16u);
  }

  configurationManager6 = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration6 = [configurationManager6 currentDeviceConfiguration];
  v30 = currentDeviceConfiguration6;
  if (currentDeviceConfiguration6)
  {
    v31 = currentDeviceConfiguration6;
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277D3D1E8]);
  }

  v32 = v31;

  [v32 setRegistrationCompleted:0];
  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  extensionIdentifier = [registrationContext3 extensionIdentifier];
  [v32 setExtensionIdentifier:extensionIdentifier];

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  [v32 setProtocolVersion:{objc_msgSend(registrationContext4, "protocolVersion")}];

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext5 ssoExtension];
  sdkVersionString = [ssoExtension sdkVersionString];
  [v32 setSdkVersionString:sdkVersionString];

  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  [v32 setLoginType:{objc_msgSend(registrationContext6, "authMethod")}];

  date = [MEMORY[0x277CBEAA8] date];
  [v32 setAuthGracePeriodStart:date];

  registrationContext7 = [(PORegistrationManager *)self registrationContext];
  profile = [registrationContext7 profile];
  administratorGroups = [profile administratorGroups];
  [v32 setAdministratorGroups:administratorGroups];

  registrationContext8 = [(PORegistrationManager *)self registrationContext];
  profile2 = [registrationContext8 profile];
  authorizationGroups = [profile2 authorizationGroups];
  [v32 setAuthorizationGroups:authorizationGroups];

  registrationContext9 = [(PORegistrationManager *)self registrationContext];
  profile3 = [registrationContext9 profile];
  otherGroups = [profile3 otherGroups];
  [v32 setOtherGroups:otherGroups];

  registrationContext10 = [(PORegistrationManager *)self registrationContext];
  profile4 = [registrationContext10 profile];
  [v32 updateWithProfile:profile4];

  if (![v32 deviceSigningKey] || (-[PORegistrationManager registrationContext](self, "registrationContext"), v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "deviceKeysShouldChange") | v19, v52, (v53 & 1) != 0))
  {
    v54 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v54, OS_LOG_TYPE_INFO, "Creating new signing key", buf, 2u);
    }

    registrationContext11 = [(PORegistrationManager *)self registrationContext];
    ssoExtension2 = [registrationContext11 ssoExtension];
    v57 = [POAlgorithmUtil deviceSigningAlgorithmToUse:ssoExtension2 deviceConfiguration:v32];
    registrationContext12 = [(PORegistrationManager *)self registrationContext];
    [registrationContext12 setSigningAlgorithm:v57];

    keychainHelper = [(PORegistrationManager *)self keychainHelper];
    extensionIdentifier2 = [v32 extensionIdentifier];
    [keychainHelper _deleteCachedAttestationForExtensionIdentifier:extensionIdentifier2 key:{objc_msgSend(v32, "deviceSigningKey")}];

    v61 = MEMORY[0x277D3D230];
    registrationContext13 = [(PORegistrationManager *)self registrationContext];
    signingAlgorithm = [registrationContext13 signingAlgorithm];
    registrationContext14 = [(PORegistrationManager *)self registrationContext];
    [v32 setDeviceSigningKey:{objc_msgSend(v61, "createSEPSigningKeyForAlgorithm:shared:", signingAlgorithm, objc_msgSend(registrationContext14, "useSharedDeviceKeys"))}];

    registrationContext15 = [(PORegistrationManager *)self registrationContext];
    [v32 setSharedDeviceKeys:{objc_msgSend(registrationContext15, "useSharedDeviceKeys")}];

    registrationContext16 = [(PORegistrationManager *)self registrationContext];
    signingAlgorithm2 = [registrationContext16 signingAlgorithm];
    [v32 setSigningAlgorithm:signingAlgorithm2];

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

    registrationContext17 = [(PORegistrationManager *)self registrationContext];
    ssoExtension3 = [registrationContext17 ssoExtension];
    v73 = [POAlgorithmUtil deviceEncryptionAlgorithmToUse:ssoExtension3 deviceConfiguration:v32];
    registrationContext18 = [(PORegistrationManager *)self registrationContext];
    [registrationContext18 setEncryptionAlgorithm:v73];

    keychainHelper2 = [(PORegistrationManager *)self keychainHelper];
    extensionIdentifier3 = [v32 extensionIdentifier];
    [keychainHelper2 _deleteCachedAttestationForExtensionIdentifier:extensionIdentifier3 key:{objc_msgSend(v32, "deviceEncryptionKey")}];

    v77 = MEMORY[0x277D3D230];
    registrationContext19 = [(PORegistrationManager *)self registrationContext];
    encryptionAlgorithm = [registrationContext19 encryptionAlgorithm];
    registrationContext20 = [(PORegistrationManager *)self registrationContext];
    [v32 setDeviceEncryptionKey:{objc_msgSend(v77, "createSEPEncryptionKeyForAlgorithm:shared:", encryptionAlgorithm, objc_msgSend(registrationContext20, "useSharedDeviceKeys"))}];

    date2 = [MEMORY[0x277CBEAA8] date];
    [v32 setLastEncryptionKeyChange:date2];

    registrationContext21 = [(PORegistrationManager *)self registrationContext];
    [v32 setSharedDeviceKeys:{objc_msgSend(registrationContext21, "useSharedDeviceKeys")}];

    registrationContext22 = [(PORegistrationManager *)self registrationContext];
    encryptionAlgorithm2 = [registrationContext22 encryptionAlgorithm];
    [v32 setEncryptionAlgorithm:encryptionAlgorithm2];

    [v32 setPendingEncryptionAlgorithm:0];
  }

  registrationContext23 = [(PORegistrationManager *)self registrationContext];
  deviceKeysShouldChange = [registrationContext23 deviceKeysShouldChange];

  if (deviceKeysShouldChange)
  {
    v87 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v87, OS_LOG_TYPE_INFO, "Keys have changed", buf, 2u);
    }

    registrationContext24 = [(PORegistrationManager *)self registrationContext];
    [registrationContext24 setDeviceKeysShouldChange:0];
  }

  configurationManager7 = [(PORegistrationManager *)self configurationManager];
  [configurationManager7 setSharedOnly:0];

  configurationManager8 = [(PORegistrationManager *)self configurationManager];
  v26 = [configurationManager8 saveDeviceConfigurationSyncAllConfigToPreboot:v32];

  if ((v26 & 1) == 0)
  {
    v91 = __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke();
    if (error)
    {
      v91 = v91;
      *error = v91;
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  isRepair = [registrationContext isRepair];

  if (isRepair)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  useSharedDeviceKeys = [registrationContext2 useSharedDeviceKeys];

  if (useSharedDeviceKeys)
  {
    v5 |= 4uLL;
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  migratingDeviceKeys = [registrationContext3 migratingDeviceKeys];

  if (migratingDeviceKeys)
  {
    v5 |= 8uLL;
  }

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  isBuddyFlow = [registrationContext4 isBuddyFlow];

  if (isBuddyFlow)
  {
    v12 = v5 | 0x40;
  }

  else
  {
    v12 = v5;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  [registrationContext5 setOptions:v12];
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
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setRetry:1];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setState:5];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  [registrationContext3 setAuthorizationProvided:0];

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  registrationUI = [registrationContext4 registrationUI];

  if (!registrationUI)
  {
    [(PORegistrationManager *)self promptUserForRegistration];
  }

  [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDeviceRegistrationDidChange
{
  distributedNotificationCenter = [(PORegistrationManager *)self distributedNotificationCenter];
  [distributedNotificationCenter postNotificationName:@"com.apple.platformSSO.DeviceRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)notifyUserRegistrationDidChange
{
  distributedNotificationCenter = [(PORegistrationManager *)self distributedNotificationCenter];
  [distributedNotificationCenter postNotificationName:@"com.apple.platformSSO.UserRegistrationStatusDidChange" object:0 userInfo:0 deliverImmediately:1];
}

- (void)handleAuthorizationForNewUsers
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (([registrationContext isNewPasswordUser] & 1) == 0)
  {

LABEL_6:
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    isNewSmartCardUser = [registrationContext2 isNewSmartCardUser];

    registrationContext3 = [(PORegistrationManager *)self registrationContext];
    v19 = registrationContext3;
    if (isNewSmartCardUser)
    {
      [registrationContext3 setAuthorizationProvided:1];
    }

    else if ([registrationContext3 isNewPasswordUser])
    {
      registrationContext4 = [(PORegistrationManager *)self registrationContext];
      [registrationContext4 authMethod];
    }

    goto LABEL_10;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  authMethod = [registrationContext5 authMethod];

  if (authMethod != 1)
  {
    goto LABEL_6;
  }

  keyWrap = [(PORegistrationManager *)self keyWrap];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  _credential = [currentUserConfiguration _credential];
  v19 = [keyWrap unwrapBlob:_credential];

  v10 = v19;
  if (!v19)
  {
    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x277CD4790]);
  [v11 setCredential:v19 type:-9];
  v12 = v19;
  memset_s([v19 mutableBytes], objc_msgSend(v19, "length"), 0, objc_msgSend(v19, "length"));
  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  [registrationContext6 setCredentialContext:v11];

  registrationContext7 = [(PORegistrationManager *)self registrationContext];
  [registrationContext7 setAuthorizationProvided:1];

LABEL_10:
  v10 = v19;
LABEL_11:
}

- (void)setupUserRegistrationOptions
{
  registrationContext = [(PORegistrationManager *)self registrationContext];
  userNotified = [registrationContext userNotified];

  v5 = userNotified;
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  isRepair = [registrationContext2 isRepair];

  if (isRepair)
  {
    v5 |= 2uLL;
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  useSharedDeviceKeys = [registrationContext3 useSharedDeviceKeys];

  if (useSharedDeviceKeys)
  {
    v5 |= 4uLL;
  }

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  migratingDeviceKeys = [registrationContext4 migratingDeviceKeys];

  if (migratingDeviceKeys)
  {
    v5 |= 8uLL;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  userSEPKeyInvalid = [registrationContext5 userSEPKeyInvalid];

  if (userSEPKeyInvalid)
  {
    v5 |= 0x20uLL;
  }

  registrationContext6 = [(PORegistrationManager *)self registrationContext];
  isBuddyFlow = [registrationContext6 isBuddyFlow];

  if (isBuddyFlow)
  {
    v16 = v5 | 0x40;
  }

  else
  {
    v16 = v5;
  }

  registrationContext7 = [(PORegistrationManager *)self registrationContext];
  [registrationContext7 setOptions:v16];
}

- (BOOL)createOrRepairUserConfigurationWithError:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  if (!currentUserConfiguration)
  {
    goto LABEL_10;
  }

  v7 = currentUserConfiguration;
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext authMethod] != 2)
  {

LABEL_10:
    goto LABEL_11;
  }

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration2 = [configurationManager2 currentUserConfiguration];
  sepKey = [currentUserConfiguration2 sepKey];

  if (!sepKey)
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
  configurationManager3 = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration3 = [configurationManager3 currentUserConfiguration];
  v16 = [currentUserConfiguration3 sepKeyWithContext:v13];

  v17 = [MEMORY[0x277D3D230] verifyKey:v16];
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_12:
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  if (([registrationContext2 isBuddyFlow] & 1) == 0)
  {
    configurationManager4 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration4 = [configurationManager4 currentUserConfiguration];
    if (currentUserConfiguration4)
    {
      v21 = currentUserConfiguration4;
      configurationManager5 = [(PORegistrationManager *)self configurationManager];
      currentUserConfiguration5 = [configurationManager5 currentUserConfiguration];
      _setupContext = [currentUserConfiguration5 _setupContext];
      if (_setupContext)
      {
      }

      else
      {
        [(PORegistrationManager *)self configurationManager];
        v83 = v17;
        v26 = v25 = error;
        currentUserConfiguration6 = [v26 currentUserConfiguration];
        _loginContext = [currentUserConfiguration6 _loginContext];

        error = v25;
        v17 = v83;

        if (!_loginContext)
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

      configurationManager6 = [(PORegistrationManager *)self configurationManager];
      registrationContext2 = [configurationManager6 currentUserConfiguration];

      [registrationContext2 set_setupContext:0];
      [registrationContext2 set_loginContext:0];
      configurationManager7 = [(PORegistrationManager *)self configurationManager];
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      userName = [registrationContext3 userName];
      v34 = [configurationManager7 saveUserConfiguration:registrationContext2 forUserName:userName syncToPreboot:0];

      if ((v34 & 1) == 0)
      {
        v68 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke();
        if (!error)
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
  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext4 authMethod] == 2)
  {
    configurationManager8 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration7 = [configurationManager8 currentUserConfiguration];
    v38 = [currentUserConfiguration7 sepKey] == 0;
  }

  else
  {
    v38 = 0;
  }

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  if (([registrationContext5 isRepair] & 1) == 0)
  {

LABEL_29:
    v46 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v85 = "[PORegistrationManager createOrRepairUserConfigurationWithError:]";
      v86 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25E831000, v46, OS_LOG_TYPE_DEFAULT, "%s creating new user configuration on %@", buf, 0x16u);
    }

    configurationManager9 = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration8 = [configurationManager9 currentUserConfiguration];
    v49 = currentUserConfiguration8;
    if (currentUserConfiguration8)
    {
      v50 = currentUserConfiguration8;
    }

    else
    {
      v50 = objc_alloc_init(MEMORY[0x277D3D240]);
    }

    registrationContext2 = v50;

    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    [registrationContext2 setLoginType:{objc_msgSend(registrationContext6, "authMethod")}];

    [registrationContext2 setState:2];
    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    authMethod = [registrationContext7 authMethod];

    if (authMethod != 2)
    {
LABEL_51:
      configurationManager10 = [(PORegistrationManager *)self configurationManager];
      registrationContext8 = [(PORegistrationManager *)self registrationContext];
      userName2 = [registrationContext8 userName];
      v45 = 1;
      v80 = [configurationManager10 saveUserConfiguration:registrationContext2 forUserName:userName2 syncToPreboot:1];

      if (v80)
      {
LABEL_55:

        goto LABEL_56;
      }

      v68 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_44();
      if (!error)
      {
LABEL_54:

        v45 = 0;
        goto LABEL_55;
      }

LABEL_53:
      v68 = v68;
      *error = v68;
      goto LABEL_54;
    }

    registrationContext9 = [(PORegistrationManager *)self registrationContext];
    ssoExtension = [registrationContext9 ssoExtension];
    v56 = [POAlgorithmUtil userSigningAlgorithmToUse:ssoExtension userConfiguration:registrationContext2];
    registrationContext10 = [(PORegistrationManager *)self registrationContext];
    [registrationContext10 setUserSigningAlgorithm:v56];

    configurationManager11 = [(PORegistrationManager *)self configurationManager];
    currentLoginConfiguration = [configurationManager11 currentLoginConfiguration];
    userSEPKeyBiometricPolicy = [currentLoginConfiguration userSEPKeyBiometricPolicy];

    v61 = PO_LOG_PORegistrationManager();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [(PORegistrationManager *)userSEPKeyBiometricPolicy createOrRepairUserConfigurationWithError:v61];
    }

    if (!userSEPKeyBiometricPolicy)
    {
      goto LABEL_41;
    }

    v62 = objc_alloc_init(MEMORY[0x277CD4790]);
    v63 = [v62 canEvaluatePolicy:1 error:0];

    if ((v63 & 1) == 0)
    {
      v68 = __66__PORegistrationManager_createOrRepairUserConfigurationWithError___block_invoke_38();
      if (!error)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (userSEPKeyBiometricPolicy)
    {
      v69 = MEMORY[0x277D3D230];
      registrationContext11 = [(PORegistrationManager *)self registrationContext];
      userSigningAlgorithm = [registrationContext11 userSigningAlgorithm];
      v70 = v69;
      v71 = userSigningAlgorithm;
      v72 = 1;
    }

    else
    {
      if ((userSEPKeyBiometricPolicy & 2) == 0)
      {
LABEL_41:
        v64 = MEMORY[0x277D3D230];
        registrationContext11 = [(PORegistrationManager *)self registrationContext];
        userSigningAlgorithm = [registrationContext11 userSigningAlgorithm];
        v67 = [v64 createUserSEPSigningKeyForAlgorithm:userSigningAlgorithm];
        goto LABEL_49;
      }

      v73 = MEMORY[0x277D3D230];
      registrationContext11 = [(PORegistrationManager *)self registrationContext];
      userSigningAlgorithm = [registrationContext11 userSigningAlgorithm];
      v70 = v73;
      v71 = userSigningAlgorithm;
      v72 = 0;
    }

    v67 = [v70 createUserSEPSigningKeyForAlgorithm:v71 userPresence:1 currentSet:v72];
LABEL_49:
    [registrationContext2 setSepKey:v67];

    registrationContext12 = [(PORegistrationManager *)self registrationContext];
    userSigningAlgorithm2 = [registrationContext12 userSigningAlgorithm];
    [registrationContext2 setSigningAlgorithm:userSigningAlgorithm2];

    [registrationContext2 setPendingSigningAlgorithm:0];
    if ((v17 & 1) == 0)
    {
      registrationContext13 = [(PORegistrationManager *)self registrationContext];
      [registrationContext13 setOptions:{objc_msgSend(registrationContext13, "options") | 0x20}];
    }

    goto LABEL_51;
  }

  configurationManager12 = [(PORegistrationManager *)self configurationManager];
  registrationContext14 = [(PORegistrationManager *)self registrationContext];
  userName3 = [registrationContext14 userName];
  v43 = [configurationManager12 userConfigurationForUserName:userName3];
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [v4 setLoginType:{objc_msgSend(registrationContext, "authMethod")}];

  [v4 setState:2];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  LOBYTE(registrationContext) = [configurationManager saveUserConfiguration:v4 forUserName:@"_mbsetupuser" syncToPreboot:0];

  if ((registrationContext & 1) == 0)
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  options = [registrationContext options];

  if ((options & 8) != 0)
  {
    configurationManager = [(PORegistrationManager *)self configurationManager];
    removeUserDeviceConfiguration = [configurationManager removeUserDeviceConfiguration];

    if ((removeUserDeviceConfiguration & 1) == 0)
    {
      v7 = __64__PORegistrationManager_cleanupUserConfigAfterMigrationToShared__block_invoke();
    }

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    removeUserLoginConfiguration = [configurationManager2 removeUserLoginConfiguration];

    if ((removeUserLoginConfiguration & 1) == 0)
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
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];

  v5 = MEMORY[0x277D3D1E0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  credentialContext = [registrationContext credentialContext];
  v17 = 0;
  v8 = [v5 passwordDataFromContext:credentialContext error:&v17];
  v9 = v17;

  if (v8)
  {
    keyWrap = [(PORegistrationManager *)self keyWrap];
    v11 = [keyWrap wrapBlob:v8];
    [currentUserConfiguration set_credential:v11];

    memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    LOBYTE(keyWrap) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:0];

    if ((keyWrap & 1) == 0)
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext isNewPasswordUser])
  {
    v4 = 0;
  }

  else
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    isNewSmartCardUser = [registrationContext2 isNewSmartCardUser];

    v4 = isNewSmartCardUser ^ 1u;
  }

  v7 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PORegistrationManager completeLegacyUserRegistration]";
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s calling registrationDidComplete on %@", buf, 0x16u);
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext3 ssoExtension];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke;
  v21[3] = &unk_279A3A060;
  v21[4] = self;
  [ssoExtension registrationDidCompleteWithCompletion:v21];

  [(PORegistrationManager *)self updateRegistrationState:1 failed:0];
  [(PORegistrationManager *)self notifyUserRegistrationDidChange];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  [currentUserConfiguration setState:v4];

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(configurationManager) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:0];

  if ((configurationManager & 1) == 0)
  {
    v13 = __55__PORegistrationManager_completeLegacyUserRegistration__block_invoke_2();
  }

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  isRepair = [registrationContext4 isRepair];

  process = [(PORegistrationManager *)self process];
  v17 = process;
  if (isRepair)
  {
    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    credentialContext = [registrationContext5 credentialContext];
    [v17 performLoginForCurrentUserWithPasswordContext:credentialContext];
  }

  else
  {
    [process performLoginForCurrentUserWithPasswordContext:0];
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setCredentialContext:v10];

  keyWrap = [(PORegistrationManager *)self keyWrap];
  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  _credential = [currentUserConfiguration _credential];
  v8 = [keyWrap unwrapBlob:_credential];

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
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setRetry:1];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setState:8];

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  [registrationContext3 setAuthorizationProvided:0];

  registrationContext4 = [(PORegistrationManager *)self registrationContext];
  registrationUI = [registrationContext4 registrationUI];

  if (!registrationUI)
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
    selfCopy2 = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext setRetry:1];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 setState:8];

  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentUserConfiguration = [configurationManager currentUserConfiguration];
  [currentUserConfiguration setState:2];

  configurationManager2 = [(PORegistrationManager *)self configurationManager];
  LOBYTE(currentUserConfiguration) = [configurationManager2 saveCurrentUserConfigurationAndSyncToPreboot:1];

  if ((currentUserConfiguration & 1) == 0)
  {
    v9 = __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke();
  }

  v10 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PORegistrationManager finishRegistrationWithRetry]";
    v17 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s calling registrationDidComplete on %@", buf, 0x16u);
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext3 ssoExtension];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__PORegistrationManager_finishRegistrationWithRetry__block_invoke_103;
  v14[3] = &unk_279A3A060;
  v14[4] = self;
  [ssoExtension registrationDidCompleteWithCompletion:v14];

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
  registrationContext = [(PORegistrationManager *)self registrationContext];

  if (registrationContext)
  {
    configurationManager = [(PORegistrationManager *)self configurationManager];
    currentLoginConfiguration = [configurationManager currentLoginConfiguration];

    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    if ([registrationContext2 isRepair])
    {
    }

    else
    {
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      migratingDeviceKeys = [registrationContext3 migratingDeviceKeys];

      if (!migratingDeviceKeys)
      {
        configurationManager2 = [(PORegistrationManager *)self configurationManager];
        currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
        accountDisplayName = [currentDeviceConfiguration accountDisplayName];
        accountDisplayName2 = accountDisplayName;
        if (!accountDisplayName)
        {
          accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
        }

        v13 = [(PORegistrationManager *)self createRegistrationNotificationWithAccountName:accountDisplayName2];
        goto LABEL_13;
      }
    }

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    currentDeviceConfiguration = [configurationManager2 currentDeviceConfiguration];
    accountDisplayName = [currentDeviceConfiguration accountDisplayName];
    accountDisplayName2 = accountDisplayName;
    if (!accountDisplayName)
    {
      accountDisplayName2 = [currentLoginConfiguration accountDisplayName];
    }

    v13 = [(PORegistrationManager *)self createRegistrationUpdateNotificationWithAccountName:accountDisplayName2];
LABEL_13:
    v14 = v13;
    if (!accountDisplayName)
    {
    }

    userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
    v34[0] = @"com.apple.PlatformSSO.registration";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v16];

    userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
    v33 = @"com.apple.PlatformSSO.registration";
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v18];

    registrationContext4 = [(PORegistrationManager *)self registrationContext];
    LODWORD(v18) = [registrationContext4 isRetry];

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

    userNotificationCenter3 = [(PORegistrationManager *)self userNotificationCenter];
    [userNotificationCenter3 addNotificationRequest:v23 withCompletionHandler:&__block_literal_global_155];

    registrationContext5 = [(PORegistrationManager *)self registrationContext];
    ssoExtension = [registrationContext5 ssoExtension];
    [ssoExtension close];

    registrationContext6 = [(PORegistrationManager *)self registrationContext];
    ssoExtension2 = [registrationContext6 ssoExtension];
    [ssoExtension2 unload];

    registrationContext7 = [(PORegistrationManager *)self registrationContext];
    [registrationContext7 setSsoExtension:0];

    goto LABEL_21;
  }

  currentLoginConfiguration = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(currentLoginConfiguration, OS_LOG_TYPE_DEBUG))
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

- (void)resetRegistrationWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[PORegistrationManager resetRegistrationWithCompletion:]";
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
  v17 = @"com.apple.PlatformSSO.registration";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v7];

  userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
  v16 = @"com.apple.PlatformSSO.registration";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [userNotificationCenter2 removePendingNotificationRequestsWithIdentifiers:v9];

  [(PORegistrationManager *)self updateRegistrationStateFailed:0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  ssoExtension = [registrationContext ssoExtension];

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  [registrationContext2 registrationUI];

  [(PORegistrationManager *)self setRegistrationContext:0];
  if (ssoExtension)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__PORegistrationManager_resetRegistrationWithCompletion___block_invoke;
    v14[3] = &unk_279A3A0D0;
    v14[4] = self;
    v15 = completionCopy;
    [ssoExtension registrationDidCancelWithCompletion:v14];
  }

  else
  {
    [(PORegistrationManager *)self notifyUserRegistrationDidChange];
    [(PORegistrationManager *)self notifyDeviceRegistrationDidChange];
    completionCopy[2](completionCopy);
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
  registrationContext = [(PORegistrationManager *)self registrationContext];

  if (registrationContext)
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    [registrationContext2 setUserNotified:1];

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __61__PORegistrationManager_handleDeviceRegistrationNotification__block_invoke;
    activity_block[3] = &unk_279A3A060;
    activity_block[4] = self;
    _os_activity_initiate(&dword_25E831000, "PSSODeviceRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    process = [(PORegistrationManager *)self process];
    [process handleConfigurationChanged:1];
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
  registrationContext = [(PORegistrationManager *)self registrationContext];
  if (registrationContext && (v4 = registrationContext, -[PORegistrationManager registrationContext](self, "registrationContext"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v4, v6 != 1))
  {
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    [registrationContext2 setUserNotified:1];

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __59__PORegistrationManager_handleUserRegistrationNotification__block_invoke;
    activity_block[3] = &unk_279A3A060;
    activity_block[4] = self;
    _os_activity_initiate(&dword_25E831000, "PSSOUserRegistration", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    process = [(PORegistrationManager *)self process];
    [process handleConfigurationChanged:1];
  }
}

uint64_t __59__PORegistrationManager_handleUserRegistrationNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrationContext];
  [v2 setState:7];

  v3 = *(a1 + 32);

  return [v3 showRegistrationUI];
}

- (int)ssoMethodToUse:(id)use profile:(id)profile
{
  useCopy = use;
  profileCopy = profile;
  authenticationMethod2 = 1000;
  if ([profileCopy authenticationMethod] != 1000)
  {
    supportedGrantTypes = [useCopy supportedGrantTypes];
    if (supportedGrantTypes)
    {
      v9 = supportedGrantTypes;
      if (supportedGrantTypes)
      {
        authenticationMethod = [profileCopy authenticationMethod];
        if (authenticationMethod == 1)
        {
          goto LABEL_7;
        }
      }

      if ((v9 & 2) != 0)
      {
        authenticationMethod = [profileCopy authenticationMethod];
        if (authenticationMethod == 2)
        {
LABEL_7:
          authenticationMethod2 = authenticationMethod;
          goto LABEL_14;
        }

        if ([profileCopy authenticationMethod] == 3)
        {
          authenticationMethod2 = 3;
        }

        else
        {
          authenticationMethod2 = 1000;
        }
      }
    }

    else
    {
      authenticationMethods = [useCopy authenticationMethods];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(profileCopy, "authenticationMethod")}];
      v13 = [authenticationMethods containsObject:v12];

      if (v13)
      {
        authenticationMethod2 = [profileCopy authenticationMethod];
      }
    }
  }

LABEL_14:

  return authenticationMethod2;
}

- (id)loadSSOExtensionWithExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [POExtension alloc];
  extensionManager = [(PORegistrationManager *)self extensionManager];
  v7 = [(POExtension *)v5 initWithExtensionBundleIdentifier:identifierCopy extensionManager:extensionManager delegate:self];

  return v7;
}

- (void)handleRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  registrationContext = [(PORegistrationManager *)self registrationContext];

  if (!registrationContext)
  {
    v10 = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke();
    v11 = v10;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v10);

      goto LABEL_9;
    }
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  options = [registrationContext2 options];

  if (options)
  {
LABEL_8:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_171;
    block[3] = &unk_279A3A0F8;
    v13 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_9;
  }

  v8 = __72__PORegistrationManager_handleRegistrationViewControllerWithCompletion___block_invoke_165();
  v9 = v8;
  if (!completionCopy)
  {

    goto LABEL_8;
  }

  completionCopy[2](completionCopy, 0, v8);

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

- (void)handleRemovingRegistrationForExtension:(id)extension alreadyDeleted:(BOOL)deleted
{
  v43 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v7 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[PORegistrationManager handleRemovingRegistrationForExtension:alreadyDeleted:]";
    v41 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (!deleted)
  {
    v33 = extensionCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    configurationManager = [(PORegistrationManager *)self configurationManager];
    currentUserConfiguration = [configurationManager currentUserConfiguration];
    kerberosStatus = [currentUserConfiguration kerberosStatus];

    v11 = [kerberosStatus countByEnumeratingWithState:&v34 objects:v38 count:16];
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
            objc_enumerationMutation(kerberosStatus);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = PO_LOG_PORegistrationManager();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            cacheName = [v15 cacheName];
            *buf = 138543362;
            v40 = cacheName;
            _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_INFO, "Removing kerberos tickets for cache: %{public}@", buf, 0xCu);
          }

          process = [(PORegistrationManager *)self process];
          kerberosHelper = [process kerberosHelper];
          cacheName2 = [v15 cacheName];
          [kerberosHelper destroyCredentialForUUID:cacheName2];
        }

        v12 = [kerberosStatus countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    configurationManager2 = [(PORegistrationManager *)self configurationManager];
    resetStoredConfiguration = [configurationManager2 resetStoredConfiguration];

    extensionCopy = v33;
    if ((resetStoredConfiguration & 1) == 0)
    {
      v23 = __79__PORegistrationManager_handleRemovingRegistrationForExtension_alreadyDeleted___block_invoke();
    }
  }

  configurationManager3 = [(PORegistrationManager *)self configurationManager];
  [configurationManager3 setTokens:0 extensionIdentifier:extensionCopy returningError:0];

  keychainHelper = [(PORegistrationManager *)self keychainHelper];
  [keychainHelper _deleteAllCachedAttestations];

  process2 = [(PORegistrationManager *)self process];
  [process2 setupTimerForAuthentication];

  configurationManager4 = [(PORegistrationManager *)self configurationManager];
  [configurationManager4 setSharedOnly:0];

  userNotificationCenter = [(PORegistrationManager *)self userNotificationCenter];
  [userNotificationCenter removeAllDeliveredNotifications];

  userNotificationCenter2 = [(PORegistrationManager *)self userNotificationCenter];
  [userNotificationCenter2 removeAllPendingNotificationRequests];

  process3 = [(PORegistrationManager *)self process];
  [process3 setPlatformSSOActive:0];

  registrationContext = [(PORegistrationManager *)self registrationContext];
  [registrationContext registrationUI];

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

- (unint64_t)requestSmartCardForBinding:(BOOL)binding window:(id)window tokenId:(id *)id tokenHash:(id *)hash wrapTokenHash:(id *)tokenHash pinContext:(id *)context
{
  v8 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager requestSmartCardForBinding:window:tokenId:tokenHash:wrapTokenHash:pinContext:];
  }

  return 0;
}

- (id)saveSSOTokens:(id)tokens toKeychainUsingContext:(id)context tokenId:(id)id
{
  tokensCopy = tokens;
  contextCopy = context;
  idCopy = id;
  v10 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_INFO, "Saving SSO tokens to keychain", buf, 2u);
  }

  v11 = +[POConfigurationManager sharedInstance];
  v12 = v11;
  v13 = MEMORY[0x277D3D1E0];
  if (idCopy)
  {
    v29 = contextCopy;
    currentDeviceConfiguration = [v11 currentDeviceConfiguration];
    deviceEncryptionKey = [currentDeviceConfiguration deviceEncryptionKey];
    v16 = [idCopy dataUsingEncoding:4];
    v17 = [v13 decryptPendingSSOTokens:tokensCopy UsingPrivateKey:deviceEncryptionKey sharedData:v16];

    v18 = 0;
  }

  else
  {
    v33 = 0;
    currentDeviceConfiguration = [MEMORY[0x277D3D1E0] passwordDataFromContext:contextCopy error:&v33];
    v18 = v33;
    if (!currentDeviceConfiguration)
    {
      v28 = __70__PORegistrationManager_saveSSOTokens_toKeychainUsingContext_tokenId___block_invoke();
      v17 = 0;
      goto LABEL_10;
    }

    v29 = contextCopy;
    v19 = MEMORY[0x277D3D1E0];
    currentDeviceConfiguration2 = [v12 currentDeviceConfiguration];
    v17 = [v19 decryptPendingSSOTokens:tokensCopy UsingPrivateKey:objc_msgSend(currentDeviceConfiguration2 sharedData:{"deviceEncryptionKey"), currentDeviceConfiguration}];

    memset_s([currentDeviceConfiguration mutableBytes], objc_msgSend(currentDeviceConfiguration, "length"), 0, objc_msgSend(currentDeviceConfiguration, "length"));
  }

  v21 = v18;

  v22 = NSUserName();
  currentDeviceConfiguration3 = [v12 currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration3 extensionIdentifier];
  v32 = v18;
  v25 = [v12 setTokens:v17 user:v22 extensionIdentifier:extensionIdentifier returningError:&v32];
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

  contextCopy = v29;
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

  configurationManager = [(PORegistrationManager *)self configurationManager];
  currentDeviceConfiguration = [configurationManager currentDeviceConfiguration];

  if (!currentDeviceConfiguration)
  {
    v19 = __47__PORegistrationManager_retrieveProfilePicture__block_invoke();
LABEL_14:
    v18 = 0;
    goto LABEL_19;
  }

  synchronizeProfilePicture = [currentDeviceConfiguration synchronizeProfilePicture];
  v7 = PO_LOG_PORegistrationManager();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if ((synchronizeProfilePicture & 1) == 0)
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

  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];
  v10 = [(PORegistrationManager *)self loadSSOExtensionWithExtensionBundleIdentifier:extensionIdentifier];

  if (v10)
  {
    v11 = [POProfile alloc];
    configurationHost = [(PORegistrationManager *)self configurationHost];
    platformSSOProfile = [configurationHost platformSSOProfile];
    v14 = [(POProfile *)v11 initWithProfile:platformSSOProfile];

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
      extensionData = [(POProfile *)v14 extensionData];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47__PORegistrationManager_retrieveProfilePicture__block_invoke_203;
      v23[3] = &unk_279A3A120;
      v23[4] = &v24;
      v23[5] = &v30;
      [v10 profilePictureForUserUsingExtensionData:extensionData completion:v23];

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
    registrationContext = [(PORegistrationManager *)self registrationContext];
    v6 = [v4 numberWithInteger:{objc_msgSend(registrationContext, "state")}];
    v7 = MEMORY[0x277CCABB0];
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    v9 = [v7 numberWithInt:{objc_msgSend(registrationContext2, "failureCount")}];
    v12 = 136315906;
    v13 = "[PORegistrationManager windowDidClose]";
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s state = %{public}@, failureCount = %{public}@ on %@", &v12, 0x2Au);
  }

  registrationContext3 = [(PORegistrationManager *)self registrationContext];
  [registrationContext3 state];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestDidCompleteWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    registrationContext = [(PORegistrationManager *)self registrationContext];
    v8 = [v6 numberWithInteger:{objc_msgSend(registrationContext, "state")}];
    v9 = MEMORY[0x277CCABB0];
    registrationContext2 = [(PORegistrationManager *)self registrationContext];
    v11 = [v9 numberWithInt:{objc_msgSend(registrationContext2, "failureCount")}];
    *buf = 136315906;
    v25 = "[PORegistrationManager requestDidCompleteWithError:]";
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v11;
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s state = %{public}@, failureCount = %{public}@ on %@", buf, 0x2Au);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  registrationContext3 = [(PORegistrationManager *)selfCopy2 registrationContext];
  ssoExtension = [registrationContext3 ssoExtension];
  v15 = ssoExtension == 0;

  if (v15)
  {
    objc_sync_exit(selfCopy2);
  }

  else
  {
    registrationContext4 = [(PORegistrationManager *)selfCopy2 registrationContext];
    ssoExtension2 = [registrationContext4 ssoExtension];
    [ssoExtension2 unload];

    registrationContext5 = [(PORegistrationManager *)selfCopy2 registrationContext];
    [registrationContext5 setSsoExtension:0];

    objc_sync_exit(selfCopy2);
    registrationContext6 = [(PORegistrationManager *)selfCopy2 registrationContext];
    LOBYTE(ssoExtension2) = [registrationContext6 state] == 1;

    if ((ssoExtension2 & 1) == 0)
    {
      registrationContext7 = [(PORegistrationManager *)selfCopy2 registrationContext];
      isBuddyFlow = [registrationContext7 isBuddyFlow];

      if ((isBuddyFlow & 1) == 0)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __53__PORegistrationManager_requestDidCompleteWithError___block_invoke;
        v23[3] = &unk_279A3A148;
        v23[4] = selfCopy2;
        [(PORegistrationManager *)selfCopy2 showAlertWithError:errorCopy completion:v23];
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

- (void)showAlertMessage:(id)message messageText:(id)text completion:(id)completion
{
  completionCopy = completion;
  v6 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager showAlertMessage:messageText:completion:];
  }

  completionCopy[2](completionCopy, 3);
}

- (void)showAlertWithError:(id)error completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  v7 = PO_LOG_PORegistrationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PORegistrationManager showAlertWithError:completion:];
  }

  code = [errorCopy code];
  if (code != -3 || completionCopy)
  {
    completionCopy[2](completionCopy, 3);
  }
}

- (id)createRegistrationNotificationWithAccountName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v5 setShouldBackgroundDefaultAction:1];
  v6 = MEMORY[0x277CE1FB0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  containerAppBundleIdentifier = [registrationContext containerAppBundleIdentifier];
  v9 = [v6 iconForApplicationIdentifier:containerAppBundleIdentifier];
  [v5 setIcon:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_REGISTRATION_TITLE" value:&stru_287080C08 table:0];
  [v5 setTitle:v11];

  v12 = [nameCopy length];
  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  isNewPasswordUser = [registrationContext2 isNewPasswordUser];

  if (v12)
  {
    if (isNewPasswordUser)
    {
      v15 = @"CUSTOM_NOTIFICATION_COMPLETE_REGISTRATION_BODY";
    }

    else
    {
      registrationContext3 = [(PORegistrationManager *)self registrationContext];
      authMethod = [registrationContext3 authMethod];

      if (authMethod == 1)
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
    nameCopy = [v19 localizedStringWithFormat:v21, nameCopy];
    [v5 setBody:nameCopy];
  }

  else
  {
    if (isNewPasswordUser)
    {
      v16 = @"DEFAULT_NOTIFICATION_COMPLETE_REGISTRATION_BODY";
    }

    else
    {
      registrationContext4 = [(PORegistrationManager *)self registrationContext];
      authMethod2 = [registrationContext4 authMethod];

      if (authMethod2 == 1)
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

  registrationContext5 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext5 isUserNotification])
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

- (id)createRegistrationUpdateNotificationWithAccountName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v5 setShouldBackgroundDefaultAction:1];
  v6 = MEMORY[0x277CE1FB0];
  registrationContext = [(PORegistrationManager *)self registrationContext];
  containerAppBundleIdentifier = [registrationContext containerAppBundleIdentifier];
  v9 = [v6 iconForApplicationIdentifier:containerAppBundleIdentifier];
  [v5 setIcon:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_REGISTRATION_UPDATE_TITLE" value:&stru_287080C08 table:0];
  [v5 setTitle:v11];

  if ([nameCopy length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CUSTOM_NOTIFICATION_REGISTRATION_UPDATE_BODY" value:&stru_287080C08 table:0];
    nameCopy = [v12 localizedStringWithFormat:v14, nameCopy];
    [v5 setBody:nameCopy];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"DEFAULT_NOTIFICATION_REGISTRATION_UPDATE_BODY" value:&stru_287080C08 table:0];
    [v5 setBody:v14];
  }

  registrationContext2 = [(PORegistrationManager *)self registrationContext];
  if ([registrationContext2 isUserNotification])
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

- (void)_startDeviceRegistrationWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_25E884D3C(0, 0, v7, &unk_25E890890, v12);
}

- (void)failDeviceRegistrationPostRegistrationWithUserInteractionAllowed:(BOOL)allowed
{
  selfCopy = self;
  sub_25E8813F4(allowed);
}

- (void)_startUserRegistrationWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0ADB0, &qword_25E890748) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
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