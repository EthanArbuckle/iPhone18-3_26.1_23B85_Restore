@interface SOClockTimerManager
+ (void)warmUp;
- (SOClockTimerManager)init;
- (SOClockTimerManager)initWithInstanceContext:(id)context;
- (id)_registeredObservations;
- (id)addTimer:(id)timer;
- (id)dismissTimerWithIdentifier:(id)identifier;
- (id)removeTimer:(id)timer;
- (id)timers;
- (id)updateTimer:(id)timer;
- (void)addHandler:(id)handler forEvent:(int64_t)event;
- (void)checkIn;
- (void)dealloc;
- (void)removeHandlerForEvent:(int64_t)event;
@end

@implementation SOClockTimerManager

- (id)dismissTimerWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockTimerManager dismissTimerWithIdentifier:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtTimerManager = self->_mtTimerManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTTimerManager *)mtTimerManager dismissTimerWithIdentifier:identifierCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)removeTimer:(id)timer
{
  v12 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockTimerManager removeTimer:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtTimerManager = self->_mtTimerManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTTimerManager *)mtTimerManager removeTimer:timerCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)updateTimer:(id)timer
{
  v12 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockTimerManager updateTimer:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtTimerManager = self->_mtTimerManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTTimerManager *)mtTimerManager updateTimer:timerCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)addTimer:(id)timer
{
  v12 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SOClockTimerManager addTimer:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtTimerManager = self->_mtTimerManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTTimerManager *)mtTimerManager addTimer:timerCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)timers
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SOClockTimerManager timers]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    mtTimerManager = 0;
  }

  else
  {
    mtTimerManager = self->_mtTimerManager;
    if (mtTimerManager)
    {
      mtTimerManager = [mtTimerManager timers];
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return mtTimerManager;
}

- (void)removeHandlerForEvent:(int64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = AFClockTimerManagerEventGetName();
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[SOClockTimerManager removeHandlerForEvent:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s event = %@", &v12, 0x16u);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    _registeredObservations = [(SOClockTimerManager *)self _registeredObservations];
    v7 = [_registeredObservations objectForKey:v4];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = defaultCenter;
    if (v7)
    {
      [defaultCenter removeObserver:v7];
      _registeredObservations2 = [(SOClockTimerManager *)self _registeredObservations];
      [_registeredObservations2 removeObjectForKey:v4];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addHandler:(id)handler forEvent:(int64_t)event
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = AFClockTimerManagerEventGetName();
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[SOClockTimerManager addHandler:forEvent:]";
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s event = %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__SOClockTimerManager_addHandler_forEvent___block_invoke;
  v20[3] = &unk_279C3D690;
  v9 = handlerCopy;
  v21 = v9;
  v10 = MEMORY[0x26D61D070](v20);
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    _registeredObservations = [(SOClockTimerManager *)self _registeredObservations];
    v12 = [_registeredObservations objectForKey:v7];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = defaultCenter;
    if (v12)
    {
      [defaultCenter removeObserver:v12];
    }

    if ((event - 1) <= 7)
    {
      v15 = (*off_279C3D6D0[event - 1])();
      if (v15)
      {
        v16 = v15;
        v17 = [v14 addObserverForName:v15 object:self->_mtTimerManager queue:0 usingBlock:v10];
        _registeredObservations2 = [(SOClockTimerManager *)self _registeredObservations];
        [_registeredObservations2 setObject:v17 forKey:v7];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __43__SOClockTimerManager_addHandler_forEvent___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *v13 = 136315394;
    *&v13[4] = "[SOClockTimerManager addHandler:forEvent:]_block_invoke";
    *&v13[12] = 2112;
    *&v13[14] = v3;
    _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s notification = %@", v13, 0x16u);
  }

  v5 = [v3 userInfo];
  v6 = getMTTimerManagerTimersKey();
  v7 = [v5 objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MTTimerClass = getMTTimerClass();
    *v13 = MEMORY[0x277D85DD0];
    *&v13[8] = 3221225472;
    *&v13[16] = ___SOClockTimerManagerGetMTTimersFromNotification_block_invoke;
    v14 = &__block_descriptor_40_e24_B32__0__MTTimer_8Q16_B24lu32l8;
    v15 = MTTimerClass;
    v9 = [v7 indexesOfObjectsPassingTest:v13];
    v10 = [v7 objectsAtIndexes:v9];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = SOClockTimerCreateFromMTTimers(v10);
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)checkIn
{
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    mtTimerManager = self->_mtTimerManager;
    if (mtTimerManager)
    {

      [(MTTimerManager *)mtTimerManager checkIn];
    }
  }
}

- (void)dealloc
{
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0 && self->_mtTimerManager)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    _registeredObservations = [(SOClockTimerManager *)self _registeredObservations];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SOClockTimerManager_dealloc__block_invoke;
    v9[3] = &unk_279C3D668;
    v10 = defaultCenter;
    v5 = defaultCenter;
    [_registeredObservations enumerateKeysAndObjectsUsingBlock:v9];

    mtTimerManager = self->_mtTimerManager;
    self->_mtTimerManager = 0;
  }

  [(NSMutableDictionary *)self->_registeredObservations removeAllObjects];
  registeredObservations = self->_registeredObservations;
  self->_registeredObservations = 0;

  v8.receiver = self;
  v8.super_class = SOClockTimerManager;
  [(SOClockTimerManager *)&v8 dealloc];
}

- (SOClockTimerManager)initWithInstanceContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = SOClockTimerManager;
  v5 = [(SOClockTimerManager *)&v18 init];
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
    v20 = "[SOClockTimerManager initWithInstanceContext:]";
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_26858F000, v9, OS_LOG_TYPE_INFO, "%s instanceContext = %@", buf, 0x16u);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    goto LABEL_11;
  }

  v10 = objc_alloc_init(getMTTimerManagerClass_1091());
  mtTimerManager = v5->_mtTimerManager;
  v5->_mtTimerManager = v10;

  v12 = v5->_mtTimerManager;
  v13 = *v8;
  v14 = *v8;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[SOClockTimerManager initWithInstanceContext:]";
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
    v20 = "[SOClockTimerManager initWithInstanceContext:]";
    _os_log_error_impl(&dword_26858F000, v13, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of MTTimerManager", buf, 0xCu);
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (SOClockTimerManager)init
{
  defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  v4 = [(SOClockTimerManager *)self initWithInstanceContext:defaultContext];

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
    MTTimerManagerClass_1091 = getMTTimerManagerClass_1091();

    [MTTimerManagerClass_1091 warmUp];
  }
}

@end