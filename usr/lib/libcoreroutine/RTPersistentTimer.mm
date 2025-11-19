@interface RTPersistentTimer
- (RTPersistentTimer)initWithFireDate:(id)a3 interval:(double)a4 serviceIdentifier:(id)a5 queue:(id)a6 handler:(id)a7;
- (void)_invalidateTimer;
- (void)_onTimerFired:(id)a3;
- (void)_setupNextTimer;
- (void)_startTimer;
- (void)invalidate;
@end

@implementation RTPersistentTimer

- (RTPersistentTimer)initWithFireDate:(id)a3 interval:(double)a4 serviceIdentifier:(id)a5 queue:(id)a6 handler:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
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

    if (v14)
    {
LABEL_3:
      if (v16)
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

  if (!v16)
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
    objc_storeStrong(&v20->_fireDate, a3);
    objc_storeStrong(&v21->_queue, a6);
    v21->_interval = a4;
    v22 = [v14 copy];
    serviceIdentifier = v21->_serviceIdentifier;
    v21->_serviceIdentifier = v22;

    v24 = [v16 copy];
    handler = v21->_handler;
    v21->_handler = v24;

    [(RTPersistentTimer *)v21 _startTimer];
  }

  return v21;
}

- (void)_startTimer
{
  [(RTPersistentTimer *)self _invalidateTimer];
  v3 = [(RTPersistentTimer *)self fireDate];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D3A180]);
    v5 = [(RTPersistentTimer *)self fireDate];
    v6 = [(RTPersistentTimer *)self serviceIdentifier];
    v7 = [v4 initWithFireDate:v5 serviceIdentifier:v6 target:self selector:sel__onTimerFired_ userInfo:0];
    [(RTPersistentTimer *)self setTimer:v7];

    v8 = [(RTPersistentTimer *)self timer];
    [v8 setMinimumEarlyFireProportion:0.9];

    v10 = [(RTPersistentTimer *)self timer];
    v9 = [(RTPersistentTimer *)self queue];
    [v10 scheduleInQueue:v9];
  }
}

- (void)_onTimerFired:(id)a3
{
  v4 = [(RTPersistentTimer *)self handler];

  if (v4)
  {
    v5 = [(RTPersistentTimer *)self handler];
    v5[2]();
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
  v3 = [(RTPersistentTimer *)self timer];
  [v3 invalidate];

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