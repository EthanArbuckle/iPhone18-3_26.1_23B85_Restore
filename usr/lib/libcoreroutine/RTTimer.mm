@interface RTTimer
- (RTTimer)initWithIdentifier:(id)identifier dispatchSource:(id)source;
- (RTTimer)initWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)fireAfterDelay:(double)delay interval:(double)interval leeway:(double)leeway;
@end

@implementation RTTimer

- (void)dealloc
{
  dispatch_source_cancel(self->_timer);
  v3.receiver = self;
  v3.super_class = RTTimer;
  [(RTTimer *)&v3 dealloc];
}

- (RTTimer)initWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (identifierCopy)
  {
    if (queueCopy)
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

    if (queueCopy)
    {
LABEL_3:
      if (handlerCopy)
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

      selfCopy = 0;
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

  if (!handlerCopy)
  {
    goto LABEL_13;
  }

LABEL_4:
  selfCopy = 0;
  if (identifierCopy && queueCopy)
  {
    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    dispatch_source_set_event_handler(v12, handlerCopy);
    self = [(RTTimer *)self initWithIdentifier:identifierCopy dispatchSource:v12];
    selfCopy = self;
LABEL_16:
  }

  return selfCopy;
}

- (RTTimer)initWithIdentifier:(id)identifier dispatchSource:(id)source
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sourceCopy = source;
  v8 = sourceCopy;
  if (!identifierCopy)
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

  if (!sourceCopy)
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
    selfCopy = 0;
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = RTTimer;
  v9 = [(RTTimer *)&v16 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_timer, source);
  }

  self = v9;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)fireAfterDelay:(double)delay interval:(double)interval leeway:(double)leeway
{
  v24 = *MEMORY[0x277D85DE8];
  if (delay <= 0.0)
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

  if (interval <= 0.0)
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

  if (leeway <= 0.0)
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
  if ((*&delay & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (delay > 0.0 && (*&delay & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v13 = dispatch_walltime(0, (delay * 1000000000.0));
  }

  if ((*&interval <= -1 || ((*&interval & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&interval - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v16 = -1;
  }

  else
  {
    v16 = (interval * 1000000000.0);
  }

  if ((*&leeway <= -1 || ((*&leeway & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&leeway - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v19 = -1;
  }

  else
  {
    v19 = (leeway * 1000000000.0);
  }

  dispatch_source_set_timer(timer, v13, v16, v19);
}

@end