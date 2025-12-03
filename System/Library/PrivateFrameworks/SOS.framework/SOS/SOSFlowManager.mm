@interface SOSFlowManager
+ (id)sharedInstance;
- (SOSFlowManager)init;
- (id)_init;
- (void)emergencyCallInitiated;
- (void)kappaWasRequested;
- (void)sosFlow:(id)flow didChangeToState:(int64_t)state;
- (void)startFreshSOSFlowWithTriggerMechanism:(int64_t)mechanism;
- (void)startSOSFlowWithTriggerMechanism:(int64_t)mechanism;
@end

@implementation SOSFlowManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SOSFlowManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sSOSFlowManager;

  return v2;
}

uint64_t __32__SOSFlowManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSOSFlowManager = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (SOSFlowManager)init
{
  v3 = +[SOSFlowManager sharedInstance];

  return v3;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = SOSFlowManager;
  v2 = [(SOSFlowManager *)&v8 init];
  if (v2)
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSFlowManager, init", v7, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    healthStore = v2->_healthStore;
    v2->_healthStore = v4;

    [(HKHealthStore *)v2->_healthStore setDebugIdentifier:@"com.apple.sos"];
    [(HKHealthStore *)v2->_healthStore resume];
  }

  return v2;
}

- (void)kappaWasRequested
{
  activeSOSFlow = [(SOSFlowManager *)self activeSOSFlow];
  [activeSOSFlow handleSOSFlowEvent:12 withMetaData:0];
}

- (void)emergencyCallInitiated
{
  activeSOSFlow = [(SOSFlowManager *)self activeSOSFlow];
  [activeSOSFlow handleSOSFlowEvent:13 withMetaData:0];
}

- (void)startSOSFlowWithTriggerMechanism:(int64_t)mechanism
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = SOSStringForSOSTriggerMechanism(mechanism);
    v8 = 136315394;
    v9 = "[SOSFlowManager startSOSFlowWithTriggerMechanism:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s: Starting SOSFlow with trigger: %@", &v8, 0x16u);
  }

  [(SOSFlowManager *)self startFreshSOSFlowWithTriggerMechanism:mechanism];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startFreshSOSFlowWithTriggerMechanism:(int64_t)mechanism
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SOSFlowManager startFreshSOSFlowWithTriggerMechanism:]";
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s: Starting a fresh SOSFlow", &v16, 0xCu);
  }

  activeSOSFlow = [(SOSFlowManager *)self activeSOSFlow];

  if (activeSOSFlow)
  {
    activeSOSFlow2 = [(SOSFlowManager *)self activeSOSFlow];
    [activeSOSFlow2 removeObserver:self];
  }

  v8 = [[SOSFlow alloc] initWithTriggerMechanism:mechanism healthStore:self->_healthStore];
  [(SOSFlowManager *)self setActiveSOSFlow:v8];

  activeSOSFlow3 = [(SOSFlowManager *)self activeSOSFlow];
  [activeSOSFlow3 addObserver:self];

  v10 = MEMORY[0x277CBEAC0];
  activeSOSFlow4 = [(SOSFlowManager *)self activeSOSFlow];
  v12 = [v10 dictionaryWithObject:activeSOSFlow4 forKey:@"activeSOSFlow"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SOSFlowWillStartNotification" object:0 userInfo:v12];

  activeSOSFlow5 = [(SOSFlowManager *)self activeSOSFlow];
  [activeSOSFlow5 handleSOSFlowEvent:0 withMetaData:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sosFlow:(id)flow didChangeToState:(int64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  if ([SOSFlow isTerminalState:state])
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SOSFlowManager sosFlow:didChangeToState:]";
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s: SOSFlow reached terminal state, tearing down", &v8, 0xCu);
    }

    activeSOSFlow = [(SOSFlowManager *)self activeSOSFlow];
    [activeSOSFlow removeObserver:self];

    [(SOSFlowManager *)self setActiveSOSFlow:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end