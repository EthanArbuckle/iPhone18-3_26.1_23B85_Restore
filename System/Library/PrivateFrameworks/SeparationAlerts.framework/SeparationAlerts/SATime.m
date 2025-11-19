@interface SATime
- (SATime)initWithExternalTimer:(id)a3 isReplay:(BOOL)a4;
- (SATimeEventRequestProtocol)externalTimer;
- (id)earliestAlarm;
- (id)getCurrentTime;
- (id)getEarliestAlarmDate;
- (id)setupAlarmFireAt:(id)a3 forClient:(id)a4;
- (void)addAlarm:(id)a3;
- (void)advanceTimeWithEvent:(id)a3;
- (void)alarmFired:(id)a3;
- (void)cancelAlarmWithUUID:(id)a3;
- (void)dealloc;
- (void)fireAlarmsIfReady;
- (void)popAlarm;
@end

@implementation SATime

- (void)fireAlarmsIfReady
{
  v8 = [(SATime *)self earliestAlarm];
  if (v8)
  {
    while (1)
    {
      v3 = [(SATime *)self now];
      v4 = [v8 fireDate];
      v5 = [v3 compare:v4];

      if (v5 == -1)
      {
        break;
      }

      [(SATime *)self alarmFired:v8];
      [(SATime *)self popAlarm];
      v6 = [(SATime *)self earliestAlarm];

      v8 = v6;
      if (!v6)
      {
        v7 = 0;
        goto LABEL_7;
      }
    }

    v7 = v8;
LABEL_7:
  }
}

- (id)earliestAlarm
{
  v3 = [(SATime *)self alarmQueue];
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = **[(SATime *)self alarmQueue];
  }

  return v4;
}

- (id)getCurrentTime
{
  if ([(SATime *)self isReplay])
  {
    v3 = self->_now;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] now];
  }

  return v3;
}

- (SATime)initWithExternalTimer:(id)a3 isReplay:(BOOL)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SATime;
  v6 = [(SATime *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    ongoingAlarms = v6->_ongoingAlarms;
    v6->_ongoingAlarms = v7;

    v9 = [MEMORY[0x277CBEAA8] distantPast];
    now = v6->_now;
    v6->_now = v9;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  alarmQueue = self->_alarmQueue;
  if (alarmQueue)
  {
    v5 = self->_alarmQueue;
    std::vector<SAAlarmTask * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x26675BFC0](alarmQueue, 0x80C402512154ALL);
  }

  self->_alarmQueue = 0;
  v4.receiver = self;
  v4.super_class = SATime;
  [(SATime *)&v4 dealloc];
}

- (void)addAlarm:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [(SATime *)self alarmQueue];
    std::vector<SAAlarmTask * {__strong}>::push_back[abi:ne200100](v4, &v5);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SAAlarmClassCompare &,std::__wrap_iter<SAAlarmTask * {__strong}*>>(*v4, v4[1], &v6, (v4[1] - *v4) >> 3);
  }
}

- (void)popAlarm
{
  v3 = [(SATime *)self alarmQueue];
  if (*v3 != v3[1])
  {
    v4 = [(SATime *)self alarmQueue];

    std::priority_queue<SAAlarmTask * {__strong},std::vector<SAAlarmTask * {__strong}>,SAAlarmClassCompare>::pop(v4);
  }
}

- (void)cancelAlarmWithUUID:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_ongoingAlarms containsObject:?])
  {
    [(NSMutableSet *)self->_ongoingAlarms removeObject:v5];
    WeakRetained = objc_loadWeakRetained(&self->_externalTimer);
    [WeakRetained cancelSATimeEventForAlarm:v5];
  }
}

- (id)setupAlarmFireAt:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = objc_alloc_init(SAAlarmTask);
    [(SAAlarmTask *)v9 setAlarmUUID:v8];
    [(SAAlarmTask *)v9 setFireDate:v6];
    [(SAAlarmTask *)v9 setClient:v7];
    [(NSMutableSet *)self->_ongoingAlarms addObject:v8];
    [(SATime *)self addAlarm:v9];
    v10 = [(SATime *)self getCurrentTime];
    [v6 timeIntervalSinceDate:v10];
    v12 = v11;

    if (v12 > 0.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_externalTimer);
      [WeakRetained scheduleSATimeEvent:v8 forAlarm:v12];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)alarmFired:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 client];
  v6 = TASALog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 alarmUUID];
    v8 = [v4 fireDate];
    v17[0] = 68289795;
    v17[1] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2113;
    v21 = v7;
    v22 = 2113;
    v23 = v8;
    v24 = 2113;
    v25 = v5;
    _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATime alarm fired, uuid:%{private}@, alarmDate:%{private}@, client:%{private}@}", v17, 0x30u);
  }

  ongoingAlarms = self->_ongoingAlarms;
  v10 = [v4 alarmUUID];
  v11 = [(NSMutableSet *)ongoingAlarms containsObject:v10];
  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = self->_ongoingAlarms;
    v14 = [v4 alarmUUID];
    [(NSMutableSet *)v13 removeObject:v14];

    v15 = [v4 alarmUUID];
    [v5 alarmFiredForUUID:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)advanceTimeWithEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 getDate];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v5 compare:v6];

  if (v7 == 1)
  {
    v8 = TASALog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 description];
      v16[0] = 68289283;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2117;
      v20 = v9;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SATime received event with future date, Event:%{sensitive}@}", v16, 0x1Cu);
    }
  }

  else
  {
    now = self->_now;
    v11 = [v4 getDate];
    v12 = [(NSDate *)now compare:v11];

    if (v12 == -1)
    {
      v13 = [v4 getDate];
      v14 = self->_now;
      self->_now = v13;
    }

    [(SATime *)self fireAlarmsIfReady];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getEarliestAlarmDate
{
  v3 = [(SATime *)self alarmQueue];
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = [**-[SATime alarmQueue](self "alarmQueue")];
  }

  return v4;
}

- (SATimeEventRequestProtocol)externalTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_externalTimer);

  return WeakRetained;
}

@end