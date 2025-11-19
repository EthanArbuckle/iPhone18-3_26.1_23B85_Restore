@interface RTService
- (id)name;
- (void)checkInWithHandler:(id)a3;
- (void)setup;
- (void)shutdownWithHandler:(id)a3;
@end

@implementation RTService

- (void)shutdownWithHandler:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__162;
  v21[4] = __Block_byref_object_dispose__162;
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

  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RTService_shutdownWithHandler___block_invoke;
  block[3] = &unk_2788C5380;
  v19 = v5;
  v20 = v21;
  block[4] = self;
  v14 = v5;
  dispatch_async(v13, block);

  _Block_object_dispose(v21, 8);
}

void __33__RTService_shutdownWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsShuttingDown:1];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__RTService_shutdownWithHandler___block_invoke_2;
  v5[3] = &unk_2788D0D58;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 _shutdownWithHandler:v5];
}

void __33__RTService_shutdownWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)setup
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__RTService_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)checkInWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__RTService_checkInWithHandler___block_invoke;
  block[3] = &unk_2788C4758;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (id)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end