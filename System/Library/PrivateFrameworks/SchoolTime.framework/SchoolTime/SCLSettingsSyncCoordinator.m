@interface SCLSettingsSyncCoordinator
- (SCLSettingsSyncCoordinator)initWithFileURL:(id)a3 pairingID:(id)a4 schedule:(id)a5 queue:(id)a6;
- (SCLSettingsSyncTransport)transport;
- (void)activate;
- (void)applySchedule:(id)a3;
- (void)beginActivity:(id)a3;
- (void)cancelCommitTimerForStateMachine:(id)a3;
- (void)cancelRetryActivityForStateMachine:(id)a3;
- (void)commitTimerFired;
- (void)didDeliverMessageWithIdentifier:(id)a3;
- (void)identifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5;
- (void)noteSignificantUserInteractionOccured;
- (void)performSyncForStateMachine:(id)a3;
- (void)registerActivityWithCriteria:(id)a3;
- (void)stateMachine:(id)a3 didTransitionFromState:(id)a4 toState:(id)a5;
- (void)stateMachine:(id)a3 scheduleCommitTimerWithInterval:(double)a4;
- (void)stateMachine:(id)a3 scheduleRetryWithActivityCriteria:(id)a4;
@end

@implementation SCLSettingsSyncCoordinator

- (SCLSettingsSyncCoordinator)initWithFileURL:(id)a3 pairingID:(id)a4 schedule:(id)a5 queue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = SCLSettingsSyncCoordinator;
  v14 = [(SCLSettingsSyncCoordinator *)&v26 init];
  if (v14)
  {
    v15 = [v10 URLByAppendingPathComponent:@"SettingsSyncContext.plist"];
    contextURL = v14->_contextURL;
    v14->_contextURL = v15;

    objc_storeStrong(&v14->_schedule, a5);
    objc_storeStrong(&v14->_queue, a6);
    v17 = MEMORY[0x277CCACA8];
    v18 = [v11 UUIDString];
    v19 = [v17 stringWithFormat:@"com.apple.schooltimed.settingssync-%@", v18];
    xpcActivityName = v14->_xpcActivityName;
    v14->_xpcActivityName = v19;

    v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v14->_contextURL];
    if (v21)
    {
      v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v21 error:0];
    }

    else
    {
      v22 = 0;
    }

    v23 = [[SCLSettingsSyncStateMachine alloc] initWithContext:v22];
    stateMachine = v14->_stateMachine;
    v14->_stateMachine = v23;

    [(SCLSettingsSyncStateMachine *)v14->_stateMachine setDelegate:v14];
    [(SCLSettingsSyncCoordinator *)v14 registerActivityWithCriteria:*MEMORY[0x277D86238]];
  }

  return v14;
}

- (void)activate
{
  v2 = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [v2 activate];
}

- (void)applySchedule:(id)a3
{
  v4 = a3;
  v5 = [(SCLSettingsSyncCoordinator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 copy];
  schedule = self->_schedule;
  self->_schedule = v6;

  v8 = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [v8 settingsDidChange];
}

- (void)noteSignificantUserInteractionOccured
{
  v3 = [(SCLSettingsSyncCoordinator *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [v4 significantUserInteractionOccurred];
}

- (void)commitTimerFired
{
  v3 = [(SCLSettingsSyncCoordinator *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SCLSettingsSyncCoordinator *)self timerSource];
  dispatch_source_cancel(v4);

  [(SCLSettingsSyncCoordinator *)self setTimerSource:0];
  v5 = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [v5 commitSettings];
}

- (void)identifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v11 = a5;
  v8 = a3;
  v9 = [(SCLSettingsSyncCoordinator *)self stateMachine];
  v10 = v9;
  if (v5)
  {
    [v9 messageDidSend:v8];
  }

  else
  {
    [v9 message:v8 failedWithError:v11];
  }
}

- (void)didDeliverMessageWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [v5 messageWasDelivered:v4];
}

- (void)beginActivity:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_activity_create(&dword_264829000, "Settings Sync Activity", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = scl_transport_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "Begin sync activity %@", buf, 0xCu);
  }

  if (!xpc_activity_set_state(v4, 4))
  {
    v8 = scl_persistence_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
      [(SCLSettingsSyncCoordinator *)v9 beginActivity:buf, v8];
    }
  }

  v10 = [(SCLSettingsSyncCoordinator *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke;
  v13[3] = &unk_279B6C5D8;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  dispatch_async(v10, v13);

  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x277D85DE8];
}

void __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) stateMachine];
  [v2 xpcActivityStarted];

  if (!xpc_activity_set_state(*(v1 + 8), 5))
  {
    v3 = scl_transport_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke_cold_1(v1, v3);
    }
  }
}

- (void)stateMachine:(id)a3 didTransitionFromState:(id)a4 toState:(id)a5
{
  v6 = MEMORY[0x277CCAAB0];
  v7 = [a3 context];
  v16 = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v16];
  v9 = v16;

  if (v9)
  {
    v10 = scl_transport_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [SCLSettingsSyncCoordinator stateMachine:v9 didTransitionFromState:v10 toState:?];
    }
  }

  else
  {
    v11 = [(SCLSettingsSyncCoordinator *)self contextURL];
    v15 = 0;
    v12 = [v8 writeToURL:v11 options:0x10000000 error:&v15];
    v9 = v15;

    v13 = scl_transport_log();
    v10 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_264829000, v10, OS_LOG_TYPE_INFO, "Saved state machine context", v14, 2u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [SCLSettingsSyncCoordinator stateMachine:v9 didTransitionFromState:v10 toState:?];
    }
  }
}

- (void)stateMachine:(id)a3 scheduleCommitTimerWithInterval:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = scl_persistence_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Sync coordinator start timer: %@", buf, 0xCu);
  }

  v9 = [(SCLSettingsSyncCoordinator *)self timerSource];

  if (v9)
  {
    v10 = [(SCLSettingsSyncCoordinator *)self timerSource];
    dispatch_source_cancel(v10);

    [(SCLSettingsSyncCoordinator *)self setTimerSource:0];
  }

  v11 = [(SCLSettingsSyncCoordinator *)self timerSource];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = [(SCLSettingsSyncCoordinator *)self queue];
    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
    [(SCLSettingsSyncCoordinator *)self setTimerSource:v14];
  }

  v15 = [(SCLSettingsSyncCoordinator *)self timerSource];
  v16 = dispatch_walltime(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);

  objc_initWeak(buf, self);
  v17 = [(SCLSettingsSyncCoordinator *)self timerSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __75__SCLSettingsSyncCoordinator_stateMachine_scheduleCommitTimerWithInterval___block_invoke;
  handler[3] = &unk_279B6C3A8;
  objc_copyWeak(&v21, buf);
  dispatch_source_set_event_handler(v17, handler);

  v18 = [(SCLSettingsSyncCoordinator *)self timerSource];
  dispatch_resume(v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __75__SCLSettingsSyncCoordinator_stateMachine_scheduleCommitTimerWithInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained commitTimerFired];
}

- (void)cancelCommitTimerForStateMachine:(id)a3
{
  v4 = scl_persistence_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Sync coordinator cancel tiemr", v7, 2u);
  }

  v5 = [(SCLSettingsSyncCoordinator *)self timerSource];

  if (v5)
  {
    v6 = [(SCLSettingsSyncCoordinator *)self timerSource];
    dispatch_source_cancel(v6);
  }
}

- (void)performSyncForStateMachine:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_activity_create(&dword_264829000, "Perform Settings Sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = scl_persistence_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "Sync coordinator perform sync", buf, 2u);
  }

  v7 = [(SCLSettingsSyncCoordinator *)self transport];
  v8 = [(SCLSettingsSyncCoordinator *)self schedule];
  v16 = 0;
  v17 = 0;
  v9 = [v7 sendSchedule:v8 identifier:&v17 error:&v16];
  v10 = v17;
  v11 = v16;

  if (v9)
  {
    v12 = scl_transport_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_264829000, v12, OS_LOG_TYPE_DEFAULT, "Sent schedule settings with identifier %@", buf, 0xCu);
    }

    v13 = [(SCLSettingsSyncCoordinator *)self stateMachine];
    [v13 didEnqueueMessage:v10];
  }

  else
  {
    v14 = scl_transport_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "Failed to send schedule settings with error: %@", buf, 0xCu);
    }

    v13 = [(SCLSettingsSyncCoordinator *)self stateMachine];
    [v13 enqueueFailedWithError:v11];
  }

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelRetryActivityForStateMachine:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = scl_persistence_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Sync coordinator cancel retry activity: %@", &v9, 0xCu);
  }

  v6 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
  v7 = [v6 cStringUsingEncoding:4];

  xpc_activity_unregister(v7);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(id)a3 scheduleRetryWithActivityCriteria:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = scl_persistence_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "Sync coordinator schedule retry activity %@", &v8, 0xCu);
  }

  [(SCLSettingsSyncCoordinator *)self registerActivityWithCriteria:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerActivityWithCriteria:(id)a3
{
  v4 = a3;
  v5 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
  objc_initWeak(&location, self);
  v6 = [v5 cStringUsingEncoding:4];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke;
  handler[3] = &unk_279B6CAB8;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  xpc_activity_register(v6, v4, handler);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!xpc_activity_get_state(v3))
  {
    v5 = xpc_activity_copy_criteria(v3);
    if (v5)
    {
      goto LABEL_13;
    }

    v6 = scl_transport_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "No existing activity for checkin %@", &v12, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginActivity:v3];
    goto LABEL_13;
  }

  v8 = scl_transport_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_1(a1, v8, v9);
  }

  if (!xpc_activity_set_state(v3, 5))
  {
    v6 = scl_transport_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_2(a1, v6, v10);
    }

    goto LABEL_12;
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

- (SCLSettingsSyncTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (void)beginActivity:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a3, a3, "Failed to move activity %@ to CONTINUE state", a2);
}

void __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*a1 xpcActivityName];
  v6 = 138412290;
  v7 = v3;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a2, v4, "Failed to move activity %@ to DONE state", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(uint64_t)a1 didTransitionFromState:(NSObject *)a2 toState:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_264829000, a2, OS_LOG_TYPE_FAULT, "Could not generate data for state machine context: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(uint64_t)a1 didTransitionFromState:(NSObject *)a2 toState:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_264829000, a2, OS_LOG_TYPE_FAULT, "Could not save state machine context: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a2, a3, "Could not start activity %@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a2, a3, "Could not end %@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

@end