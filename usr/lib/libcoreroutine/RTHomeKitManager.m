@interface RTHomeKitManager
- (RTHomeKitManager)init;
- (void)_fetchHomesWithHandler:(id)a3;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateCachedHomes;
- (void)fetchHomesWithHandler:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation RTHomeKitManager

- (RTHomeKitManager)init
{
  v5.receiver = self;
  v5.super_class = RTHomeKitManager;
  v2 = [(RTNotifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTService *)v2 setup];
  }

  return v3;
}

- (void)_setup
{
  v3 = [objc_alloc(MEMORY[0x277CD1A90]) initWithOptions:8];
  [(RTHomeKitManager *)self setHomeManager:v3];

  v4 = [(RTHomeKitManager *)self homeManager];
  [v4 setDelegate:self];

  [(RTHomeKitManager *)self _updateCachedHomes];
}

- (void)_shutdownWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)_updateCachedHomes
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(RTHomeKitManager *)self homeManager];
  v5 = [v4 homes];
  [(RTHomeKitManager *)self setHomes:v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityHOMEKIT);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      if ([(RTHomeKitManager *)self homeManagerDidUpdateHomes])
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = [(RTHomeKitManager *)self homes];
      v12 = 138413058;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = [v11 count];
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, homeManagerDidUpdateHomes, %@, number of homes, %lu", &v12, 0x2Au);
    }
  }
}

- (void)fetchHomesWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__RTHomeKitManager_fetchHomesWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_fetchHomesWithHandler:(id)a3
{
  v4 = a3;
  [(RTHomeKitManager *)self _updateCachedHomes];
  v5 = [(RTHomeKitManager *)self homes];
  v4[2](v4, v5, 0);
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityHOMEKIT);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = [v5 homes];
      *buf = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, homes, %@", buf, 0x20u);
    }
  }

  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTHomeKitManager_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v11, block);
}

uint64_t __46__RTHomeKitManager_homeManagerDidUpdateHomes___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHomeManagerDidUpdateHomes:1];
  v2 = *(a1 + 32);

  return [v2 _updateCachedHomes];
}

@end