@interface SiriTimeTimerManager
+ (id)timerManagerWithEndpointUUIDString:(id)string;
- (SiriTimeTimerManager)initWithEndpointUUID:(id)d;
- (id)addTimer:(id)timer;
- (id)dismissTimerWithIdentifier:(id)identifier;
- (id)removeTimer:(id)timer;
- (id)timers;
- (id)updateTimer:(id)timer;
@end

@implementation SiriTimeTimerManager

- (SiriTimeTimerManager)initWithEndpointUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = SiriTimeTimerManager;
  v5 = [(SiriTimeTimerManager *)&v8 init];
  if (v5)
  {
    v6 = [SiriTimeTimerManager timerManagerWithEndpointUUIDString:dCopy];
    [(SiriTimeTimerManager *)v5 setTimerManager:v6];
  }

  return v5;
}

+ (id)timerManagerWithEndpointUUIDString:(id)string
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[SiriTimeTimerManager timerManagerWithEndpointUUIDString:]";
    _os_log_impl(&dword_2692D8000, v3, OS_LOG_TYPE_DEFAULT, "%s Creating MTTimerManager", &v7, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277D29740]);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)timers
{
  timerManager = [(SiriTimeTimerManager *)self timerManager];
  timers = [timerManager timers];

  return timers;
}

- (id)addTimer:(id)timer
{
  timerCopy = timer;
  timerManager = [(SiriTimeTimerManager *)self timerManager];
  v6 = [timerManager addTimer:timerCopy];

  return v6;
}

- (id)updateTimer:(id)timer
{
  timerCopy = timer;
  timerManager = [(SiriTimeTimerManager *)self timerManager];
  v6 = [timerManager updateTimer:timerCopy];

  return v6;
}

- (id)removeTimer:(id)timer
{
  timerCopy = timer;
  timerManager = [(SiriTimeTimerManager *)self timerManager];
  v6 = [timerManager removeTimer:timerCopy];

  return v6;
}

- (id)dismissTimerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  timerManager = [(SiriTimeTimerManager *)self timerManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    timerManager2 = [(SiriTimeTimerManager *)self timerManager];
    v8 = [timerManager2 dismissTimerWithIdentifier:identifierCopy];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

@end