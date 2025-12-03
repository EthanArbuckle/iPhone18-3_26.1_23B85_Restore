@interface RTDaemonClientRegistrarVehicleEvent
- (BOOL)invocationsPending;
- (RTDaemonClientRegistrarVehicleEvent)initWithVehicleLocationProvider:(id)provider queue:(id)queue;
- (RTDaemonClientRegistrarVehicleEventProtocol)delegate;
- (int64_t)countOfPendingInvocations;
- (void)addPendingVehicleEventBlock:(id)block failBlock:(id)failBlock description:(id)description;
- (void)onVehicleEventNotification:(id)notification;
- (void)startMonitoringVehicleEvents;
- (void)stopMonitoringVehicleEvents;
@end

@implementation RTDaemonClientRegistrarVehicleEvent

- (BOOL)invocationsPending
{
  dispatcher = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
  v3 = [dispatcher countOfPendingInvocations] != 0;

  return v3;
}

- (void)startMonitoringVehicleEvents
{
  if ([(RTDaemonClientRegistrarVehicleEvent *)self invocationsPending])
  {
    dispatcher = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
    [dispatcher dispatchPendingInvocations];
  }

  if (![(RTDaemonClientRegistrarVehicleEvent *)self registered])
  {
    vehicleLocationProvider = [(RTDaemonClientRegistrarVehicleEvent *)self vehicleLocationProvider];
    v5 = +[(RTNotification *)RTVehicleEventNotification];
    [vehicleLocationProvider addObserver:self selector:sel_onVehicleEventNotification_ name:v5];

    [(RTDaemonClientRegistrarVehicleEvent *)self setRegistered:1];
  }
}

- (RTDaemonClientRegistrarVehicleEvent)initWithVehicleLocationProvider:(id)provider queue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v9 = queueCopy;
  selfCopy = 0;
  if (providerCopy && queueCopy)
  {
    v18.receiver = self;
    v18.super_class = RTDaemonClientRegistrarVehicleEvent;
    v11 = [(RTDaemonClientRegistrarVehicleEvent *)&v18 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_queue, queue);
      v13 = [RTInvocationDispatcher alloc];
      queue = [(RTDaemonClientRegistrarVehicleEvent *)v12 queue];
      v15 = [(RTInvocationDispatcher *)v13 initWithQueue:queue];
      dispatcher = v12->_dispatcher;
      v12->_dispatcher = v15;

      objc_storeStrong(&v12->_vehicleLocationProvider, provider);
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)stopMonitoringVehicleEvents
{
  dispatcher = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
  [dispatcher removeAllPendingInvocations];

  if ([(RTDaemonClientRegistrarVehicleEvent *)self registered])
  {
    vehicleLocationProvider = [(RTDaemonClientRegistrarVehicleEvent *)self vehicleLocationProvider];
    v5 = +[(RTNotification *)RTVehicleEventNotification];
    [vehicleLocationProvider removeObserver:self fromNotification:v5];

    [(RTDaemonClientRegistrarVehicleEvent *)self setRegistered:0];
  }
}

- (void)onVehicleEventNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTDaemonClientRegistrarVehicleEvent *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RTDaemonClientRegistrarVehicleEvent_onVehicleEventNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
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
  dispatcher = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
  countOfPendingInvocations = [dispatcher countOfPendingInvocations];

  return countOfPendingInvocations;
}

- (void)addPendingVehicleEventBlock:(id)block failBlock:(id)failBlock description:(id)description
{
  if (block)
  {
    descriptionCopy = description;
    failBlockCopy = failBlock;
    blockCopy = block;
    dispatcher = [(RTDaemonClientRegistrarVehicleEvent *)self dispatcher];
    [dispatcher enqueueBlock:blockCopy failureBlock:failBlockCopy description:{@"%@", descriptionCopy}];
  }
}

- (RTDaemonClientRegistrarVehicleEventProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end