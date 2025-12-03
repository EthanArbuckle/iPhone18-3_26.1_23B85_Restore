@interface VKNotificationObserver
- (VKNotificationObserver)initWithTarget:(id)target taskContext:(const void *)context;
- (void)_receivedFlushTileCachesNotification;
- (void)_receivedLocalChangedNotification;
- (void)_receivedMemoryNotification;
- (void)_receivedPowerStateDidChangeNotification;
- (void)_receivedThermalStateDidChangeNotification;
- (void)dealloc;
@end

@implementation VKNotificationObserver

- (void)_receivedThermalStateDidChangeNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didReceiveThermalStateChanged];
  }
}

- (void)_receivedPowerStateDidChangeNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didReceivePowerStateChanged];
  }
}

- (void)_receivedLocalChangedNotification
{
  v8 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    v6 = 134217984;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Received system locale changed notification: %p", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained(&self->_target);
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 didReceiveLocalChanged];
  }
}

- (void)_receivedFlushTileCachesNotification
{
  v8 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    v6 = 134217984;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Received flush cache notification: %p", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained(&self->_target);
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 didReceiveFlushTileCaches];
  }
}

- (void)_receivedMemoryNotification
{
  v8 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    v6 = 134217984;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Received memory notification: %p", &v6, 0xCu);
  }

  v5 = objc_loadWeakRetained(&self->_target);
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 didReceiveMemoryWarning];
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_target, 0);
  dispatch_source_set_event_handler(self->_memoryNotificationEventSource, &__block_literal_global_11742);
  memoryNotificationEventSource = self->_memoryNotificationEventSource;
  self->_memoryNotificationEventSource = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VKDidReceiveMemoryWarningNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"VKShouldFlushTileCachesNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x1E696A7D8] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 removeObserver:self name:*MEMORY[0x1E696A7E0] object:0];

  v9.receiver = self;
  v9.super_class = VKNotificationObserver;
  [(VKNotificationObserver *)&v9 dealloc];
}

- (VKNotificationObserver)initWithTarget:(id)target taskContext:(const void *)context
{
  targetCopy = target;
  v27.receiver = self;
  v27.super_class = VKNotificationObserver;
  v7 = [(VKNotificationObserver *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    v9 = *context;
    v10 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, v9);
    memoryNotificationEventSource = v8->_memoryNotificationEventSource;
    v8->_memoryNotificationEventSource = v10;

    objc_initWeak(&location, v8);
    v12 = v8->_memoryNotificationEventSource;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __53__VKNotificationObserver_initWithTarget_taskContext___block_invoke;
    v24 = &unk_1E7B364F8;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(v12, &v21);
    dispatch_resume(v8->_memoryNotificationEventSource);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__receivedMemoryNotification name:@"VKDidReceiveMemoryWarningNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel__receivedFlushTileCachesNotification name:@"VKShouldFlushTileCachesNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v8 selector:sel__receivedLocalChangedNotification name:*MEMORY[0x1E695D8F0] object:0];

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo thermalState];

    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    [processInfo2 isLowPowerModeEnabled];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v8 selector:sel__receivedThermalStateDidChangeNotification name:*MEMORY[0x1E696A7E0] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v8 selector:sel__receivedPowerStateDidChangeNotification name:*MEMORY[0x1E696A7D8] object:0];

    [(VKNotificationObserver *)v8 _receivedThermalStateDidChangeNotification];
    [(VKNotificationObserver *)v8 _receivedPowerStateDidChangeNotification];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __53__VKNotificationObserver_initWithTarget_taskContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _receivedMemoryNotification];
  }
}

@end