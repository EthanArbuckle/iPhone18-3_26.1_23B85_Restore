@interface RTDaemonClientRegistrarRemoteStatus
- (BOOL)startMonitoringForRemoteStatus:(id *)a3;
- (RTDaemonClientRegistrarRemoteStatus)initWithIntermittentGNSSManager:(id)a3 queue:(id)a4;
- (RTDaemonClientRegistrarRemoteStatusProtocol)delegate;
- (void)addPendingRemoteStatusUpdateBlock:(id)a3 failBlock:(id)a4 description:(id)a5;
- (void)onRemoteStatusUpdateNotification:(id)a3;
- (void)stopMonitoringRemoteStatus;
@end

@implementation RTDaemonClientRegistrarRemoteStatus

- (RTDaemonClientRegistrarRemoteStatus)initWithIntermittentGNSSManager:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: manager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
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
    objc_storeStrong(&v10->_manager, a3);
    objc_storeStrong(&v11->_queue, a4);
    v12 = [[RTInvocationDispatcher alloc] initWithQueue:v9];
    dispatcher = v11->_dispatcher;
    v11->_dispatcher = v12;
  }

  self = v11;
  v14 = self;
LABEL_10:

  return v14;
}

- (BOOL)startMonitoringForRemoteStatus:(id *)a3
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
    v8 = [(RTDaemonClientRegistrarRemoteStatus *)self dispatcher];
    [v8 dispatchPendingInvocations];
  }

  v9 = [(RTDaemonClientRegistrarRemoteStatus *)self registered];
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"client already registered";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v10 errorWithDomain:v11 code:11 userInfo:v12];

    if (a3)
    {
      v14 = v13;
      *a3 = v13;
    }
  }

  else
  {
    v15 = [(RTDaemonClientRegistrarRemoteStatus *)self manager];
    v16 = +[(RTNotification *)RTIntermittentGNSSNotificationRemoteStatusUpdated];
    [v15 addObserver:self selector:sel_onRemoteStatusUpdateNotification_ name:v16];

    v13 = 0;
    self->_observingManager = 1;
  }

  return !v9;
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

  v6 = [(RTDaemonClientRegistrarRemoteStatus *)self dispatcher];
  [v6 removeAllPendingInvocations];

  if ([(RTDaemonClientRegistrarRemoteStatus *)self registered])
  {
    v7 = [(RTDaemonClientRegistrarRemoteStatus *)self manager];
    [v7 removeObserver:self];

    self->_observingManager = 0;
  }
}

- (void)addPendingRemoteStatusUpdateBlock:(id)a3 failBlock:(id)a4 description:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(RTDaemonClientRegistrarRemoteStatus *)self dispatcher];
  [v11 enqueueBlock:v10 failureBlock:v9 description:{@"%@", v8}];
}

- (void)onRemoteStatusUpdateNotification:(id)a3
{
  v5 = a3;
  v6 = +[(RTNotification *)RTIntermittentGNSSNotificationRemoteStatusUpdated];
  v7 = [v5 name];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(RTDaemonClientRegistrarRemoteStatus *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__RTDaemonClientRegistrarRemoteStatus_onRemoteStatusUpdateNotification___block_invoke;
    block[3] = &unk_2788C5020;
    v12 = self;
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
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