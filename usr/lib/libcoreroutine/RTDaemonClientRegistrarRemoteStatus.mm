@interface RTDaemonClientRegistrarRemoteStatus
- (BOOL)startMonitoringForRemoteStatus:(id *)status;
- (RTDaemonClientRegistrarRemoteStatus)initWithIntermittentGNSSManager:(id)manager queue:(id)queue;
- (RTDaemonClientRegistrarRemoteStatusProtocol)delegate;
- (void)addPendingRemoteStatusUpdateBlock:(id)block failBlock:(id)failBlock description:(id)description;
- (void)onRemoteStatusUpdateNotification:(id)notification;
- (void)stopMonitoringRemoteStatus;
@end

@implementation RTDaemonClientRegistrarRemoteStatus

- (RTDaemonClientRegistrarRemoteStatus)initWithIntermittentGNSSManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v9 = queueCopy;
  if (!managerCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: manager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!queueCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: queue";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = RTDaemonClientRegistrarRemoteStatus;
  v10 = [(RTDaemonClientRegistrarRemoteStatus *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_manager, manager);
    objc_storeStrong(&v11->_queue, queue);
    v12 = [[RTInvocationDispatcher alloc] initWithQueue:v9];
    dispatcher = v11->_dispatcher;
    v11->_dispatcher = v12;
  }

  self = v11;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)startMonitoringForRemoteStatus:(id *)status
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  if ([(RTDaemonClientRegistrar *)self invocationsPending])
  {
    dispatcher = [(RTDaemonClientRegistrarRemoteStatus *)self dispatcher];
    [dispatcher dispatchPendingInvocations];
  }

  registered = [(RTDaemonClientRegistrarRemoteStatus *)self registered];
  if (registered)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"client already registered";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v10 errorWithDomain:v11 code:11 userInfo:v12];

    if (status)
    {
      v14 = v13;
      *status = v13;
    }
  }

  else
  {
    manager = [(RTDaemonClientRegistrarRemoteStatus *)self manager];
    v16 = +[(RTNotification *)RTIntermittentGNSSNotificationRemoteStatusUpdated];
    [manager addObserver:self selector:sel_onRemoteStatusUpdateNotification_ name:v16];

    v13 = 0;
    self->_observingManager = 1;
  }

  return !registered;
}

- (void)stopMonitoringRemoteStatus
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@", &v8, 0xCu);
    }
  }

  dispatcher = [(RTDaemonClientRegistrarRemoteStatus *)self dispatcher];
  [dispatcher removeAllPendingInvocations];

  if ([(RTDaemonClientRegistrarRemoteStatus *)self registered])
  {
    manager = [(RTDaemonClientRegistrarRemoteStatus *)self manager];
    [manager removeObserver:self];

    self->_observingManager = 0;
  }
}

- (void)addPendingRemoteStatusUpdateBlock:(id)block failBlock:(id)failBlock description:(id)description
{
  descriptionCopy = description;
  failBlockCopy = failBlock;
  blockCopy = block;
  dispatcher = [(RTDaemonClientRegistrarRemoteStatus *)self dispatcher];
  [dispatcher enqueueBlock:blockCopy failureBlock:failBlockCopy description:{@"%@", descriptionCopy}];
}

- (void)onRemoteStatusUpdateNotification:(id)notification
{
  notificationCopy = notification;
  v6 = +[(RTNotification *)RTIntermittentGNSSNotificationRemoteStatusUpdated];
  name = [notificationCopy name];
  v8 = [v6 isEqualToString:name];

  if (v8)
  {
    queue = [(RTDaemonClientRegistrarRemoteStatus *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__RTDaemonClientRegistrarRemoteStatus_onRemoteStatusUpdateNotification___block_invoke;
    block[3] = &unk_2788C5020;
    selfCopy = self;
    v13 = a2;
    v11 = notificationCopy;
    dispatch_async(queue, block);
  }
}

void __72__RTDaemonClientRegistrarRemoteStatus_onRemoteStatusUpdateNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteStatus];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(*(a1 + 48));
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, callback, remote status update, %ld", &v7, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteStatusRegistrar:*(a1 + 40) didReceiveRemoteStatus:v2 error:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityIntermittentGNSS);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "no delegate or does not respond to selector, returning", &v7, 2u);
    }
  }
}

- (RTDaemonClientRegistrarRemoteStatusProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end