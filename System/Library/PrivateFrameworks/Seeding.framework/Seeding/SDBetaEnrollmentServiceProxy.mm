@interface SDBetaEnrollmentServiceProxy
+ (id)sharedInstance;
- (BOOL)canCurrentDeviceEnrollInBetaProgram;
- (BOOL)isCurrentDeviceUsingSeedingAppleID;
- (SDBetaEnrollmentServiceProxy)init;
- (id)deviceAppleIDUsernameForCurrentDevice;
- (id)getCurrentDeviceEnrolledBetaProgramSynchronously;
- (id)getCurrentDeviceSynchronously;
- (id)loadMDMConfigurationWithError:(id *)error;
- (id)seedingAppleIDUsernameForCurrentDevice;
- (id)synchronousDaemonRemoteObjectProxyWithError:(id *)error;
- (void)betaEnrollmentProxyObjectWithCompletion:(id)completion;
- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion;
- (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy error:(id *)error;
- (void)deleteSeedingAppleAccountWithCompletion:(id)completion;
- (void)enrollDevice:(id)device inProgram:(id)program completion:(id)completion;
- (void)enrollInProgramWithToken:(id)token completion:(id)completion;
- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion;
- (void)getCurrentDevice:(id)device;
- (void)getDevicesForPlatforms:(unint64_t)platforms completion:(id)completion;
- (void)initializeDaemonConnection;
- (void)invalidateCacheWithCompletion:(id)completion;
- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion;
- (void)queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching completion:(id)completion;
- (void)seedingAppleIDUsernameForCurrentDevice:(id)device;
- (void)setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:(id)device completion:(id)completion;
- (void)unenrollDevice:(id)device completion:(id)completion;
@end

@implementation SDBetaEnrollmentServiceProxy

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SDBetaEnrollmentServiceProxy sharedInstance];
  }

  v3 = sharedInstance_client_0;

  return v3;
}

uint64_t __46__SDBetaEnrollmentServiceProxy_sharedInstance__block_invoke()
{
  sharedInstance_client_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SDBetaEnrollmentServiceProxy)init
{
  v5.receiver = self;
  v5.super_class = SDBetaEnrollmentServiceProxy;
  v2 = [(SDBetaEnrollmentServiceProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SDBetaEnrollmentServiceProxy *)v2 initializeDaemonConnection];
  }

  return v3;
}

- (void)initializeDaemonConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_daemonConnection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.seeding.client" options:4096];
    daemonConnection = selfCopy->_daemonConnection;
    selfCopy->_daemonConnection = v3;

    v5 = _allowListedXPCServerInterface();
    [(NSXPCConnection *)selfCopy->_daemonConnection setRemoteObjectInterface:v5];

    v6 = _allowListedXPCClientInterface();
    [(NSXPCConnection *)selfCopy->_daemonConnection setExportedInterface:v6];

    [(NSXPCConnection *)selfCopy->_daemonConnection setExportedObject:selfCopy];
    objc_initWeak(&location, selfCopy);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__SDBetaEnrollmentServiceProxy_initializeDaemonConnection__block_invoke;
    v9[3] = &unk_2787CBAF8;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)selfCopy->_daemonConnection setInvalidationHandler:v9];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SDBetaEnrollmentServiceProxy_initializeDaemonConnection__block_invoke_2;
    v7[3] = &unk_2787CBAF8;
    objc_copyWeak(&v8, &location);
    [(NSXPCConnection *)selfCopy->_daemonConnection setInterruptionHandler:v7];
    [(NSXPCConnection *)selfCopy->_daemonConnection resume];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __58__SDBetaEnrollmentServiceProxy_initializeDaemonConnection__block_invoke(uint64_t a1)
{
  v2 = Log_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SDBetaEnrollmentServiceProxy_initializeDaemonConnection__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDaemonConnection:0];
}

void __58__SDBetaEnrollmentServiceProxy_initializeDaemonConnection__block_invoke_2(uint64_t a1)
{
  v2 = Log_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SDBetaEnrollmentServiceProxy_initializeDaemonConnection__block_invoke_2_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDaemonConnection:0];
}

- (void)betaEnrollmentProxyObjectWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_daemonConnection)
  {
    [(SDBetaEnrollmentServiceProxy *)self initializeDaemonConnection];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  daemonConnection = [(SDBetaEnrollmentServiceProxy *)self daemonConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SDBetaEnrollmentServiceProxy_betaEnrollmentProxyObjectWithCompletion___block_invoke;
  v15[3] = &unk_2787CBB20;
  v17 = &v18;
  v6 = completionCopy;
  v16 = v6;
  v7 = [daemonConnection remoteObjectProxyWithErrorHandler:v15];

  if ([v7 conformsToProtocol:&unk_284251B30])
  {
    v8 = v19;
    if ((v19[3] & 1) == 0)
    {
      v9 = Log_1();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_INFO, "Calling completion handler for betaEnrollmentProxyObjectWithCompletion with no error", v14, 2u);
      }

      (*(v6 + 2))(v6, v7, 0);
      v8 = v19;
    }
  }

  else
  {
    v10 = Log_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [SDBetaEnrollmentServiceProxy betaEnrollmentProxyObjectWithCompletion:];
    }

    v11 = *(v19 + 24);
    _SDErrorForDaemonClientErrorType = Log_1();
    v13 = os_log_type_enabled(_SDErrorForDaemonClientErrorType, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        *v14 = 0;
        _os_log_impl(&dword_22E41E000, _SDErrorForDaemonClientErrorType, OS_LOG_TYPE_INFO, "Already sent conformsToProtocol error via completion handler", v14, 2u);
      }
    }

    else
    {
      if (v13)
      {
        *v14 = 0;
        _os_log_impl(&dword_22E41E000, _SDErrorForDaemonClientErrorType, OS_LOG_TYPE_INFO, "Sending conformsToProtocol error via completion handler", v14, 2u);
      }

      _SDErrorForDaemonClientErrorType = [(SDBetaEnrollmentServiceProxy *)self _SDErrorForDaemonClientErrorType];
      (*(v6 + 2))(v6, 0, _SDErrorForDaemonClientErrorType);
    }

    v8 = v19;
    *(v19 + 24) = 1;
  }

  *(v8 + 24) = 1;

  _Block_object_dispose(&v18, 8);
}

void __72__SDBetaEnrollmentServiceProxy_betaEnrollmentProxyObjectWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__SDBetaEnrollmentServiceProxy_betaEnrollmentProxyObjectWithCompletion___block_invoke_cold_1(v3);
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = Log_1();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "Already sent remoteObjectProxyWithErrorHandler error via completion handler", v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "Sending remoteObjectProxyWithErrorHandler error via completion handler", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)synchronousDaemonRemoteObjectProxyWithError:(id *)error
{
  if (!self->_daemonConnection)
  {
    [(SDBetaEnrollmentServiceProxy *)self initializeDaemonConnection];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  daemonConnection = [(SDBetaEnrollmentServiceProxy *)self daemonConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SDBetaEnrollmentServiceProxy_synchronousDaemonRemoteObjectProxyWithError___block_invoke;
  v12[3] = &unk_2787CBB48;
  v12[4] = &v13;
  v6 = [daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v12];

  v7 = v14;
  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
      v7 = v14;
    }
  }

  if (v7[5])
  {
    goto LABEL_7;
  }

  if ([v6 conformsToProtocol:&unk_284251B30])
  {
    v9 = v6;
  }

  else
  {
    v10 = Log_1();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [SDBetaEnrollmentServiceProxy synchronousDaemonRemoteObjectProxyWithError:];
    }

    if (!error)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_14;
    }

    [(SDBetaEnrollmentServiceProxy *)self _SDErrorForDaemonClientErrorType];
    *error = v9 = 0;
  }

LABEL_14:

  _Block_object_dispose(&v13, 8);

  return v9;
}

void __76__SDBetaEnrollmentServiceProxy_synchronousDaemonRemoteObjectProxyWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SDBetaEnrollmentServiceProxy_synchronousDaemonRemoteObjectProxyWithError___block_invoke_cold_1(v3);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getCurrentDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SDBetaEnrollmentServiceProxy_getCurrentDevice___block_invoke;
  v6[3] = &unk_2787CBB70;
  v6[4] = self;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v6];
}

void __49__SDBetaEnrollmentServiceProxy_getCurrentDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v7 = [*(a1 + 32) _SDErrorForDaemonClientErrorType];
    v5 = [v7 description];
    v6 = [SDDevice blankDeviceWithErrorMessage:v5];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);

    [a2 getCurrentDevice:v4];
  }
}

- (id)getCurrentDeviceSynchronously
{
  synchronousDaemonRemoteObjectProxy = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxy];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SDBetaEnrollmentServiceProxy_getCurrentDeviceSynchronously__block_invoke;
  v5[3] = &unk_2787CBB98;
  v5[4] = &v6;
  [synchronousDaemonRemoteObjectProxy getCurrentDevice:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)enrollDevice:(id)device inProgram:(id)program completion:(id)completion
{
  deviceCopy = device;
  programCopy = program;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__SDBetaEnrollmentServiceProxy_enrollDevice_inProgram_completion___block_invoke;
  v14[3] = &unk_2787CBBC0;
  v15 = deviceCopy;
  v16 = programCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = programCopy;
  v13 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v14];
}

uint64_t __66__SDBetaEnrollmentServiceProxy_enrollDevice_inProgram_completion___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(a1[6] + 16))();
  }

  else
  {
    return [a2 enrollDevice:a1[4] inProgram:a1[5] completion:a1[6]];
  }
}

- (void)getDevicesForPlatforms:(unint64_t)platforms completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SDBetaEnrollmentServiceProxy_getDevicesForPlatforms_completion___block_invoke;
  v8[3] = &unk_2787CBBE8;
  v9 = completionCopy;
  platformsCopy = platforms;
  v7 = completionCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v8];
}

uint64_t __66__SDBetaEnrollmentServiceProxy_getDevicesForPlatforms_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return [a2 getDevicesForPlatforms:*(a1 + 40) completion:*(a1 + 32)];
  }
}

- (void)queryProgramsForSystemAccountsWithPlatforms:(unint64_t)platforms disableBuildPrefixMatching:(BOOL)matching completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__SDBetaEnrollmentServiceProxy_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_completion___block_invoke;
  v10[3] = &unk_2787CBC10;
  matchingCopy = matching;
  v11 = completionCopy;
  platformsCopy = platforms;
  v9 = completionCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

void __114__SDBetaEnrollmentServiceProxy_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!v8 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = +[SDLanguageUtils languageHeaderCode];
    [v8 queryProgramsForSystemAccountsWithPlatforms:v5 disableBuildPrefixMatching:v6 language:v7 completion:*(a1 + 32)];
  }
}

- (BOOL)canCurrentDeviceEnrollInBetaProgram
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  synchronousDaemonRemoteObjectProxy = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxy];
  getCurrentDeviceSynchronously = [(SDBetaEnrollmentServiceProxy *)self getCurrentDeviceSynchronously];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SDBetaEnrollmentServiceProxy_canCurrentDeviceEnrollInBetaProgram__block_invoke;
  v6[3] = &unk_2787CBC38;
  v6[4] = &v7;
  [synchronousDaemonRemoteObjectProxy canDeviceEnrollInBetaUpdates:getCurrentDeviceSynchronously completion:v6];

  LOBYTE(synchronousDaemonRemoteObjectProxy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return synchronousDaemonRemoteObjectProxy;
}

- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion
{
  programCopy = program;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SDBetaEnrollmentServiceProxy_isDeviceEnrolledInBetaProgram_completion___block_invoke;
  v10[3] = &unk_2787CBC60;
  v11 = programCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = programCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

uint64_t __73__SDBetaEnrollmentServiceProxy_isDeviceEnrolledInBetaProgram_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [a2 isDeviceEnrolledInBetaProgram:*(a1 + 32) completion:*(a1 + 40)];
  }
}

- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SDBetaEnrollmentServiceProxy_enrolledBetaProgramForDevice_completion___block_invoke;
  v10[3] = &unk_2787CBC60;
  v11 = deviceCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

uint64_t __72__SDBetaEnrollmentServiceProxy_enrolledBetaProgramForDevice_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [a2 enrolledBetaProgramForDevice:*(a1 + 32) completion:*(a1 + 40)];
  }
}

- (id)getCurrentDeviceEnrolledBetaProgramSynchronously
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  synchronousDaemonRemoteObjectProxy = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxy];
  getCurrentDeviceSynchronously = [(SDBetaEnrollmentServiceProxy *)self getCurrentDeviceSynchronously];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SDBetaEnrollmentServiceProxy_getCurrentDeviceEnrolledBetaProgramSynchronously__block_invoke;
  v7[3] = &unk_2787CBC88;
  v7[4] = &v8;
  [synchronousDaemonRemoteObjectProxy enrolledBetaProgramForDevice:getCurrentDeviceSynchronously completion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)unenrollDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SDBetaEnrollmentServiceProxy_unenrollDevice_completion___block_invoke;
  v10[3] = &unk_2787CBC60;
  v11 = deviceCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

uint64_t __58__SDBetaEnrollmentServiceProxy_unenrollDevice_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [a2 unenrollDevice:*(a1 + 32) completion:*(a1 + 40)];
  }
}

- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SDBetaEnrollmentServiceProxy_canFileFeedbackOnDevice_completion___block_invoke;
  v10[3] = &unk_2787CBC60;
  v11 = deviceCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

uint64_t __67__SDBetaEnrollmentServiceProxy_canFileFeedbackOnDevice_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [a2 canFileFeedbackOnDevice:*(a1 + 32) completion:*(a1 + 40)];
  }
}

- (id)seedingAppleIDUsernameForCurrentDevice
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  synchronousDaemonRemoteObjectProxy = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxy];
  getCurrentDeviceSynchronously = [(SDBetaEnrollmentServiceProxy *)self getCurrentDeviceSynchronously];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SDBetaEnrollmentServiceProxy_seedingAppleIDUsernameForCurrentDevice__block_invoke;
  v7[3] = &unk_2787CBCB0;
  v7[4] = &v8;
  [synchronousDaemonRemoteObjectProxy getCurrentSeedingAppleIDForDevice:getCurrentDeviceSynchronously completion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)seedingAppleIDUsernameForCurrentDevice:(id)device
{
  deviceCopy = device;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SDBetaEnrollmentServiceProxy_seedingAppleIDUsernameForCurrentDevice___block_invoke;
  v6[3] = &unk_2787CBD28;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v6];
}

void __71__SDBetaEnrollmentServiceProxy_seedingAppleIDUsernameForCurrentDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__SDBetaEnrollmentServiceProxy_seedingAppleIDUsernameForCurrentDevice___block_invoke_2;
    v7[3] = &unk_2787CBD00;
    v8 = v5;
    v9 = *(a1 + 32);
    [v8 getCurrentDevice:v7];
  }
}

void __71__SDBetaEnrollmentServiceProxy_seedingAppleIDUsernameForCurrentDevice___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SDBetaEnrollmentServiceProxy_seedingAppleIDUsernameForCurrentDevice___block_invoke_3;
  v4[3] = &unk_2787CBCD8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 getCurrentSeedingAppleIDForDevice:a2 completion:v4];
}

- (id)deviceAppleIDUsernameForCurrentDevice
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  synchronousDaemonRemoteObjectProxy = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxy];
  getCurrentDeviceSynchronously = [(SDBetaEnrollmentServiceProxy *)self getCurrentDeviceSynchronously];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SDBetaEnrollmentServiceProxy_deviceAppleIDUsernameForCurrentDevice__block_invoke;
  v7[3] = &unk_2787CBD50;
  v7[4] = &v8;
  [synchronousDaemonRemoteObjectProxy getCurrentPrimaryAppleIDForDevice:getCurrentDeviceSynchronously completion:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__SDBetaEnrollmentServiceProxy_setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke;
  v10[3] = &unk_2787CBC60;
  v11 = deviceCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = deviceCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

void __102__SDBetaEnrollmentServiceProxy_setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __102__SDBetaEnrollmentServiceProxy_setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke_2;
    v7[3] = &unk_2787CBDA0;
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v8 getCurrentDevice:v7];
  }
}

void __102__SDBetaEnrollmentServiceProxy_setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__SDBetaEnrollmentServiceProxy_setAppleAccountIdentifierWithAlternateDSIDForCurrentDevice_completion___block_invoke_3;
  v5[3] = &unk_2787CBD78;
  v6 = *(a1 + 48);
  [v3 setAppleAccountIdentifierFromAlternateDSID:v4 forDevice:a2 completion:v5];
}

- (void)deleteSeedingAppleAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SDBetaEnrollmentServiceProxy_deleteSeedingAppleAccountWithCompletion___block_invoke;
  v6[3] = &unk_2787CBD28;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v6];
}

void __72__SDBetaEnrollmentServiceProxy_deleteSeedingAppleAccountWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__SDBetaEnrollmentServiceProxy_deleteSeedingAppleAccountWithCompletion___block_invoke_2;
    v7[3] = &unk_2787CBD00;
    v8 = v5;
    v9 = *(a1 + 32);
    [v8 getCurrentDevice:v7];
  }
}

void __72__SDBetaEnrollmentServiceProxy_deleteSeedingAppleAccountWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SDBetaEnrollmentServiceProxy_deleteSeedingAppleAccountWithCompletion___block_invoke_3;
  v4[3] = &unk_2787CBD78;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 deleteSeedingAppleAccountForDevice:a2 completion:v4];
}

- (BOOL)isCurrentDeviceUsingSeedingAppleID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  synchronousDaemonRemoteObjectProxy = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxy];
  getCurrentDeviceSynchronously = [(SDBetaEnrollmentServiceProxy *)self getCurrentDeviceSynchronously];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SDBetaEnrollmentServiceProxy_isCurrentDeviceUsingSeedingAppleID__block_invoke;
  v6[3] = &unk_2787CBC38;
  v6[4] = &v7;
  [synchronousDaemonRemoteObjectProxy isDeviceUsingSeedingAppleID:getCurrentDeviceSynchronously completion:v6];

  LOBYTE(synchronousDaemonRemoteObjectProxy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return synchronousDaemonRemoteObjectProxy;
}

- (void)invalidateCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SDBetaEnrollmentServiceProxy_invalidateCacheWithCompletion___block_invoke;
  v6[3] = &unk_2787CBD28;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v6];
}

uint64_t __62__SDBetaEnrollmentServiceProxy_invalidateCacheWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!a2 || a3)
  {
    return (*(v3 + 16))(*(a1 + 32), a3);
  }

  else
  {
    return [a2 invalidateDaemonCacheWithCompletion:v3];
  }
}

- (void)enrollInProgramWithToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SDBetaEnrollmentServiceProxy_enrollInProgramWithToken_completion___block_invoke;
  v10[3] = &unk_2787CBB70;
  v11 = tokenCopy;
  v12 = completionCopy;
  v8 = tokenCopy;
  v9 = completionCopy;
  [(SDBetaEnrollmentServiceProxy *)self betaEnrollmentProxyObjectWithCompletion:v10];
}

void __68__SDBetaEnrollmentServiceProxy_enrollInProgramWithToken_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = +[SDLanguageUtils languageHeaderCode];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__SDBetaEnrollmentServiceProxy_enrollInProgramWithToken_completion___block_invoke_2;
    v8[3] = &unk_2787CBDC8;
    v9 = *(a1 + 40);
    [v5 enrollInProgramWithToken:v6 language:v7 completion:v8];
  }
}

void __68__SDBetaEnrollmentServiceProxy_enrollInProgramWithToken_completion___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = SDMDMConfiguratorErrorWithType(a2);
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

- (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy error:(id *)error
{
  tokensCopy = tokens;
  tokenCopy = token;
  v12 = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxyWithError:error];
  v13 = v12;
  if (*error)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 == 0;
  }

  if (!v14)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    v15 = +[SDLanguageUtils languageHeaderCode];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __107__SDBetaEnrollmentServiceProxy_configureWithOfferProgramTokens_requireProgramToken_enrollmentPolicy_error___block_invoke;
    v17[3] = &unk_2787CBB48;
    v17[4] = &v18;
    [v13 configureWithOfferProgramTokens:tokensCopy requireProgramToken:tokenCopy enrollmentPolicy:policy language:v15 completion:v17];

    v16 = v19[5];
    if (v16)
    {
      *error = [v16 copy];
    }

    _Block_object_dispose(&v18, 8);
  }
}

- (id)loadMDMConfigurationWithError:(id *)error
{
  v4 = [(SDBetaEnrollmentServiceProxy *)self synchronousDaemonRemoteObjectProxyWithError:?];
  v5 = v4;
  if (*error)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__SDBetaEnrollmentServiceProxy_loadMDMConfigurationWithError___block_invoke;
    v10[3] = &unk_2787CBDF0;
    v10[4] = &v17;
    v10[5] = &v11;
    [v4 loadMDMConfigurationWithCompletion:v10];
    v8 = v18[5];
    if (v8)
    {
      v7 = 0;
      *error = v8;
    }

    else
    {
      v7 = v12[5];
    }

    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  return v7;
}

void __62__SDBetaEnrollmentServiceProxy_loadMDMConfigurationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __72__SDBetaEnrollmentServiceProxy_betaEnrollmentProxyObjectWithCompletion___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_1(&dword_22E41E000, v2, v3, "Failed to get remote object proxy to betaEnrollment remote process: %{public}@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __76__SDBetaEnrollmentServiceProxy_synchronousDaemonRemoteObjectProxyWithError___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_1(&dword_22E41E000, v2, v3, "Failed to get synchronous remote object proxy: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end