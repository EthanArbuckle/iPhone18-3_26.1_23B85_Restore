@interface ExpertSystemHandlerCore
+ (id)configureClass:(id)a3;
+ (id)internalStateDictionary;
- (BOOL)noteSymptom:(id)a3;
- (ExpertSystemHandlerCore)initWithQueue:(id)a3;
- (int)read:(id)a3 returnedValues:(id)a4;
- (void)cancelAllTimers;
- (void)cancelTimerWithIdentifier:(id)a3;
- (void)dealloc;
- (void)scheduleTimerFor:(unint64_t)a3 leeway:(unint64_t)a4 identifier:(id)a5 queue:(id)a6 eventHandler:(id)a7 cancelHandler:(id)a8;
@end

@implementation ExpertSystemHandlerCore

- (ExpertSystemHandlerCore)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ExpertSystemHandlerCore;
  v6 = [(ExpertSystemHandlerCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(ExpertSystemHandlerCore *)self cancelAllTimers];
  v3.receiver = self;
  v3.super_class = ExpertSystemHandlerCore;
  [(ExpertSystemHandlerCore *)&v3 dealloc];
}

- (void)scheduleTimerFor:(unint64_t)a3 leeway:(unint64_t)a4 identifier:(id)a5 queue:(id)a6 eventHandler:(id)a7 cancelHandler:(id)a8
{
  v46 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (a3 && (v18 = [v14 length], v16) && v15 && v18)
  {
    activeTimers = self->_activeTimers;
    if (!activeTimers)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = self->_activeTimers;
      self->_activeTimers = v20;

      activeTimers = self->_activeTimers;
    }

    v22 = [(NSMutableDictionary *)activeTimers objectForKeyedSubscript:v14];

    v23 = debuggabilityLogHandle;
    v24 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
    if (v22)
    {
      if (v24)
      {
        *buf = 138412290;
        v37 = v14;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "ES: Active timer already exists for identifier %@", buf, 0xCu);
      }
    }

    else
    {
      if (v24)
      {
        *buf = 138412802;
        v37 = v14;
        v38 = 2048;
        v39 = a3;
        v40 = 2048;
        v41 = a4;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "ExpertSystemCore: Scheduling timer with identifier %@ to fire in %ld seconds (leeway: %ld)", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v28 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15);
      v29 = dispatch_time(0, 1000000000 * a3);
      dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * a4);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __95__ExpertSystemHandlerCore_scheduleTimerFor_leeway_identifier_queue_eventHandler_cancelHandler___block_invoke;
      handler[3] = &unk_27898D608;
      v34 = v16;
      objc_copyWeak(&v35, buf);
      v30 = v14;
      v33 = v30;
      dispatch_source_set_event_handler(v28, handler);
      if (v17)
      {
        dispatch_source_set_cancel_handler(v28, v17);
      }

      [(NSMutableDictionary *)self->_activeTimers setObject:v28 forKeyedSubscript:v30];
      dispatch_resume(v28);

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v25 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v26 = v25;
      v27 = _Block_copy(v16);
      *buf = 134219010;
      v37 = a3;
      v38 = 2048;
      v39 = a4;
      v40 = 2112;
      v41 = v14;
      v42 = 2048;
      v43 = v15;
      v44 = 2048;
      v45 = v27;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "ES: Invalid parameters scheduling timer (duration %ld, leeway %ld, identifier %@, queue: %p, handler %p)", buf, 0x34u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __95__ExpertSystemHandlerCore_scheduleTimerFor_leeway_identifier_queue_eventHandler_cancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained cancelTimerWithIdentifier:*(a1 + 32)];
    WeakRetained = v4;
  }
}

- (void)cancelTimerWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_activeTimers objectForKeyedSubscript:v4];
    v6 = debuggabilityLogHandle;
    if (v5)
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "ES: Cancelling timer with identifier %@", &v8, 0xCu);
      }

      dispatch_source_cancel(v5);
      [(NSMutableDictionary *)self->_activeTimers setObject:0 forKeyedSubscript:v4];
    }

    else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "ES: No active timer to cancel with identifier %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllTimers
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    activeTimers = self->_activeTimers;
    v5 = v3;
    v7 = 134217984;
    v8 = [(NSMutableDictionary *)activeTimers count];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ES: Cancelling all %ld timers", &v7, 0xCu);
  }

  [(NSMutableDictionary *)self->_activeTimers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_25];
  [(NSMutableDictionary *)self->_activeTimers removeAllObjects];
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)configureClass:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"ExpertSystemHandlerCore.m" lineNumber:118 description:{@"Subclasses must provide an impl for %s", "+[ExpertSystemHandlerCore configureClass:]"}];

  return 0;
}

+ (id)internalStateDictionary
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ExpertSystemHandlerCore.m" lineNumber:124 description:{@"Subclasses must provide an impl for %s", "+[ExpertSystemHandlerCore internalStateDictionary]"}];

  return 0;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (BOOL)noteSymptom:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ExpertSystemHandlerCore.m" lineNumber:141 description:{@"Subclasses must provide an impl for %s", "-[ExpertSystemHandlerCore noteSymptom:]"}];

  return 0;
}

@end