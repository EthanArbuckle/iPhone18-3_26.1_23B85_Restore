@interface RTXPCTimerAlarm
- (BOOL)_isEndDateValid:(id)valid;
- (BOOL)fireWithDate:(id)date error:(id *)error;
- (BOOL)fireWithDate:(id)date shouldWake:(BOOL)wake error:(id *)error;
- (BOOL)invalidate;
- (RTXPCTimerAlarm)initWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler;
- (void)_deregisterAlarm;
- (void)_fireWithDate:(id)date shouldWake:(BOOL)wake;
- (void)_handleDurationExpiry;
- (void)_invalidate;
- (void)_setAlarmWithEndDate:(id)date shouldWake:(BOOL)wake userVisible:(BOOL)visible;
- (void)_setup;
- (void)onNotification:(id)notification;
- (void)setup;
@end

@implementation RTXPCTimerAlarm

- (RTXPCTimerAlarm)initWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (!queueCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTXPCTimerAlarm initWithIdentifier:queue:handler:]";
      v22 = 1024;
      v23 = 26;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
  }

  v19.receiver = self;
  v19.super_class = RTXPCTimerAlarm;
  v12 = [(RTXPCTimerAlarm *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v13->_state = 0;
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [handlerCopy copy];
    handler = v13->_handler;
    v13->_handler = v16;

    [(RTXPCTimerAlarm *)v13 setup];
  }

  return v13;
}

- (void)setup
{
  queue = [(RTXPCTimerAlarm *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__RTXPCTimerAlarm_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [defaultCenter addObserver:self selector:sel_onNotification_ name:identifier object:0];
}

- (void)onNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTXPCTimerAlarm *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__RTXPCTimerAlarm_onNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (BOOL)fireWithDate:(id)date shouldWake:(BOOL)wake error:(id *)error
{
  dateCopy = date;
  if (dateCopy)
  {
    queue = [(RTXPCTimerAlarm *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__RTXPCTimerAlarm_fireWithDate_shouldWake_error___block_invoke;
    block[3] = &unk_2788C53C8;
    block[4] = self;
    v13 = dateCopy;
    wakeCopy = wake;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"endDate");
    }
  }

  return dateCopy != 0;
}

- (BOOL)fireWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  if (dateCopy)
  {
    queue = [(RTXPCTimerAlarm *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__RTXPCTimerAlarm_fireWithDate_error___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = dateCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"endDate");
    }
  }

  return dateCopy != 0;
}

- (BOOL)invalidate
{
  queue = [(RTXPCTimerAlarm *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTXPCTimerAlarm_invalidate__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);

  return 1;
}

- (void)_fireWithDate:(id)date shouldWake:(BOOL)wake
{
  wakeCopy = wake;
  dateCopy = date;
  if (dateCopy)
  {
    [(RTXPCTimerAlarm *)self _deregisterAlarm];
    [(RTXPCTimerAlarm *)self _resetState];
    if ([(RTXPCTimerAlarm *)self _isEndDateValid:dateCopy])
    {
      [(RTXPCTimerAlarm *)self setState:2];
      [(RTXPCTimerAlarm *)self _setAlarmWithEndDate:dateCopy shouldWake:wakeCopy userVisible:1];
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", v8, 2u);
    }
  }
}

- (void)_handleDurationExpiry
{
  [(RTXPCTimerAlarm *)self setState:3];
  [(RTXPCTimerAlarm *)self _deregisterAlarm];
  date = [MEMORY[0x277CBEAA8] date];
  [(RTXPCTimerAlarm *)self setEndDate:date];

  handler = [(RTXPCTimerAlarm *)self handler];

  if (handler)
  {
    handler2 = [(RTXPCTimerAlarm *)self handler];
    handler2[2]();
  }
}

- (void)_invalidate
{
  [(RTXPCTimerAlarm *)self _deregisterAlarm];
  [(RTXPCTimerAlarm *)self _resetState];
  [(RTXPCTimerAlarm *)self setState:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [defaultCenter removeObserver:self name:identifier object:0];
}

- (void)_setAlarmWithEndDate:(id)date shouldWake:(BOOL)wake userVisible:(BOOL)visible
{
  dateCopy = date;
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [identifier cStringUsingEncoding:4];

  [dateCopy timeIntervalSince1970];
  v11 = v10;

  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * v11);
  xpc_dictionary_set_BOOL(xdict, "UserVisible", visible);
  xpc_dictionary_set_BOOL(xdict, "ShouldWake", wake);
  xpc_set_event();
}

- (void)_deregisterAlarm
{
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [identifier cStringUsingEncoding:4];

  xpc_set_event();
}

- (BOOL)_isEndDateValid:(id)valid
{
  v4 = MEMORY[0x277CBEAA8];
  validCopy = valid;
  date = [v4 date];
  v7 = [date compare:validCopy];

  if (v7 == 1)
  {
    [(RTXPCTimerAlarm *)self _handleDurationExpiry];
  }

  return v7 != 1;
}

@end