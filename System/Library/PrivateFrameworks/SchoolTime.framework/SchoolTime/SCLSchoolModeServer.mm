@interface SCLSchoolModeServer
- (SCLSchoolModeServer)initWithQueue:(id)queue suppressionManager:(id)manager wakeScheduler:(id)scheduler;
- (SCLState)currentState;
- (void)_scheduleTimerForDate:(id)date;
- (void)addObserver:(id)observer;
- (void)applySchedule:(id)schedule;
- (void)assertionManager:(id)manager didUpdateAssertionsStatus:(unint64_t)status;
- (void)handleLocaleChange;
- (void)handleSignificantTimeChange;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)schedulingEngine:(id)engine didUpdateState:(id)state fromState:(id)fromState nextEvaluationDate:(id)date;
- (void)setActive:(BOOL)active;
- (void)startWithScheduleSettings:(id)settings shouldStartManuallyActive:(BOOL)active;
- (void)timerFired;
@end

@implementation SCLSchoolModeServer

- (SCLSchoolModeServer)initWithQueue:(id)queue suppressionManager:(id)manager wakeScheduler:(id)scheduler
{
  queueCopy = queue;
  managerCopy = manager;
  schedulerCopy = scheduler;
  v21.receiver = self;
  v21.super_class = SCLSchoolModeServer;
  v12 = [(SCLSchoolModeServer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targetQueue, queue);
    objc_storeStrong(&v13->_suppressionManager, manager);
    objc_storeStrong(&v13->_wakeScheduler, scheduler);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = weakObjectsHashTable;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_attr_make_initially_inactive(v16);

    v18 = dispatch_queue_create_with_target_V2("com.apple.schooltime.schoolmodeserver", v17, queueCopy);
    queue = v13->_queue;
    v13->_queue = v18;
  }

  return v13;
}

- (SCLState)currentState
{
  schedulingEngine = [(SCLSchoolModeServer *)self schedulingEngine];
  state = [schedulingEngine state];

  return state;
}

- (void)startWithScheduleSettings:(id)settings shouldStartManuallyActive:(BOOL)active
{
  settingsCopy = settings;
  targetQueue = [(SCLSchoolModeServer *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v8 = scl_framework_log();
  v9 = os_signpost_id_generate(v8);

  v10 = scl_framework_log();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "startWithScheduleSettings", &unk_26485B361, &buf, 2u);
  }

  out_token = -1;
  objc_initWeak(&buf, self);
  queue = [(SCLSchoolModeServer *)self queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __75__SCLSchoolModeServer_startWithScheduleSettings_shouldStartManuallyActive___block_invoke;
  handler[3] = &unk_279B6C4F0;
  objc_copyWeak(&v23, &buf);
  notify_register_dispatch("SignificantTimeChangeNotification", &out_token, queue, handler);

  [(SCLSchoolModeServer *)self setTimeChangeToken:out_token];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleLocaleChange name:*MEMORY[0x277CBE620] object:0];

  suppressionManager = [(SCLSchoolModeServer *)self suppressionManager];
  [suppressionManager addObserver:self];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SCLSchoolModeServer_startWithScheduleSettings_shouldStartManuallyActive___block_invoke_2;
  block[3] = &unk_279B6C540;
  v18 = settingsCopy;
  selfCopy = self;
  activeCopy = active;
  v20 = v9;
  v15 = settingsCopy;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, -1, block);
  dispatch_async(self->_queue, v16);
  dispatch_activate(self->_queue);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&buf);
}

void __75__SCLSchoolModeServer_startWithScheduleSettings_shouldStartManuallyActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSignificantTimeChange];
}

void __75__SCLSchoolModeServer_startWithScheduleSettings_shouldStartManuallyActive___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = scl_framework_log();
  v3 = os_signpost_id_generate(v2);

  v4 = scl_framework_log();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LODWORD(buf.opaque[0]) = 67109120;
    HIDWORD(buf.opaque[0]) = qos_class_self();
    _os_signpost_emit_with_name_impl(&dword_264829000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "School Mode Server Initial Evaluation", "qosClass: 0x%x", &buf, 8u);
  }

  v6 = [SCLSchedulingEngine alloc];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__SCLSchoolModeServer_startWithScheduleSettings_shouldStartManuallyActive___block_invoke_6;
  v22[3] = &unk_279B6C518;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v23 = v7;
  v24 = v8;
  v9 = [(SCLSchedulingEngine *)v6 initWithParametersBlock:v22 shouldStartManuallyActive:*(a1 + 56)];
  [(SCLSchedulingEngine *)v9 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setSchedulingEngine:v9];
  v10 = _os_activity_create(&dword_264829000, "School Mode Server Initial Evaluation", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v10, &buf);
  v11 = scl_framework_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_DEFAULT, "Initial server evaluation", v21, 2u);
  }

  v12 = *(a1 + 40);
  v13 = [(SCLSchedulingEngine *)v9 state];
  v14 = [(SCLSchedulingEngine *)v9 nextEvaluationDate];
  [v12 schedulingEngine:v9 didUpdateState:v13 fromState:0 nextEvaluationDate:v14];

  v15 = scl_framework_log();
  v16 = v15;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v16, OS_SIGNPOST_INTERVAL_END, v3, "School Mode Server Initial Evaluation", &unk_26485B361, v21, 2u);
  }

  v17 = scl_framework_log();
  v18 = v17;
  v19 = *(a1 + 48);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v18, OS_SIGNPOST_INTERVAL_END, v19, "startWithScheduleSettings", &unk_26485B361, v21, 2u);
  }

  os_activity_scope_leave(&buf);
  v20 = *MEMORY[0x277D85DE8];
}

void __75__SCLSchoolModeServer_startWithScheduleSettings_shouldStartManuallyActive___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setScheduleSettings:v3];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  [v4 setCalendar:v5];

  v6 = [MEMORY[0x277CBEAA8] date];
  [v4 setEvaluationDate:v6];

  v7 = *(a1 + 40);
  v8 = [v7 suppressionManager];
  [v7 configureParameters:v4 forSuppressionStatus:{objc_msgSend(v8, "status")}];
}

- (void)invalidate
{
  if ([(SCLSchoolModeServer *)self timeChangeToken]!= -1)
  {
    notify_cancel([(SCLSchoolModeServer *)self timeChangeToken]);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  queue = [(SCLSchoolModeServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SCLSchoolModeServer_invalidate__block_invoke;
  block[3] = &unk_279B6C568;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  targetQueue = [(SCLSchoolModeServer *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  observers = [(SCLSchoolModeServer *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  targetQueue = [(SCLSchoolModeServer *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  observers = [(SCLSchoolModeServer *)self observers];
  [observers removeObject:observerCopy];
}

- (void)setActive:(BOOL)active
{
  queue = [(SCLSchoolModeServer *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SCLSchoolModeServer_setActive___block_invoke;
  v7[3] = &unk_279B6C5B0;
  v7[4] = self;
  activeCopy = active;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
  dispatch_async(queue, v6);
}

void __33__SCLSchoolModeServer_setActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulingEngine];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__SCLSchoolModeServer_setActive___block_invoke_2;
  v3[3] = &__block_descriptor_33_e35_v16__0___SCLSchedulingParameters__8l;
  v4 = *(a1 + 40);
  [v2 updateParametersWithBlock:v3];
}

void __33__SCLSchoolModeServer_setActive___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = a2;
  [v3 setActivationSetting:v2];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v3 setEvaluationDate:v4];
}

- (void)applySchedule:(id)schedule
{
  scheduleCopy = schedule;
  queue = [(SCLSchoolModeServer *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SCLSchoolModeServer_applySchedule___block_invoke;
  v8[3] = &unk_279B6C5D8;
  v8[4] = self;
  v9 = scheduleCopy;
  v6 = scheduleCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(queue, v7);
}

void __37__SCLSchoolModeServer_applySchedule___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulingEngine];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__SCLSchoolModeServer_applySchedule___block_invoke_2;
  v3[3] = &unk_279B6C4A8;
  v4 = *(a1 + 40);
  [v2 updateParametersWithBlock:v3];
}

void __37__SCLSchoolModeServer_applySchedule___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v5 = a2;
  v4 = [v3 date];
  [v5 setEvaluationDate:v4];

  [v5 setScheduleSettings:*(a1 + 32)];
}

- (void)handleSignificantTimeChange
{
  queue = [(SCLSchoolModeServer *)self queue];
  dispatch_assert_queue_V2(queue);

  schedulingEngine = [(SCLSchoolModeServer *)self schedulingEngine];
  [schedulingEngine updateParametersWithBlock:&__block_literal_global_4];
}

void __50__SCLSchoolModeServer_handleSignificantTimeChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v3 setEvaluationDate:v4];

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  [v3 setCalendar:v5];
}

- (void)handleLocaleChange
{
  queue = [(SCLSchoolModeServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCLSchoolModeServer_handleLocaleChange__block_invoke;
  block[3] = &unk_279B6C568;
  block[4] = self;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(queue, v4);
}

void __41__SCLSchoolModeServer_handleLocaleChange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) schedulingEngine];
  [v1 updateParametersWithBlock:&__block_literal_global_12];
}

void __41__SCLSchoolModeServer_handleLocaleChange__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v3 setEvaluationDate:v4];

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  [v3 setCalendar:v5];
}

- (void)timerFired
{
  queue = [(SCLSchoolModeServer *)self queue];
  dispatch_assert_queue_V2(queue);

  schedulingEngine = [(SCLSchoolModeServer *)self schedulingEngine];
  date = [MEMORY[0x277CBEAA8] date];
  [schedulingEngine reevaluateStateAtDate:date];
}

- (void)_scheduleTimerForDate:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (self->_timerSource)
  {
    v5 = scl_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_INFO, "Cancelling timer", buf, 2u);
    }

    dispatch_source_cancel(self->_timerSource);
    timerSource = self->_timerSource;
    self->_timerSource = 0;
  }

  if (dateCopy)
  {
    v7 = os_transaction_create();
    activeTransaction = self->_activeTransaction;
    self->_activeTransaction = v7;

    v9 = scl_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCABB0];
      [dateCopy timeIntervalSinceNow];
      *&v11 = v11;
      *&v11 = roundf(*&v11);
      v12 = [v10 numberWithFloat:v11];
      v13 = self->_activeTransaction;
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_INFO, "Setting timer for duration: %@ with transaction %@", buf, 0x16u);
    }

    [(SCLSchoolModeWakeScheduler *)self->_wakeScheduler scheduleWakeForDate:dateCopy];
    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v15 = self->_timerSource;
    self->_timerSource = v14;

    v16 = self->_timerSource;
    [dateCopy timeIntervalSinceNow];
    v18 = dispatch_walltime(0, (v17 * 1000000000.0));
    dispatch_source_set_timer(v16, v18, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);
    objc_initWeak(buf, self);
    v19 = self->_timerSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__SCLSchoolModeServer__scheduleTimerForDate___block_invoke;
    handler[3] = &unk_279B6C3A8;
    objc_copyWeak(&v23, buf);
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(self->_timerSource);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SCLSchoolModeWakeScheduler *)self->_wakeScheduler cancelWake];
    v20 = self->_activeTransaction;
    self->_activeTransaction = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __45__SCLSchoolModeServer__scheduleTimerForDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timerFired];
}

- (void)schedulingEngine:(id)engine didUpdateState:(id)state fromState:(id)fromState nextEvaluationDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  fromStateCopy = fromState;
  dateCopy = date;
  targetQueue = [(SCLSchoolModeServer *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  [(SCLSchoolModeServer *)self _scheduleTimerForDate:dateCopy];
  if (([stateCopy isEqual:fromStateCopy] & 1) == 0)
  {
    observers = [(SCLSchoolModeServer *)self observers];
    allObjects = [observers allObjects];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = allObjects;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v21 + 1) + 8 * v19++) server:self didUpdateState:stateCopy fromState:{fromStateCopy, v21}];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager didUpdateAssertionsStatus:(unint64_t)status
{
  targetQueue = [(SCLSchoolModeServer *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  schedulingEngine = [(SCLSchoolModeServer *)self schedulingEngine];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SCLSchoolModeServer_assertionManager_didUpdateAssertionsStatus___block_invoke;
  v8[3] = &unk_279B6C620;
  v8[4] = self;
  v8[5] = status;
  [schedulingEngine updateParametersWithBlock:v8];
}

void __66__SCLSchoolModeServer_assertionManager_didUpdateAssertionsStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v5 = a2;
  v4 = [v3 date];
  [v5 setEvaluationDate:v4];

  [*(a1 + 32) configureParameters:v5 forSuppressionStatus:*(a1 + 40)];
}

@end