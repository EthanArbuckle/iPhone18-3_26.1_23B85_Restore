@interface RTDaemonClientRegistrarVehicleEvent
- (BOOL)invocationsPending;
- (RTDaemonClientRegistrarVehicleEvent)initWithVehicleLocationProvider:(id)a3 queue:(id)a4;
- (RTDaemonClientRegistrarVehicleEventProtocol)delegate;
- (int64_t)countOfPendingInvocations;
- (void)addPendingVehicleEventBlock:(id)a3 failBlock:(id)a4 description:(id)a5;
- (void)onVehicleEventNotification:(id)a3;
- (void)startMonitoringVehicleEvents;
- (void)stopMonitoringVehicleEvents;
@end

@implementation RTDaemonClientRegistrarVehicleEvent

- (BOOL)invocationsPending
{
  v2 = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
  v3 = [v2 countOfPendingInvocations] != 0;

  return v3;
}

- (void)startMonitoringVehicleEvents
{
  if ([(RTDaemonClientRegistrarVehicleEvent *)self invocationsPending])
  {
    v3 = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
    [v3 dispatchPendingInvocations];
  }

  if (![(RTDaemonClientRegistrarVehicleEvent *)self registered])
  {
    v4 = [(RTDaemonClientRegistrarVehicleEvent *)self vehicleLocationProvider];
    v5 = +[(RTNotification *)RTVehicleEventNotification];
    [v4 addObserver:self selector:sel_onVehicleEventNotification_ name:v5];

    [(RTDaemonClientRegistrarVehicleEvent *)self setRegistered:1];
  }
}

- (RTDaemonClientRegistrarVehicleEvent)initWithVehicleLocationProvider:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v18.receiver = self;
    v18.super_class = RTDaemonClientRegistrarVehicleEvent;
    v11 = [(RTDaemonClientRegistrarVehicleEvent *)&v18 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_queue, a4);
      v13 = [RTInvocationDispatcher alloc];
      v14 = [(RTDaemonClientRegistrarVehicleEvent *)v12 queue];
      v15 = [(RTInvocationDispatcher *)v13 initWithQueue:v14];
      dispatcher = v12->_dispatcher;
      v12->_dispatcher = v15;

      objc_storeStrong(&v12->_vehicleLocationProvider, a3);
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

- (void)stopMonitoringVehicleEvents
{
  v3 = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
  [v3 removeAllPendingInvocations];

  if ([(RTDaemonClientRegistrarVehicleEvent *)self registered])
  {
    v4 = [(RTDaemonClientRegistrarVehicleEvent *)self vehicleLocationProvider];
    v5 = +[(RTNotification *)RTVehicleEventNotification];
    [v4 removeObserver:self fromNotification:v5];

    [(RTDaemonClientRegistrarVehicleEvent *)self setRegistered:0];
  }
}

- (void)onVehicleEventNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTDaemonClientRegistrarVehicleEvent *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RTDaemonClientRegistrarVehicleEvent_onVehicleEventNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__RTDaemonClientRegistrarVehicleEvent_onVehicleEventNotification___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) vehicleEvents];
      [v3 vehicleEventRegistrar:*(a1 + 40) didReceiveVehicleEvents:v2 error:0];
    }
  }
}

- (int64_t)countOfPendingInvocations
{
  v2 = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
  v3 = [v2 countOfPendingInvocations];

  return v3;
}

- (void)addPendingVehicleEventBlock:(id)a3 failBlock:(id)a4 description:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
    [v11 enqueueBlock:v10 failureBlock:v9 description:{@"%@", v8}];
  }
}

- (RTDaemonClientRegistrarVehicleEventProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end