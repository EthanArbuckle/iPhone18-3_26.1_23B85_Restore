@interface BYPowerLogAnalyticsManager
+ (id)nameForPowerLogEventType:(unint64_t)type;
+ (id)persistenceKeyForPowerLogEventType:(unint64_t)type;
- (BOOL)_shouldCommitEvent:(unint64_t)event;
- (BYPowerLogAnalyticsManager)initWithPreferences:(id)preferences;
- (void)_persistIfApplicable:(unint64_t)applicable;
- (void)_submitPayload:(id)payload;
- (void)commit;
@end

@implementation BYPowerLogAnalyticsManager

- (BYPowerLogAnalyticsManager)initWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v10.receiver = self;
  v10.super_class = BYPowerLogAnalyticsManager;
  v6 = [(BYPowerLogAnalyticsManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    events = v6->_events;
    v6->_events = v7;

    objc_storeStrong(&v6->_preferencesController, preferences);
  }

  return v6;
}

- (void)commit
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  while ([(NSMutableArray *)self->_events count])
  {
    v3 = [(NSMutableArray *)self->_events objectAtIndex:0];
    [(NSMutableArray *)self->_events removeObjectAtIndex:0];
    if (v3)
    {
      if (-[BYPowerLogAnalyticsManager _shouldCommitEvent:](self, "_shouldCommitEvent:", [v3 type]))
      {
        v4 = [objc_opt_class() nameForPowerLogEventType:{objc_msgSend(v3, "type")}];
        payload = [v3 payload];
        [v6 setObject:payload forKeyedSubscript:v4];

        -[BYPowerLogAnalyticsManager _persistIfApplicable:](self, "_persistIfApplicable:", [v3 type]);
      }
    }
  }

  if ([v6 count])
  {
    [(BYPowerLogAnalyticsManager *)self _submitPayload:v6];
  }
}

- (void)_submitPayload:(id)payload
{
  payloadCopy = payload;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Submit power log events.", v5, 2u);
  }

  if (_submitPayload__onceToken != -1)
  {
    [BYPowerLogAnalyticsManager _submitPayload:];
  }

  PPSSendTelemetry();
}

uint64_t __45__BYPowerLogAnalyticsManager__submitPayload___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  _submitPayload__buddyPowerLogStream = result;
  return result;
}

- (BOOL)_shouldCommitEvent:(unint64_t)event
{
  if (!self->_preferencesController)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"Preferences controller is missing" reason:0 userInfo:0];
    objc_exception_throw(v10);
  }

  v4 = [objc_opt_class() persistenceKeyForPowerLogEventType:event];
  if (v4)
  {
    v5 = [(BYPreferencesController *)self->_preferencesController objectForKey:@"PowerLogSubmittedEvents"];
    v6 = [v5 mutableCopy];

    if (v6)
    {
      v7 = [v6 objectForKey:v4];
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_persistIfApplicable:(unint64_t)applicable
{
  if (!self->_preferencesController)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"Preferences controller is missing" reason:0 userInfo:0];
    objc_exception_throw(v9);
  }

  v4 = [objc_opt_class() persistenceKeyForPowerLogEventType:applicable];
  if (v4)
  {
    v10 = v4;
    v5 = [(BYPreferencesController *)self->_preferencesController objectForKey:@"PowerLogSubmittedEvents"];
    v6 = [v5 mutableCopy];

    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v10];
    preferencesController = self->_preferencesController;
    v8 = [v6 copy];
    [(BYPreferencesController *)preferencesController setObject:v8 forKey:@"PowerLogSubmittedEvents" persistImmediately:1];

    v4 = v10;
  }
}

+ (id)nameForPowerLogEventType:(unint64_t)type
{
  v3 = &stru_1F309EFF0;
  if (type == 1)
  {
    v3 = @"TransferMethod";
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"SetupDate";
  }
}

+ (id)persistenceKeyForPowerLogEventType:(unint64_t)type
{
  v3 = @"TransferMethod";
  if (type != 1)
  {
    v3 = 0;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return @"SetupDate";
  }
}

@end