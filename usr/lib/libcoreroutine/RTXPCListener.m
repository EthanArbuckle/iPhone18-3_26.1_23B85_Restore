@interface RTXPCListener
- (RTXPCListener)initWithMachServiceName:(id)a3;
- (void)_setup;
- (void)checkInWithHandler:(id)a3;
- (void)logClients;
- (void)setup;
- (void)shutdownWithHandler:(id)a3;
@end

@implementation RTXPCListener

- (void)logClients
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(RTXPCListener *)self connectedClients];
      v8 = [v7 count];
      v9 = [(RTXPCListener *)self machServiceName];
      v13 = 134218242;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%lu clients connected to service, %@", &v13, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = [(RTXPCListener *)self connectedClients];
    [v4 enumerateObjectsUsingBlock:&__block_literal_global_8];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(RTXPCListener *)self disconnectedClients];
      v11 = [v10 count];
      v12 = [(RTXPCListener *)self machServiceName];
      v13 = 134218242;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%lu clients not connected to service, %@", &v13, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = [(RTXPCListener *)self disconnectedClients];
    [v6 enumerateObjectsUsingBlock:&__block_literal_global_6];
  }
}

- (RTXPCListener)initWithMachServiceName:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21.receiver = self;
    v21.super_class = RTXPCListener;
    v5 = [(RTXPCListener *)&v21 initWithMachServiceName:v4];
    if (v5)
    {
      v6 = [v4 copy];
      machServiceName = v5->_machServiceName;
      v5->_machServiceName = v6;

      v8 = v5;
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(RTXPCListener *)v8 UTF8String];
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v8];
        v10 = [v13 UTF8String];
      }

      v14 = dispatch_queue_create(v10, v9);

      queue = v8->_queue;
      v8->_queue = v14;

      v16 = objc_opt_new();
      connectedClients = v8->_connectedClients;
      v8->_connectedClients = v16;

      v18 = objc_opt_new();
      disconnectedClients = v8->_disconnectedClients;
      v8->_disconnectedClients = v18;
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTXPCListener initWithMachServiceName:]";
      v24 = 1024;
      v25 = 29;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: serviceName (in %s:%d)", buf, 0x12u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_setup
{
  [(RTXPCListener *)self logClients];
  v3 = [(RTXPCListener *)self queue];
  [(RTXPCListener *)self _setQueue:v3];

  [(RTXPCListener *)self setDelegate:self];
  [(RTXPCListener *)self resume];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = [(RTXPCListener *)self machServiceName];
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

- (void)setup
{
  v3 = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__RTXPCListener_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)shutdownWithHandler:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__10;
  v21[4] = __Block_byref_object_dispose__10;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];
  v11 = v10;
  [v10 UTF8String];
  v22 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v13 = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__RTXPCListener_shutdownWithHandler___block_invoke;
  block[3] = &unk_2788C5380;
  v19 = v5;
  v20 = v21;
  block[4] = self;
  v14 = v5;
  dispatch_async(v13, block);

  _Block_object_dispose(v21, 8);
}

uint64_t __37__RTXPCListener_shutdownWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __27__RTXPCListener_logClients__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%lu: %@", &v6, 0x16u);
    }
  }
}

void __27__RTXPCListener_logClients__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%lu: %@", &v6, 0x16u);
    }
  }
}

- (void)checkInWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTXPCListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RTXPCListener_checkInWithHandler___block_invoke;
  block[3] = &unk_2788C4758;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

@end