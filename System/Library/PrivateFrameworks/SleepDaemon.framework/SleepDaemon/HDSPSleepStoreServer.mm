@interface HDSPSleepStoreServer
- (HDSPEnvironment)environment;
- (HDSPSleepStoreServer)initWithEnvironment:(id)environment;
- (HDSPSleepStoreServer)initWithEnvironment:(id)environment connectionListenerProvider:(id)provider processStateManager:(id)manager;
- (id)_checkForSuspendedBlock;
- (id)diagnosticDescription;
- (id)diagnosticInfo;
- (id)eventIdentifiers;
- (void)_notifyClient:(id)client forMissedMessagesWithSyncAnchorContainer:(id)container;
- (void)_performWhenClientIsReady:(id)ready block:(id)block;
- (void)_performWhenCurrentClientIsReady:(id)ready;
- (void)_performWhenEnvironmentIsReady:(id)ready;
- (void)_performWhenEnvironmentIsReady:(id)ready withContext:(id)context;
- (void)checkInWithSyncAnchorContainer:(id)container completion:(id)completion;
- (void)clearWidgetOverrideWithCompletion:(id)completion;
- (void)configureSleepFocusWithState:(unint64_t)state completion:(id)completion;
- (void)confirmAwakeWithCompletion:(id)completion;
- (void)connectWithCompletion:(id)completion;
- (void)connectionListenerDidAddClient:(id)client;
- (void)connectionListenerDidRemoveClient:(id)client;
- (void)createSleepFocusInState:(unint64_t)state completion:(id)completion;
- (void)deleteSleepFocusModeWithCompletion:(id)completion;
- (void)dismissGoodMorningWithCompletion:(id)completion;
- (void)dismissSleepLockWithCompletion:(id)completion;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)environmentWillInvalidate:(id)invalidate;
- (void)getSleepEventRecordWithCompletion:(id)completion;
- (void)getSleepModeWithCompletion:(id)completion;
- (void)getSleepScheduleModelWithCompletion:(id)completion;
- (void)getSleepScheduleStateWithCompletion:(id)completion;
- (void)getSleepScheduleWithCompletion:(id)completion;
- (void)getSleepSettingsWithCompletion:(id)completion;
- (void)getSleepWidgetStateWithCompletion:(id)completion;
- (void)processDidBecomeSuspended:(int)suspended;
- (void)processNoLongerSuspended:(int)suspended;
- (void)publishNotificationWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion;
- (void)publishWakeUpResultsNotificationWithCompletion:(id)completion;
- (void)saveSleepEventRecord:(id)record completion:(id)completion;
- (void)saveSleepSchedule:(id)schedule completion:(id)completion;
- (void)saveSleepSettings:(id)settings completion:(id)completion;
- (void)setLockScreenOverrideState:(int64_t)state userInfo:(id)info completion:(id)completion;
- (void)setSleepMode:(int64_t)mode reason:(unint64_t)reason completion:(id)completion;
- (void)setWidgetOverrideState:(int64_t)state completion:(id)completion;
- (void)sleepAlarmWasDismissedOnDate:(id)date source:(unint64_t)source completion:(id)completion;
- (void)sleepAlarmWasModifiedFromSource:(unint64_t)source completion:(id)completion;
- (void)sleepAlarmWasSnoozedUntilDate:(id)date source:(unint64_t)source completion:(id)completion;
- (void)sleepEventIsDue:(id)due;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepEventRecord:(id)record;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSchedule:(id)schedule;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSettings:(id)settings;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)startListening;
@end

@implementation HDSPSleepStoreServer

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepStoreServer)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(HDSPProcessStateManager);
  v6 = [(HDSPSleepStoreServer *)self initWithEnvironment:environmentCopy connectionListenerProvider:&__block_literal_global_5 processStateManager:v5];

  return v6;
}

id __44__HDSPSleepStoreServer_initWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D62548];
  v3 = *MEMORY[0x277D622B8];
  v4 = a2;
  v5 = HKSPSleepClientInterface();
  v6 = HKSPSleepServerInterface();
  v7 = [v2 infoForMachServiceName:v3 remoteObjectInterface:v5 exportedObject:v4 exportedObjectInterface:v6 lifecycleNotification:*MEMORY[0x277D62250] requiredEntitlement:*MEMORY[0x277D621A8] options:0];

  v8 = [MEMORY[0x277D62550] listenerWithConnectionInfo:v7];

  return v8;
}

- (HDSPSleepStoreServer)initWithEnvironment:(id)environment connectionListenerProvider:(id)provider processStateManager:(id)manager
{
  v32 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  providerCopy = provider;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = HDSPSleepStoreServer;
  v11 = [(HDSPSleepStoreServer *)&v27 init];
  if (v11)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v29 = v13;
      v30 = 2048;
      v31 = v11;
      v14 = v13;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v11->_environment, environmentCopy);
    if (providerCopy)
    {
      v15 = providerCopy[2](providerCopy, v11);
    }

    else
    {
      v15 = 0;
    }

    connectionListener = v11->_connectionListener;
    v11->_connectionListener = v15;

    [(HKSPXPCConnectionListener *)v11->_connectionListener setDelegate:v11];
    objc_storeStrong(&v11->_processStateManager, manager);
    [(HDSPProcessStateManager *)v11->_processStateManager setDelegate:v11];
    v17 = objc_alloc(MEMORY[0x277D624A8]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    WeakRetained = objc_loadWeakRetained(&v11->_environment);
    userDefaults = [WeakRetained userDefaults];
    v22 = [v17 initWithIdentifier:v19 defaults:userDefaults];
    syncAnchorContainer = v11->_syncAnchorContainer;
    v11->_syncAnchorContainer = v22;

    v24 = v11;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)startListening
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startListening", &v6, 0xCu);
  }

  [(HKSPXPCConnectionListener *)self->_connectionListener startListening];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performWhenCurrentClientIsReady:(id)ready
{
  readyCopy = ready;
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  currentClient = [connectionListener currentClient];

  [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:readyCopy];
}

- (void)_performWhenClientIsReady:(id)ready block:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  blockCopy = block;
  if (readyCopy)
  {
    v8 = [HDSPEnvironmentContext contextWithSource:readyCopy];
    clientIdentifierProvider = [readyCopy clientIdentifierProvider];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke;
    v20[3] = &unk_279C7BCC0;
    v20[4] = self;
    v23 = blockCopy;
    v21 = readyCopy;
    v22 = v8;
    v10 = v8;
    v11 = blockCopy;
    v12 = [clientIdentifierProvider addCompletionBlock:v20];
  }

  else
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = objc_opt_class();
      v16 = v25;
      _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] client was nil!", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke_302;
    v17[3] = &unk_279C7BC98;
    v18 = 0;
    v19 = blockCopy;
    v14 = blockCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v17];

    v10 = v19;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke_2;
  v3[3] = &unk_279C7BC98;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  [v2 _performWhenEnvironmentIsReady:v3 withContext:*(a1 + 48)];
}

- (void)_performWhenEnvironmentIsReady:(id)ready
{
  readyCopy = ready;
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  currentClient = [connectionListener currentClient];

  v6 = [HDSPEnvironmentContext contextWithSource:currentClient];
  [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:readyCopy withContext:v6];
}

- (void)_performWhenEnvironmentIsReady:(id)ready withContext:(id)context
{
  readyCopy = ready;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSPSleepStoreServer__performWhenEnvironmentIsReady_withContext___block_invoke;
  v10[3] = &unk_279C7BCE8;
  v11 = readyCopy;
  v9 = readyCopy;
  [WeakRetained performWhenEnvironmentIsReady:v10 withContext:contextCopy];
}

uint64_t __67__HDSPSleepStoreServer__performWhenEnvironmentIsReady_withContext___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v15 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v13, 0xCu);
  }

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  diagnostics = [readyCopy diagnostics];

  [diagnostics addProvider:self];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)environmentDidBecomeReady:(id)ready
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)environmentWillInvalidate:(id)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Environment will become invalid", &v8, 0xCu);
  }

  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  currentClient = [connectionListener currentClient];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = currentClient;
    v8 = v13;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] connect received from %{public}@", &v12, 0x16u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  inMemoryCopy = [syncAnchorContainer inMemoryCopy];
  completionCopy[2](completionCopy, inMemoryCopy, 0);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithSyncAnchorContainer:(id)container completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = currentClient;
      v24 = 2114;
      v25 = containerCopy;
      v14 = v21;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] check in received from %{public}@ with sync anchor container: %{public}@", buf, 0x20u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__HDSPSleepStoreServer_checkInWithSyncAnchorContainer_completion___block_invoke;
    v17[3] = &unk_279C7BD10;
    v17[4] = self;
    v18 = containerCopy;
    v19 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HDSPSleepStoreServer_checkInWithSyncAnchorContainer_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _notifyClient:a2 forMissedMessagesWithSyncAnchorContainer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)getSleepScheduleWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep schedule from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__HDSPSleepStoreServer_getSleepScheduleWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HDSPSleepStoreServer_getSleepScheduleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v3;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep schedule from: %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 sleepScheduleModelManager];
  v9 = [v8 sleepSchedule];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v3;
    v13 = v12;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep schedule from: %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveSleepSchedule:(id)schedule completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = scheduleCopy;
      v24 = 2114;
      v25 = currentClient;
      v14 = v21;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to save current sleep schedule: %{public}@ from: %{public}@", buf, 0x20u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__HDSPSleepStoreServer_saveSleepSchedule_completion___block_invoke;
    v17[3] = &unk_279C7BD10;
    v17[4] = self;
    v18 = scheduleCopy;
    v19 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__HDSPSleepStoreServer_saveSleepSchedule_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v3;
    v8 = v6;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request to save current sleep schedule: %{public}@ from: %{public}@", buf, 0x20u);
  }

  v9 = [*(a1 + 32) environment];
  v10 = [v9 sleepScheduleModelManager];
  v11 = *(a1 + 40);
  v23 = 0;
  v12 = [v10 saveSleepSchedule:v11 error:&v23];
  v13 = v23;

  v14 = HKSPLogForCategory();
  v15 = v14;
  if (!v12 || v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    *buf = 138543618;
    v25 = v22;
    v26 = 2114;
    v27 = v13;
    v19 = v22;
    _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] request received to save current sleep schedule failed: %{public}@", buf, 0x16u);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v18 = *(a1 + 40);
    *buf = 138543874;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v3;
    v19 = v17;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to save current sleep schedule: %{public}@ from: %{public}@", buf, 0x20u);
LABEL_7:
  }

LABEL_9:

  (*(*(a1 + 48) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getSleepSettingsWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep settings from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__HDSPSleepStoreServer_getSleepSettingsWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HDSPSleepStoreServer_getSleepSettingsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v3;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep settings from: %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 sleepScheduleModelManager];
  v9 = [v8 sleepSettings];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v3;
    v13 = v12;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep settings from: %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveSleepSettings:(id)settings completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = settingsCopy;
      v24 = 2114;
      v25 = currentClient;
      v14 = v21;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to save current sleep settings: %{public}@ from: %{public}@", buf, 0x20u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__HDSPSleepStoreServer_saveSleepSettings_completion___block_invoke;
    v17[3] = &unk_279C7BD10;
    v17[4] = self;
    v18 = settingsCopy;
    v19 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__HDSPSleepStoreServer_saveSleepSettings_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v3;
    v8 = v6;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request to save current sleep settings: %{public}@ from: %{public}@", buf, 0x20u);
  }

  v9 = [*(a1 + 32) environment];
  v10 = [v9 sleepScheduleModelManager];
  v11 = *(a1 + 40);
  v23 = 0;
  v12 = [v10 saveSleepSettings:v11 error:&v23];
  v13 = v23;

  v14 = HKSPLogForCategory();
  v15 = v14;
  if (!v12 || v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    *buf = 138543618;
    v25 = v22;
    v26 = 2114;
    v27 = v13;
    v19 = v22;
    _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] request received to save current sleep settings failed: %{public}@", buf, 0x16u);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v18 = *(a1 + 40);
    *buf = 138543874;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v3;
    v19 = v17;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to save current sleep settings: %{public}@ from: %{public}@", buf, 0x20u);
LABEL_7:
  }

LABEL_9:

  (*(*(a1 + 48) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getSleepEventRecordWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep event record from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__HDSPSleepStoreServer_getSleepEventRecordWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HDSPSleepStoreServer_getSleepEventRecordWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v3;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep event record from: %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 sleepScheduleModelManager];
  v9 = [v8 sleepEventRecord];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v3;
    v13 = v12;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep event record from: %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveSleepEventRecord:(id)record completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = recordCopy;
      v24 = 2114;
      v25 = currentClient;
      v14 = v21;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to save current sleep event record: %{public}@ from: %{public}@", buf, 0x20u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HDSPSleepStoreServer_saveSleepEventRecord_completion___block_invoke;
    v17[3] = &unk_279C7BD10;
    v17[4] = self;
    v18 = recordCopy;
    v19 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __56__HDSPSleepStoreServer_saveSleepEventRecord_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    *buf = 138543874;
    v25 = v6;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v3;
    v8 = v6;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request to save current sleep event record: %{public}@ from: %{public}@", buf, 0x20u);
  }

  v9 = [*(a1 + 32) environment];
  v10 = [v9 sleepScheduleModelManager];
  v11 = *(a1 + 40);
  v23 = 0;
  v12 = [v10 saveSleepEventRecord:v11 error:&v23];
  v13 = v23;

  v14 = HKSPLogForCategory();
  v15 = v14;
  if (!v12 || v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    *buf = 138543618;
    v25 = v22;
    v26 = 2114;
    v27 = v13;
    v19 = v22;
    _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] request received to save current sleep event record failed: %{public}@", buf, 0x16u);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v18 = *(a1 + 40);
    *buf = 138543874;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v3;
    v19 = v17;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to save current sleep event record: %{public}@ from: %{public}@", buf, 0x20u);
LABEL_7:
  }

LABEL_9:

  (*(*(a1 + 48) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getSleepScheduleModelWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep schedule model from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__HDSPSleepStoreServer_getSleepScheduleModelWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HDSPSleepStoreServer_getSleepScheduleModelWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v3;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep schedule model from: %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 sleepScheduleModelManager];
  v9 = [v8 sleepScheduleModel];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v3;
    v13 = v12;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep schedule model from: %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)getSleepModeWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep mode on from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__HDSPSleepStoreServer_getSleepModeWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __51__HDSPSleepStoreServer_getSleepModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v3;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep mode on from: %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 sleepModeManager];
  [v8 sleepMode];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromHKSPSleepMode();
    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep mode: %{public}@ from: %{public}@", &v15, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setSleepMode:(int64_t)mode reason:(unint64_t)reason completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = objc_opt_class();
      v20 = v26;
      _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromHKSPSleepMode();
      v18 = NSStringFromHKSPSleepModeChangeReason();
      *buf = 138544130;
      v26 = v15;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = currentClient;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to set sleep mode: %{public}@ (%{public}@) from: %{public}@", buf, 0x2Au);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__HDSPSleepStoreServer_setSleepMode_reason_completion___block_invoke;
    v21[3] = &unk_279C7BD60;
    v21[4] = self;
    modeCopy = mode;
    reasonCopy = reason;
    v22 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v21];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __55__HDSPSleepStoreServer_setSleepMode_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 48);
    v8 = v6;
    v9 = NSStringFromHKSPSleepMode();
    v10 = *(a1 + 56);
    v11 = NSStringFromHKSPSleepModeChangeReason();
    v23 = 138544130;
    v24 = v6;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v3;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request set sleep mode: %{public}@ (%{public}@) from: %{public}@", &v23, 0x2Au);
  }

  v12 = [*(a1 + 32) environment];
  v13 = [v12 sleepModeManager];
  [v13 setSleepMode:*(a1 + 48) reason:*(a1 + 56)];

  v14 = HKSPLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v17 = *(a1 + 48);
    v18 = v16;
    v19 = NSStringFromHKSPSleepMode();
    v20 = *(a1 + 56);
    v21 = NSStringFromHKSPSleepModeChangeReason();
    v23 = 138544130;
    v24 = v16;
    v25 = 2114;
    v26 = v19;
    v27 = 2114;
    v28 = v21;
    v29 = 2114;
    v30 = v3;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to set sleep mode: %{public}@ (%{public}@) from: %{public}@", &v23, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  v22 = *MEMORY[0x277D85DE8];
}

- (void)getSleepScheduleStateWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep schedule state", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HDSPSleepStoreServer_getSleepScheduleStateWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HDSPSleepStoreServer_getSleepScheduleStateWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep schedule state", &v13, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 sleepCoordinator];
  [v6 currentSleepScheduleState];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKSPSleepScheduleState();
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep schedule state: %{public}@", &v13, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)getSleepWidgetStateWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep widget state", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HDSPSleepStoreServer_getSleepWidgetStateWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__HDSPSleepStoreServer_getSleepWidgetStateWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep widget state", &v13, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 sleepWidgetManager];
  [v6 currentSleepWidgetState];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKSPSleepWidgetState();
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep widget state: %{public}@", &v13, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)publishNotificationWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v13 = HKSPLogForCategory();
  v14 = v13;
  if (isDisabled)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = objc_opt_class();
      v18 = v24;
      _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = identifierCopy;
      v16 = v24;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to publish notification: %@", buf, 0x16u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__HDSPSleepStoreServer_publishNotificationWithIdentifier_userInfo_completion___block_invoke;
    v19[3] = &unk_279C7BD88;
    v19[4] = self;
    v20 = identifierCopy;
    v21 = infoCopy;
    v22 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v19];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __78__HDSPSleepStoreServer_publishNotificationWithIdentifier_userInfo_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *buf = 138543618;
    v23 = v4;
    v24 = 2112;
    v25 = v5;
    v6 = v4;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to publish notification: %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = MEMORY[0x277D624D0];
  v9 = *(a1 + 40);
  v10 = [v7 currentDateProvider];
  v11 = v10[2]();
  v12 = [v8 sleepEventWithIdentifier:v9 dueDate:v11 context:*(a1 + 48)];

  v13 = [v7 sleepScheduler];
  v21 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v13 notifyForOverdueEvents:v14];

  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v18 = *(a1 + 40);
    *buf = 138543618;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    v19 = v17;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to publish notification: %@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

- (void)publishWakeUpResultsNotificationWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to publish wake up results notification", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v17 = objc_opt_class();
    v4 = v17;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to publish wake up results notification", buf, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 wakeUpResultsNotificationManager];

  if (v6)
  {
    v7 = [v5 wakeUpResultsNotificationManager];
    v8 = [v7 performImmediateQueryForNotification];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke_307;
    v13[3] = &unk_279C7BDB0;
    v15 = *(a1 + 40);
    v14 = v5;
    v9 = [v8 addCompletionBlock:v13];

    v10 = v15;
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v11 + 16))(v11, 0, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke_307(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 buildNotification];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x277D624D0];
      v6 = [v3 identifier];
      v7 = [*(a1 + 32) currentDateProvider];
      v8 = v7[2]();
      v9 = [v4 userInfo];
      v10 = [v5 sleepEventWithIdentifier:v6 dueDate:v8 context:v9];

      v11 = [*(a1 + 32) sleepScheduler];
      v19[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [v11 notifyForOverdueEvents:v12];

      v13 = *(a1 + 40);
      v14 = [v10 context];
      (*(v13 + 16))(v13, v14, 0);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(*(a1 + 40) + 16);
    v17 = *MEMORY[0x277D85DE8];

    v16();
  }
}

- (void)setLockScreenOverrideState:(int64_t)state userInfo:(id)info completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v12 = HKSPLogForCategory();
  v13 = v12;
  if (isDisabled)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromHKSPSleepLockScreenState();
      *buf = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = infoCopy;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to override lock screen state: %@ (userInfo: %@)", buf, 0x20u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HDSPSleepStoreServer_setLockScreenOverrideState_userInfo_completion___block_invoke;
    v20[3] = &unk_279C7BDD8;
    v20[4] = self;
    stateCopy = state;
    v21 = infoCopy;
    v22 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v20];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __71__HDSPSleepStoreServer_setLockScreenOverrideState_userInfo_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 56);
    v6 = v4;
    v7 = NSStringFromHKSPSleepLockScreenState();
    v23 = 138543618;
    v24 = v4;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request override lock screen state: %@", &v23, 0x16u);
  }

  v8 = [*(a1 + 32) environment];
  v9 = [v8 sleepLockScreenManager];

  if (v9)
  {
    v10 = [v8 sleepLockScreenManager];
    [v10 overrideLockScreenState:*(a1 + 56) userInfo:*(a1 + 40)];
  }

  else
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = objc_opt_class();
      v23 = 138543362;
      v24 = v21;
      v22 = v21;
      _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] lock screen not supported on this device", &v23, 0xCu);
    }

    v12 = *(a1 + 48);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v12 + 16))(v12, 0, v10);
  }

  v13 = HKSPLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = *(a1 + 56);
    v17 = v15;
    v18 = NSStringFromHKSPSleepLockScreenState();
    v23 = 138543618;
    v24 = v15;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request override lock screen state: %@", &v23, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v19 = *MEMORY[0x277D85DE8];
}

- (void)setWidgetOverrideState:(int64_t)state completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v9 = HKSPLogForCategory();
  v10 = v9;
  if (isDisabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPSleepWidgetState();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to override sleep widget state: %@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__HDSPSleepStoreServer_setWidgetOverrideState_completion___block_invoke;
    v17[3] = &unk_279C7BE00;
    v17[4] = self;
    stateCopy = state;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__HDSPSleepStoreServer_setWidgetOverrideState_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 48);
    v6 = v4;
    v7 = NSStringFromHKSPSleepWidgetState();
    v23 = 138543618;
    v24 = v4;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to override sleep widget state: %@", &v23, 0x16u);
  }

  v8 = [*(a1 + 32) environment];
  v9 = [v8 sleepWidgetManager];

  if (v9)
  {
    v10 = [v8 sleepWidgetManager];
    [v10 overrideWidgetState:*(a1 + 48)];
  }

  else
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = objc_opt_class();
      v23 = 138543362;
      v24 = v21;
      v22 = v21;
      _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] widgets not supported on this device", &v23, 0xCu);
    }

    v12 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v12 + 16))(v12, 0, v10);
  }

  v13 = HKSPLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = *(a1 + 48);
    v17 = v15;
    v18 = NSStringFromHKSPSleepWidgetState();
    v23 = 138543618;
    v24 = v15;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to override sleep widget state: %@", &v23, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v19 = *MEMORY[0x277D85DE8];
}

- (void)clearWidgetOverrideWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to clear sleep widget override", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HDSPSleepStoreServer_clearWidgetOverrideWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__HDSPSleepStoreServer_clearWidgetOverrideWithCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v18 = 138543362;
    v19 = objc_opt_class();
    v4 = v19;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request clear sleep widget override", &v18, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 sleepWidgetManager];

  if (v6)
  {
    v7 = [v5 sleepWidgetManager];
    [v7 clearWidgetOverrideState];
  }

  else
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v18 = 138543362;
      v19 = v16;
      v17 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] widgets not supported on this device", &v18, 0xCu);
    }

    v9 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v9 + 16))(v9, 0, v7);
  }

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v18 = 138543362;
    v19 = v12;
    v13 = v12;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to clear sleep widget override", &v18, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)createSleepFocusInState:(unint64_t)state completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v9 = HKSPLogForCategory();
  v10 = v9;
  if (isDisabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPSleepFocusConfigurationState();
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to create sleep focus mode (%{public}@)", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__HDSPSleepStoreServer_createSleepFocusInState_completion___block_invoke;
    v17[3] = &unk_279C7BE00;
    v17[4] = self;
    stateCopy = state;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__HDSPSleepStoreServer_createSleepFocusInState_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 48);
    v6 = v4;
    v7 = NSStringFromHKSPSleepFocusConfigurationState();
    *buf = 138543618;
    v21 = v4;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to create sleep focus mode (%{public}@)", buf, 0x16u);
  }

  v8 = [*(a1 + 32) environment];
  v9 = [v8 sleepModeManager];
  v10 = *(a1 + 48);
  v19 = 0;
  [v9 createFocusModeInState:v10 error:&v19];
  v11 = v19;

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = *(a1 + 48);
    v16 = v14;
    v17 = NSStringFromHKSPSleepFocusConfigurationState();
    *buf = 138543618;
    v21 = v14;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to create sleep focus mode (%{public}@)", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x277D85DE8];
}

- (void)deleteSleepFocusModeWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to delete sleep focus mode", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HDSPSleepStoreServer_deleteSleepFocusModeWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__HDSPSleepStoreServer_deleteSleepFocusModeWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = objc_opt_class();
    v4 = v15;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to delete sleep focus mode", buf, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 sleepModeManager];
  v13 = 0;
  [v6 deleteFocusModeWithError:&v13];
  v7 = v13;

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    *buf = 138543362;
    v15 = v10;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to delete sleep focus mode", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureSleepFocusWithState:(unint64_t)state completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v9 = HKSPLogForCategory();
  v10 = v9;
  if (isDisabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = objc_opt_class();
      v16 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPSleepFocusConfigurationState();
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to configure sleep focus mode (state: %{public}@)", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__HDSPSleepStoreServer_configureSleepFocusWithState_completion___block_invoke;
    v17[3] = &unk_279C7BE00;
    v17[4] = self;
    stateCopy = state;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __64__HDSPSleepStoreServer_configureSleepFocusWithState_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = objc_opt_class();
    v4 = v16;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to configure sleep focus mode", buf, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 sleepModeManager];
  v7 = *(a1 + 48);
  v14 = 0;
  [v6 configureFocusModeWithState:v7 error:&v14];
  v8 = v14;

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    *buf = 138543362;
    v16 = v11;
    v12 = v11;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to configure sleep focus mode", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)confirmAwakeWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to confirm awake from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__HDSPSleepStoreServer_confirmAwakeWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __51__HDSPSleepStoreServer_confirmAwakeWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to confirm awake", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 actionManager];

  [v6 confirmWakeUp:1];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v12 = 138543362;
    v13 = v9;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to confirm awake", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dismissGoodMorningWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to dismiss good morning from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__HDSPSleepStoreServer_dismissGoodMorningWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__HDSPSleepStoreServer_dismissGoodMorningWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to dismiss good morning", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 actionManager];

  [v6 dismissGoodMorning];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v12 = 138543362;
    v13 = v9;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to dismiss good morning", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dismissSleepLockWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = currentClient;
      v11 = v17;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to dismiss sleep lock from: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__HDSPSleepStoreServer_dismissSleepLockWithCompletion___block_invoke;
    v14[3] = &unk_279C7BD38;
    v14[4] = self;
    v15 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v14];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HDSPSleepStoreServer_dismissSleepLockWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to dismiss sleep lock", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 actionManager];

  [v6 dismissSleepLock];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v12 = 138543362;
    v13 = v9;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to dismiss sleep lock", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sleepAlarmWasDismissedOnDate:(id)date source:(unint64_t)source completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = objc_opt_class();
      v20 = v26;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromHKSPAlarmSource();
      *buf = 138544130;
      v26 = v16;
      v27 = 2114;
      v28 = dateCopy;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = currentClient;
      _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received for sleep alarm dismissal on %{public}@ (%{public}@) from: %{public}@", buf, 0x2Au);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__HDSPSleepStoreServer_sleepAlarmWasDismissedOnDate_source_completion___block_invoke;
    v21[3] = &unk_279C7BE28;
    v21[4] = self;
    v22 = dateCopy;
    sourceCopy = source;
    v23 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v21];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __71__HDSPSleepStoreServer_sleepAlarmWasDismissedOnDate_source_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v15 = 138543618;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v6 = v4;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request for sleep alarm dismissal on %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 actionManager];

  [v8 sleepAlarmDismissedOnDate:*(a1 + 40) source:*(a1 + 56)];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v13 = v11;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request for sleep alarm dismissal on %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)sleepAlarmWasSnoozedUntilDate:(id)date source:(unint64_t)source completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = objc_opt_class();
      v20 = v26;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromHKSPAlarmSource();
      *buf = 138544130;
      v26 = v16;
      v27 = 2114;
      v28 = dateCopy;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = currentClient;
      _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received for sleep alarm snooze until %{public}@ (%{public}@) from: %{public}@", buf, 0x2Au);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__HDSPSleepStoreServer_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke;
    v21[3] = &unk_279C7BE28;
    v21[4] = self;
    v22 = dateCopy;
    sourceCopy = source;
    v23 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v21];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __72__HDSPSleepStoreServer_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v15 = 138543618;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v6 = v4;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request for sleep alarm snooze until %{public}@", &v15, 0x16u);
  }

  v7 = [*(a1 + 32) environment];
  v8 = [v7 actionManager];

  [v8 sleepAlarmSnoozedUntilDate:*(a1 + 40) source:*(a1 + 56)];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v13 = v11;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request for sleep alarm snooze until %{public}@", &v15, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)sleepAlarmWasModifiedFromSource:(unint64_t)source completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v16 = v20;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPAlarmSource();
      *buf = 138543874;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = currentClient;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received for sleep alarm modified (%{public}@) from: %{public}@", buf, 0x20u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__HDSPSleepStoreServer_sleepAlarmWasModifiedFromSource_completion___block_invoke;
    v17[3] = &unk_279C7BE50;
    v17[4] = self;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __67__HDSPSleepStoreServer_sleepAlarmWasModifiedFromSource_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request for sleep alarm modified", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) environment];
  v6 = [v5 actionManager];

  [v6 sleepAlarmWasModified];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v12 = 138543362;
    v13 = v9;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request for sleep alarm modified", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSchedule:(id)schedule
{
  v35 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  environment = [(HDSPSleepStoreServer *)self environment];
  currentSource = [environment currentSource];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSchedule___block_invoke;
  v27[3] = &unk_279C7BE78;
  v10 = currentSource;
  v28 = v10;
  v11 = [connectedClients na_firstObjectPassingTest:v27];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138543874;
    v30 = v13;
    v31 = 2114;
    v32 = v10;
    v33 = 2114;
    v34 = scheduleCopy;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] source: %{public}@ didUpdateSleepSchedule: %{public}@", buf, 0x20u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepScheduleSyncAnchor = [syncAnchorContainer incrementSleepScheduleSyncAnchor];

  connectionListener2 = [(HDSPSleepStoreServer *)self connectionListener];
  v23 = MEMORY[0x277D85DD0];
  v24 = scheduleCopy;
  v25 = incrementSleepScheduleSyncAnchor;
  v26 = v11;
  v18 = v11;
  v19 = incrementSleepScheduleSyncAnchor;
  v20 = scheduleCopy;
  v21 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v23];
  [connectionListener2 performRemoteBlockOnClients:&v23 passingTest:v21];

  v22 = *MEMORY[0x277D85DE8];
}

void __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSchedule___block_invoke_310(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = HKSPSleepScheduleWrapWithSyncAnchor();
  v6 = [*(a1 + 48) clientIdentifier];
  [v5 sleepScheduleChanged:v7 clientIdentifier:v6];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSettings:(id)settings
{
  v35 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  environment = [(HDSPSleepStoreServer *)self environment];
  currentSource = [environment currentSource];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke;
  v27[3] = &unk_279C7BE78;
  v10 = currentSource;
  v28 = v10;
  v11 = [connectedClients na_firstObjectPassingTest:v27];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138543874;
    v30 = v13;
    v31 = 2114;
    v32 = v10;
    v33 = 2114;
    v34 = settingsCopy;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] source: %{public}@ didUpdateSleepSettings: %{public}@", buf, 0x20u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepSettingsSyncAnchor = [syncAnchorContainer incrementSleepSettingsSyncAnchor];

  connectionListener2 = [(HDSPSleepStoreServer *)self connectionListener];
  v23 = MEMORY[0x277D85DD0];
  v24 = settingsCopy;
  v25 = incrementSleepSettingsSyncAnchor;
  v26 = v11;
  v18 = v11;
  v19 = incrementSleepSettingsSyncAnchor;
  v20 = settingsCopy;
  v21 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v23];
  [connectionListener2 performRemoteBlockOnClients:&v23 passingTest:v21];

  v22 = *MEMORY[0x277D85DE8];
}

void __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 objectWithSyncAnchor:v4];
  v6 = [*(a1 + 48) clientIdentifier];
  [v5 sleepSettingsChanged:v7 clientIdentifier:v6];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepEventRecord:(id)record
{
  v35 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  environment = [(HDSPSleepStoreServer *)self environment];
  currentSource = [environment currentSource];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepEventRecord___block_invoke;
  v27[3] = &unk_279C7BE78;
  v10 = currentSource;
  v28 = v10;
  v11 = [connectedClients na_firstObjectPassingTest:v27];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138543874;
    v30 = v13;
    v31 = 2114;
    v32 = v10;
    v33 = 2114;
    v34 = recordCopy;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] source: %{public}@ didUpdateSleepEventRecord: %{public}@", buf, 0x20u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepEventRecordSyncAnchor = [syncAnchorContainer incrementSleepEventRecordSyncAnchor];

  connectionListener2 = [(HDSPSleepStoreServer *)self connectionListener];
  v23 = MEMORY[0x277D85DD0];
  v24 = recordCopy;
  v25 = incrementSleepEventRecordSyncAnchor;
  v26 = v11;
  v18 = v11;
  v19 = incrementSleepEventRecordSyncAnchor;
  v20 = recordCopy;
  v21 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v23];
  [connectionListener2 performRemoteBlockOnClients:&v23 passingTest:v21];

  v22 = *MEMORY[0x277D85DE8];
}

void __76__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepEventRecord___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 objectWithSyncAnchor:v4];
  v6 = [*(a1 + 48) clientIdentifier];
  [v5 sleepEventRecordChanged:v7 clientIdentifier:v6];
}

- (void)sleepEventIsDue:(id)due
{
  v21 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = dueCopy;
    v6 = v18;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepEventIsDue: %{public}@", buf, 0x16u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepEventSyncAnchor = [syncAnchorContainer incrementSleepEventSyncAnchor];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  v14 = MEMORY[0x277D85DD0];
  v15 = dueCopy;
  v16 = incrementSleepEventSyncAnchor;
  v10 = incrementSleepEventSyncAnchor;
  v11 = dueCopy;
  v12 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v14];
  [connectionListener performRemoteBlockOnClients:&v14 passingTest:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __40__HDSPSleepStoreServer_sleepEventIsDue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectWithSyncAnchor:v3];
  [v4 sleepEventOccurred:v5];
}

- (id)eventIdentifiers
{
  v7[1] = *MEMORY[0x277D85DE8];
  standardEventIdentifiers = [MEMORY[0x277D624D0] standardEventIdentifiers];
  v7[0] = *MEMORY[0x277D621D8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [standardEventIdentifiers setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKSPSleepScheduleState();
    v13 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138543874;
    v25 = v10;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateDidChange: %{public}@ (%{public}@)", buf, 0x20u);
  }

  if (change != state)
  {
    syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
    incrementSleepScheduleStateSyncAnchor = [syncAnchorContainer incrementSleepScheduleStateSyncAnchor];

    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__HDSPSleepStoreServer_sleepScheduleStateDidChange_previousState_reason___block_invoke;
    v20[3] = &unk_279C7BEF0;
    changeCopy = change;
    reasonCopy = reason;
    v21 = incrementSleepScheduleStateSyncAnchor;
    v17 = incrementSleepScheduleStateSyncAnchor;
    _checkForSuspendedBlock = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock];
    [connectionListener performRemoteBlockOnClients:v20 passingTest:_checkForSuspendedBlock];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __73__HDSPSleepStoreServer_sleepScheduleStateDidChange_previousState_reason___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277D62518];
  v4 = a2;
  v5 = [[v3 alloc] initWithScheduleState:a1[5] changeReason:a1[6] syncAnchor:a1[4]];
  [v4 sleepScheduleStateChanged:v5];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKSPSleepModeChangeReason();
    *buf = 138544130;
    v24 = v10;
    v25 = 2048;
    changeCopy = change;
    v27 = 2048;
    modeCopy = mode;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepModeDidChange: %ld previousMode: %ld reason: %{public}@", buf, 0x2Au);
  }

  if (change != mode)
  {
    syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
    incrementSleepModeSyncAnchor = [syncAnchorContainer incrementSleepModeSyncAnchor];

    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__HDSPSleepStoreServer_sleepModeDidChange_previousMode_reason___block_invoke;
    v19[3] = &unk_279C7BEF0;
    changeCopy2 = change;
    reasonCopy = reason;
    v20 = incrementSleepModeSyncAnchor;
    v16 = incrementSleepModeSyncAnchor;
    _checkForSuspendedBlock = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock];
    [connectionListener performRemoteBlockOnClients:v19 passingTest:_checkForSuspendedBlock];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __63__HDSPSleepStoreServer_sleepModeDidChange_previousMode_reason___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277D624F0];
  v4 = a2;
  v5 = [[v3 alloc] initWithSleepMode:a1[5] changeReason:a1[6] syncAnchor:a1[4]];
  [v4 sleepModeChanged:v5];
}

- (id)_checkForSuspendedBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HDSPSleepStoreServer__checkForSuspendedBlock__block_invoke;
  v4[3] = &unk_279C7BE78;
  v4[4] = self;
  v2 = MEMORY[0x26D64B6C0](v4, a2);

  return v2;
}

uint64_t __47__HDSPSleepStoreServer__checkForSuspendedBlock__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) isProcessSuspended:{objc_msgSend(v3, "processID")}];
  if (v4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v3;
      v7 = v11;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping notification to suspended client: %{public}@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

- (void)_notifyClient:(id)client forMissedMessagesWithSyncAnchorContainer:(id)container
{
  clientCopy = client;
  containerCopy = container;
  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke;
  v20[3] = &unk_279C7BF18;
  v20[4] = self;
  v21 = clientCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_3;
  v18[3] = &unk_279C7BF18;
  v18[4] = self;
  v19 = v21;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_5;
  v16[3] = &unk_279C7BF18;
  v16[4] = self;
  v17 = v19;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_7;
  v14[3] = &unk_279C7BF18;
  v14[4] = self;
  v15 = v17;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_9;
  v12[3] = &unk_279C7BF18;
  v12[4] = self;
  v13 = v15;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_11;
  v10[3] = &unk_279C7BF18;
  v10[4] = self;
  v11 = v13;
  v9 = v13;
  [syncAnchorContainer compareWithContainer:containerCopy sleepScheduleSyncAnchorOutOfDate:v20 sleepSettingsSyncAnchorOutOfDate:v18 sleepEventRecordSyncAnchorOutOfDate:v16 sleepScheduleStateSyncAnchorOutOfDate:v14 sleepModeSyncAnchorOutOfDate:v12 sleepEventSyncAnchorOutOfDate:v10];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_2;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 environment];
  v5 = [v9 sleepScheduleModelManager];
  v6 = [v5 sleepSchedule];
  v7 = *(a1 + 40);
  v8 = HKSPSleepScheduleWrapWithSyncAnchor();
  [v4 sleepScheduleChanged:v8 clientIdentifier:0];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_4;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 environment];
  v5 = [v8 sleepScheduleModelManager];
  v6 = [v5 sleepSettings];
  v7 = [v6 objectWithSyncAnchor:*(a1 + 40)];
  [v4 sleepSettingsChanged:v7 clientIdentifier:0];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_6;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 environment];
  v5 = [v8 sleepScheduleModelManager];
  v6 = [v5 sleepEventRecord];
  v7 = [v6 objectWithSyncAnchor:*(a1 + 40)];
  [v4 sleepEventRecordChanged:v7 clientIdentifier:0];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_8;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D62518];
  v4 = a2;
  v5 = [v3 alloc];
  v8 = [*(a1 + 32) environment];
  v6 = [v8 sleepCoordinator];
  v7 = [v5 initWithScheduleState:objc_msgSend(v6 changeReason:"currentSleepScheduleState") syncAnchor:{6, *(a1 + 40)}];
  [v4 sleepScheduleStateChanged:v7];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_10;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D624F0];
  v4 = a2;
  v5 = [v3 alloc];
  v8 = [*(a1 + 32) environment];
  v6 = [v8 sleepModeManager];
  v7 = [v5 initWithSleepMode:objc_msgSend(v6 changeReason:"sleepMode") syncAnchor:{10, *(a1 + 40)}];
  [v4 sleepModeChanged:v7];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_12;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 environment];
  v5 = [v8 sleepScheduler];
  v6 = [v5 lastStandardSleepEvent];
  v7 = [v6 objectWithSyncAnchor:*(a1 + 40)];
  [v4 sleepEventOccurred:v7];
}

- (void)processNoLongerSuspended:(int)suspended
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke;
  v3[3] = &unk_279C7B958;
  v3[4] = self;
  suspendedCopy = suspended;
  [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v3];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionListener];
  v3 = [v2 connectedClientsWithPID:*(a1 + 40)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2;
  v4[3] = &unk_279C7BF68;
  v4[4] = *(a1 + 32);
  [v3 na_each:v4];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v6 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] asking newly running client to check in: %{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) connectionListener];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_317;
  v10[3] = &unk_279C7BEC8;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  [v7 performRemoteBlock:v10 onClient:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_317(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2_318;
  v6[3] = &unk_279C7BF40;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 clientShouldCheckInWithCompletion:v6];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2_318(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    v8 = v6;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] check in received from %{public}@ with container: %{public}@", &v10, 0x20u);
  }

  [*(a1 + 32) _notifyClient:*(a1 + 48) forMissedMessagesWithSyncAnchorContainer:v3];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)processDidBecomeSuspended:(int)suspended
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke;
  v3[3] = &unk_279C7B958;
  v3[4] = self;
  suspendedCopy = suspended;
  [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v3];
}

void __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionListener];
  v3 = [v2 connectedClientsWithPID:*(a1 + 40)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke_2;
  v4[3] = &unk_279C7BF68;
  v4[4] = *(a1 + 32);
  [v3 na_each:v4];
}

void __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] client did become suspended: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectionListenerDidAddClient:(id)client
{
  processStateManager = self->_processStateManager;
  processID = [client processID];

  [(HDSPProcessStateManager *)processStateManager startMonitoringProcessState:processID];
}

- (void)connectionListenerDidRemoveClient:(id)client
{
  processStateManager = self->_processStateManager;
  processID = [client processID];

  [(HDSPProcessStateManager *)processStateManager stopMonitoringProcessState:processID];
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  v5 = [syncAnchorContainer description];
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v8 = [v3 stringWithFormat:@"Sync Anchor Container: %@\nConnected Clients: %@", v5, connectedClients];

  return v8;
}

- (id)diagnosticInfo
{
  v11[1] = *MEMORY[0x277D85DE8];
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];

  v4 = [connectedClients na_map:&__block_literal_global_326];
  v5 = [v4 componentsJoinedByString:{@", "}];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"none";
  }

  v10 = @"Connected Clients";
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __38__HDSPSleepStoreServer_diagnosticInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 processID];
  v5 = [v3 clientIdentifier];

  v6 = [v5 loggingIdentifier];
  v7 = [v2 stringWithFormat:@"(pid: %ul, id: %@)", v4, v6];

  return v7;
}

@end