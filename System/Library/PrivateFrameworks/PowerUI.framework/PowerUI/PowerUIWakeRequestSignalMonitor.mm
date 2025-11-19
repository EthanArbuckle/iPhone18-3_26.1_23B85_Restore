@interface PowerUIWakeRequestSignalMonitor
+ (id)monitorWithDelegate:(id)a3;
- (PowerUIWakeRequestSignalMonitor)initWithDelegate:(id)a3;
- (id)nextUserVisibleWakeDate;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation PowerUIWakeRequestSignalMonitor

- (PowerUIWakeRequestSignalMonitor)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = PowerUIWakeRequestSignalMonitor;
  v3 = [(PowerUIWakeRequestSignalMonitor *)&v7 init];
  if (v3)
  {
    v4 = os_log_create("com.apple.powerui.smartcharging", "signals");
    log = v3->_log;
    v3->_log = v4;
  }

  return v3;
}

+ (id)monitorWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:v3];

  return v4;
}

- (id)nextUserVisibleWakeDate
{
  v17 = *MEMORY[0x277D85DE8];
  context = self->_context;
  v4 = [MEMORY[0x277CFE338] keyPathForNextUserVisibleWakeDate];
  v5 = [(_CDContext *)context objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 dateByAddingTimeInterval:15.01];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v7 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/nextUserVisibleWakeRequestor"];
  v8 = [(_CDContext *)self->_context objectForKeyedSubscript:v7];
  v9 = [(PowerUIWakeRequestSignalMonitor *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "%@ requests a wake at %@, requesting", &v13, 0x16u);
  }

  v10 = [v6 dateByAddingTimeInterval:-3600.0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)startMonitoring
{
  if (!self->_context)
  {
    v3 = [MEMORY[0x277CFE318] userContext];
    context = self->_context;
    self->_context = v3;
  }

  v5 = MEMORY[0x277CFE360];
  v6 = [MEMORY[0x277CFE338] keyPathForNextUserVisibleWakeDate];
  v7 = [v5 predicateForChangeAtKeyPath:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__PowerUIWakeRequestSignalMonitor_startMonitoring__block_invoke;
  v10[3] = &unk_2782D4A40;
  v10[4] = self;
  v8 = [MEMORY[0x277CFE350] localNonWakingRegistrationWithIdentifier:@"com.apple.powerui.nextwake" contextualPredicate:v7 callback:v10];
  registration = self->_registration;
  self->_registration = v8;
}

uint64_t __50__PowerUIWakeRequestSignalMonitor_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextUserVisibleWakeDate];
  v3 = [*(a1 + 32) delegate];
  [v3 monitor:*(a1 + 32) maySuggestNewFullChargeDeadline:v2];

  return 1;
}

- (void)stopMonitoring
{
  if (self->_registration)
  {
    [(_CDContext *)self->_context deregisterCallback:?];
    registration = self->_registration;
    self->_registration = 0;
  }
}

@end