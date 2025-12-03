@interface PowerUIInCarSignalMonitor
+ (id)monitorWithDelegate:(id)delegate;
- (PowerUIInCarSignalMonitor)initWithDelegate:(id)delegate;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startMonitoring;
@end

@implementation PowerUIInCarSignalMonitor

- (PowerUIInCarSignalMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = PowerUIInCarSignalMonitor;
  v6 = [(PowerUIInCarSignalMonitor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = os_log_create("com.apple.powerui.signals", "inCar");
    log = v7->_log;
    v7->_log = v8;
  }

  return v7;
}

- (void)sessionDidConnect:(id)connect
{
  inCar = [(PowerUIInCarSignalMonitor *)self inCar];
  currentSession = [(CARSessionStatus *)self->_sessionStatus currentSession];
  self->_carplayConnected = currentSession != 0;

  if (inCar != [(PowerUIInCarSignalMonitor *)self inCar])
  {
    delegate = self->_delegate;
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [(PowerUISignalMonitorDelegate *)delegate monitor:self maySuggestNewFullChargeDeadline:distantFuture];
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  inCar = [(PowerUIInCarSignalMonitor *)self inCar];
  currentSession = [(CARSessionStatus *)self->_sessionStatus currentSession];
  self->_carplayConnected = currentSession != 0;

  if (inCar != [(PowerUIInCarSignalMonitor *)self inCar])
  {
    delegate = self->_delegate;
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [(PowerUISignalMonitorDelegate *)delegate monitor:self maySuggestNewFullChargeDeadline:distantFuture];
  }
}

+ (id)monitorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[self alloc] initWithDelegate:delegateCopy];

  return v5;
}

- (void)startMonitoring
{
  out_token = 0;
  uTF8String = [@"com.apple.locationd.vehicle.connected" UTF8String];
  v4 = dispatch_get_global_queue(-2, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke;
  handler[3] = &unk_2782D3E60;
  handler[4] = self;
  notify_register_dispatch(uTF8String, &out_token, v4, handler);

  state64 = 0;
  notify_get_state(out_token, &state64);
  self->_vehicleConnected = state64 != 0;
  v16 = 0;
  uTF8String2 = [@"com.apple.GeoServices.navigation.started" UTF8String];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke_31;
  v15[3] = &unk_2782D3E60;
  v15[4] = self;
  notify_register_dispatch(uTF8String2, &v16, v4, v15);

  notify_get_state(v16, &state64);
  self->_navigationStarted = state64 != 0;
  v14 = 0;
  uTF8String3 = [@"com.apple.locationd.vehicle.disconnected" UTF8String];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke_35;
  v13[3] = &unk_2782D3E60;
  v13[4] = self;
  notify_register_dispatch(uTF8String3, &v14, v4, v13);

  v12 = 0;
  uTF8String4 = [@"com.apple.GeoServices.navigation.stopped" UTF8String];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke_36;
  v11[3] = &unk_2782D3E60;
  v11[4] = self;
  notify_register_dispatch(uTF8String4, &v12, v4, v11);

  initAndWaitUntilSessionUpdated = [objc_alloc(MEMORY[0x277CF89F8]) initAndWaitUntilSessionUpdated];
  sessionStatus = self->_sessionStatus;
  self->_sessionStatus = initAndWaitUntilSessionUpdated;

  [(CARSessionStatus *)self->_sessionStatus addSessionObserver:self];
  currentSession = [(CARSessionStatus *)self->_sessionStatus currentSession];
  self->_carplayConnected = currentSession != 0;
}

void __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inCar];
  *(*(a1 + 32) + 9) = 1;
  if (v2 != [*(a1 + 32) inCar])
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v10[0] = 67109376;
      v10[1] = v2;
      v11 = 1024;
      v12 = [v4 inCar];
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Previously: %u, Now: %u", v10, 0xEu);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [MEMORY[0x277CBEAA8] distantFuture];
    [v7 monitor:v6 maySuggestNewFullChargeDeadline:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke_31(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inCar];
  *(*(a1 + 32) + 10) = 1;
  if (v2 != [*(a1 + 32) inCar])
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v10[0] = 67109376;
      v10[1] = v2;
      v11 = 1024;
      v12 = [v4 inCar];
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Previously: %u, Now: %u", v10, 0xEu);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [MEMORY[0x277CBEAA8] distantFuture];
    [v7 monitor:v6 maySuggestNewFullChargeDeadline:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke_35(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inCar];
  *(*(a1 + 32) + 9) = 0;
  if (v2 != [*(a1 + 32) inCar])
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v10[0] = 67109376;
      v10[1] = v2;
      v11 = 1024;
      v12 = [v4 inCar];
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Previously: %u, Now: %u", v10, 0xEu);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [MEMORY[0x277CBEAA8] distantFuture];
    [v7 monitor:v6 maySuggestNewFullChargeDeadline:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __44__PowerUIInCarSignalMonitor_startMonitoring__block_invoke_36(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inCar];
  *(*(a1 + 32) + 10) = 0;
  if (v2 != [*(a1 + 32) inCar])
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v10[0] = 67109376;
      v10[1] = v2;
      v11 = 1024;
      v12 = [v4 inCar];
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Previously: %u, Now: %u", v10, 0xEu);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [MEMORY[0x277CBEAA8] distantFuture];
    [v7 monitor:v6 maySuggestNewFullChargeDeadline:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end