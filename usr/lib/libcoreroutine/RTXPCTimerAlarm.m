@interface RTXPCTimerAlarm
- (BOOL)_isEndDateValid:(id)a3;
- (BOOL)fireWithDate:(id)a3 error:(id *)a4;
- (BOOL)fireWithDate:(id)a3 shouldWake:(BOOL)a4 error:(id *)a5;
- (BOOL)invalidate;
- (RTXPCTimerAlarm)initWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)_deregisterAlarm;
- (void)_fireWithDate:(id)a3 shouldWake:(BOOL)a4;
- (void)_handleDurationExpiry;
- (void)_invalidate;
- (void)_setAlarmWithEndDate:(id)a3 shouldWake:(BOOL)a4 userVisible:(BOOL)a5;
- (void)_setup;
- (void)onNotification:(id)a3;
- (void)setup;
@end

@implementation RTXPCTimerAlarm

- (RTXPCTimerAlarm)initWithIdentifier:(id)a3 queue:(id)a4 handler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
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
    objc_storeStrong(&v12->_queue, a4);
    v13->_state = 0;
    v14 = [v8 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v10 copy];
    handler = v13->_handler;
    v13->_handler = v16;

    [(RTXPCTimerAlarm *)v13 setup];
  }

  return v13;
}

- (void)setup
{
  v3 = [(RTXPCTimerAlarm *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__RTXPCTimerAlarm_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setup
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(RTXPCTimerAlarm *)self identifier];
  [v4 addObserver:self selector:sel_onNotification_ name:v3 object:0];
}

- (void)onNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTXPCTimerAlarm *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__RTXPCTimerAlarm_onNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)fireWithDate:(id)a3 shouldWake:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [(RTXPCTimerAlarm *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__RTXPCTimerAlarm_fireWithDate_shouldWake_error___block_invoke;
    block[3] = &unk_2788C53C8;
    block[4] = self;
    v13 = v8;
    v14 = a4;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"endDate");
    }
  }

  return v8 != 0;
}

- (BOOL)fireWithDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(RTXPCTimerAlarm *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__RTXPCTimerAlarm_fireWithDate_error___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = v6;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"endDate");
    }
  }

  return v6 != 0;
}

- (BOOL)invalidate
{
  v3 = [(RTXPCTimerAlarm *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTXPCTimerAlarm_invalidate__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);

  return 1;
}

- (void)_fireWithDate:(id)a3 shouldWake:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(RTXPCTimerAlarm *)self _deregisterAlarm];
    [(RTXPCTimerAlarm *)self _resetState];
    if ([(RTXPCTimerAlarm *)self _isEndDateValid:v6])
    {
      [(RTXPCTimerAlarm *)self setState:2];
      [(RTXPCTimerAlarm *)self _setAlarmWithEndDate:v6 shouldWake:v4 userVisible:1];
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
  v3 = [MEMORY[0x277CBEAA8] date];
  [(RTXPCTimerAlarm *)self setEndDate:v3];

  v4 = [(RTXPCTimerAlarm *)self handler];

  if (v4)
  {
    v5 = [(RTXPCTimerAlarm *)self handler];
    v5[2]();
  }
}

- (void)_invalidate
{
  [(RTXPCTimerAlarm *)self _deregisterAlarm];
  [(RTXPCTimerAlarm *)self _resetState];
  [(RTXPCTimerAlarm *)self setState:1];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(RTXPCTimerAlarm *)self identifier];
  [v4 removeObserver:self name:v3 object:0];
}

- (void)_setAlarmWithEndDate:(id)a3 shouldWake:(BOOL)a4 userVisible:(BOOL)a5
{
  v8 = a3;
  v9 = [(RTXPCTimerAlarm *)self identifier];
  [v9 cStringUsingEncoding:4];

  [v8 timeIntervalSince1970];
  v11 = v10;

  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * v11);
  xpc_dictionary_set_BOOL(xdict, "UserVisible", a5);
  xpc_dictionary_set_BOOL(xdict, "ShouldWake", a4);
  xpc_set_event();
}

- (void)_deregisterAlarm
{
  v2 = [(RTXPCTimerAlarm *)self identifier];
  [v2 cStringUsingEncoding:4];

  xpc_set_event();
}

- (BOOL)_isEndDateValid:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [v6 compare:v5];

  if (v7 == 1)
  {
    [(RTXPCTimerAlarm *)self _handleDurationExpiry];
  }

  return v7 != 1;
}

@end