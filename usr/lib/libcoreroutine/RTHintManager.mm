@interface RTHintManager
+ (id)vendedClasses;
- (RTHintManager)initWithBatteryManager:(id)a3 bluetoothManager:(id)a4 cameraManager:(id)a5 hintStore:(id)a6 learnedLocationManager:(id)a7 locationManager:(id)a8 metricManager:(id)a9 navigationManager:(id)a10 reachabilityManager:(id)a11 walletManager:(id)a12;
- (void)_onBatteryNotification:(id)a3;
- (void)_onBluetoothNotification:(id)a3;
- (void)_onCameraNotification:(id)a3;
- (void)_onLearnedLocationNotification:(id)a3;
- (void)_onNavigationNotification:(id)a3;
- (void)_onReachabilityChange:(id)a3;
- (void)_onWalletNotification:(id)a3;
- (void)_registerForNotifications;
- (void)_shutdownWithHandler:(id)a3;
- (void)_storeHintSignificantRegion:(id)a3 hintSource:(int64_t)a4 handler:(id)a5;
- (void)_storeHints:(id)a3 handler:(id)a4;
- (void)_submitHintFromSource:(int64_t)a3;
- (void)_submitHintFromSource:(int64_t)a3 location:(id)a4 handler:(id)a5;
- (void)_unregisterForNotifications;
- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5;
- (void)onBatteryNotification:(id)a3;
- (void)onBluetoothNotification:(id)a3;
- (void)onCameraNotification:(id)a3;
- (void)onLearnedLocationNotification:(id)a3;
- (void)onNavigationNotification:(id)a3;
- (void)onReachabilityChange:(id)a3;
- (void)onWalletNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)storeHintSignificantRegion:(id)a3 hintSource:(int64_t)a4 handler:(id)a5;
- (void)storeHints:(id)a3 handler:(id)a4;
- (void)submitHintFromSource:(int64_t)a3 location:(id)a4;
- (void)submitHintFromSource:(int64_t)a3 location:(id)a4 handler:(id)a5;
@end

@implementation RTHintManager

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_5;
  if (!vendedClasses_vendedClasses_5)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v4 = vendedClasses_vendedClasses_5;
    vendedClasses_vendedClasses_5 = v3;

    v2 = vendedClasses_vendedClasses_5;
  }

  return v2;
}

- (RTHintManager)initWithBatteryManager:(id)a3 bluetoothManager:(id)a4 cameraManager:(id)a5 hintStore:(id)a6 learnedLocationManager:(id)a7 locationManager:(id)a8 metricManager:(id)a9 navigationManager:(id)a10 reachabilityManager:(id)a11 walletManager:(id)a12
{
  v17 = a3;
  v37 = a4;
  v18 = a4;
  v38 = a5;
  v43 = a5;
  v39 = a6;
  v19 = a6;
  v40 = a7;
  v20 = a7;
  v41 = a8;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v44 = v17;
  if (v17)
  {
    if (v18)
    {
      v26 = v43;
      if (v43)
      {
        if (v19)
        {
          if (v20)
          {
            if (v21)
            {
              if (v22)
              {
                if (v23)
                {
                  if (v24)
                  {
                    v27 = v25;
                    if (v25)
                    {
                      v52.receiver = self;
                      v52.super_class = RTHintManager;
                      v28 = [(RTNotifier *)&v52 init];
                      if (v28)
                      {
                        objc_initWeak(&location, v28);
                        v29 = objc_opt_new();
                        notificationHelper = v28->_notificationHelper;
                        v28->_notificationHelper = v29;

                        v46 = v28->_notificationHelper;
                        v49[0] = MEMORY[0x277D85DD0];
                        v49[1] = 3221225472;
                        v49[2] = __186__RTHintManager_initWithBatteryManager_bluetoothManager_cameraManager_hintStore_learnedLocationManager_locationManager_metricManager_navigationManager_reachabilityManager_walletManager___block_invoke;
                        v49[3] = &unk_2788C5908;
                        objc_copyWeak(&v50, &location);
                        [(RTDarwinNotificationHelper *)v46 addObserverForNotificationName:@"HKHealthDaemonActiveWorkoutServersDidUpdateNotification" handler:v49];
                        objc_storeStrong(&v28->_batteryManager, a3);
                        objc_storeStrong(&v28->_bluetoothManager, v37);
                        objc_storeStrong(&v28->_cameraManager, v38);
                        objc_storeStrong(&v28->_hintStore, v39);
                        objc_storeStrong(&v28->_learnedLocationManager, v40);
                        objc_storeStrong(&v28->_locationManager, v41);
                        objc_storeStrong(&v28->_metricManager, a9);
                        objc_storeStrong(&v28->_navigationManager, a10);
                        objc_storeStrong(&v28->_reachabilityManager, a11);
                        objc_storeStrong(&v28->_walletManager, a12);
                        v42 = [(RTNotifier *)v28 queue];
                        block[0] = MEMORY[0x277D85DD0];
                        block[1] = 3221225472;
                        block[2] = __186__RTHintManager_initWithBatteryManager_bluetoothManager_cameraManager_hintStore_learnedLocationManager_locationManager_metricManager_navigationManager_reachabilityManager_walletManager___block_invoke_3;
                        block[3] = &unk_2788C4EA0;
                        v48 = v28;
                        dispatch_async(v42, block);

                        objc_destroyWeak(&v50);
                        objc_destroyWeak(&location);
                      }

                      v31 = v28;
                      self = v31;
                      goto LABEL_37;
                    }

                    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(location) = 0;
                      v34 = "Invalid parameter not satisfying: walletManager";
                      goto LABEL_35;
                    }

LABEL_36:

                    v31 = 0;
                    goto LABEL_37;
                  }

                  v27 = v25;
                  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_36;
                  }

                  LOWORD(location) = 0;
                  v34 = "Invalid parameter not satisfying: reachabilityManager";
                }

                else
                {
                  v27 = v25;
                  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_36;
                  }

                  LOWORD(location) = 0;
                  v34 = "Invalid parameter not satisfying: navigationManager";
                }
              }

              else
              {
                v27 = v25;
                v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_36;
                }

                LOWORD(location) = 0;
                v34 = "Invalid parameter not satisfying: metricManager";
              }
            }

            else
            {
              v27 = v25;
              v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_36;
              }

              LOWORD(location) = 0;
              v34 = "Invalid parameter not satisfying: locationManager";
            }
          }

          else
          {
            v27 = v25;
            v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            LOWORD(location) = 0;
            v34 = "Invalid parameter not satisfying: learnedLocationManager";
          }
        }

        else
        {
          v27 = v25;
          v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          LOWORD(location) = 0;
          v34 = "Invalid parameter not satisfying: hintStore";
        }
      }

      else
      {
        v27 = v25;
        v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        LOWORD(location) = 0;
        v34 = "Invalid parameter not satisfying: cameraManager";
      }
    }

    else
    {
      v27 = v25;
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v26 = v43;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      LOWORD(location) = 0;
      v34 = "Invalid parameter not satisfying: bluetoothManager";
    }

LABEL_35:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v34, &location, 2u);
    goto LABEL_36;
  }

  v27 = v25;
  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    LOWORD(location) = 0;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: batteryManager", &location, 2u);
  }

  v31 = 0;
  v26 = v43;
LABEL_37:

  return v31;
}

void __186__RTHintManager_initWithBatteryManager_bluetoothManager_cameraManager_hintStore_learnedLocationManager_locationManager_metricManager_navigationManager_reachabilityManager_walletManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __186__RTHintManager_initWithBatteryManager_bluetoothManager_cameraManager_hintStore_learnedLocationManager_locationManager_metricManager_navigationManager_reachabilityManager_walletManager___block_invoke_2;
    block[3] = &unk_2788C4EA0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  v5 = a3;
  [(RTHintManager *)self _unregisterForNotifications];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)_registerForNotifications
{
  v3 = [(RTHintManager *)self bluetoothManager];
  v4 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  [v3 addObserver:self selector:sel_onBluetoothNotification_ name:v4];

  v5 = [(RTHintManager *)self bluetoothManager];
  v6 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
  [v5 addObserver:self selector:sel_onBluetoothNotification_ name:v6];

  v7 = [(RTHintManager *)self batteryManager];
  v8 = +[(RTNotification *)RTBatteryManagerNotificationChargerConnected];
  [v7 addObserver:self selector:sel_onBatteryNotification_ name:v8];

  v9 = [(RTHintManager *)self navigationManager];
  v10 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  [v9 addObserver:self selector:sel_onNavigationNotification_ name:v10];

  v11 = [(RTHintManager *)self reachabilityManager];
  v12 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  [v11 addObserver:self selector:sel_onReachabilityChange_ name:v12];

  v13 = [(RTHintManager *)self cameraManager];
  v14 = +[(RTNotification *)RTCameraManagerNotificationCameraPowerChanged];
  [v13 addObserver:self selector:sel_onCameraNotification_ name:v14];

  v15 = [(RTHintManager *)self walletManager];
  v16 = +[(RTNotification *)RTWalletManagerNotificationPassUsed];
  [v15 addObserver:self selector:sel_onWalletNotification_ name:v16];

  v17 = [(RTHintManager *)self walletManager];
  v18 = +[(RTNotification *)RTWalletManagerNotificationPaymentUsed];
  [v17 addObserver:self selector:sel_onWalletNotification_ name:v18];

  v20 = [(RTHintManager *)self learnedLocationManager];
  v19 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  [v20 addObserver:self selector:sel_onLearnedLocationNotification_ name:v19];
}

- (void)_unregisterForNotifications
{
  v3 = [(RTHintManager *)self bluetoothManager];
  [v3 removeObserver:self];

  v4 = [(RTHintManager *)self batteryManager];
  [v4 removeObserver:self];

  v5 = [(RTHintManager *)self navigationManager];
  [v5 removeObserver:self];

  v6 = [(RTHintManager *)self reachabilityManager];
  [v6 removeObserver:self];

  v7 = [(RTHintManager *)self cameraManager];
  [v7 removeObserver:self];

  v8 = [(RTHintManager *)self walletManager];
  [v8 removeObserver:self];

  v9 = [(RTHintManager *)self learnedLocationManager];
  [v9 removeObserver:self];

  v10 = [(RTHintManager *)self notificationHelper];
  [v10 removeObserverForNotificationName:@"HKHealthDaemonActiveWorkoutServersDidUpdateNotification"];
}

- (void)_submitHintFromSource:(int64_t)a3
{
  v5 = [(RTHintManager *)self locationManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__RTHintManager__submitHintFromSource___block_invoke;
  v6[3] = &unk_2788CC668;
  v6[4] = self;
  v6[5] = a3;
  [v5 fetchCurrentLocationWithHandler:v6];
}

void __39__RTHintManager__submitHintFromSource___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D01160];
    v4 = a2;
    v5 = [[v3 alloc] initWithCLLocation:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RTHintManager__submitHintFromSource___block_invoke_2;
  block[3] = &unk_2788C5020;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  block[4] = v7;
  v9 = v5;
  dispatch_async(v6, block);
}

- (void)storeHints:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RTHintManager_storeHints_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_storeHints:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  hintStore = self->_hintStore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__RTHintManager__storeHints_handler___block_invoke;
  v11[3] = &unk_2788C4F60;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(RTHintStore *)hintStore storeHints:v10 handler:v11];
}

void __37__RTHintManager__storeHints_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityHint);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) count];
      *buf = 134218242;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "store %lu hints, error, %@", buf, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__RTHintManager__storeHints_handler___block_invoke_75;
  v8[3] = &unk_2788D08D8;
  v9 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
  (*(*(a1 + 40) + 16))();
}

void __37__RTHintManager__storeHints_handler___block_invoke_75(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityHint);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 134218499;
      v9 = a3 + 1;
      v10 = 2117;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "hint %lu, %{sensitive}@, error, %@", &v8, 0x20u);
    }
  }
}

- (void)submitHintFromSource:(int64_t)a3 location:(id)a4
{
  v6 = a4;
  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTHintManager_submitHintFromSource_location___block_invoke;
  block[3] = &unk_2788C5020;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)submitHintFromSource:(int64_t)a3 location:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__RTHintManager_submitHintFromSource_location_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_submitHintFromSource:(int64_t)a3 location:(id)a4 handler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277D01120]);
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v10 initWithLocation:v8 source:a3 date:v11];

    v24 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__RTHintManager__submitHintFromSource_location_handler___block_invoke;
    v20[3] = &unk_2788C6508;
    v21 = v12;
    v22 = self;
    v23 = v9;
    v14 = v12;
    [(RTHintManager *)self _storeHints:v13 handler:v20];

    v15 = v21;
LABEL_9:

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityHint);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277D01120] hintSourceToString:a3];
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "could not get location, dropping hint, source, %@", buf, 0xCu);
    }
  }

  if (v9)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"No location, dropping hint";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v18 errorWithDomain:v19 code:7 userInfo:v14];
    (*(v9 + 2))(v9, v15);
    goto LABEL_9;
  }

LABEL_10:
}

void __56__RTHintManager__submitHintFromSource_location_handler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412547;
        v14 = v3;
        v15 = 2117;
        v16 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "An error, %@, has occurred while storing hint, %{sensitive}@", buf, 0x16u);
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v7 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__RTHintManager__submitHintFromSource_location_handler___block_invoke_86;
    block[3] = &unk_2788C4A70;
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    dispatch_async(v7, block);

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }
}

void __56__RTHintManager__submitHintFromSource_location_handler___block_invoke_86(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [RTHintManagerNotificationDidUpdate alloc];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [(RTHintManagerNotificationDidUpdate *)v3 initWithHints:v4];
  [v2 postNotification:v5];
}

- (void)storeHintSignificantRegion:(id)a3 hintSource:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__RTHintManager_storeHintSignificantRegion_hintSource_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_storeHintSignificantRegion:(id)a3 hintSource:(int64_t)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  learnedLocationManager = self->_learnedLocationManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke;
  v14[3] = &unk_2788C5980;
  v14[4] = self;
  v15 = v9;
  v17 = a2;
  v18 = a4;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [(RTLearnedLocationManager *)learnedLocationManager fetchLocationOfInterestForRegion:v13 handler:v14];
}

void __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke_2;
  block[3] = &unk_2788C5958;
  v8 = *(a1 + 56);
  v15 = v5;
  v20 = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v11 = *(a1 + 64);
  v18 = v6;
  v21 = v11;
  v19 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 80);
    v5 = [v2 location];
    v6 = [v5 location];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke_92;
    v22[3] = &unk_2788D0900;
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v22[4] = *(a1 + 48);
    v26 = v7;
    v27 = v8;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *(a1 + 64);
    [v3 submitHintFromSource:v4 location:v6 handler:v22];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(*(a1 + 72));
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v14 = *(a1 + 80);
        *buf = 138413315;
        v31 = v10;
        v32 = 2117;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        v36 = 2112;
        v37 = v13;
        v38 = 2048;
        v39 = v14;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, Could not find location of interest matching significant region, %{sensitive}@, to client, %@, fetch error, %@, hintSource, %lld", buf, 0x34u);
      }
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"No LocationOfIntrest can be found for region.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v18 = [v15 errorWithDomain:v16 code:0 userInfo:v17];

    v19 = *(a1 + 56);
    if (v19)
    {
      v20 = v19;

      v18 = v20;
    }

    v21 = *(a1 + 64);
    if (v21)
    {
      (*(v21 + 16))(v21, 0, v18);
    }

    [RTSignificantRegionHintInjectionMetrics submitMetricsWithHintSource:*(a1 + 80) region:*(a1 + 40) locationOfInterest:0 hintSubmitted:0 matchingError:v18];
  }
}

void __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke_2_93;
  block[3] = &unk_2788C5468;
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v14 = v3;
  v17 = v5;
  v18 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = v9;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v15 = v11;
  v16 = v10;
  v12 = v3;
  dispatch_async(v4, block);
}

uint64_t __64__RTHintManager__storeHintSignificantRegion_hintSource_handler___block_invoke_2_93(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v3)
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(*(a1 + 72));
        v6 = *(a1 + 80);
        v8 = *(a1 + 40);
        v7 = *(a1 + 48);
        v9 = *(a1 + 32);
        v25 = 138413315;
        v26 = v5;
        v27 = 2048;
        v28 = v6;
        v29 = 2117;
        v30 = v8;
        v31 = 2117;
        v32 = v7;
        v33 = 2112;
        v34 = v9;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, Unable to store significant region hint for source, %lld, location of interest, %{sensitive}@, matching region, %{sensitive}@, store error, %@", &v25, 0x34u);
      }

      v2 = *(a1 + 32);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v2);
      v2 = *(a1 + 32);
    }

    v11 = *(a1 + 80);
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = 0;
    v15 = v2;
  }

  else
  {
    if (v3)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = NSStringFromSelector(*(a1 + 72));
        v18 = *(a1 + 80);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v22 = *(a1 + 32);
        v21 = *(a1 + 40);
        v25 = 138413571;
        v26 = v17;
        v27 = 2048;
        v28 = v18;
        v29 = 2117;
        v30 = v21;
        v31 = 2117;
        v32 = v19;
        v33 = 2112;
        v34 = v20;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, Storing significant region hint for source, %lld, location of interest, %{sensitive}@, matching region, %{sensitive}@, to client, %@, store error, %@", &v25, 0x3Eu);
      }

      v15 = *(a1 + 32);
    }

    else
    {
      v15 = 0;
    }

    v23 = *(a1 + 64);
    if (v23)
    {
      (*(v23 + 16))(v23, 1, v15);
      v15 = *(a1 + 32);
    }

    v11 = *(a1 + 80);
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = 1;
  }

  return [RTSignificantRegionHintInjectionMetrics submitMetricsWithHintSource:v11 region:v12 locationOfInterest:v13 hintSubmitted:v14 matchingError:v15];
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v11 = a4;
  v8 = a5;
  if (a3 <= 2 && (v9 = v11) != 0)
  {
    v10 = v9;
    [(RTHintStore *)self->_hintStore purgeHintsPredating:v9 handler:v8];
  }

  else if (v8)
  {
    v8[2](v8, 0);
  }
}

- (void)onBluetoothNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__RTHintManager_onBluetoothNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onBluetoothNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if ([v5 isEqualToString:v6])
  {

LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v4 name];
        v13 = 138412290;
        v14 = v12;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "received bluetooth notification, %@", &v13, 0xCu);
      }
    }

    [(RTHintManager *)self _submitHintFromSource:0];
    goto LABEL_12;
  }

  v7 = [v4 name];
  v8 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 138412802;
    v14 = v4;
    v15 = 2080;
    v16 = "[RTHintManager _onBluetoothNotification:]";
    v17 = 1024;
    v18 = 439;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v13, 0x1Cu);
  }

LABEL_12:
}

- (void)onBatteryNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__RTHintManager_onBatteryNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onBatteryNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTBatteryManagerNotificationChargerConnected];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v4 name];
        v11 = 138412290;
        v12 = v10;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "received battery notification, %@", &v11, 0xCu);
      }
    }

    [(RTHintManager *)self _submitHintFromSource:3];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412802;
      v12 = v4;
      v13 = 2080;
      v14 = "[RTHintManager _onBatteryNotification:]";
      v15 = 1024;
      v16 = 458;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v11, 0x1Cu);
    }
  }
}

- (void)onNavigationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTHintManager_onNavigationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onNavigationNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v4 name];
        v19 = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "received navigation notification, %@", &v19, 0xCu);
      }
    }

    v9 = v4;
    v10 = objc_alloc(MEMORY[0x277D01160]);
    [v9 destinationLatitude];
    v12 = v11;
    [v9 destinationLongitude];
    v14 = v13;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = [v10 initWithLatitude:v15 longitude:v12 horizontalUncertainty:v14 date:0.0];

    [(RTHintManager *)self _submitHintFromSource:1 location:v16 handler:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v19) = 0;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "submitting maps navigation hint", &v19, 2u);
      }
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412802;
      v20 = v4;
      v21 = 2080;
      v22 = "[RTHintManager _onNavigationNotification:]";
      v23 = 1024;
      v24 = 487;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v19, 0x1Cu);
    }
  }
}

- (void)onReachabilityChange:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RTHintManager_onReachabilityChange___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onReachabilityChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 reachability];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "Received reachability change, %ld", &v12, 0xCu);
      }
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityHint);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12) = 0;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "submitting reachability hint for reachability change.", &v12, 2u);
        }
      }

      [(RTHintManager *)self _submitHintFromSource:4];
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = v4;
      v14 = 2080;
      v15 = "[RTHintManager _onReachabilityChange:]";
      v16 = 1024;
      v17 = 511;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v12, 0x1Cu);
    }
  }
}

- (void)onCameraNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RTHintManager_onCameraNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onCameraNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTCameraManagerNotificationCameraPowerChanged];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if ([v4 powerState] == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityHint);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v10) = 0;
          _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "received camera notification.", &v10, 2u);
        }
      }

      [(RTHintManager *)self _submitHintFromSource:5];
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = v4;
      v12 = 2080;
      v13 = "[RTHintManager _onCameraNotification:]";
      v14 = 1024;
      v15 = 533;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v10, 0x1Cu);
    }
  }
}

- (void)onWalletNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RTHintManager_onWalletNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWalletNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTWalletManagerNotificationPassUsed];
  if ([v5 isEqualToString:v6])
  {

LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "received wallet notification.", &v12, 2u);
      }
    }

    [(RTHintManager *)self _submitHintFromSource:-1];
    goto LABEL_12;
  }

  v7 = [v4 name];
  v8 = +[(RTNotification *)RTWalletManagerNotificationPaymentUsed];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = v4;
    v14 = 2080;
    v15 = "[RTHintManager _onWalletNotification:]";
    v16 = 1024;
    v17 = 553;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v12, 0x1Cu);
  }

LABEL_12:
}

- (void)onLearnedLocationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RTHintManager_onLearnedLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLearnedLocationNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityHint);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "received learnedLocation notification.", &v10, 2u);
      }
    }

    v9 = [(RTHintManager *)self hintStore];
    [v9 regenerateLOIHintsWithHandler:&__block_literal_global_129];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = v4;
      v12 = 2080;
      v13 = "[RTHintManager _onLearnedLocationNotification:]";
      v14 = 1024;
      v15 = 579;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v10, 0x1Cu);
    }
  }
}

void __48__RTHintManager__onLearnedLocationNotification___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityHint);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_fault_impl(&dword_2304B3000, v3, OS_LOG_TYPE_FAULT, "Regenerated hints error: %@", &v4, 0xCu);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v3 = _rt_log_facility_get_os_log(RTLogFacilityHint);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Regenerated hints error: %@", &v4, 0xCu);
    }
  }

LABEL_5:
}

- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__RTHintManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v16 = a4;
    dispatch_async(v10, v12);

    v11 = v13;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __66__RTHintManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v17;
    v10 = &v16;
LABEL_8:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [v6 errorWithDomain:v7 code:7 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v15;
    v10 = &v14;
    goto LABEL_8;
  }

  v13 = [*(a1 + 40) hintStore];
  [v13 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

@end