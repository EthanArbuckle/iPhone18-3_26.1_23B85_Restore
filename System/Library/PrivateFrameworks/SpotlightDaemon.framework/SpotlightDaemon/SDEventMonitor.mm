@interface SDEventMonitor
+ (id)sharedInstance;
- (id)_init;
- (void)_startMonitoringEventsForStream:(unint64_t)stream;
- (void)registerHandler:(id)handler forEventName:(id)name;
- (void)startMonitoringEvents;
- (void)unregisterHandler:(id)handler forEventName:(id)name;
@end

@implementation SDEventMonitor

- (id)_init
{
  v9.receiver = self;
  v9.super_class = SDEventMonitor;
  v2 = [(SDEventMonitor *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.searchd.eventMonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    eventHandlers = v2->_eventHandlers;
    v2->_eventHandlers = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SDEventMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __32__SDEventMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) _init];
  v3 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)startMonitoringEvents
{
  [(SDEventMonitor *)self _startMonitoringEventsForStream:1];

  [(SDEventMonitor *)self _startMonitoringEventsForStream:0];
}

- (void)_startMonitoringEventsForStream:(unint64_t)stream
{
  v5 = "com.apple.distnoted.matching";
  if (stream != 1)
  {
    v5 = 0;
  }

  if (stream)
  {
    v6 = v5;
  }

  else
  {
    v6 = "com.apple.notifyd.matching";
  }

  v7 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SDEventMonitor *)v6 _startMonitoringEventsForStream:v7];
  }

  queue = [(SDEventMonitor *)self queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__SDEventMonitor__startMonitoringEventsForStream___block_invoke;
  handler[3] = &unk_278937488;
  handler[4] = self;
  handler[5] = v6;
  handler[6] = stream;
  xpc_set_event_stream_handler(v6, queue, handler);
}

void __50__SDEventMonitor__startMonitoringEventsForStream___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithCString:xpc_dictionary_get_string(v3 encoding:{*MEMORY[0x277D86430]), 4}];
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 136315394;
    v22 = v6;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "Received %s notification for keyName:%@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) eventHandlers];
  v8 = [v7 objectForKeyedSubscript:v4];

  if (v8)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__SDEventMonitor__startMonitoringEventsForStream___block_invoke_6;
    v19[3] = &unk_278937460;
    v20 = v8;
    v9 = MEMORY[0x2383760E0](v19);
    v10 = v9;
    v11 = *(a1 + 48);
    if (v11 != 1)
    {
      if (!v11)
      {
        (*(v9 + 16))(v9, *(a1 + 32), v4, 0, 0);
      }

      goto LABEL_17;
    }

    v12 = xpc_dictionary_get_value(v3, "UserInfo");
    v13 = v12;
    if (v12)
    {
      if (MEMORY[0x2383767F0](v12) == MEMORY[0x277D86468])
      {
        v16 = _CFXPCCreateCFObjectFromXPCObject();
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = _SDEventMonitorErrorMake(@"Failed to convert user info XPC dictionary to CF dictionary.");
        }

        (v10)[2](v10, *(a1 + 32), v4, v16, v17);

        goto LABEL_16;
      }

      v14 = @"User info was not a dictionary.";
    }

    else
    {
      v14 = @"Didn't get any user info from event.";
    }

    v15 = _SDEventMonitorErrorMake(v14);
    (v10)[2](v10, *(a1 + 32), v4, 0, v15);

LABEL_16:
LABEL_17:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __50__SDEventMonitor__startMonitoringEventsForStream___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = SDTransactionCreate(&unk_2846C9440);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__SDEventMonitor__startMonitoringEventsForStream___block_invoke_2;
        block[3] = &unk_278937438;
        v28 = v17;
        v23 = v9;
        v24 = v10;
        v25 = v11;
        v26 = v12;
        v27 = v18;
        v19 = v18;
        dispatch_async(MEMORY[0x277D85CD0], block);

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __50__SDEventMonitor__startMonitoringEventsForStream___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  (*(a1[9] + 16))();
  v6 = a1[8];

  SDTransactionDone(v6);
}

- (void)registerHandler:(id)handler forEventName:(id)name
{
  handlerCopy = handler;
  nameCopy = name;
  v8 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SDEventMonitor registerHandler:nameCopy forEventName:v8];
  }

  queue = [(SDEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SDEventMonitor_registerHandler_forEventName___block_invoke;
  block[3] = &unk_278934F08;
  block[4] = self;
  v13 = nameCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = nameCopy;
  dispatch_sync(queue, block);
}

void __47__SDEventMonitor_registerHandler_forEventName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventHandlers];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v3 = [*(a1 + 32) eventHandlers];
    [v3 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(a1 + 48) copy];
  [v5 addObject:v4];
}

- (void)unregisterHandler:(id)handler forEventName:(id)name
{
  handlerCopy = handler;
  nameCopy = name;
  queue = [(SDEventMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SDEventMonitor_unregisterHandler_forEventName___block_invoke;
  block[3] = &unk_278934F08;
  block[4] = self;
  v12 = nameCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_sync(queue, block);
}

void __49__SDEventMonitor_unregisterHandler_forEventName___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) eventHandlers];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v3 = MEMORY[0x2383760E0](*(a1 + 48));
  [v2 removeObject:v3];
}

- (void)_startMonitoringEventsForStream:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "Monitoring notifications for %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerHandler:(uint64_t)a1 forEventName:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "Registering handler for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end