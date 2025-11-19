@interface RTTimer
- (RTTimer)initWithIdentifier:(id)a3 dispatchSource:(id)a4;
- (RTTimer)initWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)dealloc;
- (void)fireAfterDelay:(double)a3 interval:(double)a4 leeway:(double)a5;
@end

@implementation RTTimer

- (void)dealloc
{
  dispatch_source_cancel(self->_timer);
  v3.receiver = self;
  v3.super_class = RTTimer;
  [(RTTimer *)&v3 dealloc];
}

- (RTTimer)initWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[RTTimer initWithIdentifier:queue:handler:]";
      v18 = 1024;
      v19 = 30;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v16, 0x12u);
    }

    if (v9)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_13:
      v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[RTTimer initWithIdentifier:queue:handler:]";
        v18 = 1024;
        v19 = 32;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v16, 0x12u);
      }

      v11 = 0;
      goto LABEL_16;
    }
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[RTTimer initWithIdentifier:queue:handler:]";
    v18 = 1024;
    v19 = 31;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", &v16, 0x12u);
  }

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = 0;
  if (v8 && v9)
  {
    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);
    dispatch_source_set_event_handler(v12, v10);
    self = [(RTTimer *)self initWithIdentifier:v8 dispatchSource:v12];
    v11 = self;
LABEL_16:
  }

  return v11;
}

- (RTTimer)initWithIdentifier:(id)a3 dispatchSource:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTimer initWithIdentifier:dispatchSource:]";
      v19 = 1024;
      v20 = 53;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v7)
  {
LABEL_9:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTimer initWithIdentifier:dispatchSource:]";
      v19 = 1024;
      v20 = 54;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: source (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = RTTimer;
  v9 = [(RTTimer *)&v16 init];
  if (v9)
  {
    v10 = [v6 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_timer, a4);
  }

  self = v9;
  v12 = self;
LABEL_13:

  return v12;
}

- (void)fireAfterDelay:(double)a3 interval:(double)a4 leeway:(double)a5
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[RTTimer fireAfterDelay:interval:leeway:]";
      v22 = 1024;
      v23 = 108;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: delay > 0 (in %s:%d)", &v20, 0x12u);
    }
  }

  if (a4 <= 0.0)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[RTTimer fireAfterDelay:interval:leeway:]";
      v22 = 1024;
      v23 = 109;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: interval > 0 (in %s:%d)", &v20, 0x12u);
    }
  }

  if (a5 <= 0.0)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[RTTimer fireAfterDelay:interval:leeway:]";
      v22 = 1024;
      v23 = 110;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: leeway > 0 (in %s:%d)", &v20, 0x12u);
    }
  }

  timer = self->_timer;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (a3 > 0.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = dispatch_walltime(0, (a3 * 1000000000.0));
  }

  if ((*&a4 <= -1 || ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a4 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v16 = -1;
  }

  else
  {
    v16 = (a4 * 1000000000.0);
  }

  if ((*&a5 <= -1 || ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a5 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v19 = -1;
  }

  else
  {
    v19 = (a5 * 1000000000.0);
  }

  dispatch_source_set_timer(timer, v13, v16, v19);
}

@end