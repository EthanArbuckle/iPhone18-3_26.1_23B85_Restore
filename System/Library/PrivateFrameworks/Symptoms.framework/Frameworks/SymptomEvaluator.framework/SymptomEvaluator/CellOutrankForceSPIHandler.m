@interface CellOutrankForceSPIHandler
+ (id)sharedInstance;
- (CellOutrankForceSPIHandler)init;
- (void)deletePreferCellOverWiFiSettings;
- (void)handlePreferCellOverWiFi:(BOOL)a3 until:(double)a4 updateDB:(BOOL)a5;
- (void)setForcePreferCellOverWiFi:(BOOL)a3 autoDisableTimestamp:(double)a4;
@end

@implementation CellOutrankForceSPIHandler

- (void)deletePreferCellOverWiFiSettings
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "COSM deletePreferCellOverWiFiSettings", v5, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.cellOutrankOverrides"];
  v4 = v3;
  if (v3)
  {
    [v3 removeObjectForKey:@"overrideRequired"];
    [v4 removeObjectForKey:@"overrideExpiryTime"];
  }
}

- (void)handlePreferCellOverWiFi:(BOOL)a3 until:(double)a4 updateDB:(BOOL)a5
{
  v5 = a5;
  LODWORD(v7) = a3;
  v32 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  forcePreferCellOverWiFiTimer = self->_forcePreferCellOverWiFiTimer;
  if (forcePreferCellOverWiFiTimer)
  {
    dispatch_source_cancel(forcePreferCellOverWiFiTimer);
    v12 = self->_forcePreferCellOverWiFiTimer;
    self->_forcePreferCellOverWiFiTimer = 0;
  }

  v13 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v29 = v7;
    v30 = 2048;
    v31 = a4 - v10;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "COSM handlePreferCellOverWiFi force %d delay %f", buf, 0x12u);
  }

  if (v10 <= a4)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.cellOutrankOverrides"];
    v15 = v14;
    if (v14)
    {
      if (v7)
      {
        [v14 setBool:1 forKey:@"overrideRequired"];
        [v15 setDouble:@"overrideExpiryTime" forKey:a4];
      }

      else
      {
        [v14 removeObjectForKey:@"overrideRequired"];
        [v15 removeObjectForKey:@"overrideExpiryTime"];
      }
    }
  }

  v16 = 0.0;
  if (v7)
  {
    v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v18 = self->_forcePreferCellOverWiFiTimer;
    self->_forcePreferCellOverWiFiTimer = v17;

    v19 = self->_forcePreferCellOverWiFiTimer;
    if (v19)
    {
      v20 = dispatch_time(0, ((a4 - v10) * 1000000000.0));
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
      v21 = self->_forcePreferCellOverWiFiTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __70__CellOutrankForceSPIHandler_handlePreferCellOverWiFi_until_updateDB___block_invoke;
      handler[3] = &unk_27898A0C8;
      handler[4] = self;
      dispatch_source_set_event_handler(v21, handler);
      dispatch_resume(self->_forcePreferCellOverWiFiTimer);
    }

    v16 = a4;
  }

  [(CellOutrankForceSPIHandler *)self setCellOutrankForcedViaSPI:v7];
  [(CellOutrankForceSPIHandler *)self setCellOutrankForcedViaSPIUntil:v16];
  v22 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v23 = v22;
    v24 = [(CellOutrankForceSPIHandler *)self cellOutrankForcedViaSPI];
    [(CellOutrankForceSPIHandler *)self cellOutrankForcedViaSPIUntil];
    *buf = 67109376;
    v29 = v24;
    v30 = 2048;
    v31 = v25;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "COSM handlePreferCellOverWiFi exit with force %d until %f", buf, 0x12u);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __70__CellOutrankForceSPIHandler_handlePreferCellOverWiFi_until_updateDB___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) cellOutrankForcedViaSPI])
  {
    [*(a1 + 32) setCellOutrankForcedViaSPI:0];
    [*(a1 + 32) setCellOutrankForcedViaSPIUntil:0.0];
    [*(a1 + 32) deletePreferCellOverWiFiSettings];
  }

  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)setForcePreferCellOverWiFi:(BOOL)a3 autoDisableTimestamp:(double)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CellOutrankForceSPIHandler_setForcePreferCellOverWiFi_autoDisableTimestamp___block_invoke;
  block[3] = &unk_27898A6B8;
  *&block[5] = a4;
  v6 = a3;
  block[4] = self;
  dispatch_async(queue, block);
}

void __78__CellOutrankForceSPIHandler_setForcePreferCellOverWiFi_autoDisableTimestamp___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 == 0.0)
  {
    v3 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "COSM SPI setForcePreferCellOverWiFi apply default delay", &v15, 2u);
    }

    v4 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v5 dateByAddingTimeInterval:86400.0];
    v7 = [v4 dateBySettingHour:5 minute:0 second:0 ofDate:v6 options:0];

    [v7 timeIntervalSinceReferenceDate];
    v2 = v8;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = outrankLogHandle;
  if (v9 >= v2)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v15 = 67109888;
      v16 = v13;
      v17 = 1024;
      v18 = (v2 - v10);
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v2;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "COSM SPI setForcePreferCellOverWiFi %d, negative wait %d secs now %d until %d", &v15, 0x1Au);
    }
  }

  else
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 48);
      v15 = 67109376;
      v16 = v12;
      v17 = 1024;
      v18 = (v2 - v10);
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "COSM SPI setForcePreferCellOverWiFi %d, until %d secs", &v15, 0xEu);
    }

    [*(a1 + 32) handlePreferCellOverWiFi:*(a1 + 48) until:1 updateDB:v2];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (CellOutrankForceSPIHandler)init
{
  v10.receiver = self;
  v10.super_class = CellOutrankForceSPIHandler;
  v2 = [(CellOutrankForceSPIHandler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.symptoms.celloutrankforceSPI.queue", 0);
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(*(v2 + 4), v5);
    v6 = *(v2 + 4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__CellOutrankForceSPIHandler_init__block_invoke;
    block[3] = &unk_27898A0C8;
    v9 = v2;
    dispatch_async(v6, block);
  }

  return v2;
}

void __34__CellOutrankForceSPIHandler_init__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.cellOutrankOverrides"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleForKey:@"overrideRequired"];
    if (v4 != 0.0)
    {
      [v3 doubleForKey:@"overrideExpiryTime"];
      v6 = v5;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v8 = v7;
      v9 = outrankLogHandle;
      v10 = os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v8 <= v6)
      {
        if (v10)
        {
          v11 = v9;
          v12 = dateStringMillisecondsFromTimeInterval(v6);
          v14 = 134218242;
          v15 = v6 - v8;
          v16 = 2114;
          v17 = v12;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "COSM CellOutrankForceSPIHandler init: persist values for SIS override, delay %.5f for expiry time %{public}@", &v14, 0x16u);
        }

        [*(a1 + 32) handlePreferCellOverWiFi:1 until:0 updateDB:v6];
      }

      else
      {
        if (v10)
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM CellOutrankForceSPIHandler init: delete stale values for SIS override", &v14, 2u);
        }

        [*(a1 + 32) deletePreferCellOverWiFiSettings];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CellOutrankForceSPIHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_instancePred_1 != -1)
  {
    dispatch_once(&sharedInstance_instancePred_1, block);
  }

  v2 = sharedInstance_9;

  return v2;
}

uint64_t __44__CellOutrankForceSPIHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_9;
  sharedInstance_9 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end