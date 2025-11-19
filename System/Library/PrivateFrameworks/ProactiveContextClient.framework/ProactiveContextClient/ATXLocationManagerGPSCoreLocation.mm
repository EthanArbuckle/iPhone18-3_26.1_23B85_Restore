@interface ATXLocationManagerGPSCoreLocation
+ (id)sharedInstance;
- (ATXLocationManagerGPSDelegate)delegate;
- (BOOL)locationEnabled;
- (BOOL)preciseLocationEnabled;
- (id)_existingRegionWithIdentifierOnCLQueue:(id)a3;
- (id)_init;
- (id)updateLocationWithTimeout:(double)a3 requestPreciseLocation:(BOOL)a4;
- (int64_t)stateForRegion:(id)a3 withTimeout:(double)a4;
- (void)_requestStateIfNeededForRegion:(id)a3;
- (void)_startUpdateIfNeededWithPreciseLocation:(BOOL)a3;
- (void)_updateConditionAndInvokeLocationBlocks:(id)a3 error:(id)a4;
- (void)beginMonitoringRegion:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)stopMonitoringRegionWithIdentifier:(id)a3;
- (void)updateLocationWithCompletionHandler:(id)a3;
@end

@implementation ATXLocationManagerGPSCoreLocation

- (id)_init
{
  v14.receiver = self;
  v14.super_class = ATXLocationManagerGPSCoreLocation;
  v2 = [(ATXLocationManagerGPSCoreLocation *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    updateCondition = v2->_updateCondition;
    v2->_updateCondition = v3;

    v5 = objc_opt_new();
    requestStateCondition = v2->_requestStateCondition;
    v2->_requestStateCondition = v5;

    v2->_state = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("_clCallbackQueue", v7);
    clQueue = v2->_clQueue;
    v2->_clQueue = v8;

    v10 = v2->_clQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ATXLocationManagerGPSCoreLocation__init__block_invoke;
    block[3] = &unk_279AB8758;
    v13 = v2;
    dispatch_sync(v10, block);
  }

  return v2;
}

uint64_t __42__ATXLocationManagerGPSCoreLocation__init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/CoreParsec.framework" delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) setDesiredAccuracy:*MEMORY[0x277CE4228]];
  *(*(a1 + 32) + 32) = [*(*(a1 + 32) + 8) authorizationStatus] == 3;
  result = [*(*(a1 + 32) + 8) accuracyAuthorization];
  *(*(a1 + 32) + 33) = result == 0;
  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ATXLocationManagerGPSCoreLocation_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, block);
  }

  v2 = sharedInstance__pasExprOnceResult;

  return v2;
}

void __51__ATXLocationManagerGPSCoreLocation_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) _init];
  v4 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  clQueue = self->_clQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATXLocationManagerGPSCoreLocation_dealloc__block_invoke;
  block[3] = &unk_279AB8758;
  block[4] = self;
  dispatch_async(clQueue, block);
  v4.receiver = self;
  v4.super_class = ATXLocationManagerGPSCoreLocation;
  [(ATXLocationManagerGPSCoreLocation *)&v4 dealloc];
}

- (BOOL)locationEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  locationEnabled = v2->_locationEnabled;
  objc_sync_exit(v2);

  return locationEnabled;
}

- (BOOL)preciseLocationEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  preciseLocationEnabled = v2->_preciseLocationEnabled;
  objc_sync_exit(v2);

  return preciseLocationEnabled;
}

- (void)_startUpdateIfNeededWithPreciseLocation:(BOOL)a3
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    clQueue = self->_clQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __77__ATXLocationManagerGPSCoreLocation__startUpdateIfNeededWithPreciseLocation___block_invoke;
    v4[3] = &unk_279AB89A0;
    v4[4] = self;
    v5 = a3;
    dispatch_async(clQueue, v4);
  }
}

uint64_t __77__ATXLocationManagerGPSCoreLocation__startUpdateIfNeededWithPreciseLocation___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = v5;
    v7 = @"NO";
    if (*(a1 + 40))
    {
      v7 = @"YES";
    }

    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_260C9F000, v2, OS_LOG_TYPE_DEFAULT, "%@ - Querying GPS location now, requesting with precise location: %@", &v11, 0x16u);
  }

  v8 = MEMORY[0x277CE4208];
  if (!*(a1 + 40))
  {
    v8 = MEMORY[0x277CE4228];
  }

  [*(*(a1 + 32) + 8) setDesiredAccuracy:*v8];
  result = [*(*(a1 + 32) + 8) requestLocation];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)updateLocationWithTimeout:(double)a3 requestPreciseLocation:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    [ATXLocationManagerGPSCoreLocation updateLocationWithTimeout:a2 requestPreciseLocation:self];
  }

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v8 = [(ATXLocationManagerGPSCoreLocation *)self preciseLocationEnabled];
  [(NSCondition *)self->_updateCondition lock];
  [(ATXLocationManagerGPSCoreLocation *)self _startUpdateIfNeededWithPreciseLocation:v8 & v4];
  while (self->_updatePending)
  {
    if (![(NSCondition *)self->_updateCondition waitUntilDate:v7])
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "%@ - Timeout waiting for location update", &v15, 0xCu);
      }

      break;
    }
  }

  [(NSCondition *)self->_updateCondition unlock];
  v12 = [(ATXLocationManagerGPSCoreLocation *)self location];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)updateLocationWithCompletionHandler:(id)a3
{
  v8 = a3;
  [(NSCondition *)self->_updateCondition lock];
  locationBlocksToInvoke = self->_locationBlocksToInvoke;
  if (!locationBlocksToInvoke)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = self->_locationBlocksToInvoke;
    self->_locationBlocksToInvoke = v5;

    locationBlocksToInvoke = self->_locationBlocksToInvoke;
  }

  v7 = MEMORY[0x2666EC640](v8);
  [(NSMutableSet *)locationBlocksToInvoke addObject:v7];

  [(ATXLocationManagerGPSCoreLocation *)self _startUpdateIfNeededWithPreciseLocation:0];
  [(NSCondition *)self->_updateCondition unlock];
}

- (void)beginMonitoringRegion:(id)a3
{
  v4 = a3;
  clQueue = self->_clQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATXLocationManagerGPSCoreLocation_beginMonitoringRegion___block_invoke;
  v7[3] = &unk_279AB89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clQueue, v7);
}

- (int64_t)stateForRegion:(id)a3 withTimeout:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a4 <= 0.0)
  {
    [ATXLocationManagerGPSCoreLocation stateForRegion:a2 withTimeout:self];
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a4];
  [(NSCondition *)self->_requestStateCondition lock];
  [(ATXLocationManagerGPSCoreLocation *)self _requestStateIfNeededForRegion:v7];
  while (self->_regionRequested)
  {
    if (![(NSCondition *)self->_requestStateCondition waitUntilDate:v8])
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "Timeout waiting for region state update", &v17, 2u);
      }

      regionRequested = self->_regionRequested;
      self->_regionRequested = 0;
      self->_state = 0;

      break;
    }
  }

  [(NSCondition *)self->_requestStateCondition unlock];
  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 identifier];
    state = self->_state;
    v17 = 136315650;
    v18 = "[ATXLocationManagerGPSCoreLocation stateForRegion:withTimeout:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    v22 = state;
    _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_DEFAULT, "%s: region: %@, state: %ld", &v17, 0x20u);
  }

  v14 = self->_state;
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_requestStateIfNeededForRegion:(id)a3
{
  v5 = a3;
  if (!self->_regionRequested)
  {
    objc_storeStrong(&self->_regionRequested, a3);
    self->_state = 0;
    clQueue = self->_clQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__ATXLocationManagerGPSCoreLocation__requestStateIfNeededForRegion___block_invoke;
    v7[3] = &unk_279AB89C8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(clQueue, v7);
  }
}

- (id)_existingRegionWithIdentifierOnCLQueue:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_clQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CLLocationManager *)self->_locationManager monitoredRegions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)stopMonitoringRegionWithIdentifier:(id)a3
{
  v4 = a3;
  clQueue = self->_clQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXLocationManagerGPSCoreLocation_stopMonitoringRegionWithIdentifier___block_invoke;
  v7[3] = &unk_279AB89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(clQueue, v7);
}

uint64_t __72__ATXLocationManagerGPSCoreLocation_stopMonitoringRegionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingRegionWithIdentifierOnCLQueue:*(a1 + 40)];
  if (v2)
  {
    [*(*(a1 + 32) + 8) stopMonitoringForRegion:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_updateConditionAndInvokeLocationBlocks:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSCondition *)self->_updateCondition lock];
  self->_updatePending = 0;
  [(NSCondition *)self->_updateCondition broadcast];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_locationBlocksToInvoke;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v15 + 1) + 8 * v12) + 16))(*(*(&v15 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  locationBlocksToInvoke = self->_locationBlocksToInvoke;
  self->_locationBlocksToInvoke = 0;

  [(NSCondition *)self->_updateCondition unlock];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [a4 lastObject];
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 coordinate];
    v10 = v9;
    [v5 coordinate];
    v13 = 138412803;
    v14 = v8;
    v15 = 2053;
    v16 = v10;
    v17 = 2053;
    v18 = v11;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Got location update: %{sensitive}f, %{sensitive}f", &v13, 0x20u);
  }

  [(ATXLocationManagerGPSCoreLocation *)self _updateConditionAndInvokeLocationBlocks:v5 error:0];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "Started monitoring region: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ATXLocationManagerGPSCoreLocation locationManager:v6 monitoringDidFailForRegion:v7 withError:v8];
  }
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 identifier];
      [v6 center];
      v10 = v9;
      [v6 center];
      v12 = v11;
      [v6 radius];
      *buf = 138413058;
      v20 = v8;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "did enter region: %@, region center: (%f, %f), region radius: %f", buf, 0x2Au);
    }

    goto LABEL_6;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = objc_opt_class();
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "did enter region: %@, class: %@", buf, 0x16u);
LABEL_6:
  }

  v14 = dispatch_get_global_queue(9, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__ATXLocationManagerGPSCoreLocation_locationManager_didEnterRegion___block_invoke;
  v17[3] = &unk_279AB89C8;
  v17[4] = self;
  v18 = v5;
  v15 = v5;
  dispatch_async(v14, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __68__ATXLocationManagerGPSCoreLocation_locationManager_didEnterRegion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 locationManagerGPS:v2 didEnterRegionWithIdentifier:v3];
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 identifier];
      [v6 center];
      v10 = v9;
      [v6 center];
      v12 = v11;
      [v6 radius];
      *buf = 138413058;
      v20 = v8;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "did exit region: %@, region center: (%f, %f), region radius: %f", buf, 0x2Au);
    }

    goto LABEL_6;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = objc_opt_class();
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "did exit region: %@, class: %@", buf, 0x16u);
LABEL_6:
  }

  v14 = dispatch_get_global_queue(9, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__ATXLocationManagerGPSCoreLocation_locationManager_didExitRegion___block_invoke;
  v17[3] = &unk_279AB89C8;
  v17[4] = self;
  v18 = v5;
  v15 = v5;
  dispatch_async(v14, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __67__ATXLocationManagerGPSCoreLocation_locationManager_didExitRegion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 locationManagerGPS:v2 didExitRegionWithIdentifier:v3];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  locationEnabled = v5->_locationEnabled;
  v7 = [v4 authorizationStatus] == 3;
  v5->_locationEnabled = v7;
  preciseLocationEnabled = v5->_preciseLocationEnabled;
  v9 = [v4 accuracyAuthorization] == 0;
  v5->_preciseLocationEnabled = v9;
  objc_sync_exit(v5);

  if (locationEnabled != v7)
  {
    v10 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__ATXLocationManagerGPSCoreLocation_locationManagerDidChangeAuthorization___block_invoke;
    block[3] = &unk_279AB89A0;
    block[4] = v5;
    v15 = v7;
    dispatch_async(v10, block);
  }

  if (preciseLocationEnabled != v9)
  {
    v11 = dispatch_get_global_queue(9, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__ATXLocationManagerGPSCoreLocation_locationManagerDidChangeAuthorization___block_invoke_2;
    v12[3] = &unk_279AB89A0;
    v12[4] = v5;
    v13 = v9;
    dispatch_async(v11, v12);
  }
}

void __75__ATXLocationManagerGPSCoreLocation_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didChangeLocationEnabled:*(a1 + 40)];
}

void __75__ATXLocationManagerGPSCoreLocation_locationManagerDidChangeAuthorization___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didChangePreciseLocationEnabled:*(a1 + 40)];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ATXLocationManagerGPSCoreLocation locationManager:v5 didFailWithError:v6];
  }

  [(ATXLocationManagerGPSCoreLocation *)self _updateConditionAndInvokeLocationBlocks:0 error:v5];
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    v13 = 136315650;
    v14 = "[ATXLocationManagerGPSCoreLocation locationManager:didDetermineState:forRegion:]";
    v15 = 2112;
    v16 = v9;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "%s: region: %@, state: %ld", &v13, 0x20u);
  }

  [(NSCondition *)self->_requestStateCondition lock];
  regionRequested = self->_regionRequested;
  if (regionRequested && [(CLRegion *)regionRequested isEqual:v7])
  {
    v11 = self->_regionRequested;
    self->_regionRequested = 0;

    self->_state = a4;
    [(NSCondition *)self->_requestStateCondition broadcast];
  }

  [(NSCondition *)self->_requestStateCondition unlock];

  v12 = *MEMORY[0x277D85DE8];
}

- (ATXLocationManagerGPSDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateLocationWithTimeout:(uint64_t)a1 requestPreciseLocation:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationManagerGPS.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"timeout > 0"}];
}

- (void)stateForRegion:(uint64_t)a1 withTimeout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationManagerGPS.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"timeout > 0"}];
}

- (void)locationManager:(void *)a1 monitoringDidFailForRegion:(uint64_t)a2 withError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_260C9F000, a3, OS_LOG_TYPE_ERROR, "Failed to start monitoring region: %@ error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "Location error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end