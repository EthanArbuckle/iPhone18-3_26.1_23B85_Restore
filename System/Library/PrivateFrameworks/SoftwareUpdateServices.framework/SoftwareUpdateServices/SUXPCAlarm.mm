@interface SUXPCAlarm
- (SUXPCAlarm)init;
- (void)cancelAlarm:(id)a3;
- (void)cancelInstallAlertAlarm;
- (void)scheduleAlarm:(id)a3 date:(id)a4;
@end

@implementation SUXPCAlarm

- (SUXPCAlarm)init
{
  v8.receiver = self;
  v8.super_class = SUXPCAlarm;
  v2 = [(SUXPCAlarm *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUCSScheduler);
    csScheduler = v2->_csScheduler;
    v2->_csScheduler = v3;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __18__SUXPCAlarm_init__block_invoke;
    handler[3] = &unk_279CABC00;
    v7 = v2;
    xpc_set_event_stream_handler("com.apple.alarm", MEMORY[0x277D85CD0], handler);
  }

  return v2;
}

uint64_t __18__SUXPCAlarm_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  SULogInfo(@"Handling wakeup alarm", v4, v5, v6, v7, v8, v9, v10, v28);
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);

  if (!string)
  {
    SULogInfo(@"No event name", v12, v13, v14, v15, v16, v17, v18, v29);
  }

  result = strcmp(string, [@"installAlertAlarmName" UTF8String]);
  if (!result)
  {
    SULogInfo(@"Registering ContextStore Predicates", v20, v21, v22, v23, v24, v25, v26, v29);
    v27 = *(*(a1 + 32) + 8);

    return [v27 registerInstallAlertConditionsWithHandler:&__block_literal_global_11];
  }

  return result;
}

- (void)cancelInstallAlertAlarm
{
  [(SUXPCAlarm *)self cancelAlarm:@"installAlertAlarmName"];
  csScheduler = self->_csScheduler;

  [(SUCSScheduler *)csScheduler unregisterInstallationAlertAction];
}

- (void)scheduleAlarm:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  SULogInfo(@"Scheduling alarm: %@", v7, v8, v9, v10, v11, v12, v13, v6);
  [v5 timeIntervalSince1970];
  v15 = v14;

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v16, "Date", (v15 * 1000000000.0));
  [v6 UTF8String];

  xpc_set_event();
}

- (void)cancelAlarm:(id)a3
{
  v3 = a3;
  SULogInfo(@"Canceling alarm: %@", v4, v5, v6, v7, v8, v9, v10, v3);
  [v3 UTF8String];

  xpc_set_event();
}

@end