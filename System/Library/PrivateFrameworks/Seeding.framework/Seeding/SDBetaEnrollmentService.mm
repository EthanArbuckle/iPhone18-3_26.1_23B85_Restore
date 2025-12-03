@interface SDBetaEnrollmentService
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_connectionForPid:(id)pid;
- (id)remoteObjectProxyForPID:(id)d;
- (void)_startListeningForProfileChanges;
- (void)_stopListeningForProfileChanges;
- (void)_storeAppConnection:(id)connection;
- (void)_verifyCurrentDevice;
- (void)canDeviceEnrollInBetaUpdates:(id)updates completion:(id)completion;
- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion;
- (void)checkIn;
- (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy language:(id)language completion:(id)completion;
- (void)dealloc;
- (void)deleteSeedingAppleAccountForDevice:(id)device completion:(id)completion;
- (void)enrollDevice:(id)device inProgram:(id)program completion:(id)completion;
- (void)enrollInProgramWithToken:(id)token language:(id)language completion:(id)completion;
- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion;
- (void)getCurrentDevice:(id)device;
- (void)getCurrentPrimaryAppleIDForDevice:(id)device completion:(id)completion;
- (void)getCurrentSeedingAppleIDForDevice:(id)device completion:(id)completion;
- (void)getDevicesForPlatforms:(unint64_t)platforms completion:(id)completion;
- (void)invalidateDaemonCacheWithCompletion:(id)completion;
- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion;
- (void)isDeviceUsingSeedingAppleID:(id)d completion:(id)completion;
- (void)loadMDMConfigurationWithCompletion:(id)completion;
- (void)setAppleAccountIdentifierFromAlternateDSID:(id)d forDevice:(id)device completion:(id)completion;
- (void)start;
- (void)unenrollDevice:(id)device completion:(id)completion;
@end

@implementation SDBetaEnrollmentService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SDBetaEnrollmentService sharedInstance];
  }

  v3 = sharedInstance_daemon;

  return v3;
}

uint64_t __41__SDBetaEnrollmentService_sharedInstance__block_invoke()
{
  sharedInstance_daemon = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(SDBetaEnrollmentService *)self _stopListeningForProfileChanges];
  v3.receiver = self;
  v3.super_class = SDBetaEnrollmentService;
  [(SDBetaEnrollmentService *)&v3 dealloc];
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v16 = "[SDBetaEnrollmentService start]";
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v4 = +[SDAnalytics deviceIdentifier];
  v5 = +[SDBetaManager sharedManager];
  [v5 _migrateFromProfilesIfNeeded];

  v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.seeding.client"];
  [(SDBetaEnrollmentService *)self setListener:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-listener-queue", @"com.apple.seeding.client"];
  v8 = dispatch_queue_create([v7 cStringUsingEncoding:4], 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SDBetaEnrollmentService_start__block_invoke;
  block[3] = &unk_2787CB588;
  block[4] = self;
  dispatch_async(v8, block);

  if (_os_feature_enabled_impl())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277CCA7C0];
    defaultStore = [MEMORY[0x277CCAD80] defaultStore];
    v12 = [defaultCenter addObserverForName:v10 object:defaultStore queue:0 usingBlock:&__block_literal_global_14];
  }

  if (_os_feature_enabled_impl())
  {
    [(SDBetaEnrollmentService *)self _startListeningForProfileChanges];
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_20);
  [(SDBetaEnrollmentService *)self checkIn];

  v13 = *MEMORY[0x277D85DE8];
}

void __32__SDBetaEnrollmentService_start__block_invoke(uint64_t a1)
{
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __32__SDBetaEnrollmentService_start__block_invoke_cold_1(v2);
  }

  v3 = *(a1 + 32);
  v4 = [v3 listener];
  [v4 setDelegate:v3];

  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __32__SDBetaEnrollmentService_start__block_invoke_cold_2(v5);
  }

  v6 = [*(a1 + 32) listener];
  [v6 resume];
}

void __32__SDBetaEnrollmentService_start__block_invoke_11(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Got an iCKVS notification: %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CCAD80] defaultStore];
  [v4 synchronize];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startListeningForProfileChanges
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v13 = "[SDBetaEnrollmentService _startListeningForProfileChanges]";
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  profileToken = self->_profileToken;
  p_profileToken = &self->_profileToken;
  if (!profileToken)
  {
    v6 = Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_INFO, "Registering to listen for profile installations.", buf, 2u);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seeding"];
    v10 = @"EnableProfiles";
    v11 = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v7 registerDefaults:v8];

    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", p_profileToken, MEMORY[0x277D85CD0], &__block_literal_global_26);
    +[SDProfileUtilities removeSeedProfileIfRestricted];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __59__SDBetaEnrollmentService__startListeningForProfileChanges__block_invoke()
{
  v0 = Log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22E41E000, v0, OS_LOG_TYPE_DEFAULT, "Detected installation of a profile, will try removing if it's a seed profile.", v2, 2u);
  }

  return +[SDProfileUtilities removeSeedProfileIfRestricted];
}

- (void)_stopListeningForProfileChanges
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136446210;
    v7 = "[SDBetaEnrollmentService _stopListeningForProfileChanges]";
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "%{public}s", &v6, 0xCu);
  }

  profileToken = self->_profileToken;
  if (profileToken)
  {
    notify_cancel(profileToken);
    self->_profileToken = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.seeding.client"];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) != 0)
  {

    processIdentifier = [connectionCopy processIdentifier];
    v11 = Log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = processIdentifier;
      _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "New connection from pid [%ld]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12 = _allowListedXPCClientInterface();
    [connectionCopy setRemoteObjectInterface:v12];

    v13 = _allowListedXPCServerInterface();
    [connectionCopy setExportedInterface:v13];

    [connectionCopy setExportedObject:self];
    v14 = [connectionCopy description];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke;
    v29[3] = &unk_2787CB610;
    v15 = v14;
    v30 = v15;
    objc_copyWeak(&v31, buf);
    v32 = processIdentifier;
    [connectionCopy setInvalidationHandler:v29];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke_28;
    v25 = &unk_2787CB610;
    v16 = v15;
    v26 = v16;
    objc_copyWeak(&v27, buf);
    v28 = processIdentifier;
    [connectionCopy setInterruptionHandler:&v22];
    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained _storeAppConnection:{connectionCopy, v22, v23, v24, v25}];

    [connectionCopy resume];
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
    v18 = 1;
  }

  else
  {
    v19 = Log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SDBetaEnrollmentService listener:connectionCopy shouldAcceptNewConnection:?];
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "connection [%{public}@] was invalidated", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _releaseAppConnectionWithPid:*(a1 + 48)];

  v5 = *MEMORY[0x277D85DE8];
}

void __62__SDBetaEnrollmentService_listener_shouldAcceptNewConnection___block_invoke_28(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "connection [%{public}@] was interrupted", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _releaseAppConnectionWithPid:*(a1 + 48)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_storeAppConnection:(id)connection
{
  connectionCopy = connection;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SDBetaEnrollmentService *)connectionCopy _storeAppConnection:v5];
  }

  if ([connectionCopy effectiveUserIdentifier])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(connectionCopy, "effectiveUserIdentifier")}];
    [(SDBetaEnrollmentService *)self setUserIdentifier:v6];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
  appConnections = [(SDBetaEnrollmentService *)selfCopy appConnections];
  [appConnections setObject:connectionCopy forKeyedSubscript:v8];

  objc_sync_exit(selfCopy);
}

- (id)_connectionForPid:(id)pid
{
  pidCopy = pid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appConnections = [(SDBetaEnrollmentService *)selfCopy appConnections];
  v7 = [appConnections objectForKeyedSubscript:pidCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)remoteObjectProxyForPID:(id)d
{
  dCopy = d;
  v5 = [(SDBetaEnrollmentService *)self _connectionForPid:dCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke;
  v9[3] = &unk_2787CB638;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke(uint64_t a1)
{
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke_cold_1(a1);
  }
}

- (void)checkIn
{
  v11 = *MEMORY[0x277D85DE8];
  [(SDBetaEnrollmentService *)self _verifyCurrentDevice];
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[SDDevice _currentDevice];
    identifier = [v4 identifier];
    *buf = 138412290;
    v10 = identifier;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Checking in device %@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__SDBetaEnrollmentService_checkIn__block_invoke;
  handler[3] = &unk_2787CB660;
  handler[4] = self;
  xpc_activity_register("com.apple.betaenrollment.verify", v6, handler);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], &__block_literal_global_35);
  v7 = *MEMORY[0x277D85DE8];
}

void __34__SDBetaEnrollmentService_checkIn__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = Log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "Verifying device enrollment on XPC Activity schedule.", v6, 2u);
    }

    [*(a1 + 32) _verifyCurrentDevice];
  }

  else if (!state)
  {
    v4 = Log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Verify activity checking in.", buf, 2u);
    }
  }
}

- (void)_verifyCurrentDevice
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v10 = "[SDBetaEnrollmentService _verifyCurrentDevice]";
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v3 = SDTransactionCreate("[SDBetaEnrollmentService _verifyCurrentDevice]");
  v4 = +[SDBetaManager sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke;
  v7[3] = &unk_2787CB588;
  v8 = v3;
  v5 = v3;
  [v4 ensureThisRunsAfterMigration:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke(uint64_t a1)
{
  v2 = +[SDDevice _currentDevice];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke_2;
  v3[3] = &unk_2787CB688;
  v4 = *(a1 + 32);
  [v2 _verifyEnrollmentWithUserIdentifier:0 completion:v3];
}

void __47__SDBetaEnrollmentService__verifyCurrentDevice__block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NOT valid, unenrolling.";
    if (a2)
    {
      v4 = @"valid";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Verified enrollment as %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = Log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = "[SDBetaEnrollmentService getCurrentDevice:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5 = SDTransactionCreate("[SDBetaEnrollmentService getCurrentDevice:]");
  v6 = +[SDBetaManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SDBetaEnrollmentService_getCurrentDevice___block_invoke;
  v10[3] = &unk_2787CB6B0;
  v11 = v5;
  v12 = deviceCopy;
  v7 = deviceCopy;
  v8 = v5;
  [v6 ensureThisRunsAfterMigration:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __44__SDBetaEnrollmentService_getCurrentDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = +[SDDevice _currentDevice];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)enrollDevice:(id)device inProgram:(id)program completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  programCopy = program;
  completionCopy = completion;
  v11 = Log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v26 = "[SDBetaEnrollmentService enrollDevice:inProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v12 = SDTransactionCreate("[SDBetaEnrollmentService enrollDevice:inProgram:completion:]");
  v13 = +[SDBetaManager sharedManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke;
  v19[3] = &unk_2787CB6D8;
  v20 = v12;
  v21 = deviceCopy;
  selfCopy = self;
  v24 = completionCopy;
  v22 = programCopy;
  v14 = completionCopy;
  v15 = programCopy;
  v16 = deviceCopy;
  v17 = v12;
  [v13 ensureThisRunsAfterMigration:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 40) platform];
  if (v3 != [*(a1 + 48) platform])
  {
    v7 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_1(v2, (a1 + 48));
    }

    v8 = SDErrorForBetaManagerErrorType(5);
    v9 = *(*(a1 + 64) + 16);
    goto LABEL_12;
  }

  v4 = +[SDBetaManager sharedManager];
  v5 = [v4 _isEnrollmentAllowedByDeviceManagement_legacy];

  if ((v5 & 1) == 0)
  {
    v6 = Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_2(v6);
    }

    goto LABEL_11;
  }

  if (+[SDMDMConfiguratorImplementation isBetaEnrollmentDisabled])
  {
    v6 = Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_3(v6);
    }

LABEL_11:

    v10 = *(a1 + 64);
    v8 = SDErrorForBetaManagerErrorType(13);
    v9 = *(v10 + 16);
LABEL_12:
    v9();

    return;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 56) userIdentifier];
  [v11 _enrollInBetaProgram:v12 userIdentifier:v13];

  v14 = *(*(a1 + 64) + 16);

  v14();
}

- (void)getDevicesForPlatforms:(unint64_t)platforms completion:(id)completion
{
  completionCopy = completion;
  v6 = SDTransactionCreate("[SDBetaEnrollmentService getDevicesForPlatforms:completion:]");
  v7 = +[SDBetaManager sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SDBetaEnrollmentService_getDevicesForPlatforms_completion___block_invoke;
  v10[3] = &unk_2787CB700;
  v11 = v6;
  v12 = completionCopy;
  platformsCopy = platforms;
  v8 = completionCopy;
  v9 = v6;
  [v7 ensureThisRunsAfterMigration:v10];
}

void __61__SDBetaEnrollmentService_getDevicesForPlatforms_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [SDDevice _devicesMatchingPlatforms:*(a1 + 48)];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)canDeviceEnrollInBetaUpdates:(id)updates completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136446210;
    v11 = "[SDBetaEnrollmentService canDeviceEnrollInBetaUpdates:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v10, 0xCu);
  }

  v6 = SDTransactionCreate("[SDBetaEnrollmentService canDeviceEnrollInBetaUpdates:completion:]");
  v7 = +[SDBetaManager sharedManager];
  _canCurrentDeviceEnrollInBetaUpdates = [v7 _canCurrentDeviceEnrollInBetaUpdates];

  completionCopy[2](completionCopy, _canCurrentDeviceEnrollInBetaUpdates);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceEnrolledInBetaProgram:(id)program completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  programCopy = program;
  completionCopy = completion;
  v7 = Log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v19 = "[SDBetaEnrollmentService isDeviceEnrolledInBetaProgram:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8 = SDTransactionCreate("[SDBetaEnrollmentService isDeviceEnrolledInBetaProgram:completion:]");
  v9 = +[SDBetaManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SDBetaEnrollmentService_isDeviceEnrolledInBetaProgram_completion___block_invoke;
  v14[3] = &unk_2787CB750;
  v15 = v8;
  v16 = programCopy;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = programCopy;
  v12 = v8;
  [v9 ensureThisRunsAfterMigration:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __68__SDBetaEnrollmentService_isDeviceEnrolledInBetaProgram_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 40) _isEnrolled];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)unenrollDevice:(id)device completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v8 = Log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v21 = "[SDBetaEnrollmentService unenrollDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v9 = SDTransactionCreate("[SDBetaEnrollmentService unenrollDevice:completion:]");
  v10 = +[SDBetaManager sharedManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__SDBetaEnrollmentService_unenrollDevice_completion___block_invoke;
  v15[3] = &unk_2787CB778;
  v16 = v9;
  v17 = deviceCopy;
  selfCopy = self;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
  v13 = v9;
  [v10 ensureThisRunsAfterMigration:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SDBetaEnrollmentService_unenrollDevice_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) userIdentifier];
  [v2 _unenrollWithUserIdentifier:v3];

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)canFileFeedbackOnDevice:(id)device completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v7 = Log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v19 = "[SDBetaEnrollmentService canFileFeedbackOnDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v8 = SDTransactionCreate("[SDBetaEnrollmentService canFileFeedbackOnDevice:completion:]");
  v9 = +[SDBetaManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SDBetaEnrollmentService_canFileFeedbackOnDevice_completion___block_invoke;
  v14[3] = &unk_2787CB7A0;
  v16 = deviceCopy;
  v17 = completionCopy;
  v15 = v8;
  v10 = deviceCopy;
  v11 = completionCopy;
  v12 = v8;
  [v9 ensureThisRunsAfterMigration:v14];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __62__SDBetaEnrollmentService_canFileFeedbackOnDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 40) _canFileFeedback];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)enrolledBetaProgramForDevice:(id)device completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v15 = "[SDBetaEnrollmentService enrolledBetaProgramForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = SDTransactionCreate("[SDBetaEnrollmentService enrolledBetaProgramForDevice:completion:]");
  v7 = +[SDBetaManager sharedManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SDBetaEnrollmentService_enrolledBetaProgramForDevice_completion___block_invoke;
  v11[3] = &unk_2787CB6B0;
  v12 = v6;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  [v7 ensureThisRunsAfterMigration:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __67__SDBetaEnrollmentService_enrolledBetaProgramForDevice_completion___block_invoke(uint64_t a1)
{
  v2 = +[SDBetaManager _currentBetaProgram];
  (*(*(a1 + 40) + 16))();
}

- (void)getCurrentSeedingAppleIDForDevice:(id)device completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "[SDBetaEnrollmentService getCurrentSeedingAppleIDForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v9, 0xCu);
  }

  v6 = +[SDBetaManager sharedManager];
  _seedingAppleIDUsername = [v6 _seedingAppleIDUsername];
  completionCopy[2](completionCopy, _seedingAppleIDUsername, 0);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentPrimaryAppleIDForDevice:(id)device completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "[SDBetaEnrollmentService getCurrentPrimaryAppleIDForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v9, 0xCu);
  }

  v6 = +[SDBetaManager sharedManager];
  _deviceAppleIDUsername = [v6 _deviceAppleIDUsername];
  completionCopy[2](completionCopy, _deviceAppleIDUsername);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setAppleAccountIdentifierFromAlternateDSID:(id)d forDevice:(id)device completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  v8 = Log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v18 = "[SDBetaEnrollmentService setAppleAccountIdentifierFromAlternateDSID:forDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9 = SDTransactionCreate("[SDBetaEnrollmentService setAppleAccountIdentifierFromAlternateDSID:forDevice:completion:]");
  v10 = +[SDBetaManager sharedManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__SDBetaEnrollmentService_setAppleAccountIdentifierFromAlternateDSID_forDevice_completion___block_invoke;
  v14[3] = &unk_2787CB7C8;
  v15 = v9;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = v9;
  [v10 _saveAppleAccountIdentifierWithAlternateDSID:dCopy completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deleteSeedingAppleAccountForDevice:(id)device completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v15 = "[SDBetaEnrollmentService deleteSeedingAppleAccountForDevice:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v6 = SDTransactionCreate("[SDBetaEnrollmentService deleteSeedingAppleAccountForDevice:completion:]");
  v7 = +[SDBetaManager sharedManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SDBetaEnrollmentService_deleteSeedingAppleAccountForDevice_completion___block_invoke;
  v11[3] = &unk_2787CB7C8;
  v12 = v6;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = v6;
  [v7 _deleteSeedingAppleAccountWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isDeviceUsingSeedingAppleID:(id)d completion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136446210;
    v9 = "[SDBetaEnrollmentService isDeviceUsingSeedingAppleID:completion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "%{public}s", &v8, 0xCu);
  }

  v6 = +[SDBetaManager sharedManager];
  completionCopy[2](completionCopy, [v6 _isUsingSeedingAppleID]);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateDaemonCacheWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = Log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "[SDBetaEnrollmentService invalidateDaemonCacheWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_INFO, "%{public}s", &v7, 0xCu);
  }

  v5 = +[SDBetaManager sharedManager];
  [v5 invalidateCache];

  completionCopy[2](completionCopy, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)enrollInProgramWithToken:(id)token language:(id)language completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  languageCopy = language;
  v10 = Log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v20 = "[SDBetaEnrollmentService enrollInProgramWithToken:language:completion:]";
    v21 = 2113;
    v22 = tokenCopy;
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s token [%{private}@]", buf, 0x16u);
  }

  v11 = SDTransactionCreate("[SDBetaEnrollmentService enrollInProgramWithToken:language:completion:]");
  v12 = +[SDBetaManager sharedManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__SDBetaEnrollmentService_enrollInProgramWithToken_language_completion___block_invoke;
  v16[3] = &unk_2787CB7F0;
  v17 = v11;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  [v12 enrollInProgramWithToken:tokenCopy userIdentifier:0 language:languageCopy completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureWithOfferProgramTokens:(id)tokens requireProgramToken:(id)token enrollmentPolicy:(int64_t)policy language:(id)language completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  languageCopy = language;
  tokenCopy = token;
  tokensCopy = tokens;
  v16 = Log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[SDBetaEnrollmentService configureWithOfferProgramTokens:requireProgramToken:enrollmentPolicy:language:completion:]";
    _os_log_impl(&dword_22E41E000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v17 = SDTransactionCreate("[SDBetaEnrollmentService configureWithOfferProgramTokens:requireProgramToken:enrollmentPolicy:language:completion:]");
  userIdentifier = [(SDBetaEnrollmentService *)self userIdentifier];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __116__SDBetaEnrollmentService_configureWithOfferProgramTokens_requireProgramToken_enrollmentPolicy_language_completion___block_invoke;
  v22[3] = &unk_2787CB7C8;
  v23 = v17;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = v17;
  [SDMDMConfiguratorImplementation configureWithOfferProgramTokens:tokensCopy requireProgramToken:tokenCopy enrollmentPolicy:policy userIdentifier:userIdentifier language:languageCopy completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)loadMDMConfigurationWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = SDTransactionCreate("[SDBetaEnrollmentService loadMDMConfigurationWithCompletion:]");
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[SDBetaEnrollmentService loadMDMConfigurationWithCompletion:]";
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s", buf, 0xCu);
  }

  v9 = 0;
  v6 = [SDPersistence loadMDMConfigurationWithError:&v9];
  v7 = v9;
  completionCopy[2](completionCopy, v7, v6);

  v8 = *MEMORY[0x277D85DE8];
}

void __32__SDBetaEnrollmentService_start__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.seeding.client";
  _os_log_debug_impl(&dword_22E41E000, log, OS_LOG_TYPE_DEBUG, "listening for service %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __32__SDBetaEnrollmentService_start__block_invoke_cold_2(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_22E41E000, a1, OS_LOG_TYPE_DEBUG, "resuming listener from thread %@", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_storeAppConnection:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 processIdentifier];
  _os_log_debug_impl(&dword_22E41E000, a2, OS_LOG_TYPE_DEBUG, "Storing connection from PID [%i]", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void __51__SDBetaEnrollmentService_remoteObjectProxyForPID___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [*(a1 + 32) stringValue];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __61__SDBetaEnrollmentService_enrollDevice_inProgram_completion___block_invoke_cold_1(id *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [*a1 platform];
  [*a2 platform];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end