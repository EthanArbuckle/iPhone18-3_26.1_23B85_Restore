@interface SATime
- (SATime)initWithExternalTimer:(id)timer isReplay:(BOOL)replay;
- (SATimeEventRequestProtocol)externalTimer;
- (id)earliestAlarm;
- (id)getCurrentTime;
- (id)getEarliestAlarmDate;
- (id)setupAlarmFireAt:(id)at forClient:(id)client;
- (void)addAlarm:(id)alarm;
- (void)advanceTimeWithEvent:(id)event;
- (void)alarmFired:(id)fired;
- (void)cancelAlarmWithUUID:(id)d;
- (void)dealloc;
- (void)fireAlarmsIfReady;
- (void)popAlarm;
@end

@implementation SATime

- (void)fireAlarmsIfReady
{
  earliestAlarm = [(SATime *)self earliestAlarm];
  if (earliestAlarm)
  {
    while (1)
    {
      v3 = [(SATime *)self now];
      fireDate = [earliestAlarm fireDate];
      v5 = [v3 compare:fireDate];

      if (v5 == -1)
      {
        break;
      }

      [(SATime *)self alarmFired:earliestAlarm];
      [(SATime *)self popAlarm];
      earliestAlarm2 = [(SATime *)self earliestAlarm];

      earliestAlarm = earliestAlarm2;
      if (!earliestAlarm2)
      {
        v7 = 0;
        goto LABEL_7;
      }
    }

    v7 = earliestAlarm;
LABEL_7:
  }
}

- (id)earliestAlarm
{
  alarmQueue = [(SATime *)self alarmQueue];
  if (*alarmQueue == alarmQueue[1])
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

- (SATime)initWithExternalTimer:(id)timer isReplay:(BOOL)replay
{
  timerCopy = timer;
  v12.receiver = self;
  v12.super_class = SATime;
  v6 = [(SATime *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    ongoingAlarms = v6->_ongoingAlarms;
    v6->_ongoingAlarms = v7;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    now = v6->_now;
    v6->_now = distantPast;

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

- (void)addAlarm:(id)alarm
{
  alarmCopy = alarm;
  if (alarmCopy)
  {
    alarmQueue = [(SATime *)self alarmQueue];
    std::vector<SAAlarmTask * {__strong}>::push_back[abi:ne200100](alarmQueue, &alarmCopy);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SAAlarmClassCompare &,std::__wrap_iter<SAAlarmTask * {__strong}*>>(*alarmQueue, alarmQueue[1], &v6, (alarmQueue[1] - *alarmQueue) >> 3);
  }
}

- (void)popAlarm
{
  alarmQueue = [(SATime *)self alarmQueue];
  if (*alarmQueue != alarmQueue[1])
  {
    alarmQueue2 = [(SATime *)self alarmQueue];

    std::priority_queue<SAAlarmTask * {__strong},std::vector<SAAlarmTask * {__strong}>,SAAlarmClassCompare>::pop(alarmQueue2);
  }
}

- (void)cancelAlarmWithUUID:(id)d
{
  dCopy = d;
  if ([(NSMutableSet *)self->_ongoingAlarms containsObject:?])
  {
    [(NSMutableSet *)self->_ongoingAlarms removeObject:dCopy];
    WeakRetained = objc_loadWeakRetained(&self->_externalTimer);
    [WeakRetained cancelSATimeEventForAlarm:dCopy];
  }
}

- (id)setupAlarmFireAt:(id)at forClient:(id)client
{
  atCopy = at;
  clientCopy = client;
  if (clientCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = objc_alloc_init(SAAlarmTask);
    [(SAAlarmTask *)v9 setAlarmUUID:uUID];
    [(SAAlarmTask *)v9 setFireDate:atCopy];
    [(SAAlarmTask *)v9 setClient:clientCopy];
    [(NSMutableSet *)self->_ongoingAlarms addObject:uUID];
    [(SATime *)self addAlarm:v9];
    getCurrentTime = [(SATime *)self getCurrentTime];
    [atCopy timeIntervalSinceDate:getCurrentTime];
    v12 = v11;

    if (v12 > 0.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_externalTimer);
      [WeakRetained scheduleSATimeEvent:uUID forAlarm:v12];
    }
  }

  else
  {
    uUID = 0;
  }

  return uUID;
}

- (void)alarmFired:(id)fired
{
  v26 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  client = [firedCopy client];
  v6 = TASALog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    alarmUUID = [firedCopy alarmUUID];
    fireDate = [firedCopy fireDate];
    v17[0] = 68289795;
    v17[1] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2113;
    v21 = alarmUUID;
    v22 = 2113;
    v23 = fireDate;
    v24 = 2113;
    v25 = client;
    _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATime alarm fired, uuid:%{private}@, alarmDate:%{private}@, client:%{private}@}", v17, 0x30u);
  }

  ongoingAlarms = self->_ongoingAlarms;
  alarmUUID2 = [firedCopy alarmUUID];
  v11 = [(NSMutableSet *)ongoingAlarms containsObject:alarmUUID2];
  if (client)
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
    alarmUUID3 = [firedCopy alarmUUID];
    [(NSMutableSet *)v13 removeObject:alarmUUID3];

    alarmUUID4 = [firedCopy alarmUUID];
    [client alarmFiredForUUID:alarmUUID4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)advanceTimeWithEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  getDate = [eventCopy getDate];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [getDate compare:v6];

  if (v7 == 1)
  {
    v8 = TASALog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [eventCopy description];
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
    getDate2 = [eventCopy getDate];
    v12 = [(NSDate *)now compare:getDate2];

    if (v12 == -1)
    {
      getDate3 = [eventCopy getDate];
      v14 = self->_now;
      self->_now = getDate3;
    }

    [(SATime *)self fireAlarmsIfReady];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getEarliestAlarmDate
{
  alarmQueue = [(SATime *)self alarmQueue];
  if (*alarmQueue == alarmQueue[1])
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