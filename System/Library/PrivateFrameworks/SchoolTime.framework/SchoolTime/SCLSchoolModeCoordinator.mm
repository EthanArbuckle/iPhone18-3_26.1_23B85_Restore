@interface SCLSchoolModeCoordinator
- (BOOL)applySchedule:(id)a3 forInitialSync:(BOOL)a4 error:(id *)a5;
- (SCLScheduleSettings)scheduleSettings;
- (SCLSchoolModeCoordinator)initWithConfiguration:(id)a3;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)a3;
- (void)_checkIfClassCDataIsAvailable;
- (void)_classCDataIsAvailable;
- (void)_createSchoolTimeDirectoryIfNeeded;
- (void)_lock_loadPersistentSchedule;
- (void)_lock_updatePersistentSettingsWithBlock:(id)a3;
- (void)_noteHistoryDidUpdate;
- (void)_persistSettings:(id)a3;
- (void)_registerForFirstUnlockIfNeeded;
- (void)_requestRemoteScheduleSettingsIfNeeded;
- (void)activateSettingsSyncCoordinatorWithSettings:(id)a3;
- (void)addClient:(id)a3;
- (void)addUnlockHistoryItem:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deleteHistoryWithCompletion:(id)a3;
- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)a3;
- (void)purgeOldHistoryItems;
- (void)removeClient:(id)a3;
- (void)server:(id)a3 didUpdateState:(id)a4 fromState:(id)a5;
- (void)transportController:(id)a3 didReceiveUnlockHistoryItem:(id)a4;
@end

@implementation SCLSchoolModeCoordinator

- (SCLSchoolModeCoordinator)initWithConfiguration:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SCLSchoolModeCoordinator;
  v5 = [(SCLSchoolModeCoordinator *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v5->_clients;
    v5->_clients = v8;

    v10 = [(SCLSchoolModeCoordinatorConfiguration *)v5->_configuration directoryURL];
    directoryURL = v5->_directoryURL;
    v5->_directoryURL = v10;

    v12 = [(NSURL *)v5->_directoryURL URLByAppendingPathComponent:@"ScheduleSettings.dat"];
    scheduleURL = v5->_scheduleURL;
    v5->_scheduleURL = v12;

    v14 = [[SCLState alloc] initWithActiveState:0 scheduleEnabled:0 inSchedule:0];
    currentState = v5->_currentState;
    v5->_currentState = v14;

    v16 = [[SCLActiveDurationAnalyticsSource alloc] initWithInitialState:v5->_currentState];
    activeDurationAnalyticsSource = v5->_activeDurationAnalyticsSource;
    v5->_activeDurationAnalyticsSource = v16;

    v18 = [v4 server];
    v19 = v18;
    if (v18)
    {
      [v18 addObserver:v5];
    }

    v20 = [(SCLSchoolModeCoordinatorConfiguration *)v5->_configuration transportController];
    [v20 setDelegate:v5];

    [(SCLSchoolModeCoordinator *)v5 _createSchoolTimeDirectoryIfNeeded];
    [(SCLSchoolModeCoordinator *)v5 _registerForFirstUnlockIfNeeded];
    objc_initWeak(&location, v5);
    v21 = [v4 targetQueue];
    objc_copyWeak(&v23, &location);
    v5->_stateHandle = os_state_add_handler();

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __50__SCLSchoolModeCoordinator_initWithConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateDataWithHints:a2];

  return v4;
}

- (void)dealloc
{
  v3 = [(SCLSchoolModeCoordinator *)self _configuration];
  v4 = [v3 server];

  [v4 removeObserver:self];
  [v4 invalidate];
  firstUnlockToken = self->_firstUnlockToken;
  if (firstUnlockToken != -1)
  {
    notify_cancel(firstUnlockToken);
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }

  v6.receiver = self;
  v6.super_class = SCLSchoolModeCoordinator;
  [(SCLSchoolModeCoordinator *)&v6 dealloc];
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)a3
{
  v4 = [(SCLSchoolModeCoordinator *)self configuration];
  v5 = [v4 targetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = [(SCLSchoolModeCoordinator *)self configuration];
  v8 = [v7 NRDevice];
  v9 = [v8 pairingID];
  v10 = [v6 appendObject:v9 withName:@"pairingID"];

  v11 = [(SCLSchoolModeCoordinator *)self configuration];
  v12 = [v11 idsDevice];
  v13 = [v12 uniqueIDOverride];
  v14 = [v6 appendObject:v13 withName:@"IDSDeviceID"];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__SCLSchoolModeCoordinator_stateDataWithHints___block_invoke;
  v20[3] = &unk_279B6C5D8;
  v21 = v6;
  v22 = self;
  v15 = v6;
  [v15 appendBodySectionWithName:0 multilinePrefix:0 block:v20];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SCLSchooolModeCoordinator %p", self];
  v17 = [v15 build];
  v18 = SCLSStateDataWithTitleDescriptionAndHints(v16, v17);

  return v18;
}

void __47__SCLSchoolModeCoordinator_stateDataWithHints___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) persistentSettings];
  v4 = [v3 scheduleSettings];
  v5 = [v2 appendObject:v4 withName:@"schedule"];

  v6 = [*(a1 + 40) configuration];
  v7 = [v6 server];

  if (v7)
  {
    v8 = *(a1 + 32);
    v12 = [*(a1 + 40) configuration];
    v9 = [v12 server];
    v10 = [v9 currentState];
    v11 = [v8 appendObject:v10 withName:@"serverState"];
  }
}

- (void)_createSchoolTimeDirectoryIfNeeded
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_264829000, v0, OS_LOG_TYPE_DEBUG, "Directory at %@ already existed: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_lock_loadPersistentSchedule
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_264829000, v0, v1, "Persistent schedule data doesn't exist: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_requestRemoteScheduleSettingsIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_264829000, v0, v1, "Already requested schedule settings for pairingID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_classCDataIsAvailable
{
  v3 = [(SCLSchoolModeCoordinator *)self configuration];
  v4 = [v3 targetQueue];
  dispatch_assert_queue_V2(v4);

  v5 = scl_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_INFO, "Class C Data is available", v15, 2u);
  }

  self->_hasReceivedFirstUnlock = 1;
  firstUnlockToken = self->_firstUnlockToken;
  if (firstUnlockToken != -1)
  {
    notify_cancel(firstUnlockToken);
    self->_firstUnlockToken = -1;
  }

  [(SCLSchoolModeCoordinator *)self _lock_loadPersistentSchedule];
  v7 = [(SCLSchoolModeCoordinator *)self configuration];
  v8 = [v7 historyStore];
  [v8 loadStore];

  v9 = [(SCLSchoolModeCoordinator *)self persistentSettings];
  v10 = [(SCLSchoolModeCoordinator *)self configuration];
  v11 = [v10 server];

  v12 = [v9 scheduleSettings];
  v13 = [(SCLSchoolModeCoordinator *)self configuration];
  v14 = [v13 sendsRemoteScheduleSettings];

  if (v14)
  {
    [(SCLSchoolModeCoordinator *)self activateSettingsSyncCoordinatorWithSettings:v12];
  }

  [(SCLSchoolModeCoordinator *)self _updateClientsWithSchedule:v12 notify:0];
  [v11 startWithScheduleSettings:v12 shouldStartManuallyActive:{objc_msgSend(v9, "isManualSchoolModeEnabled")}];
  self->_ready = 1;
}

- (void)activateSettingsSyncCoordinatorWithSettings:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeCoordinator *)self configuration];
  v6 = [v5 NRDevice];
  v16 = [v6 pairingID];

  v7 = [(SCLSchoolModeCoordinator *)self configuration];
  v8 = [v7 targetQueue];

  v9 = [[SCLSettingsSyncCoordinator alloc] initWithFileURL:self->_directoryURL pairingID:v16 schedule:v4 queue:v8];
  settingsSyncCoordinator = self->_settingsSyncCoordinator;
  self->_settingsSyncCoordinator = v9;

  v11 = [(SCLSchoolModeCoordinator *)self configuration];
  v12 = [v11 transportController];
  [v12 setSettingsSyncCoordinator:self->_settingsSyncCoordinator];

  v13 = self->_settingsSyncCoordinator;
  v14 = [(SCLSchoolModeCoordinator *)self configuration];
  v15 = [v14 transportController];
  [(SCLSettingsSyncCoordinator *)v13 setTransport:v15];

  [(SCLSettingsSyncCoordinator *)self->_settingsSyncCoordinator activate];
}

- (void)_checkIfClassCDataIsAvailable
{
  v3 = [(SCLSchoolModeCoordinator *)self configuration];
  v4 = [v3 targetQueue];
  dispatch_assert_queue_V2(v4);

  if (!self->_hasReceivedFirstUnlock)
  {
    v5 = MKBDeviceUnlockedSinceBoot();
    if (v5 < 0)
    {
      v9 = scl_framework_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SCLSchoolModeCoordinator *)v9 _checkIfClassCDataIsAvailable];
      }
    }

    else
    {
      v6 = v5;
      v7 = scl_framework_log();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(SCLSchoolModeCoordinator *)v8 _checkIfClassCDataIsAvailable];
        }

        [(SCLSchoolModeCoordinator *)self _classCDataIsAvailable];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Waiting for first unlock.", v10, 2u);
        }
      }
    }
  }
}

- (void)_registerForFirstUnlockIfNeeded
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "Could not register for first unlock notifications: %@", buf, 0xCu);
}

void __59__SCLSchoolModeCoordinator__registerForFirstUnlockIfNeeded__block_invoke(uint64_t a1)
{
  v2 = scl_framework_log();
  v3 = os_signpost_id_generate(v2);

  v4 = scl_framework_log();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SchoolTimeMobileKeybagUnlock", &unk_26485B361, buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SCLSchoolModeCoordinator__registerForFirstUnlockIfNeeded__block_invoke_41;
  block[3] = &unk_279B6C568;
  v7 = WeakRetained;
  v12 = v7;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(*(a1 + 32), v8);
  v9 = scl_framework_log();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v10, OS_SIGNPOST_INTERVAL_END, v3, "SchoolTimeMobileKeybagUnlock", &unk_26485B361, buf, 2u);
  }
}

void __59__SCLSchoolModeCoordinator__registerForFirstUnlockIfNeeded__block_invoke_41(uint64_t a1)
{
  v2 = scl_framework_log();
  v3 = os_signpost_id_generate(v2);

  v4 = scl_framework_log();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SchoolTimeClassCAvailable", &unk_26485B361, buf, 2u);
  }

  [*(a1 + 32) _classCDataIsAvailable];
  v6 = scl_framework_log();
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v7, OS_SIGNPOST_INTERVAL_END, v3, "SchoolTimeClassCAvailable", &unk_26485B361, v8, 2u);
  }
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeCoordinator *)self configuration];
  v6 = [v5 targetQueue];
  dispatch_assert_queue_V2(v6);

  [v4 setCoordinator:self];
  [(SCLSchoolModeCoordinator *)self _checkIfClassCDataIsAvailable];
  v7 = [(SCLSchoolModeCoordinator *)self clients];
  [v7 addObject:v4];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeCoordinator *)self configuration];
  v6 = [v5 targetQueue];
  dispatch_assert_queue_V2(v6);

  [v4 setCoordinator:0];
  v7 = [(SCLSchoolModeCoordinator *)self clients];
  [v7 removeObject:v4];
}

- (BOOL)applySchedule:(id)a3 forInitialSync:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v42[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(SCLSchoolModeCoordinator *)self configuration];
  v10 = [v9 targetQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [v8 copy];
  if (self->_hasReceivedFirstUnlock)
  {
    if (v6 && (-[SCLPersistentSettings scheduleSettings](self->_persistentSettings, "scheduleSettings"), v12 = objc_claimAutoreleasedReturnValue(), [v12 schedule], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isMemberOfClass:", objc_opt_class()), v13, v12, (v14 & 1) == 0))
    {
      if (a5)
      {
        v29 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Cannot overwrite existing schedule for initial sync.";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v26 = v29;
        v27 = 7;
        goto LABEL_17;
      }
    }

    else
    {
      v15 = [v11 schedule];
      v16 = [v15 isValid];

      if (v16)
      {
        v17 = scl_persistence_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [SCLSchoolModeCoordinator applySchedule:forInitialSync:error:];
        }

        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __63__SCLSchoolModeCoordinator_applySchedule_forInitialSync_error___block_invoke;
        v35 = &unk_279B6C810;
        v18 = v11;
        v36 = v18;
        [(SCLSchoolModeCoordinator *)self _lock_updatePersistentSettingsWithBlock:&v32];
        v19 = [(SCLSchoolModeCoordinator *)self server:v32];
        [v19 applySchedule:v18];

        v20 = [(SCLSchoolModeCoordinator *)self configuration];
        v21 = [v20 sendsRemoteScheduleSettings];

        if (v21 && !v6)
        {
          v22 = [(SCLSchoolModeCoordinator *)self settingsSyncCoordinator];
          [v22 applySchedule:v18];
        }

        v23 = 1;
        [(SCLSchoolModeCoordinator *)self _updateClientsWithSchedule:v18 notify:1];
        v24 = v36;
        goto LABEL_18;
      }

      if (a5)
      {
        v28 = MEMORY[0x277CCA9B8];
        v37 = *MEMORY[0x277CCA450];
        v38 = @"The schedule is invalid";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v26 = v28;
        v27 = 3;
        goto LABEL_17;
      }
    }

LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  if (!a5)
  {
    goto LABEL_19;
  }

  v25 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42[0] = @"Schedule cannot be set before first unlock.";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v26 = v25;
  v27 = 6;
LABEL_17:
  [v26 errorWithDomain:@"com.apple.schooltime" code:v27 userInfo:v24];
  *a5 = v23 = 0;
LABEL_18:

LABEL_20:
  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)addUnlockHistoryItem:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SCLSchoolModeCoordinator *)self configuration];
  v8 = [v7 targetQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SCLSchoolModeCoordinator *)self historyStore];
  v10 = [v9 insertItem:v13];

  v6[2](v6, v10, 0);
  [(SCLSchoolModeCoordinator *)self _noteHistoryDidUpdate];
  v11 = [(SCLSchoolModeCoordinator *)self configuration];
  LODWORD(v9) = [v11 sendsRemoteHistoryItems];

  if (v9)
  {
    v12 = [(SCLSchoolModeCoordinator *)self transportController];
    [v12 addUnlockHistoryItem:v13];
  }
}

- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeCoordinator *)self configuration];
  v6 = [v5 targetQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SCLSchoolModeCoordinator *)self historyStore];
  v8 = [v7 recentHistoryItems];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;
  v4[2](v4);
}

id __52__SCLSchoolModeCoordinator_setActive_options_error___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"isAltAccount";
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BB28]];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
  v9[1] = @"scheduleEnabled";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isScheduleEnabled")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)deleteHistoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeCoordinator *)self configuration];
  v6 = [v5 targetQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SCLSchoolModeCoordinator *)self historyStore];
  v10 = 0;
  v8 = [v7 deleteHistory:&v10];
  v9 = v10;

  v4[2](v4, v8, v9);
  [(SCLSchoolModeCoordinator *)self _noteHistoryDidUpdate];
}

- (void)purgeOldHistoryItems
{
  v3 = [(SCLSchoolModeCoordinator *)self configuration];
  v4 = [v3 targetQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SCLSchoolModeCoordinator *)self historyStore];
  [v5 purgeOldItems];
}

- (void)_noteHistoryDidUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SCLSchoolModeCoordinator *)self configuration];
  v4 = [v3 targetQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(NSMutableSet *)self->_clients copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) unlockHistoryDidChange];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_lock_updatePersistentSettingsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SCLSchoolModeCoordinator *)self configuration];
  v6 = [v5 targetQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SCLSchoolModeCoordinator *)self persistentSettings];
  v8 = [v7 copy];

  v4[2](v4, v8);
  v9 = [(SCLSchoolModeCoordinator *)self persistentSettings];
  LOBYTE(v7) = [(SCLPersistentSettings *)v8 isEqual:v9];

  if ((v7 & 1) == 0)
  {
    [(SCLSchoolModeCoordinator *)self _persistSettings:v8];
  }

  persistentSettings = self->_persistentSettings;
  self->_persistentSettings = v8;
}

- (void)_persistSettings:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
  v6 = v13;
  v7 = scl_persistence_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SCLSchoolModeCoordinator *)v4 _persistSettings:v7];
  }

  if (!v5)
  {
    v11 = scl_persistence_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeCoordinator _persistSettings:];
    }

    v10 = v6;
    goto LABEL_10;
  }

  scheduleURL = self->_scheduleURL;
  v12 = v6;
  v9 = [v5 writeToURL:scheduleURL options:1073741825 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = scl_persistence_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeCoordinator _persistSettings:];
    }

LABEL_10:
  }
}

- (void)server:(id)a3 didUpdateState:(id)a4 fromState:(id)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(SCLSchoolModeCoordinator *)self configuration];
  v11 = [v10 targetQueue];
  dispatch_assert_queue_V2(v11);

  objc_storeStrong(&self->_currentState, a4);
  v12 = [(SCLSchoolModeCoordinator *)self clients];
  v13 = [v12 copy];

  v14 = [(SCLSchoolModeCoordinator *)self pendingUnlockItem];
  if (v14)
  {
  }

  else if (SCLIsStateTransitionStartOfUnlockPeriod(v9, v8))
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    v17 = [(SCLPersistentSettings *)self->_persistentSettings scheduleSettings];
    v18 = [v17 recurrenceForActiveScheduleOnOrAfterDate:v15 calendar:v16];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 timeInterval];
      v21 = [v20 startTime];

      [v19 timeInterval];
      v22 = v66 = v17;
      v23 = [v22 endTime];

      v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 duration:0.0];
      [MEMORY[0x277CBEBB0] localTimeZone];
      v25 = v64 = v15;
      v26 = [SCLUnlockHistoryItem alloc];
      v63 = v19;
      v27 = v21;
      v28 = v21;
      v29 = v23;
      v30 = [(SCLUnlockHistoryItem *)v26 initWithInterval:v24 calendar:v16 timeZone:v25 startTime:v28 endTime:v23];
      v31 = v16;
      v32 = v30;
      [(SCLSchoolModeCoordinator *)self setPendingUnlockItem:v30];

      v16 = v31;
      v15 = v64;

      v17 = v66;
      v19 = v63;
    }

    else
    {
      v50 = scl_framework_log();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        [v17 schedule];
        v60 = v59 = v15;
        [v60 recurrences];
        v68 = v17;
        v62 = v61 = v16;
        *buf = 138412802;
        v78 = v59;
        v79 = 2112;
        v80 = v61;
        v81 = 2112;
        v82 = v62;
        _os_log_fault_impl(&dword_264829000, v50, OS_LOG_TYPE_FAULT, "Failed to find active schedule recurrence for unlock period at date %@ in calendar %@: %@", buf, 0x20u);

        v15 = v59;
        v16 = v61;
        v17 = v68;
      }
    }

LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

  v33 = [(SCLSchoolModeCoordinator *)self pendingUnlockItem];
  if (!v33)
  {
    goto LABEL_16;
  }

  v34 = SCLIsStateTransitionEndOfUnlockPeriod(v9, v8);

  if (!v34)
  {
    goto LABEL_15;
  }

  v35 = [(SCLSchoolModeCoordinator *)self pendingUnlockItem];
  v36 = [MEMORY[0x277CBEAA8] date];
  v37 = [v35 unlockedInterval];
  v38 = [v37 startDate];
  [v36 timeIntervalSinceDate:v38];
  v40 = v39;

  if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = objc_alloc(MEMORY[0x277CCA970]);
  v42 = [v35 unlockedInterval];
  v43 = [v42 startDate];
  v67 = [v41 initWithStartDate:v43 duration:v40];

  v44 = [SCLUnlockHistoryItem alloc];
  v65 = [v35 calendar];
  v45 = [v35 timeZone];
  v46 = [v35 scheduleStartTime];
  [v35 scheduleEndTime];
  v47 = v8;
  v49 = v48 = v13;
  v33 = [(SCLUnlockHistoryItem *)v44 initWithInterval:v67 calendar:v65 timeZone:v45 startTime:v46 endTime:v49];

  v13 = v48;
  v8 = v47;

  [(SCLSchoolModeCoordinator *)self setPendingUnlockItem:0];
LABEL_16:
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __60__SCLSchoolModeCoordinator_server_didUpdateState_fromState___block_invoke;
  v74[3] = &unk_279B6C810;
  v51 = v8;
  v75 = v51;
  [(SCLSchoolModeCoordinator *)self _lock_updatePersistentSettingsWithBlock:v74];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v52 = v13;
  v53 = [v52 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v71;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v71 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [*(*(&v70 + 1) + 8 * i) didUpdateState:v51 fromState:v9];
      }

      v54 = [v52 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v54);
  }

  if (v33)
  {
    [(SCLSchoolModeCoordinator *)self addUnlockHistoryItem:v33 completion:&__block_literal_global_7];
    v69 = v33;
    AnalyticsSendEventLazy();
  }

  v57 = [(SCLSchoolModeCoordinator *)self activeDurationAnalyticsSource];
  [v57 setCurrentState:v51];

  v58 = *MEMORY[0x277D85DE8];
}

void __60__SCLSchoolModeCoordinator_server_didUpdateState_fromState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) isActive])
  {
    v3 = [*(a1 + 32) isInSchedule] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  [v4 setManualSchoolModeEnabled:v3];
}

id __60__SCLSchoolModeCoordinator_server_didUpdateState_fromState___block_invoke_3(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"UnlockDuration";
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) unlockedInterval];
  [v2 duration];
  *&v3 = v3;
  *&v3 = roundf(*&v3);
  v4 = [v1 numberWithFloat:v3];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (SCLScheduleSettings)scheduleSettings
{
  v3 = [(SCLSchoolModeCoordinator *)self configuration];
  v4 = [v3 targetQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SCLPersistentSettings *)self->_persistentSettings scheduleSettings];
  v6 = [v5 copy];

  return v6;
}

- (void)transportController:(id)a3 didReceiveUnlockHistoryItem:(id)a4
{
  v5 = a4;
  v6 = [(SCLSchoolModeCoordinator *)self configuration];
  v7 = [v6 targetQueue];
  dispatch_assert_queue_V2(v7);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke;
  v9[3] = &unk_279B6C888;
  v10 = v5;
  v8 = v5;
  [(SCLSchoolModeCoordinator *)self addUnlockHistoryItem:v8 completion:v9];
}

void __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = scl_transport_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_2(a1, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)applySchedule:forInitialSync:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_264829000, v0, v1, "Apply schedule: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_persistSettings:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 isManualSchoolModeEnabled];
  v5 = [a1 scheduleSettings];
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_264829000, a2, OS_LOG_TYPE_DEBUG, "Persist settings - manualSchoolModeEnabled: %{BOOL}u; schedule: %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_persistSettings:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to write data for schedule: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_persistSettings:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_264829000, v0, v1, "Failed to create data for settings: %@ %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transportController:didReceiveSchedule:forInitialSync:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_264829000, v0, v1, "Failed to apply schedule %@ from remote source with error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transportController:didReceiveSchedule:forInitialSync:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_264829000, v0, v1, "Applied remote schedule: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to add incoming remote history item: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SCLSchoolModeCoordinator_transportController_didReceiveUnlockHistoryItem___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_2(&dword_264829000, a2, a3, "Added remote history item: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end