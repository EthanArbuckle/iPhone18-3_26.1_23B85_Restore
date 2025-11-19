@interface SDSignalHandler
+ (void)addMemoryHandler;
+ (void)addSignalHandler;
+ (void)setupHandlers;
@end

@implementation SDSignalHandler

+ (void)setupHandlers
{
  +[SDSignalHandler addSignalHandler];

  +[SDSignalHandler addMemoryHandler];
}

+ (void)addSignalHandler
{
  signal(2, 1);
  v2 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, MEMORY[0x277D85CD0]);
  dispatch_source_set_event_handler(v2, &__block_literal_global_15);
  if (!v2)
  {
    +[SDSignalHandler addSignalHandler];
  }

  dispatch_resume(v2);
  v3 = signal_count++;
  v4 = signal_handlers[v3];
  signal_handlers[v3] = v2;

  signal(15, 1);
  v5 = MEMORY[0x277D85CD0];
  v6 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, MEMORY[0x277D85CD0]);

  dispatch_source_set_event_handler(v6, &__block_literal_global_4_0);
  if (!v6)
  {
    +[SDSignalHandler addSignalHandler];
  }

  dispatch_resume(v6);
  v7 = signal_count++;
  v8 = signal_handlers[v7];
  signal_handlers[v7] = v6;

  signal(1, 1);
  v9 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, v5);

  dispatch_source_set_event_handler(v9, &__block_literal_global_6);
  if (!v9)
  {
    +[SDSignalHandler addSignalHandler];
  }

  dispatch_resume(v9);
  v10 = signal_count++;
  v11 = signal_handlers[v10];
  signal_handlers[v10] = v9;

  signal(30, 1);
  v12 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, v5);

  dispatch_source_set_event_handler(v12, &__block_literal_global_8);
  if (!v12)
  {
    +[SDSignalHandler addSignalHandler];
  }

  dispatch_resume(v12);
  v13 = signal_count++;
  v14 = signal_handlers[v13];
  signal_handlers[v13] = v12;

  signal(31, 1);
  v15 = dispatch_source_create(MEMORY[0x277D85D30], 0x1FuLL, 0, v5);

  dispatch_source_set_event_handler(v15, &__block_literal_global_10_0);
  if (!v15)
  {
    +[SDSignalHandler addSignalHandler];
  }

  dispatch_resume(v15);
  v16 = signal_count++;
  v17 = signal_handlers[v16];
  signal_handlers[v16] = v15;
}

+ (void)addMemoryHandler
{
  v2 = sMemoryStatusFlags;
  v3 = dispatch_get_global_queue(2, 2uLL);
  v4 = dispatch_source_create(MEMORY[0x277D85D18], 0, v2, v3);
  v5 = _memoryStatusSource;
  _memoryStatusSource = v4;

  if (_memoryStatusSource)
  {
    dispatch_source_set_event_handler(_memoryStatusSource, &__block_literal_global_12);
    v6 = _memoryStatusSource;

    dispatch_activate(v6);
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_DEFAULT, "Creating memory pressure handler failed", v8, 2u);
    }
  }
}

void __35__SDSignalHandler_addMemoryHandler__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = _memoryStatusSource;
  objc_sync_enter(v0);
  data = dispatch_source_get_data(_memoryStatusSource);
  v2 = CFAbsoluteTimeGetCurrent() - *&_block_invoke_lastNotification;
  if (data != _block_invoke_lastStatus || v2 > 30.0)
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = data;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "Memory pressure (%ld)", &v6, 0xCu);
    }

    [sSignalHandlerDelegate didReceiveMemoryPressureNotification:data];
  }

  _block_invoke_lastStatus = data;
  _block_invoke_lastNotification = CFAbsoluteTimeGetCurrent();
  objc_sync_exit(v0);

  v5 = *MEMORY[0x277D85DE8];
}

@end