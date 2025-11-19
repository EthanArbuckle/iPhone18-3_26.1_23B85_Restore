@interface SMCMNoMovementMonitor
- (SMCMNoMovementMonitor)init;
- (void)didStateUpdate:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)requestLatestStateUpdate;
- (void)setIsMonitoring:(BOOL)a3;
@end

@implementation SMCMNoMovementMonitor

- (SMCMNoMovementMonitor)init
{
  v6.receiver = self;
  v6.super_class = SMCMNoMovementMonitor;
  v2 = [(RTNotifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isMonitoring = 0;
    noMovementManager = v2->_noMovementManager;
    v2->_noMovementManager = 0;
  }

  return v3;
}

- (void)setIsMonitoring:(BOOL)a3
{
  v3 = a3;
  if ([(SMCMNoMovementMonitor *)self isMonitoring]!= a3)
  {
    self->_isMonitoring = v3;
    if (v3)
    {
      v5 = objc_opt_new();
      [(SMCMNoMovementMonitor *)self setNoMovementManager:v5];

      v7 = [(SMCMNoMovementMonitor *)self noMovementManager];
      [v7 setDelegate:self];
    }

    else
    {
      v6 = [(SMCMNoMovementMonitor *)self noMovementManager];
      [v6 setDelegate:0];

      [(SMCMNoMovementMonitor *)self setNoMovementManager:0];
    }
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)SMCMNoMovementStateUpdateNotification];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(SMCMNoMovementMonitor *)self setIsMonitoring:[(RTNotifier *)self getNumberOfObservers:v5]!= 0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[SMCMNoMovementMonitor internalAddObserver:name:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s,unsupported notification, %@", &v9, 0x16u);
    }
  }

  [(SMCMNoMovementMonitor *)self requestLatestStateUpdate];
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)SMCMNoMovementStateUpdateNotification];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(SMCMNoMovementMonitor *)self setIsMonitoring:[(RTNotifier *)self getNumberOfObservers:v5]!= 0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[SMCMNoMovementMonitor internalRemoveObserver:name:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s,unsupported notification, %@", &v9, 0x16u);
    }
  }
}

- (void)requestLatestStateUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SMCMNoMovementMonitor requestLatestStateUpdate]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, requesting state update", &v5, 0xCu);
    }
  }

  v4 = [(SMCMNoMovementMonitor *)self noMovementManager];
  [v4 requestLatestStateUpdate];
}

- (void)didStateUpdate:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SMCMNoMovementMonitor_didStateUpdate___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__SMCMNoMovementMonitor_didStateUpdate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v3 = [[SMCMNoMovementStateUpdate alloc] initWithCMNoMovementStateUpdate:*(a1 + 32)];
    [v2 setState:v3];

    [*(a1 + 40) postNotification:v2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v2 state];
        v6 = 136315394;
        v7 = "[SMCMNoMovementMonitor didStateUpdate:]_block_invoke";
        v8 = 2112;
        v9 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, posted notification with state, %@", &v6, 0x16u);
      }
    }
  }
}

@end