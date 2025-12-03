@interface PowerUIAlarmSignalMonitor
+ (id)monitorWithDelegate:(id)delegate;
+ (id)monitorWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context;
- (PowerUIAlarmSignalMonitor)initWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context;
- (id)detectedSignals;
- (id)nextLocalAlarm;
- (id)requiredFullChargeDate;
- (void)sourceInformationChangedNotification:(id)notification;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation PowerUIAlarmSignalMonitor

- (PowerUIAlarmSignalMonitor)initWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context
{
  delegateCopy = delegate;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = PowerUIAlarmSignalMonitor;
  v10 = [(PowerUIAlarmSignalMonitor *)&v27 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D296D8]);
    alarmManager = v10->_alarmManager;
    v10->_alarmManager = v11;

    objc_storeStrong(&v10->_delegate, delegate);
    v13 = os_log_create("com.apple.powerui.smartcharging", "signals");
    log = v10->_log;
    v10->_log = v13;

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __71__PowerUIAlarmSignalMonitor_initWithDelegate_trialManager_withContext___block_invoke;
    v24 = &unk_2782D4AC0;
    v15 = managerCopy;
    v25 = v15;
    v26 = v10;
    v16 = MEMORY[0x21CEF8A60](&v21);
    v16[2](v16, v17, v18, v19);
    [v15 addUpdateHandler:{v16, v21, v22, v23, v24}];
  }

  return v10;
}

void __71__PowerUIAlarmSignalMonitor_initWithDelegate_trialManager_withContext___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) doubleFactorForName:@"alarmSignalBuffer"];
  if (v2 > 1.0)
  {
    kBufferBeforeAlarm = *&v2;
  }

  v3 = *(*(a1 + 40) + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = kBufferBeforeAlarm;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "Alarm Buffer: %lf", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)monitorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy trialManager:0 withContext:0];

  return v4;
}

+ (id)monitorWithDelegate:(id)delegate trialManager:(id)manager withContext:(id)context
{
  contextCopy = context;
  managerCopy = manager;
  delegateCopy = delegate;
  v10 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy trialManager:managerCopy withContext:contextCopy];

  return v10;
}

- (void)startMonitoring
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sourceInformationChangedNotification_ name:*MEMORY[0x277D295C8] object:0];
}

- (void)sourceInformationChangedNotification:(id)notification
{
  requiredFullChargeDate = [(PowerUIAlarmSignalMonitor *)self requiredFullChargeDate];
  [(PowerUISignalMonitorDelegate *)self->_delegate monitor:self maySuggestNewFullChargeDeadline:requiredFullChargeDate];
}

- (void)stopMonitoring
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D295C8] object:0];
}

- (id)nextLocalAlarm
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  nextAlarm = [(MTAlarmManager *)self->_alarmManager nextAlarm];
  v4 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__PowerUIAlarmSignalMonitor_nextLocalAlarm__block_invoke;
  v12[3] = &unk_2782D5050;
  v12[4] = self;
  v14 = &v15;
  v5 = v4;
  v13 = v5;
  v6 = [nextAlarm addCompletionBlock:v12];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v16[5];
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Earliest fire date is %@", buf, 0xCu);
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __43__PowerUIAlarmSignalMonitor_nextLocalAlarm__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v5 nextFireDate];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = [*(a1 + 32) log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Unable to obtain next alarm to fire: %@, %@", &v13, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

- (id)requiredFullChargeDate
{
  nextAlarm = [(PowerUIAlarmSignalMonitor *)self nextAlarm];
  v3 = nextAlarm;
  if (nextAlarm && ([nextAlarm timeIntervalSinceNow], v4 >= 0.0))
  {
    distantFuture = [v3 dateByAddingTimeInterval:-*&kBufferBeforeAlarm];
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v6 = distantFuture;

  return v6;
}

- (id)detectedSignals
{
  nextAlarm = [(PowerUIAlarmSignalMonitor *)self nextAlarm];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [nextAlarm isEqualToDate:distantFuture];

  if (v4)
  {
    [MEMORY[0x277CBEA60] array];
  }

  else
  {
    [MEMORY[0x277CBEA60] arrayWithObject:nextAlarm];
  }
  v5 = ;

  return v5;
}

@end