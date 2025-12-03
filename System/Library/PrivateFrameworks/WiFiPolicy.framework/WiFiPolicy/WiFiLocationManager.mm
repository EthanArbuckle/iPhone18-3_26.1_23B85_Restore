@interface WiFiLocationManager
+ (id)getStringOfCallbackType:(int)type;
+ (id)getStringOfState:(int)state;
+ (id)sharedWiFiLocationManager;
+ (unsigned)isLocationValid:(id)valid uptoSeconds:(double)seconds isHighAccuracy:(unsigned __int8)accuracy;
+ (unsigned)isLocationValid:(id)valid uptoSeconds:(double)seconds requiredAccuracy:(double)accuracy;
+ (void)logLocation:(id)location addPrefixString:(id)string;
- (WiFiLocationManager)init;
- (WiFiLocationManagerDelegate)delegate;
- (void)cancelLocationRequestTimeOut;
- (void)createCoreLocationObjects;
- (void)dealloc;
- (void)destroyCoreLocationObjects;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)locationRequestDidTimeOut;
- (void)registerCallbackFunctionPtr:(void *)ptr withContext:(void *)context;
- (void)registerVisitCallbackFunctionPtr:(void *)ptr withContext:(void *)context;
- (void)requestHighAccuracyLocationUpdate;
- (void)requestLeechedAccuracyLocationUpdate;
- (void)requestLowAccuracyLocationUpdate;
- (void)setCLLocationUpdateParams:(id)params;
- (void)setShouldMonitorVisits:(unsigned __int8)visits;
- (void)stopQueryingLocation;
@end

@implementation WiFiLocationManager

+ (id)sharedWiFiLocationManager
{
  if (sharedWiFiLocationManager_onceToken != -1)
  {
    +[WiFiLocationManager sharedWiFiLocationManager];
  }

  v3 = sharedWiFiLocationManager_sharedWiFiLocationManager;

  return v3;
}

uint64_t __48__WiFiLocationManager_sharedWiFiLocationManager__block_invoke()
{
  result = objc_opt_class();
  if (result)
  {
    v1 = objc_alloc_init(WiFiLocationManager);
    v2 = sharedWiFiLocationManager_sharedWiFiLocationManager;
    sharedWiFiLocationManager_sharedWiFiLocationManager = v1;

    return MEMORY[0x2821F96F8](v1, v2);
  }

  return result;
}

- (WiFiLocationManager)init
{
  v11.receiver = self;
  v11.super_class = WiFiLocationManager;
  v2 = [(WiFiLocationManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiLocationManager *)v2 setIsAuthorized:0];
    [(WiFiLocationManager *)v3 setLocationManagerState:5];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(WiFiLocationManager *)v3 setClientsDataArray:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(WiFiLocationManager *)v3 setVisitClientsDataArray:v5];

    v6 = dispatch_queue_create("com.apple.wifi.location-manager", 0);
    [(WiFiLocationManager *)v3 setQueue:v6];

    queue = [(WiFiLocationManager *)v3 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__WiFiLocationManager_init__block_invoke;
    block[3] = &unk_2789C6630;
    v10 = v3;
    dispatch_async(queue, block);
  }

  return v3;
}

- (void)dealloc
{
  queue = [(WiFiLocationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WiFiLocationManager_dealloc__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);

  v4.receiver = self;
  v4.super_class = WiFiLocationManager;
  [(WiFiLocationManager *)&v4 dealloc];
}

- (void)registerCallbackFunctionPtr:(void *)ptr withContext:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v12[0] = context;
  v12[1] = ptr;
  v8 = [MEMORY[0x277CCAE60] valueWithBytes:v12 objCType:"{?=^v^?}"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WiFiLocationManager registerCallbackFunctionPtr:withContext:]";
    v15 = 2048;
    ptrCopy = ptr;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Adding client: %p", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  clientsDataArray = [(WiFiLocationManager *)selfCopy clientsDataArray];
  [clientsDataArray addObject:v8];

  objc_sync_exit(selfCopy);
  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerVisitCallbackFunctionPtr:(void *)ptr withContext:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v12[0] = context;
  v12[1] = ptr;
  v8 = [MEMORY[0x277CCAE60] valueWithBytes:v12 objCType:"{?=^v^?}"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WiFiLocationManager registerVisitCallbackFunctionPtr:withContext:]";
    v15 = 2048;
    ptrCopy = ptr;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Adding client: %p", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitClientsDataArray = [(WiFiLocationManager *)selfCopy visitClientsDataArray];
  [visitClientsDataArray addObject:v8];

  objc_sync_exit(selfCopy);
  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestLowAccuracyLocationUpdate
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[WiFiLocationManager requestLowAccuracyLocationUpdate]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(WiFiLocationManager *)selfCopy isAuthorized])
  {
    if ([(WiFiLocationManager *)selfCopy locationManagerState]== 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = MEMORY[0x277D86220];
        v6 = "Already querying high accuracy location";
LABEL_15:
        _os_log_impl(&dword_2332D7000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }

    else
    {
      if ([(WiFiLocationManager *)selfCopy locationManagerState]!= 1)
      {
        [(WiFiLocationManager *)selfCopy setLocationManagerState:1];
        queue = [(WiFiLocationManager *)selfCopy queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__WiFiLocationManager_requestLowAccuracyLocationUpdate__block_invoke;
        block[3] = &unk_2789C6630;
        block[4] = selfCopy;
        dispatch_async(queue, block);

        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = MEMORY[0x277D86220];
        v6 = "Already querying low accuracy location";
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"Location services are not authorized." value:&stru_28487EF20 table:0];
    v27 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v11 = [v7 errorWithDomain:@"com.apple.ios.wifi" code:1 userInfo:v10];

    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v12)
    {
      [(WiFiLocationManager *)v12 requestLowAccuracyLocationUpdate:v13];
    }

    [(WiFiLocationManager *)selfCopy invokeClientsCallbackType:2 withLocation:0 withError:v11];
    delegate = [(WiFiLocationManager *)selfCopy delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(WiFiLocationManager *)selfCopy delegate];
      [delegate2 didFailWithError:v11];
    }
  }

LABEL_17:
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v3);
  v24 = *MEMORY[0x277D85DE8];
}

void __55__WiFiLocationManager_requestLowAccuracyLocationUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "locationManagerState")}];
  [v1 setCLLocationUpdateParams:v2];
}

- (void)requestHighAccuracyLocationUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[WiFiLocationManager requestHighAccuracyLocationUpdate]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(WiFiLocationManager *)selfCopy isAuthorized])
  {
    if ([(WiFiLocationManager *)selfCopy locationManagerState]== 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Already querying high accuracy location", buf, 2u);
      }
    }

    else
    {
      [(WiFiLocationManager *)selfCopy setLocationManagerState:2];
      queue = [(WiFiLocationManager *)selfCopy queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__WiFiLocationManager_requestHighAccuracyLocationUpdate__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = selfCopy;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [mainBundle localizedStringForKey:@"Location services are not authorized." value:&stru_28487EF20 table:0];
    v25 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v9 = [v5 errorWithDomain:@"com.apple.ios.wifi" code:1 userInfo:v8];

    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(WiFiLocationManager *)v10 requestLowAccuracyLocationUpdate:v11];
    }

    [(WiFiLocationManager *)selfCopy invokeClientsCallbackType:2 withLocation:0 withError:v9];
    delegate = [(WiFiLocationManager *)selfCopy delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(WiFiLocationManager *)selfCopy delegate];
      [delegate2 didFailWithError:v9];
    }
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v3);
  v22 = *MEMORY[0x277D85DE8];
}

void __56__WiFiLocationManager_requestHighAccuracyLocationUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "locationManagerState")}];
  [v1 setCLLocationUpdateParams:v2];
}

- (void)requestLeechedAccuracyLocationUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[WiFiLocationManager requestLeechedAccuracyLocationUpdate]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(WiFiLocationManager *)selfCopy isAuthorized])
  {
    [(WiFiLocationManager *)selfCopy setLocationManagerState:3];
    queue = [(WiFiLocationManager *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WiFiLocationManager_requestLeechedAccuracyLocationUpdate__block_invoke;
    block[3] = &unk_2789C6630;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"Location services are not authorized." value:&stru_28487EF20 table:0];
    v25 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v10 = [v6 errorWithDomain:@"com.apple.ios.wifi" code:1 userInfo:v9];

    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(WiFiLocationManager *)v11 requestLowAccuracyLocationUpdate:v12];
    }

    [(WiFiLocationManager *)selfCopy invokeClientsCallbackType:2 withLocation:0 withError:v10];
    delegate = [(WiFiLocationManager *)selfCopy delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate2 = [(WiFiLocationManager *)selfCopy delegate];
      [delegate2 didFailWithError:v10];
    }
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v3);
  v22 = *MEMORY[0x277D85DE8];
}

void __59__WiFiLocationManager_requestLeechedAccuracyLocationUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "locationManagerState")}];
  [v1 setCLLocationUpdateParams:v2];
}

- (void)stopQueryingLocation
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[WiFiLocationManager stopQueryingLocation]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(WiFiLocationManager *)selfCopy setLocationManagerState:0];
  queue = [(WiFiLocationManager *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WiFiLocationManager_stopQueryingLocation__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  objc_sync_exit(selfCopy);
  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__WiFiLocationManager_stopQueryingLocation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "locationManagerState")}];
  [v1 setCLLocationUpdateParams:v2];
}

- (void)setShouldMonitorVisits:(unsigned __int8)visits
{
  visitsCopy = visits;
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[WiFiLocationManager setShouldMonitorVisits:]";
    v12 = 1024;
    v13 = visitsCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s shouldMonitorVisits: %d", buf, 0x12u);
  }

  selfCopy->_shouldMonitorVisits = visitsCopy;
  queue = [(WiFiLocationManager *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WiFiLocationManager_setShouldMonitorVisits___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = selfCopy;
  dispatch_async(queue, block);

  objc_sync_exit(selfCopy);
  objc_autoreleasePoolPop(v5);
  v8 = *MEMORY[0x277D85DE8];
}

void __46__WiFiLocationManager_setShouldMonitorVisits___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[8];
  v3 = [v1 clLocationManager];
  v4 = v3;
  if (v2)
  {
    [v3 startMonitoringVisits];
  }

  else
  {
    [v3 stopMonitoringVisits];
  }
}

- (void)createCoreLocationObjects
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBFC18]);
  queue = [(WiFiLocationManager *)self queue];
  v6 = [v4 initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework" delegate:self onQueue:queue];
  [(WiFiLocationManager *)self setClLocationManager:v6];

  -[WiFiLocationManager setIsAuthorized:](self, "setIsAuthorized:", [MEMORY[0x277CBFC18] authorizationStatusForBundlePath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"] - 3 < 2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    isAuthorized = [(WiFiLocationManager *)self isAuthorized];
    v8 = "is";
    if (!isAuthorized)
    {
      v8 = "is not";
    }

    v10 = 136315394;
    v11 = "[WiFiLocationManager createCoreLocationObjects]";
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: WiFi %s authorized for location", &v10, 0x16u);
  }

  if ([(WiFiLocationManager *)self isAuthorized])
  {
    [(WiFiLocationManager *)self requestLeechedAccuracyLocationUpdate];
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)destroyCoreLocationObjects
{
  v3 = objc_autoreleasePoolPush();
  clLocationManager = [(WiFiLocationManager *)self clLocationManager];
  [clLocationManager stopUpdatingLocation];

  [(WiFiLocationManager *)self setQueue:0];
  [(WiFiLocationManager *)self setClLocationManager:0];

  objc_autoreleasePoolPop(v3);
}

- (void)setCLLocationUpdateParams:(id)params
{
  v23 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_autoreleasePoolPush();
  intValue = [paramsCopy intValue];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WiFiLocationManager getStringOfState:intValue];
    v19 = 136315394;
    v20 = "[WiFiLocationManager setCLLocationUpdateParams:]";
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: state <%@>", &v19, 0x16u);
  }

  if (intValue <= 1)
  {
    if (intValue)
    {
      if (intValue == 1)
      {
        clLocationManager = [(WiFiLocationManager *)self clLocationManager];
        [clLocationManager stopUpdatingLocation];

        v9 = MEMORY[0x277CE4230];
LABEL_10:
        v11 = *v9;
        clLocationManager2 = [(WiFiLocationManager *)self clLocationManager];
        [clLocationManager2 setDesiredAccuracy:v11];

        clLocationManager3 = [(WiFiLocationManager *)self clLocationManager];
        [clLocationManager3 startUpdatingLocation];

        [(WiFiLocationManager *)self performSelector:sel_locationRequestDidTimeOut withObject:0 afterDelay:60.0];
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    clLocationManager4 = [(WiFiLocationManager *)self clLocationManager];
    [clLocationManager4 stopUpdatingLocation];
LABEL_13:

    goto LABEL_14;
  }

  if (intValue == 3)
  {
    clLocationManager5 = [(WiFiLocationManager *)self clLocationManager];
    [clLocationManager5 stopUpdatingLocation];

    v16 = *MEMORY[0x277CE4240];
    clLocationManager6 = [(WiFiLocationManager *)self clLocationManager];
    [clLocationManager6 setDesiredAccuracy:v16];

    clLocationManager4 = [(WiFiLocationManager *)self clLocationManager];
    [clLocationManager4 startUpdatingLocation];
    goto LABEL_13;
  }

  if (intValue == 2)
  {
    clLocationManager7 = [(WiFiLocationManager *)self clLocationManager];
    [clLocationManager7 stopUpdatingLocation];

    v9 = MEMORY[0x277CE4220];
    goto LABEL_10;
  }

LABEL_14:
  objc_autoreleasePoolPop(v5);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)locationRequestDidTimeOut
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"Location request timed out." value:&stru_28487EF20 table:0];
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v4 errorWithDomain:@"com.apple.ios.wifi" code:60 userInfo:v7];

  [(WiFiLocationManager *)self invokeClientsCallbackType:2 withLocation:0 withError:v8];
  delegate = [(WiFiLocationManager *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WiFiLocationManager *)self delegate];
    [delegate2 didFailWithError:v8];
  }

  [(WiFiLocationManager *)self setLocationManagerState:3];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[WiFiLocationManager locationManagerState](self, "locationManagerState")}];
  [(WiFiLocationManager *)self setCLLocationUpdateParams:v11];

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancelLocationRequestTimeOut
{
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_locationRequestDidTimeOut object:0];

  objc_autoreleasePoolPop(v3);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v33 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = objc_autoreleasePoolPush();
  if (locationsCopy && [locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
  }

  else
  {
    lastObject = 0;
  }

  if ([(WiFiLocationManager *)self locationManagerState]!= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = "available";
    if (!lastObject)
    {
      v10 = "not available";
    }

    v29 = 136315394;
    v30 = "[WiFiLocationManager locationManager:didUpdateLocations:]";
    v31 = 2080;
    v32 = v10;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: updated location %s", &v29, 0x16u);
  }

  if (lastObject)
  {
    timestamp = [lastObject timestamp];
    latestLocation = [(WiFiLocationManager *)self latestLocation];
    timestamp2 = [latestLocation timestamp];
    [timestamp timeIntervalSinceDate:timestamp2];
    v15 = v14;

    latestLocation2 = [(WiFiLocationManager *)self latestLocation];
    [latestLocation2 horizontalAccuracy];
    v18 = v17;
    [lastObject horizontalAccuracy];
    v20 = v19;

    if (v15 >= 30.0 || v18 - v20 > -100.0)
    {
      [(WiFiLocationManager *)self setLatestLocation:lastObject];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.wifid.locationUpdateNotification" object:lastObject];

      selfCopy = self;
      objc_sync_enter(selfCopy);
      if ([(WiFiLocationManager *)selfCopy locationManagerState]!= 3)
      {
        latestLocation3 = [(WiFiLocationManager *)selfCopy latestLocation];
        [(WiFiLocationManager *)selfCopy invokeClientsCallbackType:1 withLocation:latestLocation3 withError:0];

        delegate = [(WiFiLocationManager *)selfCopy delegate];
        v25 = objc_opt_respondsToSelector();

        if (v25)
        {
          delegate2 = [(WiFiLocationManager *)selfCopy delegate];
          latestLocation4 = [(WiFiLocationManager *)selfCopy latestLocation];
          [delegate2 didUpdateLocations:latestLocation4];
        }

        [(WiFiLocationManager *)selfCopy cancelLocationRequestTimeOut];
        [(WiFiLocationManager *)selfCopy requestLeechedAccuracyLocationUpdate];
      }

      objc_sync_exit(selfCopy);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring new location, keeping existing one", &v29, 2u);
    }
  }

  objc_autoreleasePoolPop(v8);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v7 = objc_autoreleasePoolPush();
  [(WiFiLocationManager *)self setIsAuthorized:(status - 3) < 2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    statusCopy = status;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "didChangeAuthorizationStatus: Notify registered clients of authorization status change, new status: %d", buf, 8u);
  }

  if ([(WiFiLocationManager *)self isAuthorized])
  {
    [(WiFiLocationManager *)self requestLeechedAccuracyLocationUpdate];
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"Location services are not authorized." value:&stru_28487EF20 table:0];
    v18 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.wifi" code:1 userInfo:v12];
  }

  [(WiFiLocationManager *)self invokeClientsCallbackType:3 withLocation:0 withError:v8];
  delegate = [(WiFiLocationManager *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(WiFiLocationManager *)self delegate];
    [delegate2 didChangeAuthorizationStatus];
  }

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [WiFiLocationManager locationManager:errorCopy didFailWithError:?];
  }

  if ([(WiFiLocationManager *)self locationManagerState]!= 3)
  {
    [(WiFiLocationManager *)self invokeClientsCallbackType:2 withLocation:0 withError:errorCopy];
    delegate = [(WiFiLocationManager *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(WiFiLocationManager *)self delegate];
      [delegate2 didFailWithError:errorCopy];
    }

    [(WiFiLocationManager *)self cancelLocationRequestTimeOut];
    [(WiFiLocationManager *)self requestLeechedAccuracyLocationUpdate];
  }

  objc_autoreleasePoolPop(v8);
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  visitCopy = visit;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[WiFiLocationManager locationManager:didVisit:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([(WiFiLocationManager *)selfCopy shouldMonitorVisits])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    visitClientsDataArray = [(WiFiLocationManager *)selfCopy visitClientsDataArray];
    v11 = [visitClientsDataArray countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(visitClientsDataArray);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          *buf = 0uLL;
          [v14 getValue:buf];
          if (*&buf[8])
          {
            (*&buf[8])(*buf, visitCopy);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [visitClientsDataArray countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    delegate = [(WiFiLocationManager *)selfCopy delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(WiFiLocationManager *)selfCopy delegate];
      [delegate2 didUpdateVisits:visitCopy];
    }
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v8);
  v18 = *MEMORY[0x277D85DE8];
}

+ (void)logLocation:(id)location addPrefixString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  stringCopy = string;
  v7 = objc_autoreleasePoolPush();
  if (locationCopy)
  {
    v8 = [locationCopy type] - 1;
    if (v8 > 9)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_2789C7FA0[v8];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = stringCopy;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: source=%@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [WiFiLocationManager logLocation:stringCopy addPrefixString:?];
  }

  objc_autoreleasePoolPop(v7);

  v10 = *MEMORY[0x277D85DE8];
}

+ (unsigned)isLocationValid:(id)valid uptoSeconds:(double)seconds isHighAccuracy:(unsigned __int8)accuracy
{
  v6 = dbl_2333AB570[accuracy == 0];
  validCopy = valid;
  v8 = [objc_opt_class() isLocationValid:validCopy uptoSeconds:seconds requiredAccuracy:v6];

  return v8;
}

+ (unsigned)isLocationValid:(id)valid uptoSeconds:(double)seconds requiredAccuracy:(double)accuracy
{
  v46 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  v8 = objc_autoreleasePoolPush();
  if (validCopy)
  {
    timestamp = [validCopy timestamp];
    v10 = timestamp;
    if (timestamp)
    {
      [timestamp timeIntervalSinceNow];
      if (v11 > 0.0)
      {
        v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [(WiFiLocationManager *)v36 isLocationValid:v37 uptoSeconds:v38 requiredAccuracy:v39, v40, v41, v42, v43];
        }
      }

      else
      {
        v12 = -v11;
        [validCopy clientLocation];
        if (v12 < seconds || v12 < 0.0 || 0.0 == -1)
        {
          [validCopy horizontalAccuracy];
          if (v15 <= accuracy)
          {
            v16 = 1;
            v17 = "YES";
            goto LABEL_18;
          }
        }
      }
    }

    else
    {
      v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v28)
      {
        [(WiFiLocationManager *)v28 isLocationValid:v29 uptoSeconds:v30 requiredAccuracy:v31, v32, v33, v34, v35];
      }
    }

    v16 = 0;
    v17 = "NO";
LABEL_18:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = v17;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "isLocationValid: %s", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v18)
  {
    [(WiFiLocationManager *)v18 isLocationValid:v19 uptoSeconds:v20 requiredAccuracy:v21, v22, v23, v24, v25];
  }

  v16 = 0;
LABEL_21:
  objc_autoreleasePoolPop(v8);

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)getStringOfCallbackType:(int)type
{
  v4 = objc_autoreleasePoolPush();
  if ((type - 1) > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_2789C7FF0[type - 1];
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

+ (id)getStringOfState:(int)state
{
  v4 = objc_autoreleasePoolPush();
  if (state > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_2789C8008[state];
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

- (WiFiLocationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManager:(void *)a1 didFailWithError:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  v3 = 136315394;
  v4 = "[WiFiLocationManager locationManager:didFailWithError:]";
  v5 = 2112;
  v6 = v1;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: error: %@", &v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)logLocation:(uint64_t)a1 addPrefixString:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@: Error: location is nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end