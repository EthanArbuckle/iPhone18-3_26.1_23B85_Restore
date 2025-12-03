@interface RTPersistentTimer
- (RTPersistentTimer)initWithFireDate:(id)date interval:(double)interval serviceIdentifier:(id)identifier queue:(id)queue handler:(id)handler;
- (void)_invalidateTimer;
- (void)_onTimerFired:(id)fired;
- (void)_setupNextTimer;
- (void)_startTimer;
- (void)invalidate;
@end

@implementation RTPersistentTimer

- (RTPersistentTimer)initWithFireDate:(id)date interval:(double)interval serviceIdentifier:(id)identifier queue:(id)queue handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (dateCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTPersistentTimer initWithFireDate:interval:serviceIdentifier:queue:handler:]";
      v30 = 1024;
      v31 = 37;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fireDate (in %s:%d)", buf, 0x12u);
    }

    if (identifierCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[RTPersistentTimer initWithFireDate:interval:serviceIdentifier:queue:handler:]";
    v30 = 1024;
    v31 = 38;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: serviceIdentifer (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_11:
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTPersistentTimer initWithFireDate:interval:serviceIdentifier:queue:handler:]";
      v30 = 1024;
      v31 = 39;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v27.receiver = self;
  v27.super_class = RTPersistentTimer;
  v20 = [(RTPersistentTimer *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_fireDate, date);
    objc_storeStrong(&v21->_queue, queue);
    v21->_interval = interval;
    v22 = [identifierCopy copy];
    serviceIdentifier = v21->_serviceIdentifier;
    v21->_serviceIdentifier = v22;

    v24 = [handlerCopy copy];
    handler = v21->_handler;
    v21->_handler = v24;

    [(RTPersistentTimer *)v21 _startTimer];
  }

  return v21;
}

- (void)_startTimer
{
  [(RTPersistentTimer *)self _invalidateTimer];
  fireDate = [(RTPersistentTimer *)self fireDate];

  if (fireDate)
  {
    v4 = objc_alloc(MEMORY[0x277D3A180]);
    fireDate2 = [(RTPersistentTimer *)self fireDate];
    serviceIdentifier = [(RTPersistentTimer *)self serviceIdentifier];
    v7 = [v4 initWithFireDate:fireDate2 serviceIdentifier:serviceIdentifier target:self selector:sel__onTimerFired_ userInfo:0];
    [(RTPersistentTimer *)self setTimer:v7];

    timer = [(RTPersistentTimer *)self timer];
    [timer setMinimumEarlyFireProportion:0.9];

    timer2 = [(RTPersistentTimer *)self timer];
    queue = [(RTPersistentTimer *)self queue];
    [timer2 scheduleInQueue:queue];
  }
}

- (void)_onTimerFired:(id)fired
{
  handler = [(RTPersistentTimer *)self handler];

  if (handler)
  {
    handler2 = [(RTPersistentTimer *)self handler];
    handler2[2]();
  }

  [(RTPersistentTimer *)self _setupNextTimer];
}

- (void)_setupNextTimer
{
  [(RTPersistentTimer *)self interval];
  if (v3 == INFINITY)
  {
    [(RTPersistentTimer *)self setFireDate:0];
  }

  else
  {
    v4 = MEMORY[0x277CBEAA8];
    [(RTPersistentTimer *)self interval];
    v5 = [v4 dateWithTimeIntervalSinceNow:?];
    [(RTPersistentTimer *)self setFireDate:v5];
  }

  [(RTPersistentTimer *)self _startTimer];
}

- (void)_invalidateTimer
{
  timer = [(RTPersistentTimer *)self timer];
  [timer invalidate];

  [(RTPersistentTimer *)self setTimer:0];
}

- (void)invalidate
{
  [(RTPersistentTimer *)self _invalidateTimer];
  [(RTPersistentTimer *)self setHandler:0];
  [(RTPersistentTimer *)self setFireDate:0];

  [(RTPersistentTimer *)self setInterval:INFINITY];
}

@end