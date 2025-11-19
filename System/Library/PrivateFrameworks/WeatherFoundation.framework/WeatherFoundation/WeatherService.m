@interface WeatherService
+ (id)sharedService;
- (NSArray)clients;
- (WeatherService)init;
- (WeatherService)initWithStore:(id)a3;
- (id)clientForPid:(int)a3;
- (void)addClient:(id)a3;
- (void)addClient:(id)a3 forPid:(int)a4;
- (void)airQualityForLocation:(id)a3 locale:(id)a4 options:(id)a5 taskIdentifier:(id)a6;
- (void)cancelTaskWithIdentifier:(id)a3;
- (void)dailyForecastForLocation:(id)a3 locale:(id)a4 taskIdentifier:(id)a5;
- (void)fetchFavoriteLocationsWithTaskIdentifier:(id)a3;
- (void)forecast:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 taskIdentifier:(id)a7 requestOptions:(id)a8;
- (void)forecastForLocation:(id)a3 locale:(id)a4 onDate:(id)a5 options:(id)a6 taskIdentifier:(id)a7;
- (void)hourlyForecastForLocation:(id)a3 locale:(id)a4 taskIdentifier:(id)a5;
- (void)invalidateCache:(id)a3;
- (void)locationForCoordinate:(CLLocationCoordinate2D)a3 taskIdentifier:(id)a4;
- (void)locationForSearchCompletion:(id)a3 taskIdentifier:(id)a4;
- (void)locationForString:(id)a3 taskIdentifier:(id)a4;
- (void)performMigrationWithCompletion:(id)a3;
- (void)queryDispatcherDidReceiveResponse:(id)a3 identifier:(id)a4;
- (void)reachabilityConfigurationForIdentifier:(id)a3;
- (void)removeClient:(id)a3;
- (void)replaceTemperatureUnitWith:(int)a3 identifier:(id)a4;
- (void)temperatureUnitWithIdentifier:(id)a3;
@end

@implementation WeatherService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[WeatherService sharedService];
  }

  v3 = sharedService_service;

  return v3;
}

uint64_t __31__WeatherService_sharedService__block_invoke()
{
  sharedService_service = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (WeatherService)init
{
  v3 = objc_alloc_init(WFWeatherStoreService);
  v4 = [(WeatherService *)self initWithStore:v3];

  return v4;
}

- (WeatherService)initWithStore:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WeatherService;
  v5 = [(WeatherService *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(WeatherService *)v5 setInternalService:v4];
    v7 = objc_alloc_init(WFQueryDispatcher);
    [(WeatherService *)v6 setQueryDispatcher:v7];

    v8 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    [(WeatherService *)v6 setClientDictionary:v8];

    v9 = objc_opt_new();
    [(WeatherService *)v6 setTemperatureUnitProvider:v9];

    v10 = dispatch_queue_create("WeatherServiceQueue", MEMORY[0x277D85CD8]);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v10;

    v12 = v6;
  }

  return v6;
}

- (void)addClient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WeatherService *)self clientDictionary];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__WeatherService_addClient___block_invoke;
    v7[3] = &unk_279E6E8D0;
    v7[4] = self;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [v9 taskIdentifier:v7];
  }
}

void __28__WeatherService_addClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFLogForCategory(4uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __28__WeatherService_addClient___block_invoke_cold_1(v3);
    }

    v6 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__WeatherService_addClient___block_invoke_6;
    block[3] = &unk_279E6E8A8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = v3;
    dispatch_barrier_sync(v6, block);

    v4 = v8;
  }

  else if (v5)
  {
    __28__WeatherService_addClient___block_invoke_cold_2(v4);
  }
}

void __28__WeatherService_addClient___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 48), "pid")}];
  [v1 setObject:v2 forKey:v3];
}

- (void)addClient:(id)a3 forPid:(int)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(WeatherService *)self clientDictionary];
    clientQueue = self->_clientQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__WeatherService_addClient_forPid___block_invoke;
    block[3] = &unk_279E6E8F8;
    v13 = a4;
    v11 = v7;
    v12 = v6;
    v9 = v7;
    dispatch_barrier_sync(clientQueue, block);
  }
}

void __35__WeatherService_addClient_forPid___block_invoke(uint64_t a1)
{
  v2 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__WeatherService_addClient_forPid___block_invoke_cold_1(a1, v2);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v3 setObject:v4 forKey:v5];
}

- (void)removeClient:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WeatherService *)self clientDictionary];
    v6 = [v5 dictionaryRepresentation];

    v7 = [v6 allKeysForObject:v4];

    if ([v7 count])
    {
      objc_initWeak(&location, self);
      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__WeatherService_removeClient___block_invoke;
      block[3] = &unk_279E6E920;
      v10 = v7;
      objc_copyWeak(&v11, &location);
      dispatch_barrier_async(clientQueue, block);
      objc_destroyWeak(&v11);

      objc_destroyWeak(&location);
    }
  }
}

void __31__WeatherService_removeClient___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = WFLogForCategory(4uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_debug_impl(&dword_272B94000, v8, OS_LOG_TYPE_DEBUG, "WF Client Removed: %@", buf, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v10 = [WeakRetained clientDictionary];
        [v10 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

- (NSArray)clients
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v3 = [(WeatherService *)self clientDictionary];
  v4 = [v3 dictionaryRepresentation];

  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__WeatherService_clients__block_invoke;
  v9[3] = &unk_279E6DB60;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(clientQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __25__WeatherService_clients__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) allValues];

  return MEMORY[0x2821F96F8]();
}

- (id)clientForPid:(int)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = [(WeatherService *)self clientDictionary];
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WeatherService_clientForPid___block_invoke;
  block[3] = &unk_279E6E948;
  v11 = v5;
  v12 = &v14;
  v13 = a3;
  v7 = v5;
  dispatch_sync(clientQueue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __31__WeatherService_clientForPid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)performMigrationWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = a3;
    v6 = [v4 wf_errorWithCode:15];
    (*(a3 + 2))(v5, v6);
  }
}

- (void)forecastForLocation:(id)a3 locale:(id)a4 onDate:(id)a5 options:(id)a6 taskIdentifier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v18 = [(WeatherService *)self internalService];
  v19 = [v12 UUID];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__WeatherService_forecastForLocation_locale_onDate_options_taskIdentifier___block_invoke;
  v21[3] = &unk_279E6E970;
  v21[4] = self;
  v22 = v12;
  v20 = v12;
  [v18 forecastForLocation:v16 locale:v15 onDate:v14 requestIdentifier:v19 options:v13 completionHandler:v21];
}

- (void)hourlyForecastForLocation:(id)a3 locale:(id)a4 taskIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v12 = [(WeatherService *)self internalService];
  v13 = [v8 UUID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__WeatherService_hourlyForecastForLocation_locale_taskIdentifier___block_invoke;
  v15[3] = &unk_279E6E970;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v12 hourlyForecastForLocation:v10 locale:v9 requestIdentifier:v13 completionHandler:v15];
}

- (void)dailyForecastForLocation:(id)a3 locale:(id)a4 taskIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v12 = [(WeatherService *)self internalService];
  v13 = [v8 UUID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__WeatherService_dailyForecastForLocation_locale_taskIdentifier___block_invoke;
  v15[3] = &unk_279E6E970;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v12 dailyForecastForLocation:v10 locale:v9 requestIdentifier:v13 completionHandler:v15];
}

- (void)forecast:(unint64_t)a3 forLocation:(id)a4 withUnits:(int)a5 locale:(id)a6 taskIdentifier:(id)a7 requestOptions:(id)a8
{
  v10 = *&a5;
  v14 = a7;
  v15 = a8;
  v16 = a6;
  v17 = a4;
  v18 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v19 = [(WeatherService *)self internalService];
  v20 = [v14 UUID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__WeatherService_forecast_forLocation_withUnits_locale_taskIdentifier_requestOptions___block_invoke;
  v22[3] = &unk_279E6E970;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v19 forecast:a3 forLocation:v17 withUnits:v10 locale:v16 requestIdentifier:v20 requestOptions:v15 completionHandler:v22];
}

- (void)airQualityForLocation:(id)a3 locale:(id)a4 options:(id)a5 taskIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v15 = [(WeatherService *)self internalService];
  v16 = [v10 UUID];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__WeatherService_airQualityForLocation_locale_options_taskIdentifier___block_invoke;
  v18[3] = &unk_279E6E970;
  v18[4] = self;
  v19 = v10;
  v17 = v10;
  [v15 airQualityForLocation:v13 locale:v12 requestIdentifier:v16 options:v11 completionHandler:v18];
}

- (void)reachabilityConfigurationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v6 = [WFReachabilityConfigurationResponse alloc];
  v7 = [v4 UUID];
  v8 = [(WFResponse *)v6 initWithIdentifier:v7];

  v9 = [(WeatherService *)self internalService];
  v10 = [v9 configuration];
  v11 = [v10 serviceConnectivityEvaluationURL];

  [(WFReachabilityConfigurationResponse *)v8 setReachabilityHostURL:v11];
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WeatherService_reachabilityConfigurationForIdentifier___block_invoke;
  block[3] = &unk_279E6E8A8;
  block[4] = self;
  v16 = v8;
  v17 = v4;
  v13 = v4;
  v14 = v8;
  dispatch_async(clientQueue, block);
}

- (void)cancelTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v6 = [(WeatherService *)self queryDispatcher];
  [v6 cancelTaskWithIdentifier:v4];

  v7 = [(WeatherService *)self internalService];
  [v7 cancelTaskWithIdentifier:v4];
}

- (void)invalidateCache:(id)a3
{
  v4 = a3;
  v5 = [(WeatherService *)self queryDispatcher];
  [v5 invalidateCacheWithIdentifier:v4];

  v6 = [(WeatherService *)self internalService];
  [v6 invalidateCacheWithIdentifier:v4];
}

- (void)locationForString:(id)a3 taskIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v9 = [(WeatherService *)self queryDispatcher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__WeatherService_locationForString_taskIdentifier___block_invoke;
  v11[3] = &unk_279E6E998;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 locationForString:v7 taskIdentifier:v10 results:v11];
}

- (void)locationForCoordinate:(CLLocationCoordinate2D)a3 taskIdentifier:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v8 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v9 = [(WeatherService *)self internalService];
  v10 = [v9 locationGeocodeForCoordinateRequestStartingCallback];

  if (v10)
  {
    v11 = [(WeatherService *)self internalService];
    v12 = [v11 locationGeocodeForCoordinateRequestStartingCallback];
    v12[2](latitude, longitude);
  }

  v13 = [(WeatherService *)self queryDispatcher];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__WeatherService_locationForCoordinate_taskIdentifier___block_invoke;
  v15[3] = &unk_279E6E998;
  v15[4] = self;
  v16 = v7;
  v14 = v7;
  [v13 locationForCoordinate:v14 taskIdentifier:v15 results:{latitude, longitude}];
}

- (void)locationForSearchCompletion:(id)a3 taskIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v9 = [(WeatherService *)self queryDispatcher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__WeatherService_locationForSearchCompletion_taskIdentifier___block_invoke;
  v11[3] = &unk_279E6E998;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 locationForSearchCompletion:v7 taskIdentifier:v10 results:v11];
}

- (void)fetchFavoriteLocationsWithTaskIdentifier:(id)a3
{
  v3 = a3;
  v4 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }
}

- (void)temperatureUnitWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  v6 = [(WeatherService *)self temperatureUnitProvider];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WeatherService_temperatureUnitWithIdentifier___block_invoke;
  v8[3] = &unk_279E6E9C0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 fetchTemperatureUnitWithCompletionHandler:v8];
}

void __48__WeatherService_temperatureUnitWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [WFTemperatureUnitResponse alloc];
  v5 = [*(a1 + 32) UUID];
  v6 = [(WFResponse *)v4 initWithIdentifier:v5];

  [(WFTemperatureUnitResponse *)v6 setTemperatureUnit:a2];
  [*(a1 + 40) queryDispatcherDidReceiveResponse:v6 identifier:*(a1 + 32)];
}

- (void)replaceTemperatureUnitWith:(int)a3 identifier:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService forecastForLocation:locale:onDate:options:taskIdentifier:];
  }

  temperatureUnitProvider = self->_temperatureUnitProvider;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__WeatherService_replaceTemperatureUnitWith_identifier___block_invoke;
  v10[3] = &unk_279E6E9C0;
  v11 = v6;
  v12 = self;
  v9 = v6;
  [(WFTemperatureUnitProvider *)temperatureUnitProvider replaceUnit:v4 completionHandler:v10];
}

void __56__WeatherService_replaceTemperatureUnitWith_identifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [WFTemperatureUnitResponse alloc];
  v5 = [*(a1 + 32) UUID];
  v6 = [(WFResponse *)v4 initWithIdentifier:v5];

  [(WFTemperatureUnitResponse *)v6 setTemperatureUnit:a2];
  [*(a1 + 40) queryDispatcherDidReceiveResponse:v6 identifier:*(a1 + 32)];
}

- (void)queryDispatcherDidReceiveResponse:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[WeatherService clientForPid:](self, "clientForPid:", [v7 pid]);
  if (!v8)
  {
    v9 = WFLogForCategory(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WeatherService queryDispatcherDidReceiveResponse:v7 identifier:?];
    }
  }

  v10 = [v6 error];

  v11 = WFLogForCategory(4uLL);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WeatherService queryDispatcherDidReceiveResponse:identifier:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [WeatherService queryDispatcherDidReceiveResponse:v7 identifier:?];
  }

  [v8 serviceDidReceiveResponse:v6];
}

void __28__WeatherService_addClient___block_invoke_cold_1(void *a1)
{
  [a1 pid];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void __35__WeatherService_addClient_forPid___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "WF Client Added: %d", v3, 8u);
}

- (void)forecastForLocation:locale:onDate:options:taskIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  [v1 UUID];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_2_1();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)queryDispatcherDidReceiveResponse:(void *)a1 identifier:.cold.1(void *a1)
{
  v6 = [a1 UUID];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)queryDispatcherDidReceiveResponse:identifier:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
  [v2 UUID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() error];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_272B94000, v0, OS_LOG_TYPE_ERROR, "(%@) Received response.  Response contained an error: %@", v4, 0x16u);
}

- (void)queryDispatcherDidReceiveResponse:(void *)a1 identifier:.cold.3(void *a1)
{
  v6 = [a1 UUID];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end