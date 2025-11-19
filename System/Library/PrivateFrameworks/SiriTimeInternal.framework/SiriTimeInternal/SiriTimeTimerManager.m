@interface SiriTimeTimerManager
+ (id)timerManagerWithEndpointUUIDString:(id)a3;
- (SiriTimeTimerManager)initWithEndpointUUID:(id)a3;
- (id)addTimer:(id)a3;
- (id)dismissTimerWithIdentifier:(id)a3;
- (id)removeTimer:(id)a3;
- (id)timers;
- (id)updateTimer:(id)a3;
@end

@implementation SiriTimeTimerManager

- (SiriTimeTimerManager)initWithEndpointUUID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriTimeTimerManager;
  v5 = [(SiriTimeTimerManager *)&v8 init];
  if (v5)
  {
    v6 = [SiriTimeTimerManager timerManagerWithEndpointUUIDString:v4];
    [(SiriTimeTimerManager *)v5 setTimerManager:v6];
  }

  return v5;
}

+ (id)timerManagerWithEndpointUUIDString:(id)a3
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
  v2 = [(SiriTimeTimerManager *)self timerManager];
  v3 = [v2 timers];

  return v3;
}

- (id)addTimer:(id)a3
{
  v4 = a3;
  v5 = [(SiriTimeTimerManager *)self timerManager];
  v6 = [v5 addTimer:v4];

  return v6;
}

- (id)updateTimer:(id)a3
{
  v4 = a3;
  v5 = [(SiriTimeTimerManager *)self timerManager];
  v6 = [v5 updateTimer:v4];

  return v6;
}

- (id)removeTimer:(id)a3
{
  v4 = a3;
  v5 = [(SiriTimeTimerManager *)self timerManager];
  v6 = [v5 removeTimer:v4];

  return v6;
}

- (id)dismissTimerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SiriTimeTimerManager *)self timerManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(SiriTimeTimerManager *)self timerManager];
    v8 = [v7 dismissTimerWithIdentifier:v4];
  }

  v9 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v9;
}

@end