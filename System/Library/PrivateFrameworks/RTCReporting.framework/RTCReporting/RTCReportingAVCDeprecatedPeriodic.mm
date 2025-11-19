@interface RTCReportingAVCDeprecatedPeriodic
- (BOOL)registerPeriodicTaskForModule:(unsigned int)a3 needToUpdate:(BOOL)a4 needToReport:(BOOL)a5 serviceBlock:(id)a6;
- (BOOL)unregisterPeriodTaskForModule:(unsigned int)a3;
- (RTCReportingAVCDeprecatedPeriodic)initWithSession:(id)a3;
- (void)dealloc;
- (void)startLogTimerWithInterval:(int)a3 reportingMultiplier:(int)a4 category:(unsigned __int16)a5 type:(unsigned __int16)a6;
- (void)stopLogTimer;
@end

@implementation RTCReportingAVCDeprecatedPeriodic

- (RTCReportingAVCDeprecatedPeriodic)initWithSession:(id)a3
{
  v9.receiver = self;
  v9.super_class = RTCReportingAVCDeprecatedPeriodic;
  v4 = [(RTCReportingAVCDeprecatedPeriodic *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_session = a3;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5->_queue = dispatch_queue_create("com.apple.AVConference.RTCPeriodicTask", v6);
    v7 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v5->_periodicTaskQueue = dispatch_queue_create("com.apple.AVConference.PeriodicReportingTask", v7);
    v5->_periodicServiceDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v5;
}

- (void)dealloc
{
  if (self->_timer)
  {
    [(RTCReportingAVCDeprecatedPeriodic *)self stopLogTimer];
  }

  dispatch_release(self->_queue);
  dispatch_release(self->_periodicTaskQueue);
  v3.receiver = self;
  v3.super_class = RTCReportingAVCDeprecatedPeriodic;
  [(RTCReportingAVCDeprecatedPeriodic *)&v3 dealloc];
}

uint64_t __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

intptr_t __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke_27(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) block];
  (*(v3 + 16))(v3, v2);
  pthread_mutex_lock((*(*(a1 + 56) + 8) + 32));
  if (v2)
  {
    v4 = *(a1 + 40);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [v2 objectForKeyedSubscript:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v4 objectForKeyedSubscript:v9])
            {
              [objc_msgSend(v4 objectForKeyedSubscript:{v9), "addEntriesFromDictionary:", objc_msgSend(v2, "objectForKeyedSubscript:", v9)}];
              continue;
            }
          }

          else
          {
            [v2 objectForKeyedSubscript:v9];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 objectForKeyedSubscript:v9])
            {
              [objc_msgSend(v4 objectForKeyedSubscript:{v9), "addObjectsFromArray:", objc_msgSend(v2, "objectForKeyedSubscript:", v9)}];
              continue;
            }
          }

          [v4 setObject:objc_msgSend(v2 forKeyedSubscript:{"objectForKeyedSubscript:", v9), v9}];
        }

        v6 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  pthread_mutex_unlock((*(*(a1 + 56) + 8) + 32));

  result = dispatch_semaphore_signal(*(a1 + 48));
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __91__RTCReportingAVCDeprecatedPeriodic__myPeriodicTask_type_intervalMultiplier_updateTimeout___block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  (*(v2 + 16))(v2, 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)startLogTimerWithInterval:(int)a3 reportingMultiplier:(int)a4 category:(unsigned __int16)a5 type:(unsigned __int16)a6
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke;
  block[3] = &unk_2784F12C8;
  block[4] = self;
  v10 = a5;
  v11 = a6;
  v8 = a3;
  v9 = a4;
  dispatch_async(queue, block);
}

void __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 40))
  {
    *(*(a1 + 32) + 40) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v1 + 24));
    v3 = *(a1 + 32);
    if (*(v3 + 40))
    {
      *(v3 + 8) = 0;
      v4 = 1000000000 * *(a1 + 40);
      v5 = *(*(a1 + 32) + 40);
      v6 = dispatch_walltime(0, 0);
      dispatch_source_set_timer(v5, v6, v4, 0x5F5E100uLL);
      v7 = *(a1 + 32);
      v8 = *(v7 + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_2;
      handler[3] = &unk_2784F12A0;
      v9 = *(a1 + 48);
      v11 = *(a1 + 44);
      v12 = v9;
      handler[4] = v7;
      handler[5] = v4;
      dispatch_source_set_event_handler(v8, handler);
      dispatch_resume(*(*(a1 + 32) + 40));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_1((a1 + 40), (a1 + 44));
      }
    }
  }
}

- (void)stopLogTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTCReportingAVCDeprecatedPeriodic_stopLogTimer__block_invoke;
  block[3] = &unk_2784F12F0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__RTCReportingAVCDeprecatedPeriodic_stopLogTimer__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v3)
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_223C26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "stopLogTimer.", v4, 2u);
      v2 = *(*(a1 + 32) + 40);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(*(a1 + 32) + 40));
    *(*(a1 + 32) + 40) = 0;
    [*(*(a1 + 32) + 16) removeAllObjects];
    *(*(a1 + 32) + 8) = 0;
  }

  else if (v3)
  {
    __49__RTCReportingAVCDeprecatedPeriodic_stopLogTimer__block_invoke_cold_1();
  }
}

- (BOOL)registerPeriodicTaskForModule:(unsigned int)a3 needToUpdate:(BOOL)a4 needToReport:(BOOL)a5 serviceBlock:(id)a6
{
  if (a6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke;
    block[3] = &unk_2784F1318;
    v11 = a4;
    v12 = a5;
    block[4] = self;
    block[5] = a6;
    v10 = a3;
    dispatch_async(queue, block);
  }

  return a6 != 0;
}

void __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke(uint64_t a1)
{
  v2 = (a1 + 53);
  v3 = (a1 + 52);
  v4 = [[UpdateAndReportServices alloc] initWithServices:*(a1 + 52) needToReport:*(a1 + 53) service:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    v7 = *(a1 + 48);
    v6 = (a1 + 48);
    [*(*(v6 - 2) + 16) setObject:v4 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v7)}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke_cold_1(v6, v3, v2);
    }
  }
}

- (BOOL)unregisterPeriodTaskForModule:(unsigned int)a3
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke;
  v5[3] = &unk_2784F1340;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(queue, v5);
  return 1;
}

void __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 16) objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(a1 + 40))}])
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", *(a1 + 40))}];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke_cold_2(v2);
  }
}

void __97__RTCReportingAVCDeprecatedPeriodic_startLogTimerWithInterval_reportingMultiplier_category_type___block_invoke_cold_1(unsigned int *a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xEu);
  v9 = *MEMORY[0x277D85DE8];
}

void __106__RTCReportingAVCDeprecatedPeriodic_registerPeriodicTaskForModule_needToUpdate_needToReport_serviceBlock___block_invoke_cold_1(int *a1, _BYTE *a2, _BYTE *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *a2;
  *a3;
  v9 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x277D85DE8];
}

void __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__RTCReportingAVCDeprecatedPeriodic_unregisterPeriodTaskForModule___block_invoke_cold_2(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

@end