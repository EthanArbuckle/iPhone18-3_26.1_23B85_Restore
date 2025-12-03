@interface SOClockAlarmManager
+ (void)warmUp;
- (SOClockAlarmManager)init;
- (SOClockAlarmManager)initWithInstanceContext:(id)context;
- (id)_registeredObservations;
- (id)addAlarm:(id)alarm;
- (id)alarms;
- (id)dismissAlarmWithIdentifier:(id)identifier;
- (id)removeAlarm:(id)alarm;
- (id)updateAlarm:(id)alarm;
- (void)addHandler:(id)handler forEvent:(int64_t)event;
- (void)checkIn;
- (void)removeHandlerForEvent:(int64_t)event;
@end

@implementation SOClockAlarmManager

- (id)dismissAlarmWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockAlarmManager dismissAlarmWithIdentifier:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager dismissAlarmWithIdentifier:identifierCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)removeAlarm:(id)alarm
{
  v12 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockAlarmManager removeAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager removeAlarm:alarmCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)updateAlarm:(id)alarm
{
  v12 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockAlarmManager updateAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager updateAlarm:alarmCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)addAlarm:(id)alarm
{
  v12 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockAlarmManager addAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager addAlarm:alarmCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)alarms
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SOClockAlarmManager alarms]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    mtAlarmManager = 0;
  }

  else
  {
    mtAlarmManager = self->_mtAlarmManager;
    if (mtAlarmManager)
    {
      mtAlarmManager = [mtAlarmManager alarms];
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return mtAlarmManager;
}

- (void)removeHandlerForEvent:(int64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = AFClockAlarmManagerEventGetName();
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[SOClockAlarmManager removeHandlerForEvent:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s event = %@", &v12, 0x16u);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    _registeredObservations = [(SOClockAlarmManager *)self _registeredObservations];
    v7 = [_registeredObservations objectForKey:v4];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = defaultCenter;
    if (v7)
    {
      [defaultCenter removeObserver:v7];
      _registeredObservations2 = [(SOClockAlarmManager *)self _registeredObservations];
      [_registeredObservations2 removeObjectForKey:v4];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addHandler:(id)handler forEvent:(int64_t)event
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = AFClockAlarmManagerEventGetName();
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[SOClockAlarmManager addHandler:forEvent:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s event = %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__SOClockAlarmManager_addHandler_forEvent___block_invoke;
  v20[3] = &unk_279C3D690;
  v9 = handlerCopy;
  v21 = v9;
  v10 = MEMORY[0x26D61D070](v20);
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    _registeredObservations = [(SOClockAlarmManager *)self _registeredObservations];
    v12 = [_registeredObservations objectForKey:v7];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = defaultCenter;
    if (v12)
    {
      [defaultCenter removeObserver:v12];
    }

    if ((event - 1) <= 7)
    {
      v15 = (*off_279C3CF80[event - 1])();
      if (v15)
      {
        v16 = v15;
        v17 = [v14 addObserverForName:v15 object:self->_mtAlarmManager queue:0 usingBlock:v10];
        _registeredObservations2 = [(SOClockAlarmManager *)self _registeredObservations];
        [_registeredObservations2 setObject:v17 forKey:v7];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __43__SOClockAlarmManager_addHandler_forEvent___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *v13 = 136315394;
    *&v13[4] = "[SOClockAlarmManager addHandler:forEvent:]_block_invoke";
    *&v13[12] = 2112;
    *&v13[14] = v3;
    _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s notification = %@", v13, 0x16u);
  }

  v5 = [v3 userInfo];
  v6 = getMTAlarmManagerAlarmsKey();
  v7 = [v5 objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MTAlarmClass = getMTAlarmClass();
    *v13 = MEMORY[0x277D85DD0];
    *&v13[8] = 3221225472;
    *&v13[16] = ___SOClockAlarmManagerGetMTAlarmsFromNotification_block_invoke;
    v14 = &__block_descriptor_40_e24_B32__0__MTAlarm_8Q16_B24lu32l8;
    v15 = MTAlarmClass;
    v9 = [v7 indexesOfObjectsPassingTest:v13];
    v10 = [v7 objectsAtIndexes:v9];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = SOClockAlarmCreateFromMTAlarms(v10);
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)checkIn
{
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    mtAlarmManager = self->_mtAlarmManager;
    if (mtAlarmManager)
    {

      [(MTAlarmManager *)mtAlarmManager checkIn];
    }
  }
}

- (SOClockAlarmManager)initWithInstanceContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = SOClockAlarmManager;
  v5 = [(SOClockAlarmManager *)&v18 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  if (contextCopy)
  {
    defaultContext = contextCopy;
  }

  else
  {
    defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  }

  instanceContext = v5->_instanceContext;
  v5->_instanceContext = defaultContext;

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[SOClockAlarmManager initWithInstanceContext:]";
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_26858F000, v9, OS_LOG_TYPE_INFO, "%s instanceContext = %@", buf, 0x16u);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    goto LABEL_11;
  }

  v10 = objc_alloc_init(getMTAlarmManagerClass());
  mtAlarmManager = v5->_mtAlarmManager;
  v5->_mtAlarmManager = v10;

  v12 = v5->_mtAlarmManager;
  v13 = *v8;
  v14 = *v8;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[SOClockAlarmManager initWithInstanceContext:]";
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_26858F000, v13, OS_LOG_TYPE_INFO, "%s Initialized for MobileTimer (%@)", buf, 0x16u);
    }

LABEL_11:
    v15 = v5;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "[SOClockAlarmManager initWithInstanceContext:]";
    _os_log_error_impl(&dword_26858F000, v13, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of MTAlarmManager", buf, 0xCu);
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (SOClockAlarmManager)init
{
  defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  v4 = [(SOClockAlarmManager *)self initWithInstanceContext:defaultContext];

  return v4;
}

- (id)_registeredObservations
{
  registeredObservations = self->_registeredObservations;
  if (!registeredObservations)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_registeredObservations;
    self->_registeredObservations = v4;

    registeredObservations = self->_registeredObservations;
  }

  return registeredObservations;
}

+ (void)warmUp
{
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    MTAlarmManagerClass = getMTAlarmManagerClass();

    [MTAlarmManagerClass warmUp];
  }
}

@end