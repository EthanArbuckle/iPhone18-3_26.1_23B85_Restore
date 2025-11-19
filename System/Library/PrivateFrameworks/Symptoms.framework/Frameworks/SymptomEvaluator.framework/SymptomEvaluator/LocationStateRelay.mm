@interface LocationStateRelay
+ (LocationStateRelay)sharedInstance;
- (BOOL)authorizedToUseCoreRoutine;
- (BOOL)loadCoreLocation;
- (BOOL)loadCoreRoutine;
- (LocationStateRelay)init;
- (id)mobileWiFiLocationManager;
- (id)rtLOITypeToString:(int64_t)a3;
- (int64_t)preflightFrameworks;
- (unint64_t)addPendingLOIBlocks:(id)a3;
- (void)callPendingLOIBlocksWithCLLocation:(id)a3 LOI:(id)a4 andError:(id)a5;
- (void)cleanUpPendingLOIBlocks;
- (void)dealloc;
- (void)determineIfLocationOfInterestIsKnownOfType:(int64_t)a3 queue:(id)a4 reply:(id)a5;
- (void)fetchCurrentLocationLOIOnQueue:(id)a3 desiredAccuracy:(double)a4 reply:(id)a5;
- (void)getLocationTechnologyStateForInitialState:(BOOL)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)setGpsInUse:(BOOL)a3;
- (void)setLOIUseAuthorized:(BOOL)a3;
- (void)showLocationArrow;
- (void)unloadFrameworks;
@end

@implementation LocationStateRelay

- (BOOL)loadCoreLocation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__LocationStateRelay_loadCoreLocation__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (loadCoreLocation_pred != -1)
  {
    dispatch_once(&loadCoreLocation_pred, block);
  }

  return loadCoreLocation_loadedCL;
}

+ (LocationStateRelay)sharedInstance
{
  if (sharedInstance_instancePred_0 != -1)
  {
    +[LocationStateRelay sharedInstance];
  }

  v3 = sharedInstance_6;

  return v3;
}

uint64_t __36__LocationStateRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LocationStateRelay);
  v1 = sharedInstance_6;
  sharedInstance_6 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (LocationStateRelay)init
{
  v11.receiver = self;
  v11.super_class = LocationStateRelay;
  v2 = [(LocationStateRelay *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"];
    mobileWiFiBundle = v2->mobileWiFiBundle;
    v2->mobileWiFiBundle = v3;

    locationRequestTimer = v2->locationRequestTimer;
    v2->locationRequestTimer = 0;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.symptoms.location.queue", v6);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, locationTechStatusChanged, @"com.apple.locationd.techstatus", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(LocationStateRelay *)v2 getLocationTechnologyStateForInitialState:1];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.locationd.techstatus", 0);
  mobileWiFiLocationManager = self->mobileWiFiLocationManager;
  if (mobileWiFiLocationManager)
  {
    [(CLLocationManager *)mobileWiFiLocationManager setDelegate:0];
  }

  [(LocationStateRelay *)self unloadFrameworks];
  v5.receiver = self;
  v5.super_class = LocationStateRelay;
  [(LocationStateRelay *)&v5 dealloc];
}

- (BOOL)loadCoreRoutine
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__LocationStateRelay_loadCoreRoutine__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (loadCoreRoutine_symbolLoadOnce != -1)
  {
    dispatch_once(&loadCoreRoutine_symbolLoadOnce, block);
  }

  return loadCoreRoutine_loadedCR;
}

void __37__LocationStateRelay_loadCoreRoutine__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 16) = dlopen("/System/Library/PrivateFrameworks/CoreRoutine.framework/CoreRoutine", 6);
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(objc_getClass("RTRoutineManager"));
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    v5 = *(*(a1 + 32) + 24);
    loadCoreRoutine_loadedCR = v5 != 0;
    if (!v5)
    {
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "CoreRoutine routineManager is null.", &v10, 2u);
      }
    }
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v10 = 136315138;
      v11 = dlerror();
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "CoreRoutine failed to load due to %s\n", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __38__LocationStateRelay_loadCoreLocation__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 6);
  if (!*(*(a1 + 32) + 8))
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v19 = 136315138;
      v20 = dlerror();
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "CoreLocation failed to load due to %s\n", &v19, 0xCu);
    }

    goto LABEL_12;
  }

  *(*(a1 + 32) + 48) = objc_getClass("CLLocationManager");
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  *(*(a1 + 32) + 72) = dlsym(*(*(a1 + 32) + 8), "CLCopyTechnologiesInUse");
  v5 = *(a1 + 32);
  if (*(v5 + 48))
  {
    v6 = *(v5 + 72);
    loadCoreLocation_loadedCL = v6 != 0;
    if (v6)
    {
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        v8 = "Successfully loaded CoreLocation";
        v9 = v7;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 2;
LABEL_11:
        _os_log_impl(&dword_23255B000, v9, v10, v8, &v19, v11);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
    loadCoreLocation_loadedCL = 0;
  }

  v14 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 48);
    v17 = *(v15 + 72);
    v19 = 134218240;
    v20 = v16;
    v21 = 2048;
    v22 = v17;
    v8 = "LocationManager (%p) or CopyTechnologiesInUse (%p) is NULL.";
    v9 = v14;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
    goto LABEL_11;
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
}

- (id)mobileWiFiLocationManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__LocationStateRelay_mobileWiFiLocationManager__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (mobileWiFiLocationManager_pred != -1)
  {
    dispatch_once(&mobileWiFiLocationManager_pred, block);
  }

  return self->mobileWiFiLocationManager;
}

void __47__LocationStateRelay_mobileWiFiLocationManager__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(*(*(a1 + 32) + 48)) initWithEffectiveBundle:*(*(a1 + 32) + 32) delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 80)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1 + 32) + 40))
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "CoreLocation mobileWiFiLocationManager is nil.", v6, 2u);
    }
  }
}

- (void)unloadFrameworks
{
  coreRoutineDyLibHandle = self->coreRoutineDyLibHandle;
  if (coreRoutineDyLibHandle)
  {
    dlclose(coreRoutineDyLibHandle);
    self->coreRoutineDyLibHandle = 0;
  }

  coreLocationDyLibHandle = self->coreLocationDyLibHandle;
  if (coreLocationDyLibHandle)
  {
    dlclose(coreLocationDyLibHandle);
    self->coreLocationDyLibHandle = 0;
  }
}

- (int64_t)preflightFrameworks
{
  if (![(LocationStateRelay *)self loadCoreLocation])
  {
    v4 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 45;
    }

    *buf = 0;
    v5 = "loadCoreLocation failed";
LABEL_10:
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
    return 45;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__LocationStateRelay_preflightFrameworks__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (preflightFrameworks_pred != -1)
  {
    dispatch_once(&preflightFrameworks_pred, block);
  }

  if (([(objc_class *)self->CLLocationManagerClassRef locationServicesEnabled]& 1) != 0)
  {
    if ([(LocationStateRelay *)self authorizedToUseCoreRoutine])
    {
      if ([(LocationStateRelay *)self loadCoreRoutine])
      {
        [(LocationStateRelay *)self showLocationArrow];
        [(LocationStateRelay *)self setLOIUseAuthorized:1];
        return 0;
      }

      v4 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        return 45;
      }

      *buf = 0;
      v5 = "loadCoreRoutine failed";
      goto LABEL_10;
    }

    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "authorizedToUseCoreRoutine is FALSE";
      goto LABEL_16;
    }
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "locationServicesEnabled is FALSE";
LABEL_16:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  [(LocationStateRelay *)self setLOIUseAuthorized:0];
  return 1;
}

void __41__LocationStateRelay_preflightFrameworks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mobileWiFiLocationManager];
  [v2 setDelegate:*(a1 + 32)];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(LocationStateRelay *)self preflightFrameworks];
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "LOI: locationManagerDidChangeAuthorization err = %ld", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchCurrentLocationLOIOnQueue:(id)a3 desiredAccuracy:(double)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke;
  v13[3] = &unk_27898E808;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) preflightFrameworks];
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_2;
    block[3] = &unk_27898C440;
    v29[1] = v2;
    v3 = v29;
    v4 = *(a1 + 40);
    v29[0] = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_3;
    aBlock[3] = &unk_27898E9F0;
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v5 = _Block_copy(aBlock);
    v6 = [*(a1 + 32) addPendingLOIBlocks:v5];
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 56);
      *buf = 134218240;
      v31 = v6;
      v32 = 2048;
      v33 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Number of pendingLOIBlocks = %lu, desiredAccuracy = %f", buf, 0x16u);
    }

    v3 = &v26;
    v9 = *(*(a1 + 32) + 64);
    v10 = netepochsLogHandle;
    v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Already has a pending location request.  Resetting location timeout and removing expired requests.", buf, 2u);
      }

      dispatch_source_cancel(*(*(a1 + 32) + 64));
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      *(v12 + 64) = 0;

      [*(a1 + 32) cleanUpPendingLOIBlocks];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Requesting location from MobileWiFiLocationManager", buf, 2u);
      }

      v14 = [*(a1 + 32) mobileWiFiLocationManager];
      [v14 setDesiredAccuracy:*(a1 + 56)];

      v15 = [*(a1 + 32) mobileWiFiLocationManager];
      [v15 requestLocation];
    }

    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 80));
    v17 = *(a1 + 32);
    v18 = *(v17 + 64);
    *(v17 + 64) = v16;

    v19 = *(*(a1 + 32) + 64);
    v20 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v21 = *(a1 + 32);
    v22 = *(v21 + 64);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_18;
    handler[3] = &unk_27898A0C8;
    handler[4] = v21;
    dispatch_source_set_event_handler(v22, handler);
    dispatch_resume(*(*(a1 + 32) + 64));
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*(a1 + 40) userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = netepochsLogHandle;
  v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      v12 = v10;
      [v7 latitude];
      v14 = v13;
      [v7 longitude];
      *buf = 134546177;
      v28 = v14;
      v29 = 2053;
      v30 = v15;
      v31 = 2053;
      v32 = [v7 type];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "LOI: location = <%{sensitive}f, %{sensitive}f>, type (as received from CoreRoutine) = %{sensitive}ld", buf, 0x20u);
    }
  }

  else if (v11)
  {
    *buf = 138412290;
    v28 = v9;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "LOI: loi is null with error = %@", buf, 0xCu);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_16;
  v22[3] = &unk_27898CA50;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v17;
  v18 = v9;
  v19 = v8;
  v20 = v7;
  dispatch_async(v16, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __75__LocationStateRelay_fetchCurrentLocationLOIOnQueue_desiredAccuracy_reply___block_invoke_18(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = 60;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Did not receive location from MobileWiFiLocationManager after %d seconds, clearing pending block.", v9, 8u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
  [v3 callPendingLOIBlocksWithCLLocation:0 LOI:0 andError:v4];

  v5 = *(*(a1 + 32) + 64);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)determineIfLocationOfInterestIsKnownOfType:(int64_t)a3 queue:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke;
  v13[3] = &unk_27898E808;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

void __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) preflightFrameworks];
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_2;
    block[3] = &unk_27898C440;
    v12 = v2;
    v3 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_19;
  v7[3] = &unk_27898EA18;
  v7[4] = v4;
  v9 = v6;
  v8 = *(a1 + 48);
  [v5 fetchLocationsOfInterestOfType:v6 withHandler:v7];
}

uint64_t __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA5B8];
    v5 = *(a1 + 40);
    v6 = v2;
    v7 = [v3 errorWithDomain:v4 code:v5 userInfo:0];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "determineIfLocationOfInterestIsKnownOfType failed with error: %@", &v10, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __77__LocationStateRelay_determineIfLocationOfInterestIsKnownOfType_queue_reply___block_invoke_19(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 count] != 0;
  }

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[6];
    v11 = v8;
    v12 = [v9 rtLOITypeToString:v10];
    v13 = v12;
    v14 = "not known";
    if (v7)
    {
      v14 = "known";
    }

    v16 = 138412546;
    v17 = v12;
    v18 = 2080;
    v19 = v14;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "LOI type %@ is %s", &v16, 0x16u);
  }

  (*(a1[5] + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (id)rtLOITypeToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"<UNKNOWN>";
  }

  else
  {
    return off_27898EAB0[a3];
  }
}

- (BOOL)authorizedToUseCoreRoutine
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(objc_class *)self->CLLocationManagerClassRef authorizationStatusForBundle:self->mobileWiFiBundle];
  v3 = netepochsLogHandle;
  v4 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 2:
        if (v4)
        {
          LOWORD(v10[0]) = 0;
          v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusDenied";
          goto LABEL_18;
        }

        goto LABEL_20;
      case 3:
        if (v4)
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusAuthorizedAlways", v10, 2u);
        }

        LOBYTE(v4) = 1;
        goto LABEL_20;
      case 4:
        if (v4)
        {
          LOWORD(v10[0]) = 0;
          v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusAuthorizedWhenInUse";
LABEL_18:
          v6 = v3;
          v7 = 2;
LABEL_19:
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, v5, v10, v7);
          LOBYTE(v4) = 0;
          goto LABEL_20;
        }

        goto LABEL_20;
    }

LABEL_21:
    if (!v4)
    {
      goto LABEL_20;
    }

    v10[0] = 67109120;
    v10[1] = v2;
    v5 = "CoreLocation Authorization Status for MobileWiFi is unknown status %d";
    v6 = v3;
    v7 = 8;
    goto LABEL_19;
  }

  if (!v2)
  {
    if (v4)
    {
      LOWORD(v10[0]) = 0;
      v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusNotDetermined";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v2 != 1)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    LOWORD(v10[0]) = 0;
    v5 = "CoreLocation Authorization Status for MobileWiFi is kCLAuthorizationStatusRestricted";
    goto LABEL_18;
  }

LABEL_20:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)showLocationArrow
{
  v2 = [(LocationStateRelay *)self mobileWiFiLocationManager];
  [v2 markAsHavingReceivedLocation];
}

- (unint64_t)addPendingLOIBlocks:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 copy];
  v8 = _Block_copy(v7);
  [(NSMutableDictionary *)v5->pendingLOIBlocks setObject:v8 forKeyedSubscript:v6];

  v9 = [(NSMutableDictionary *)v5->pendingLOIBlocks count];
  objc_sync_exit(v5);

  return v9;
}

- (void)callPendingLOIBlocksWithCLLocation:(id)a3 LOI:(id)a4 andError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  pendingLOIBlocks = v11->pendingLOIBlocks;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__LocationStateRelay_callPendingLOIBlocksWithCLLocation_LOI_andError___block_invoke;
  v16[3] = &unk_27898EA40;
  v13 = v8;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [(NSMutableDictionary *)pendingLOIBlocks enumerateKeysAndObjectsUsingBlock:v16];
  [(NSMutableDictionary *)v11->pendingLOIBlocks removeAllObjects];

  objc_sync_exit(v11);
}

void __70__LocationStateRelay_callPendingLOIBlocksWithCLLocation_LOI_andError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 timestamp];
    [v8 timeIntervalSinceDate:v5];
    v10 = v9;

    v11 = netepochsLogHandle;
    v12 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v10 >= 60.0)
    {
      if (v12)
      {
        v16 = *(a1 + 32);
        v17 = v11;
        v18 = [v16 timestamp];
        v19 = [*(a1 + 32) timestamp];
        [v19 timeIntervalSinceDate:v5];
        v23 = 138413058;
        v24 = v5;
        v25 = 2112;
        v26 = v18;
        v27 = 2048;
        v28 = v20;
        v29 = 1024;
        v30 = 60;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Location requested at %@ but the received location was determined at %@ (%.4f > %d limit).", &v23, 0x26u);
      }

      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, v21);
    }

    else
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = v11;
        v15 = [v13 timestamp];
        v23 = 138412546;
        v24 = v5;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Replying LOI for location requested at %@ (location determined at %@)", &v23, 0x16u);
      }

      (*(v6 + 2))(v6, *(a1 + 40), *(a1 + 32), *(a1 + 48));
    }
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0, *(a1 + 48));
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpPendingLOIBlocks
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEB18] array];
  pendingLOIBlocks = v2->pendingLOIBlocks;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__LocationStateRelay_cleanUpPendingLOIBlocks__block_invoke;
  v11 = &unk_27898EA68;
  v6 = v3;
  v12 = v6;
  v7 = v4;
  v13 = v7;
  [(NSMutableDictionary *)pendingLOIBlocks enumerateKeysAndObjectsUsingBlock:&v8];
  [(NSMutableDictionary *)v2->pendingLOIBlocks removeObjectsForKeys:v7, v8, v9, v10, v11];

  objc_sync_exit(v2);
}

void __45__LocationStateRelay_cleanUpPendingLOIBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceDate:v5];
  if (v7 > 60.0)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = 60;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Location requested at %@ but LocationStateRelay has not received a location at %@ (> %d seconds limit).", &v12, 0x1Cu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v6 + 2))(v6, 0, 0, v10);

    [*(a1 + 40) addObject:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  locationRequestTimer = self->locationRequestTimer;
  if (locationRequestTimer)
  {
    dispatch_source_cancel(locationRequestTimer);
    v9 = self->locationRequestTimer;
    self->locationRequestTimer = 0;
  }

  if (v7 && [v7 count])
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Just marked MobileWiFi as having received location", buf, 2u);
    }

    v11 = [v7 lastObject];
    [v11 horizontalAccuracy];
    if (v12 <= 250.0)
    {
      routineManager = self->routineManager;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__LocationStateRelay_locationManager_didUpdateLocations___block_invoke;
      v14[3] = &unk_27898EA90;
      v14[4] = self;
      v15 = v11;
      [(RTRoutineManager *)routineManager fetchLocationOfInterestAtLocation:v15 withHandler:v14];
    }

    else
    {
      [(LocationStateRelay *)self callPendingLOIBlocksWithCLLocation:v11 LOI:0 andError:0];
    }
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Location request failed with error: %@", &v12, 0xCu);
  }

  locationRequestTimer = self->locationRequestTimer;
  if (locationRequestTimer)
  {
    dispatch_source_cancel(locationRequestTimer);
    v10 = self->locationRequestTimer;
    self->locationRequestTimer = 0;
  }

  [(LocationStateRelay *)self callPendingLOIBlocksWithCLLocation:0 LOI:0 andError:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getLocationTechnologyStateForInitialState:(BOOL)a3
{
  if ([(LocationStateRelay *)self loadCoreLocation]&& self->clCopyTechnologiesInUseFunc)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__LocationStateRelay_getLocationTechnologyStateForInitialState___block_invoke;
    block[3] = &unk_27898A3A0;
    block[4] = self;
    v9 = a3;
    dispatch_async(internalQueue, block);
  }

  else
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "GPS CLCopyTechnologiesInUse is not loaded", v7, 2u);
    }

    [(LocationStateRelay *)self setGpsInUse:0];
  }
}

void __64__LocationStateRelay_getLocationTechnologyStateForInitialState___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 32) + 72))();
  if (v2)
  {
    v3 = v2;
    v4 = ([v2 containsObject:&unk_2847EFB48] & 1) != 0 || objc_msgSend(v3, "containsObject:", &unk_2847EFB60);
  }

  else
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unable to get GPS cfTechnologiesInUse", &v9, 2u);
    }

    v4 = 0;
  }

  [*(a1 + 32) setGpsInUse:v4];
  if (*(a1 + 40) == 1)
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = " NOT";
      if (v4)
      {
        v7 = "";
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "GPS (baseline) is initially%s in use", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setGpsInUse:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_gpsInUse != a3)
  {
    [(LocationStateRelay *)self willChangeValueForKey:@"gpsInUse"];
    self->_gpsInUse = a3;
    [(LocationStateRelay *)self didChangeValueForKey:@"gpsInUse"];
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [(LocationStateRelay *)self gpsInUse];
      v8 = " NOT";
      if (v7)
      {
        v8 = "";
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "GPS is%s in use", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setLOIUseAuthorized:(BOOL)a3
{
  if (self->_LOIUseAuthorized != a3)
  {
    [(LocationStateRelay *)self willChangeValueForKey:@"LOIUseAuthorized"];
    self->_LOIUseAuthorized = a3;

    [(LocationStateRelay *)self didChangeValueForKey:@"LOIUseAuthorized"];
  }
}

@end