@interface ATXLocationManager
+ (id)debugDescriptionForCLLocation:(id)a3;
+ (id)stringForLOIType:(int64_t)a3;
- (ATXLocationManager)initWithGPS:(id)a3 routine:(id)a4 stateStore:(id)a5 now:(id)a6 modeGlobals:(id)a7;
- (ATXLocationManager)initWithStateStore:(id)a3 modeGlobals:(id)a4;
- (BOOL)isAvailableLocationOfInterestType:(int64_t)a3;
- (BOOL)isLocationNearKnownTypeLocationOfInterest:(id)a3;
- (BOOL)isNearFrequentLocationOfInterest;
- (BOOL)isNearKnownTypeLocationOfInterest;
- (BOOL)isNearKnownTypeOrFrequentLocationOfInterest;
- (BOOL)isTourist;
- (NSDate)now;
- (double)_distanceOfCurrentLocationFrom:(id)a3;
- (id)_currentLocationAndNeedsUpdate_RequestPreciseLocation:(BOOL)a3;
- (id)_updateLocationsOfInterestWithCurrentLocation:(id)a3;
- (id)cachedLocationOfInterestAtCurrentLocation;
- (id)getPredictedExitTimesFromLOIName:(id)a3 startDate:(id)a4;
- (id)getPredictedLocationsOfInterestFromLOIName:(id)a3 startDate:(id)a4;
- (id)locationOfInterestAtCurrentLocation;
- (id)predictedExitTimes;
- (id)predictedLocationsOfInterest;
- (id)previousLOIAndCurrentLOI;
- (unint64_t)getCurrentRoutineModeWithCurrentDate:(id)a3;
- (void)_fetchLocationOfInterest:(int64_t)a3 inGroup:(id)a4;
- (void)_gotLocation:(id)a3 forLocationOfInterest:(int64_t)a4;
- (void)_handleRoutineError:(id)a3 forThing:(id)a4;
- (void)_updateCurrentLocationOfInterestIfTimeElapsedWithCompletionHandler:(id)a3;
- (void)_updatePredictedExitTimesIfTimeElapsed;
- (void)_updatePredictedLocationsOfInterestIfTimeElapsed;
- (void)clearLocationOfInterest;
- (void)didChangeLocationEnabled:(BOOL)a3;
- (void)fetchAllLocationsOfInterest:(id)a3;
- (void)fetchLOILocationOfType:(int64_t)a3 reply:(id)a4;
- (void)getCurrentLocationWithCompletionHandler:(id)a3;
- (void)gotState:(id)a3;
- (void)locationManagerGPS:(id)a3 didEnterRegionWithIdentifier:(id)a4;
- (void)locationManagerGPS:(id)a3 didExitRegionWithIdentifier:(id)a4;
- (void)locationOfInterestAtCurrentLocationWithCompletionHandler:(id)a3;
- (void)updateCurrentLocationOfInterest;
- (void)updateCurrentLocationOfInterestIfTimeElapsed;
- (void)updateCurrentLocationOfInterestWithCompletionHandler:(id)a3;
- (void)updatePredictedExitTimes;
- (void)updatePredictedLocationsOfInterest;
@end

@implementation ATXLocationManager

- (void)updateCurrentLocationOfInterest
{
  v3 = [(ATXLocationManager *)self getCurrentLocation];
  if (v3)
  {
    v4 = [(ATXLocationManager *)self _updateLocationsOfInterestWithCurrentLocation:v3];
    v5 = [MEMORY[0x277D425A0] waitForGroup:v4 timeoutSeconds:1.0];
    v6 = __atxlog_handle_default();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ATXLocationManager updateCurrentLocationOfInterest];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "LOI fetch successful", v8, 2u);
    }
  }
}

void __66__ATXLocationManager_updateCurrentLocationOfInterestIfTimeElapsed__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ATXLocationManager_updateCurrentLocationOfInterestIfTimeElapsed__block_invoke_2;
  v11[3] = &unk_279AB8690;
  v11[4] = v2;
  v11[5] = &v12;
  [v3 runWithLockAcquired:v11];
  v4 = v13[3];
  if (v4 > [*(*(a1 + 32) + 48) locationOfInterestUpdateInterval])
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v13 + 3);
      *buf = 134217984;
      v17 = v6;
      _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to update location of interest since update age is %lf", buf, 0xCu);
    }

    [*(a1 + 32) updateCurrentLocationOfInterest];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__ATXLocationManager_updateCurrentLocationOfInterestIfTimeElapsed__block_invoke_74;
    v10[3] = &unk_279AB8508;
    v10[4] = v7;
    [v8 runWithLockAcquired:v10];
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void __66__ATXLocationManager_updateCurrentLocationOfInterestIfTimeElapsed__block_invoke_74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 now];
  v4 = [v6 laterDate:v3[5]];
  v5 = v3[5];
  v3[5] = v4;
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)previousLOIAndCurrentLOI
{
  [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ATXLocationManager_previousLOIAndCurrentLOI__block_invoke;
  v6[3] = &unk_279AB87D0;
  v6[4] = self;
  v6[5] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__ATXLocationManager_previousLOIAndCurrentLOI__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = *(*(a1 + 32) + 48);
  v5 = a2;
  v6 = -[v4 previousLOIExpirationTime];
  v7 = [*(a1 + 32) now];
  v15 = [v3 dateWithTimeInterval:v7 sinceDate:v6];

  [v5[4] expirePreviousLOIBefore:v15];
  v8 = MEMORY[0x277D42648];
  v9 = [v5[4] previousLOI];
  v10 = v5[4];

  v11 = [v10 currentLOI];
  v12 = [v8 tupleWithFirst:v9 second:v11];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (ATXLocationManager)initWithStateStore:(id)a3 modeGlobals:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ATXLocationManagerGPSCoreLocation sharedInstance];
  v9 = objc_opt_new();
  v10 = [(ATXLocationManager *)self initWithGPS:v8 routine:v9 stateStore:v7 now:0 modeGlobals:v6];

  return v10;
}

- (ATXLocationManager)initWithGPS:(id)a3 routine:(id)a4 stateStore:(id)a5 now:(id)a6 modeGlobals:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v34 = a6;
  v33 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    [ATXLocationManager initWithGPS:a2 routine:self stateStore:? now:? modeGlobals:?];
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [ATXLocationManager initWithGPS:a2 routine:self stateStore:? now:? modeGlobals:?];
  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  [ATXLocationManager initWithGPS:a2 routine:self stateStore:? now:? modeGlobals:?];
LABEL_4:
  v39.receiver = self;
  v39.super_class = ATXLocationManager;
  v17 = [(ATXLocationManager *)&v39 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_modeGlobals, a7);
    __asm { FMOV            V0.2D, #3.0 }

    *&v18->_predictedNextLOITimeout = _Q0;
    objc_storeStrong(&v18->_gps, a3);
    objc_storeStrong(&v18->_routine, a4);
    objc_storeStrong(&v18->_stateStore, a5);
    objc_storeStrong(&v18->_now, a6);
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("ATXLocationManager_LOIUpdateQueue", v24);
    loiUpdateQueue = v18->_loiUpdateQueue;
    v18->_loiUpdateQueue = v25;

    v27 = objc_alloc(MEMORY[0x277D425F8]);
    v28 = objc_opt_new();
    v29 = [v27 initWithGuardedData:v28];
    lock = v18->_lock;
    v18->_lock = v29;

    [v14 setDelegate:v18];
    objc_initWeak(&location, v18);
    v31 = v18->_lock;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __69__ATXLocationManager_initWithGPS_routine_stateStore_now_modeGlobals___block_invoke;
    v35[3] = &unk_279AB8558;
    v36 = v18;
    objc_copyWeak(&v37, &location);
    [(_PASLock *)v31 runWithLockAcquired:v35];
    objc_destroyWeak(&v37);

    objc_destroyWeak(&location);
  }

  return v18;
}

void __69__ATXLocationManager_initWithGPS_routine_stateStore_now_modeGlobals___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __69__ATXLocationManager_initWithGPS_routine_stateStore_now_modeGlobals___block_invoke_2;
  v29[3] = &unk_279AB8530;
  objc_copyWeak(&v30, (a1 + 40));
  v5 = [v4 loadNowOrCallLater:v29];
  if (v5)
  {
    objc_storeStrong(v3 + 4, v5);
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v5 workLOI];
      [v28 coordinate];
      v8 = v7;
      v27 = [v5 workLOI];
      [v27 coordinate];
      v10 = v9;
      v26 = [v5 workLOI];
      v11 = [v26 timestamp];
      [v11 timeIntervalSince1970];
      v13 = v12;
      v14 = [v5 homeLOI];
      [v14 coordinate];
      v16 = v15;
      v17 = [v5 homeLOI];
      [v17 coordinate];
      v19 = v18;
      v20 = [v5 homeLOI];
      v21 = [v20 timestamp];
      [v21 timeIntervalSince1970];
      *buf = 134546945;
      v32 = v8;
      v33 = 2053;
      v34 = v10;
      v35 = 2053;
      v36 = v13;
      v37 = 2053;
      v38 = v16;
      v39 = 2053;
      v40 = v19;
      v41 = 2053;
      v42 = v22;
      _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "loaded cache, cached work LOI: %{sensitive}f, %{sensitive}f, %{sensitive}f, cached home LOI: %{sensitive}f, %{sensitive}f, %{sensitive}f", buf, 0x3Eu);
    }
  }

  v23 = [*(*(a1 + 32) + 8) location];
  v24 = v3[1];
  v3[1] = v23;

  objc_destroyWeak(&v30);
  v25 = *MEMORY[0x277D85DE8];
}

void __69__ATXLocationManager_initWithGPS_routine_stateStore_now_modeGlobals___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 4);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__ATXLocationManager_initWithGPS_routine_stateStore_now_modeGlobals___block_invoke_3;
    v7[3] = &unk_279AB8508;
    v8 = v3;
    [v6 runWithLockAcquired:v7];
  }
}

- (id)_currentLocationAndNeedsUpdate_RequestPreciseLocation:(BOOL)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__11;
  v34 = __Block_byref_object_dispose__11;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__ATXLocationManager__currentLocationAndNeedsUpdate_RequestPreciseLocation___block_invoke;
  v18[3] = &unk_279AB8580;
  v19 = a3;
  v18[4] = self;
  v18[5] = &v30;
  v18[6] = &v26;
  v18[7] = &v20;
  [(_PASLock *)lock runWithLockAcquired:v18];
  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(v27 + 24);
    v9 = [objc_opt_class() debugDescriptionForCLLocation:v31[5]];
    v10 = *(v27 + 24);
    v11 = v21[5];
    *buf = 138413315;
    v37 = v7;
    v38 = 1024;
    v39 = v8;
    v40 = 2117;
    v41 = v9;
    v42 = 1024;
    v43 = v10;
    v44 = 2117;
    v45 = v11;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ - currentLocationAndNeedsUpdate:%u returning result: %{sensitive}@ and needsLocationUpdate: %u for reason: %{sensitive}@", buf, 0x2Cu);
  }

  v12 = MEMORY[0x277D42648];
  v13 = v31[5];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(v27 + 24)];
  v15 = [v12 tupleWithFirst:v13 second:v14];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __76__ATXLocationManager__currentLocationAndNeedsUpdate_RequestPreciseLocation___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) location];
  if ((*(a1 + 64) & 1) != 0 || ([*(a1 + 32) now], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceDate:", v3[2]), v7 = v6, v8 = objc_msgSend(*(*(a1 + 32) + 48), "currentLocationUpdateInterval"), v5, v7 >= v8))
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    [v4 horizontalAccuracy];
    if (v17 <= 0.0)
    {
      goto LABEL_12;
    }

    v18 = [v4 timestamp];
    v19 = [*(a1 + 32) now];
    [v18 timeIntervalSinceDate:v19];
    v21 = -v20;
    v22 = [*(*(a1 + 32) + 48) currentLocationUpdateInterval];

    if (v21 >= v22)
    {
LABEL_12:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v26 = @"location nil or horizontalAccuracy too large or timestamp too old";
      goto LABEL_13;
    }

    v23 = *(a1 + 64);
    [v4 horizontalAccuracy];
    if (v23 == 1)
    {
      if (v24 > 20.0)
      {
        v25 = @"horizontalAccuracy > kPreciseHorizontalAccuracyThreshold";
LABEL_18:
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v30 = *(*(a1 + 56) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v25;
      }
    }

    else if (v24 > 200.0)
    {
      v25 = @"horizontalAccuracy > kHorizontalAccuracyThreshold";
      goto LABEL_18;
    }

    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_14;
    }

    objc_storeStrong(v3 + 1, v4);
    v26 = @"location is valid, horizontal accuracy is valid, and last update was recent";
LABEL_13:
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

LABEL_14:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3[1]);
    goto LABEL_15;
  }

  objc_storeStrong(v3 + 1, v4);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3[1]);
  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v14 = v3[2];
    v15 = *(a1 + 32);
    v16 = [objc_opt_class() debugDescriptionForCLLocation:v3[1]];
    v32 = 138413059;
    v33 = v12;
    v34 = 1024;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    v38 = 2117;
    v39 = v16;
    _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "%@ - currentLocationAndNeedsUpdate:%u lastRequestLocationDate %@ was too recent, using cached location: %{sensitive}@", &v32, 0x26u);
  }

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

void __64__ATXLocationManager_getCurrentLocation_RequestPreciseLocation___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong(v6 + 1, v3);
  }

  v4 = [*(a1 + 40) now];
  v5 = v6[2];
  v6[2] = v4;
}

- (void)getCurrentLocationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (([(ATXLocationManagerGPS *)self->_gps locationEnabled]& 1) != 0)
  {
    v5 = [(ATXLocationManager *)self _currentLocationAndNeedsUpdate_RequestPreciseLocation:0];
    v6 = [v5 first];
    v7 = [v5 second];
    if ([v7 BOOLValue])
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ATXLocationManager getCurrentLocationWithCompletionHandler:];
      }

      gps = self->_gps;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__ATXLocationManager_getCurrentLocationWithCompletionHandler___block_invoke;
      v10[3] = &unk_279AB85D0;
      v10[4] = self;
      v11 = v4;
      [(ATXLocationManagerGPS *)gps updateLocationWithCompletionHandler:v10];
    }

    else
    {
      (*(v4 + 2))(v4, v6, 0);
    }
  }

  else
  {
    [(ATXLocationManager *)self clearLocationOfInterest];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(v4 + 2))(v4, 0, v5);
  }
}

void __62__ATXLocationManager_getCurrentLocationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __62__ATXLocationManager_getCurrentLocationWithCompletionHandler___block_invoke_cold_1(a1, v5, v7);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__ATXLocationManager_getCurrentLocationWithCompletionHandler___block_invoke_63;
  v12[3] = &unk_279AB85A8;
  v13 = v5;
  v14 = v8;
  v10 = v5;
  [v9 runWithLockAcquired:v12];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v6, v11);
}

void __62__ATXLocationManager_getCurrentLocationWithCompletionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong(v6 + 1, v3);
  }

  v4 = [*(a1 + 40) now];
  v5 = v6[2];
  v6[2] = v4;
}

- (id)_updateLocationsOfInterestWithCurrentLocation:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  [v4 horizontalAccuracy];
  if (v6 <= 200.0)
  {
    dispatch_group_enter(v5);
    routine = self->_routine;
    v9 = [(ATXLocationParameters *)self->_modeGlobals locationOfInterestSearchRadius];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __68__ATXLocationManager__updateLocationsOfInterestWithCurrentLocation___block_invoke;
    v16 = &unk_279AB85F8;
    v17 = self;
    v10 = v5;
    v18 = v10;
    [(ATXLocationManagerRoutine *)routine fetchClosestLOIWithinDistance:v4 ofLocation:&v13 reply:v9];
    [(ATXLocationManager *)self _fetchLocationOfInterest:0 inGroup:v10, v13, v14, v15, v16, v17];
    [(ATXLocationManager *)self _fetchLocationOfInterest:1 inGroup:v10];
    [(ATXLocationManager *)self _fetchLocationOfInterest:2 inGroup:v10];
    [(ATXLocationManager *)self _fetchLocationOfInterest:3 inGroup:v10];
    v11 = v18;
    v7 = v10;
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "_updateLocationsOfInterestWithCurrentLocation: Horizontal accuracy for current location is greater than the threshold so won't fetch closest LOI", buf, 2u);
    }
  }

  return v5;
}

void __68__ATXLocationManager__updateLocationsOfInterestWithCurrentLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _handleRoutineError:a3 forThing:@"current"];
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __68__ATXLocationManager__updateLocationsOfInterestWithCurrentLocation___block_invoke_cold_1(v5, v6);
    }

    v7 = objc_opt_new();
    [v7 setCurrentLOI:v5];
    v8 = [*(a1 + 32) now];
    [v7 setLastUpdateDate:v8];

    [*(a1 + 32) gotState:v7];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)updateCurrentLocationOfInterestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke;
  v6[3] = &unk_279AB85D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ATXLocationManager *)self getCurrentLocationWithCompletionHandler:v6];
}

void __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2 && !v5)
  {
    v7 = [v6 _updateLocationsOfInterestWithCurrentLocation:a2];
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke_3;
    block[3] = &unk_279AB8620;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v13 = v9;
    dispatch_group_notify(v7, v8, block);

LABEL_7:
    goto LABEL_8;
  }

  v10 = v6[4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_279AB8508;
  v14[4] = v6;
  [v10 runWithLockAcquired:v14];
  v11 = *(a1 + 40);
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
    (*(v11 + 16))(v11, v7);
    goto LABEL_7;
  }

  (*(v11 + 16))(v11, v5);
LABEL_8:
}

void __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 now];
  v4 = [v6 laterDate:v3[5]];
  v5 = v3[5];
  v3[5] = v4;
}

uint64_t __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_279AB8508;
  v5[4] = v2;
  [v3 runWithLockAcquired:v5];
  return (*(*(a1 + 40) + 16))();
}

void __75__ATXLocationManager_updateCurrentLocationOfInterestWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 now];
  v4 = [v6 laterDate:v3[5]];
  v5 = v3[5];
  v3[5] = v4;
}

void __55__ATXLocationManager_invalidateLocationOfInterestCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 distantPast];
  v5 = v3[5];
  v3[5] = v4;
}

- (void)fetchLOILocationOfType:(int64_t)a3 reply:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [ATXLocationManager stringForLOIType:a3];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  if ([v7 length])
  {
    lock = self->_lock;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__ATXLocationManager_fetchLOILocationOfType_reply___block_invoke;
    v17[3] = &unk_279AB8668;
    v17[4] = self;
    v19 = &v20;
    v18 = v7;
    [(_PASLock *)lock runWithLockAcquired:v17];
  }

  if (v21[5])
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "Using cached %@ LOI", buf, 0xCu);
    }

    v6[2](v6, v21[5], 0);
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_260C9F000, v10, OS_LOG_TYPE_DEFAULT, "Fetching %@ LOI", buf, 0xCu);
    }

    routine = self->_routine;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__ATXLocationManager_fetchLOILocationOfType_reply___block_invoke_73;
    v13[3] = &unk_279AB86B8;
    v13[4] = self;
    v14 = v7;
    v15 = v6;
    v16 = a3;
    [(ATXLocationManagerRoutine *)routine fetchLOILocationOfType:a3 reply:v13];
  }

  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __51__ATXLocationManager_fetchLOILocationOfType_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(v3 + 5);
  v5 = [*(a1 + 32) now];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = -v7;
    _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "Checking cache with age: %f", &v14, 0xCu);
  }

  if (v7 > -900.0)
  {
    v9 = [*(v3 + 4) locationsOfInterest];
    v10 = [v9 valueForKey:*(a1 + 40)];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__ATXLocationManager_fetchLOILocationOfType_reply___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 _handleRoutineError:v6 forThing:*(a1 + 40)];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__11;
    v22 = __Block_byref_object_dispose__11;
    v23 = 0;
    v8 = *(*(a1 + 32) + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__ATXLocationManager_fetchLOILocationOfType_reply___block_invoke_2;
    v17[3] = &unk_279AB8690;
    v19 = buf;
    v18 = *(a1 + 40);
    [v8 runWithLockAcquired:v17];
    if (*(*&buf[8] + 40))
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "Falling back to cache because Core Routine failed", v16, 2u);
      }

      v10 = *(*&buf[8] + 40);
      (*(*(a1 + 48) + 16))();

      _Block_object_dispose(buf, 8);
      goto LABEL_11;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [v7 _gotLocation:v5 forLocationOfInterest:*(a1 + 56)];
  }

  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [objc_opt_class() debugDescriptionForCLLocation:v5];
    *buf = 138412547;
    *&buf[4] = v13;
    *&buf[12] = 2117;
    *&buf[14] = v14;
    _os_log_impl(&dword_260C9F000, v11, OS_LOG_TYPE_INFO, "%@ LOI: %{sensitive}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

void __51__ATXLocationManager_fetchLOILocationOfType_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a2 + 32) locationsOfInterest];
  v3 = [v6 valueForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_fetchLocationOfInterest:(int64_t)a3 inGroup:(id)a4
{
  v6 = a4;
  dispatch_group_enter(v6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ATXLocationManager__fetchLocationOfInterest_inGroup___block_invoke;
  v8[3] = &unk_279AB86E0;
  v9 = v6;
  v7 = v6;
  [(ATXLocationManager *)self fetchLOILocationOfType:a3 reply:v8];
}

- (void)_gotLocation:(id)a3 forLocationOfInterest:(int64_t)a4
{
  v6 = a3;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ATXLocationManager__gotLocation_forLocationOfInterest___block_invoke;
  v9[3] = &unk_279AB8708;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

uint64_t __57__ATXLocationManager__gotLocation_forLocationOfInterest___block_invoke(void *a1, void *a2)
{
  v4 = a2[4];
  v5 = a2;
  v6 = [v4 locationsOfInterest];
  v7 = a1[4];
  v8 = [ATXLocationManager stringForLOIType:a1[6]];
  [v6 setValue:v7 forKey:v8];

  v9 = *(a1[5] + 24);
  v10 = a2[4];

  return [v9 write:v10];
}

- (void)gotState:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ATXLocationManager_gotState___block_invoke;
  v7[3] = &unk_279AB85A8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __31__ATXLocationManager_gotState___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = v10[4];
  if (v3)
  {
    v4 = [ATXLocationManagerState merge:v3 with:*(a1 + 32)];
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v10[4];
  v10[4] = v4;

  v6 = MEMORY[0x277CBEAA8];
  v7 = -[*(*(a1 + 40) + 48) previousLOIExpirationTime];
  v8 = [*(a1 + 40) now];
  v9 = [v6 dateWithTimeInterval:v8 sinceDate:v7];

  [v10[4] expirePreviousLOIBefore:v9];
  [*(*(a1 + 40) + 24) write:v10[4]];
}

- (void)_handleRoutineError:(id)a3 forThing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277D01448]];

  if (v9)
  {
    lock = self->_lock;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ATXLocationManager__handleRoutineError_forThing___block_invoke;
    v12[3] = &unk_279AB8730;
    v13 = v6;
    v14 = v7;
    v15 = self;
    [(_PASLock *)lock runWithLockAcquired:v12];

    v11 = v13;
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXLocationManager *)v7 _handleRoutineError:v6 forThing:v11];
    }
  }
}

void __51__ATXLocationManager__handleRoutineError_forThing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) code];
  if (v4 > 7)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x98) != 0)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __51__ATXLocationManager__handleRoutineError_forThing___block_invoke_cold_1(a1, (a1 + 32));
    }

    v6 = MEMORY[0x277CBEAA8];
    v7 = [*(a1 + 48) now];
    v8 = 10.0;
LABEL_13:
    v12 = [v6 dateWithTimeInterval:v7 sinceDate:v8];
    v13 = v3[5];
    v3[5] = v12;

    goto LABEL_14;
  }

  if (((1 << v4) & 6) == 0)
  {
LABEL_10:
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __51__ATXLocationManager__handleRoutineError_forThing___block_invoke_cold_3(a1, (a1 + 32));
    }

    v6 = MEMORY[0x277CBEAA8];
    v7 = [*(a1 + 48) now];
    v8 = 60.0;
    goto LABEL_13;
  }

  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __51__ATXLocationManager__handleRoutineError_forThing___block_invoke_cold_2(a1, (a1 + 32));
  }

  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = v3[5];
  v3[5] = v10;
LABEL_14:
}

- (void)updateCurrentLocationOfInterestIfTimeElapsed
{
  loiUpdateQueue = self->_loiUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ATXLocationManager_updateCurrentLocationOfInterestIfTimeElapsed__block_invoke;
  block[3] = &unk_279AB8758;
  block[4] = self;
  dispatch_sync(loiUpdateQueue, block);
}

void __66__ATXLocationManager_updateCurrentLocationOfInterestIfTimeElapsed__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v5 = [*(a1 + 32) now];
  [v3 timeIntervalSinceDate:v5];
  *(*(*(a1 + 40) + 8) + 24) = -v4;
}

- (void)_updateCurrentLocationOfInterestIfTimeElapsedWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__ATXLocationManager__updateCurrentLocationOfInterestIfTimeElapsedWithCompletionHandler___block_invoke;
  v10[3] = &unk_279AB8690;
  v10[4] = self;
  v10[5] = &v11;
  [(_PASLock *)lock runWithLockAcquired:v10];
  v6 = v12[3];
  if (v6 <= [(ATXLocationParameters *)self->_modeGlobals locationOfInterestUpdateInterval])
  {
    v4[2](v4, 0);
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v12 + 3);
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to update location of interest since update age is %lf", buf, 0xCu);
    }

    [(ATXLocationManager *)self updateCurrentLocationOfInterestWithCompletionHandler:v4];
  }

  _Block_object_dispose(&v11, 8);

  v9 = *MEMORY[0x277D85DE8];
}

void __89__ATXLocationManager__updateCurrentLocationOfInterestIfTimeElapsedWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v5 = [*(a1 + 32) now];
  [v3 timeIntervalSinceDate:v5];
  *(*(*(a1 + 40) + 8) + 24) = -v4;
}

- (id)cachedLocationOfInterestAtCurrentLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__ATXLocationManager_cachedLocationOfInterestAtCurrentLocation__block_invoke;
  v5[3] = &unk_279AB8780;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __63__ATXLocationManager_cachedLocationOfInterestAtCurrentLocation__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) currentLOI];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)locationOfInterestAtCurrentLocation
{
  [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];

  return [(ATXLocationManager *)self cachedLocationOfInterestAtCurrentLocation];
}

- (void)locationOfInterestAtCurrentLocationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__ATXLocationManager_locationOfInterestAtCurrentLocationWithCompletionHandler___block_invoke;
  v6[3] = &unk_279AB87A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ATXLocationManager *)self _updateCurrentLocationOfInterestIfTimeElapsedWithCompletionHandler:v6];
}

void __79__ATXLocationManager_locationOfInterestAtCurrentLocationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__11;
    v11 = __Block_byref_object_dispose__11;
    v12 = 0;
    v4 = *(*(a1 + 32) + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__ATXLocationManager_locationOfInterestAtCurrentLocationWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_279AB8780;
    v6[4] = &v7;
    [v4 runWithLockAcquired:v6];
    v5 = v8[5];
    (*(*(a1 + 40) + 16))();
    _Block_object_dispose(&v7, 8);
  }
}

uint64_t __79__ATXLocationManager_locationOfInterestAtCurrentLocationWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) currentLOI];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)getPredictedLocationsOfInterestFromLOIName:(id)a3 startDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__11;
  v41 = __Block_byref_object_dispose__11;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__11;
  v35 = __Block_byref_object_dispose__11;
  v36 = 0;
  lock = self->_lock;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__ATXLocationManager_getPredictedLocationsOfInterestFromLOIName_startDate___block_invoke;
  v28[3] = &unk_279AB8690;
  v30 = &v37;
  v9 = v6;
  v29 = v9;
  [(_PASLock *)lock runWithLockAcquired:v28];
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = objc_alloc(MEMORY[0x277CE41F8]);
  [v38[5] coordinate];
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [v11 initWithCoordinate:v16 altitude:v13 horizontalAccuracy:v15 verticalAccuracy:0.0 timestamp:{5.0, 0.0}];
  v18 = v38[5];
  v38[5] = v17;

  routine = self->_routine;
  v20 = v38[5];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75__ATXLocationManager_getPredictedLocationsOfInterestFromLOIName_startDate___block_invoke_2;
  v25[3] = &unk_279AB87F8;
  v25[4] = self;
  v27 = &v31;
  v21 = v10;
  v26 = v21;
  [(ATXLocationManagerRoutine *)routine fetchNextPredictedLOIFromLocation:v20 startDate:v7 timeInterval:1 requireHighConfidence:v25 reply:7200.0];
  if ([MEMORY[0x277D425A0] waitForGroup:v21 timeoutSeconds:self->_predictedNextLOITimeout] == 1)
  {
    v22 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXLocationManager getPredictedLocationsOfInterestFromLOIName:startDate:];
    }

    v23 = 0;
  }

  else
  {
    v23 = v32[5];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v23;
}

void __75__ATXLocationManager_getPredictedLocationsOfInterestFromLOIName_startDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a2 + 32) locationsOfInterest];
  v3 = [v6 valueForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __75__ATXLocationManager_getPredictedLocationsOfInterestFromLOIName_startDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) _handleRoutineError:a3 forThing:@"predictedLOIs"];
  }

  else
  {
    v7 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_INFO, "Next Predicted LOIs: %@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (id)getPredictedExitTimesFromLOIName:(id)a3 startDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__11;
  v41 = __Block_byref_object_dispose__11;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__11;
  v35 = __Block_byref_object_dispose__11;
  v36 = 0;
  lock = self->_lock;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__ATXLocationManager_getPredictedExitTimesFromLOIName_startDate___block_invoke;
  v28[3] = &unk_279AB8690;
  v30 = &v37;
  v9 = v6;
  v29 = v9;
  [(_PASLock *)lock runWithLockAcquired:v28];
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = objc_alloc(MEMORY[0x277CE41F8]);
  [v38[5] coordinate];
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [v11 initWithCoordinate:v16 altitude:v13 horizontalAccuracy:v15 verticalAccuracy:0.0 timestamp:{5.0, 0.0}];
  v18 = v38[5];
  v38[5] = v17;

  routine = self->_routine;
  v20 = v38[5];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__ATXLocationManager_getPredictedExitTimesFromLOIName_startDate___block_invoke_2;
  v25[3] = &unk_279AB87F8;
  v25[4] = self;
  v27 = &v31;
  v21 = v10;
  v26 = v21;
  [(ATXLocationManagerRoutine *)routine fetchPredictedExitDatesFromLocation:v20 onDate:v7 requireHighConfidence:0 reply:v25];
  if ([MEMORY[0x277D425A0] waitForGroup:v21 timeoutSeconds:self->_predictedExitDateTimeout] == 1)
  {
    v22 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXLocationManager getPredictedExitTimesFromLOIName:startDate:];
    }
  }

  v23 = v32[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v23;
}

void __65__ATXLocationManager_getPredictedExitTimesFromLOIName_startDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a2 + 32) locationsOfInterest];
  v3 = [v6 valueForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __65__ATXLocationManager_getPredictedExitTimesFromLOIName_startDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) _handleRoutineError:a3 forThing:@"predictedExitTimes"];
  }

  else
  {
    v7 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_INFO, "Predicted Exit Times: %@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (id)predictedLocationsOfInterest
{
  [(ATXLocationManager *)self _updatePredictedLocationsOfInterestIfTimeElapsed];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ATXLocationManager_predictedLocationsOfInterest__block_invoke;
  v8[3] = &unk_279AB8780;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

uint64_t __50__ATXLocationManager_predictedLocationsOfInterest__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) predictedNextLOIs];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)predictedExitTimes
{
  [(ATXLocationManager *)self _updatePredictedExitTimesIfTimeElapsed];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ATXLocationManager_predictedExitTimes__block_invoke;
  v8[3] = &unk_279AB8780;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

uint64_t __40__ATXLocationManager_predictedExitTimes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) predictedExitTimes];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)_updatePredictedLocationsOfInterestIfTimeElapsed
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ATXLocationManager__updatePredictedLocationsOfInterestIfTimeElapsed__block_invoke;
  v7[3] = &unk_279AB8690;
  v7[4] = self;
  v7[5] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v4 = v9[3];
  if (v4 > [(ATXLocationParameters *)self->_modeGlobals predictedLocationsOfInterestUpdateInterval])
  {
    v5 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_INFO, "Updating predicted next lois in ATXLocationManager", v6, 2u);
    }

    [(ATXLocationManager *)self updatePredictedLocationsOfInterest];
  }

  _Block_object_dispose(&v8, 8);
}

void __70__ATXLocationManager__updatePredictedLocationsOfInterestIfTimeElapsed__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v5 = [*(a1 + 32) now];
  [v3 timeIntervalSinceDate:v5];
  *(*(*(a1 + 40) + 8) + 24) = -v4;
}

- (void)_updatePredictedExitTimesIfTimeElapsed
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ATXLocationManager__updatePredictedExitTimesIfTimeElapsed__block_invoke;
  v7[3] = &unk_279AB8690;
  v7[4] = self;
  v7[5] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v4 = v9[3];
  if (v4 > [(ATXLocationParameters *)self->_modeGlobals predictedExitTimesUpdateInterval])
  {
    v5 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_INFO, "Updating predicted exit times in ATXLocationManager", v6, 2u);
    }

    [(ATXLocationManager *)self updatePredictedExitTimes];
  }

  _Block_object_dispose(&v8, 8);
}

void __60__ATXLocationManager__updatePredictedExitTimesIfTimeElapsed__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v5 = [*(a1 + 32) now];
  [v3 timeIntervalSinceDate:v5];
  *(*(*(a1 + 40) + 8) + 24) = -v4;
}

- (void)updatePredictedLocationsOfInterest
{
  v3 = [(ATXLocationManager *)self getCurrentLocation];
  if (v3)
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__11;
    v20 = __Block_byref_object_dispose__11;
    v21 = 0;
    routine = self->_routine;
    v6 = [(ATXLocationManager *)self now];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__ATXLocationManager_updatePredictedLocationsOfInterest__block_invoke;
    v13[3] = &unk_279AB87F8;
    v13[4] = self;
    v15 = &v16;
    v7 = v4;
    v14 = v7;
    [(ATXLocationManagerRoutine *)routine fetchNextPredictedLOIFromLocation:v3 startDate:v6 timeInterval:1 requireHighConfidence:v13 reply:7200.0];

    if ([MEMORY[0x277D425A0] waitForGroup:v7 timeoutSeconds:self->_predictedNextLOITimeout] == 1)
    {
      v8 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXLocationManager getPredictedLocationsOfInterestFromLOIName:startDate:];
      }

      v9 = objc_opt_new();
      [v9 setPredictedNextLOIs:MEMORY[0x277CBEBF8]];
      v10 = [(ATXLocationManager *)self now];
      [v9 setLastUpdateDate:v10];

      [(ATXLocationManager *)self gotState:v9];
    }

    else if (v17[5])
    {
      [(ATXLocationManager *)self gotState:?];
    }

    lock = self->_lock;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__ATXLocationManager_updatePredictedLocationsOfInterest__block_invoke_84;
    v12[3] = &unk_279AB8508;
    v12[4] = self;
    [(_PASLock *)lock runWithLockAcquired:v12];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v7 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXLocationManager updatePredictedLocationsOfInterest];
    }
  }
}

void __56__ATXLocationManager_updatePredictedLocationsOfInterest__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _handleRoutineError:a3 forThing:@"predictedLOIs"];
  }

  else
  {
    v6 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_INFO, "Next Predicted LOIs: %@", &v12, 0xCu);
    }

    v7 = objc_opt_new();
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 48) + 8) + 40) setPredictedNextLOIs:v5];
    v10 = [*(a1 + 32) now];
    [*(*(*(a1 + 48) + 8) + 40) setLastUpdateDate:v10];
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

void __56__ATXLocationManager_updatePredictedLocationsOfInterest__block_invoke_84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 now];
  v4 = [v6 laterDate:v3[7]];
  v5 = v3[7];
  v3[7] = v4;
}

- (void)updatePredictedExitTimes
{
  v3 = [(ATXLocationManager *)self getCurrentLocation];
  v4 = v3;
  if (v3)
  {
    [v3 horizontalAccuracy];
    if (v5 <= 200.0)
    {
      v7 = dispatch_group_create();
      dispatch_group_enter(v7);
      *buf = 0;
      v19 = buf;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__11;
      v22 = __Block_byref_object_dispose__11;
      v23 = 0;
      routine = self->_routine;
      v9 = [(ATXLocationManager *)self now];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __46__ATXLocationManager_updatePredictedExitTimes__block_invoke;
      v15[3] = &unk_279AB87F8;
      v15[4] = self;
      v17 = buf;
      v6 = v7;
      v16 = v6;
      [(ATXLocationManagerRoutine *)routine fetchPredictedExitDatesFromLocation:v4 onDate:v9 requireHighConfidence:0 reply:v15];

      if ([MEMORY[0x277D425A0] waitForGroup:v6 timeoutSeconds:self->_predictedExitDateTimeout] == 1)
      {
        v10 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [ATXLocationManager getPredictedExitTimesFromLOIName:startDate:];
        }

        v11 = objc_opt_new();
        [v11 setPredictedExitTimes:MEMORY[0x277CBEBF8]];
        v12 = [(ATXLocationManager *)self now];
        [v11 setLastUpdateDate:v12];

        [(ATXLocationManager *)self gotState:v11];
      }

      else if (*(v19 + 5))
      {
        [(ATXLocationManager *)self gotState:?];
      }

      lock = self->_lock;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__ATXLocationManager_updatePredictedExitTimes__block_invoke_85;
      v14[3] = &unk_279AB8508;
      v14[4] = self;
      [(_PASLock *)lock runWithLockAcquired:v14];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v6 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "updatePredictedExitTimes: Returned because horizontal accuracy is greater than threshold", buf, 2u);
      }
    }
  }
}

void __46__ATXLocationManager_updatePredictedExitTimes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _handleRoutineError:a3 forThing:@"predictedExitTimes"];
  }

  else
  {
    v6 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_INFO, "Predicted Exit Times: %@", &v12, 0xCu);
    }

    v7 = objc_opt_new();
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 48) + 8) + 40) setPredictedExitTimes:v5];
    v10 = [*(a1 + 32) now];
    [*(*(*(a1 + 48) + 8) + 40) setLastUpdateDate:v10];
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

void __46__ATXLocationManager_updatePredictedExitTimes__block_invoke_85(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 now];
  v4 = [v6 laterDate:v3[8]];
  v5 = v3[8];
  v3[8] = v4;
}

- (double)_distanceOfCurrentLocationFrom:(id)a3
{
  v4 = a3;
  [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__11;
  v26 = __Block_byref_object_dispose__11;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__ATXLocationManager__distanceOfCurrentLocationFrom___block_invoke;
  v12[3] = &unk_279AB8820;
  v14 = &v22;
  v15 = &v16;
  v6 = v4;
  v13 = v6;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v7 = v23[5];
  v8 = -1.0;
  if (v7 && v17[5])
  {
    [v7 distanceFromLocation:?];
    v8 = v9;
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ATXLocationManager *)v6 _distanceOfCurrentLocationFrom:v10, v8];
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

void __53__ATXLocationManager__distanceOfCurrentLocationFrom___block_invoke(void *a1, id *a2)
{
  objc_storeStrong((*(a1[5] + 8) + 40), a2[1]);
  v4 = a2;
  v8 = [v4[4] locationsOfInterest];
  v5 = [v8 valueForKey:a1[4]];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)debugDescriptionForCLLocation:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = a3;
    v5 = [v3 alloc];
    [v4 coordinate];
    v7 = v6;
    [v4 coordinate];
    v9 = v8;
    v10 = [v4 timestamp];

    [v10 timeIntervalSinceReferenceDate];
    v12 = [v5 initWithFormat:@"<CLLocation: lat: %f, long: %f, timestamp: %f>", v7, v9, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)stringForLOIType:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = &stru_287331708;
  }

  else
  {
    v4 = *off_279AB8890[a3];
  }

  return v4;
}

- (BOOL)isAvailableLocationOfInterestType:(int64_t)a3
{
  [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];
  v5 = [ATXLocationManager stringForLOIType:a3];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ATXLocationManager_isAvailableLocationOfInterestType___block_invoke;
  v9[3] = &unk_279AB87D0;
  v7 = v5;
  v10 = v7;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v9];
  LOBYTE(lock) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return lock;
}

void __56__ATXLocationManager_isAvailableLocationOfInterestType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) locationsOfInterest];
  v4 = [v3 valueForKey:*(a1 + 32)];

  *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
}

- (void)fetchAllLocationsOfInterest:(id)a3
{
  v4 = MEMORY[0x277CCA970];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [(ATXLocationManager *)self now];
  v9 = [v7 dateWithTimeInterval:v8 sinceDate:-4233600.0];
  v10 = [(ATXLocationManager *)self now];
  v11 = [v6 initWithStartDate:v9 endDate:v10];

  [(ATXLocationManagerRoutine *)self->_routine fetchLOIVisitedDuring:v11 reply:v5];
}

- (BOOL)isNearKnownTypeLocationOfInterest
{
  v2 = [(ATXLocationManager *)self locationOfInterestAtCurrentLocation];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type] != -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isLocationNearKnownTypeLocationOfInterest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__ATXLocationManager_isLocationNearKnownTypeLocationOfInterest___block_invoke;
  v18[3] = &unk_279AB8780;
  v18[4] = &v19;
  [(_PASLock *)lock runWithLockAcquired:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v14 + 1) + 8 * i))
        {
          [v4 distanceFromLocation:v14];
          if (v10 <= [(ATXLocationParameters *)self->_modeGlobals locationOfInterestSearchRadius])
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  _Block_object_dispose(&v19, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __64__ATXLocationManager_isLocationNearKnownTypeLocationOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15[4] homeLOI];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v15[4] homeLOI];
    [v4 addObject:v5];
  }

  v6 = [v15[4] workLOI];

  if (v6)
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v15[4] workLOI];
    [v7 addObject:v8];
  }

  v9 = [v15[4] schoolLOI];

  if (v9)
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = [v15[4] schoolLOI];
    [v10 addObject:v11];
  }

  v12 = [v15[4] gymLOI];

  if (v12)
  {
    v13 = *(*(*(a1 + 32) + 8) + 40);
    v14 = [v15[4] gymLOI];
    [v13 addObject:v14];
  }
}

- (BOOL)isNearFrequentLocationOfInterest
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ATXLocationManager *)self locationOfInterestAtCurrentLocation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 visits];
    v6 = [v5 count];
    v7 = v6 >= [(ATXLocationParameters *)self->_modeGlobals frequentLOIMinimumVisits];
  }

  else
  {
    v7 = 0;
  }

  v8 = __atxlog_handle_hero();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [v4 visits];
    v13 = 136315650;
    v14 = "[ATXLocationManager isNearFrequentLocationOfInterest]";
    v15 = 2112;
    v16 = v9;
    v17 = 2048;
    v18 = [v10 count];
    _os_log_impl(&dword_260C9F000, v8, OS_LOG_TYPE_DEFAULT, "%s Location of interest is a frequently visited location: %@. Number of visits: %lu", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isNearKnownTypeOrFrequentLocationOfInterest
{
  if ([(ATXLocationManager *)self isNearKnownTypeLocationOfInterest])
  {
    return 1;
  }

  return [(ATXLocationManager *)self isNearFrequentLocationOfInterest];
}

- (void)clearLocationOfInterest
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ATXLocationManager_clearLocationOfInterest__block_invoke;
  v3[3] = &unk_279AB8508;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

uint64_t __45__ATXLocationManager_clearLocationOfInterest__block_invoke(uint64_t a1, void *a2)
{
  [a2 clear];
  v3 = *(*(a1 + 32) + 24);

  return [v3 clear];
}

- (unint64_t)getCurrentRoutineModeWithCurrentDate:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__ATXLocationManager_getCurrentRoutineModeWithCurrentDate___block_invoke;
  v14[3] = &unk_279AB8848;
  v14[4] = &v19;
  v14[5] = &v15;
  [(_PASLock *)lock runWithLockAcquired:v14];
  if (v20[5] && ([v4 timeIntervalSinceDate:?], v6 < 3600.0))
  {
    v7 = v16[3];
  }

  else
  {
    v8 = [(ATXLocationManager *)self getCurrentLocation];
    if (v8)
    {
      v7 = [(ATXLocationManagerRoutine *)self->_routine fetchRoutineModeFromLocation:v8];
    }

    else
    {
      v7 = 0;
    }

    v9 = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__ATXLocationManager_getCurrentRoutineModeWithCurrentDate___block_invoke_2;
    v11[3] = &unk_279AB8870;
    v12 = v4;
    v13 = v7;
    [(_PASLock *)v9 runWithLockAcquired:v11];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __59__ATXLocationManager_getCurrentRoutineModeWithCurrentDate___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2[6]);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v4[3];
}

void __59__ATXLocationManager_getCurrentRoutineModeWithCurrentDate___block_invoke_2(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 6, *(a1 + 32));
  v4 = a2;
  v4[3] = *(a1 + 40);
}

- (BOOL)isTourist
{
  v3 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(self) = [(ATXLocationManager *)self isTouristWithCurrentDate:v3];

  return self;
}

- (void)didChangeLocationEnabled:(BOOL)a3
{
  if (a3)
  {
    [(ATXLocationManager *)self updateCurrentLocationOfInterestIfTimeElapsed];
  }

  else
  {
    [(ATXLocationManager *)self clearLocationOfInterest];
  }
}

- (void)locationManagerGPS:(id)a3 didEnterRegionWithIdentifier:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(ATXLocationManager *)self updatePredictedLocationsOfInterest];
  v6 = objc_alloc(MEMORY[0x277CCAB88]);
  v11 = @"ATXLocationManagerRegionIdentifierUserInfoKey";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithName:@"ATXLocationManagerDidEnterRegionNotification" object:self userInfo:v7];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];

  [v9 postNotification:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerGPS:(id)a3 didExitRegionWithIdentifier:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(ATXLocationManager *)self updatePredictedLocationsOfInterest];
  v6 = objc_alloc(MEMORY[0x277CCAB88]);
  v11 = @"ATXLocationManagerRegionIdentifierUserInfoKey";
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 initWithName:@"ATXLocationManagerDidExitRegionNotification" object:self userInfo:v7];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];

  [v9 postNotification:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithGPS:(uint64_t)a1 routine:(uint64_t)a2 stateStore:now:modeGlobals:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationManager.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"gps"}];
}

- (void)initWithGPS:(uint64_t)a1 routine:(uint64_t)a2 stateStore:now:modeGlobals:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationManager.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"routine"}];
}

- (void)initWithGPS:(uint64_t)a1 routine:(uint64_t)a2 stateStore:now:modeGlobals:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLocationManager.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"stateStore"}];
}

void __62__ATXLocationManager_getCurrentLocationWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() debugDescriptionForCLLocation:a2];
  v7 = 138739971;
  v8 = v5;
  _os_log_debug_impl(&dword_260C9F000, a3, OS_LOG_TYPE_DEBUG, "Updated location: %{sensitive}@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __68__ATXLocationManager__updateLocationsOfInterestWithCurrentLocation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_260C9F000, a2, OS_LOG_TYPE_DEBUG, "Current LOI at %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleRoutineError:(NSObject *)a3 forThing:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_260C9F000, a2, a3, "Non-RT error fetching %{public}@: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __51__ATXLocationManager__handleRoutineError_forThing___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  _os_log_fault_impl(&dword_260C9F000, v2, OS_LOG_TYPE_FAULT, "RT misuse fetching %{public}@: %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __51__ATXLocationManager__handleRoutineError_forThing___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0(&dword_260C9F000, v2, v3, "Disabling LOI updates due to error fetching %{public}@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __51__ATXLocationManager__handleRoutineError_forThing___block_invoke_cold_3(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_0(&dword_260C9F000, v2, v3, "Error fetching %{public}@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_distanceOfCurrentLocationFrom:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_260C9F000, a2, OS_LOG_TYPE_DEBUG, "Distance to %@ LOI: %f meters", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end