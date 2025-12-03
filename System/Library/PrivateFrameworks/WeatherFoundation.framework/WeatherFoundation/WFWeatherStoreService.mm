@interface WFWeatherStoreService
- (BOOL)_cacheParsedForecastData:(id)data types:(unint64_t)types location:(id)location date:(id)date requestIdentifier:(id)identifier;
- (BOOL)_handleDataTaskCompletionWithData:(id)data httpResponse:(id)response apiVersion:(id)version identifier:(id)identifier requestURL:(id)l dataTask:(id)task dataTaskError:(id)error startDate:(id)self0;
- (BOOL)_isConnectivityAvailableForWeatherHost:(id *)host;
- (WFWeatherStoreService)initWithConfiguration:(id)configuration error:(id *)error;
- (id)_cachedData:(unint64_t)data forLocation:(id)location date:(id)date;
- (id)_currentScaleCategoryForScale:(id)scale index:(unint64_t)index;
- (id)_taskForURL:(id)l;
- (id)apiVersionForSettings:(id)settings;
- (id)languageForLocale:(id)locale;
- (void)_addCallback:(id)callback requestIdentifier:(id)identifier forURL:(id)l;
- (void)_cacheObject:(id)object type:(unint64_t)type date:(id)date forLocation:(id)location;
- (void)_cancelWithRequestIdentifier:(id)identifier;
- (void)_cleanupCallbacksAndTasksForURL:(id)l;
- (void)_enumerateForecastTypesIn:(unint64_t)in usingBlock:(id)block;
- (void)_executeCallbacksForURL:(id)l responseData:(id)data error:(id)error;
- (void)_forecastConditionsForTWCAQIAndTypes:(unint64_t)types location:(id)location locale:(id)locale date:(id)date requestIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_forecastConditionsForTypes:(unint64_t)types location:(id)location units:(int)units locale:(id)locale date:(id)date requestIdentifier:(id)identifier requestOptions:(id)options completionHandler:(id)self0;
- (void)_setTask:(id)task requestIdentifier:(id)identifier callback:(id)callback forURL:(id)l;
- (void)_submitRequest:(id)request withIdentifier:(id)identifier forLocation:(id)location forecastTypes:(unint64_t)types configuration:(id)configuration units:(int)units locale:(id)locale date:(id)self0 apiVersion:(id)self1 completionHandler:(id)self2;
- (void)_submitRequest:(id)request withIdentifier:(id)identifier forScaleNamed:(id)named language:(id)language configuration:(id)configuration apiVersion:(id)version completionHandler:(id)handler;
- (void)airQualityForLocation:(id)location locale:(id)locale requestIdentifier:(id)identifier options:(id)options completionHandler:(id)handler;
- (void)cancelTaskWithIdentifier:(id)identifier;
- (void)completeErroneousForecastRequestWithHandler:(id)handler requestIdentifier:(id)identifier error:(id)error;
- (void)dailyForecastForLocation:(id)location locale:(id)locale requestIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)forecast:(unint64_t)forecast forLocation:(id)location withUnits:(int)units locale:(id)locale requestIdentifier:(id)identifier requestOptions:(id)options completionHandler:(id)handler;
- (void)forecastForLocation:(id)location locale:(id)locale onDate:(id)date requestIdentifier:(id)identifier options:(id)options completionHandler:(id)handler;
- (void)hourlyForecastForLocation:(id)location locale:(id)locale requestIdentifier:(id)identifier completionHandler:(id)handler;
- (void)invalidateCacheWithIdentifier:(id)identifier;
- (void)requestFailureForAPIVersion:(id)version error:(id)error;
- (void)requestSuccessForAPIVersion:(id)version;
@end

@implementation WFWeatherStoreService

- (WFWeatherStoreService)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v7 = configurationCopy;
  }

  else
  {
    v7 = +[WFWeatherStoreServiceConfiguration defaultConfiguration];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if ([v7 isValid])
  {
    v28.receiver = self;
    v28.super_class = WFWeatherStoreService;
    v8 = [(WFWeatherStoreService *)&v28 init];
    self = v8;
    if (v8)
    {
      [(WFWeatherStoreService *)v8 setConfiguration:v7];
      configuration = [(WFWeatherStoreService *)self configuration];
      cacheClass = [configuration cacheClass];

      cacheURL = [v7 cacheURL];
      v27 = 0;
      v12 = [cacheClass createCacheIfNecessary:cacheURL error:&v27];
      v13 = v27;
      [(WFWeatherStoreService *)self setCache:v12];

      if (v13)
      {
        v14 = WFLogForCategory(2uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [WFWeatherStoreService initWithConfiguration:error:];
        }

        if (error)
        {
          v15 = v13;
          *error = v13;
        }

LABEL_16:
        selfCopy = 0;
        goto LABEL_19;
      }

      v18 = dispatch_queue_create("com.apple.WeatherFoundation.WeatherStoreService.incomingRequestQueue", 0);
      [(WFWeatherStoreService *)self setIncomingRequestQueue:v18];

      v19 = dispatch_queue_create("com.apple.WeatherFoundation.WeatherStoreService.parseQueue", MEMORY[0x277D85CD8]);
      [(WFWeatherStoreService *)self setParseQueue:v19];

      v20 = dispatch_queue_create("com.apple.WeatherFoundation.WeatherStoreService.mapQueue", 0);
      [(WFWeatherStoreService *)self setMapQueue:v20];

      v21 = objc_opt_new();
      [(WFWeatherStoreService *)self setURLToTaskMap:v21];

      v22 = objc_opt_new();
      [(WFWeatherStoreService *)self setURLToCallbackMap:v22];

      v23 = objc_opt_new();
      [(WFWeatherStoreService *)self setUUIDToURLMap:v23];

      v24 = objc_opt_new();
      [(WFWeatherStoreService *)self setUUIDToCallbackMap:v24];

      v25 = objc_opt_new();
      [(WFWeatherStoreService *)self setRetryManager:v25];

      [(WFWeatherStoreService *)self setRetryLock:0];
    }

    self = self;
    selfCopy = self;
    goto LABEL_19;
  }

LABEL_12:
  v16 = WFLogForCategory(2uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [WFWeatherStoreService initWithConfiguration:error:];
  }

  if (!error)
  {
    goto LABEL_16;
  }

  [MEMORY[0x277CCA9B8] wf_errorWithCode:7];
  *error = selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (void)invalidateCacheWithIdentifier:(id)identifier
{
  cache = [(WFWeatherStoreService *)self cache];
  [cache removeAllObjects];
}

- (void)dealloc
{
  configuration = [(WFWeatherStoreService *)self configuration];
  [configuration invalidate];

  v4.receiver = self;
  v4.super_class = WFWeatherStoreService;
  [(WFWeatherStoreService *)&v4 dealloc];
}

- (void)cancelTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"requestIdentifier is mandatory." userInfo:0];
    objc_exception_throw(v6);
  }

  v7 = identifierCopy;
  uUID = [identifierCopy UUID];
  [(WFWeatherStoreService *)self _cancelWithRequestIdentifier:uUID];
}

- (void)completeErroneousForecastRequestWithHandler:(id)handler requestIdentifier:(id)identifier error:(id)error
{
  handlerCopy = handler;
  identifierCopy = identifier;
  errorCopy = error;
  if (!handlerCopy || !identifierCopy)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v12);
  }

  v9 = [(WFResponse *)[WFForecastResponse alloc] initWithIdentifier:identifierCopy error:errorCopy];
  error = [(WFResponse *)v9 error];

  if (!error)
  {
    v11 = [MEMORY[0x277CCA9B8] wf_errorWithCode:0];
    [(WFResponse *)v9 setError:v11];
  }

  handlerCopy[2](handlerCopy, v9);
}

- (void)forecastForLocation:(id)location locale:(id)locale onDate:(id)date requestIdentifier:(id)identifier options:(id)options completionHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  if (!identifierCopy || (v18 = handlerCopy) == 0)
  {
    v40 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v40);
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __103__WFWeatherStoreService_forecastForLocation_locale_onDate_requestIdentifier_options_completionHandler___block_invoke;
  v49[3] = &unk_279E6F158;
  v19 = identifierCopy;
  v50 = v19;
  v20 = dateCopy;
  v51 = v20;
  v21 = locationCopy;
  v52 = v21;
  v22 = v18;
  v53 = v22;
  v23 = MEMORY[0x2743D5580](v49);
  if (v21)
  {
    geoLocation = [v21 geoLocation];
    [geoLocation coordinate];
    v25 = CLLocationCoordinate2DIsValid(v61);

    if (v25)
    {
      goto LABEL_24;
    }
  }

  v26 = WFLogForCategory(2uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [WFWeatherStoreService forecastForLocation:locale:onDate:requestIdentifier:options:completionHandler:];
  }

  v27 = [MEMORY[0x277CCA9B8] wf_errorWithCode:4];
  v28 = (v23)[2](v23, 0, 0, 0, 0, v27);

  if ((v28 & 1) == 0)
  {
LABEL_24:
    if (v20)
    {
      goto LABEL_12;
    }

    v29 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreService forecastForLocation:locale:onDate:requestIdentifier:options:completionHandler:];
    }

    v30 = [MEMORY[0x277CCA9B8] wf_errorWithCode:2];
    v31 = (v23)[2](v23, 0, 0, 0, 0, v30);

    if ((v31 & 1) == 0)
    {
LABEL_12:
      v32 = WFForecastTypeForDate(v20);
      if (v32 || ([MEMORY[0x277CCA9B8] wf_errorWithCode:6], v33 = objc_claimAutoreleasedReturnValue(), v34 = (v23)[2](v23, 0, 0, 0, 0, v33), v33, (v34 & 1) == 0))
      {
        v41 = localeCopy;
        v48 = 0x7FFFFFFFFFFFFFFFLL;
        v35 = WFCacheKeyForForecastType(v32, v21, v20);
        v47 = 0;
        WFCacheDetailsForForecastType(v32, &v48, &v47);
        v36 = v47;
        v37 = WFLogForCategory(2uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543874;
          v55 = v19;
          v56 = 2114;
          v57 = v36;
          v58 = 2114;
          v59 = v35;
          _os_log_debug_impl(&dword_272B94000, v37, OS_LOG_TYPE_DEBUG, "(%{public}@) Check Cache Domain %{public}@ for Key %{public}@", buf, 0x20u);
        }

        cache = [(WFWeatherStoreService *)self cache];
        v39 = [cache cachedObjectWithinDomain:v36 forKey:v35 staleness:v48];
        if (!v39 || ((v23)[2](v23, v39, v32, 1, 0, 0) & 1) == 0)
        {
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __103__WFWeatherStoreService_forecastForLocation_locale_onDate_requestIdentifier_options_completionHandler___block_invoke_119;
          v44[3] = &unk_279E6F180;
          v46 = v32;
          v45 = v23;
          [(WFWeatherStoreService *)self _forecastConditionsForTypes:v32 location:v21 locale:v41 date:v20 requestIdentifier:v19 completionHandler:v44];
        }

        localeCopy = v41;
      }
    }
  }
}

BOOL __103__WFWeatherStoreService_forecastForLocation_locale_onDate_requestIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = a5;
  v14 = [(WFResponse *)[WFForecastResponse alloc] initWithIdentifier:*(a1 + 32) error:v12];

  if (!v11)
  {
    v16 = 1;
    goto LABEL_11;
  }

  if ((a3 & 0xC) == 0)
  {
    if ((a3 & 0xC2) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v11;
        goto LABEL_10;
      }
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = [*(a1 + 40) wf_weatherConditionsClosestToDate:v11];
  [(WFForecastResponse *)v14 forecast];

LABEL_10:
  v16 = v15 != 0;
  [v15 setLocation:*(a1 + 48)];
  [(WFForecastResponse *)v14 setForecast:v15];

LABEL_11:
  [(WFForecastResponse *)v14 setForecastType:a3];
  [(WFForecastResponse *)v14 setRawAPIData:v13];

  [(WFForecastResponse *)v14 setResponseWasFromCache:a4];
  if (v16)
  {
    (*(*(a1 + 56) + 16))();
  }

  return v16;
}

void __103__WFWeatherStoreService_forecastForLocation_locale_onDate_requestIdentifier_options_completionHandler___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0xC2) != 0)
  {
    v7 = [v10 currentConditions];
  }

  else if ((v6 & 4) != 0)
  {
    v7 = [v10 hourlyForecasts];
  }

  else
  {
    if ((v6 & 8) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];

      v8 = 0;
      v5 = v9;
      goto LABEL_11;
    }

    v7 = [v10 dailyForecasts];
  }

  v8 = v7;
LABEL_11:
  (*(*(a1 + 32) + 16))();
}

- (void)hourlyForecastForLocation:(id)location locale:(id)locale requestIdentifier:(id)identifier completionHandler:(id)handler
{
  locationCopy = location;
  localeCopy = locale;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy || (v14 = handlerCopy) == 0)
  {
    v27 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v27);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __94__WFWeatherStoreService_hourlyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke;
  v30[3] = &unk_279E6F1A8;
  v15 = identifierCopy;
  v31 = v15;
  v16 = locationCopy;
  v32 = v16;
  v17 = v14;
  v33 = v17;
  v18 = MEMORY[0x2743D5580](v30);
  if (!v16 || ([v16 geoLocation], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "coordinate"), v20 = CLLocationCoordinate2DIsValid(v34), v19, !v20))
  {
    v21 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreService hourlyForecastForLocation:locale:requestIdentifier:completionHandler:];
    }

    v22 = [MEMORY[0x277CCA9B8] wf_errorWithCode:4];
    (v18)[2](v18, 0, 0, v22);
  }

  v23 = WFLogForCategory(2uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [WFWeatherStoreService hourlyForecastForLocation:locale:requestIdentifier:completionHandler:];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v25 = [(WFWeatherStoreService *)self _cachedHourlyForecastedConditionsForLocation:v16 date:date];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 count])
  {
    v26 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreService hourlyForecastForLocation:locale:requestIdentifier:completionHandler:];
    }

    (v18)[2](v18, v25, 1, 0);
  }

  else
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __94__WFWeatherStoreService_hourlyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke_126;
    v28[3] = &unk_279E6F1D0;
    v29 = v18;
    [(WFWeatherStoreService *)self _forecastConditionsForTypes:4 location:v16 locale:localeCopy date:date requestIdentifier:v15 completionHandler:v28];
  }
}

void __94__WFWeatherStoreService_hourlyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  v8 = [(WFResponse *)[WFAggregateForecastResponse alloc] initWithIdentifier:a1[4] error:v7];

  [v9 makeObjectsPerformSelector:sel_setLocation_ withObject:a1[5]];
  [(WFAggregateForecastResponse *)v8 setForecasts:v9];
  [(WFAggregateForecastResponse *)v8 setResponseWasFromCache:a3];
  (*(a1[6] + 16))();
}

void __94__WFWeatherStoreService_hourlyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke_126(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 hourlyForecasts];
  (*(v4 + 16))(v4, v6, 0, v5);
}

- (void)dailyForecastForLocation:(id)location locale:(id)locale requestIdentifier:(id)identifier completionHandler:(id)handler
{
  locationCopy = location;
  localeCopy = locale;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy || (v14 = handlerCopy) == 0)
  {
    v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v26);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __93__WFWeatherStoreService_dailyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke;
  v29[3] = &unk_279E6F1A8;
  v15 = identifierCopy;
  v30 = v15;
  v16 = locationCopy;
  v31 = v16;
  v17 = v14;
  v32 = v17;
  v18 = MEMORY[0x2743D5580](v29);
  if (v16 && ([v16 geoLocation], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "coordinate"), v20 = CLLocationCoordinate2DIsValid(v33), v19, v20))
  {
    v21 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreService dailyForecastForLocation:locale:requestIdentifier:completionHandler:];
    }

    date = [MEMORY[0x277CBEAA8] date];
    v23 = [(WFWeatherStoreService *)self _cachedDailyForecastedConditionsForLocation:v16 date:date];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 count])
    {
      v24 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [WFWeatherStoreService dailyForecastForLocation:locale:requestIdentifier:completionHandler:];
      }

      (v18)[2](v18, v23, 1, 0);
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __93__WFWeatherStoreService_dailyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke_127;
      v27[3] = &unk_279E6F1D0;
      v28 = v18;
      [(WFWeatherStoreService *)self _forecastConditionsForTypes:8 location:v16 locale:localeCopy date:date requestIdentifier:v15 completionHandler:v27];
    }
  }

  else
  {
    v25 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreService dailyForecastForLocation:locale:requestIdentifier:completionHandler:];
    }

    date = [MEMORY[0x277CCA9B8] wf_errorWithCode:4];
    (v18)[2](v18, 0, 0, date);
  }
}

void __93__WFWeatherStoreService_dailyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  v8 = [(WFResponse *)[WFAggregateForecastResponse alloc] initWithIdentifier:a1[4] error:v7];

  [v9 makeObjectsPerformSelector:sel_setLocation_ withObject:a1[5]];
  [(WFAggregateForecastResponse *)v8 setForecasts:v9];
  [(WFAggregateForecastResponse *)v8 setResponseWasFromCache:a3];
  (*(a1[6] + 16))();
}

void __93__WFWeatherStoreService_dailyForecastForLocation_locale_requestIdentifier_completionHandler___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 dailyForecasts];
  (*(v4 + 16))(v4, v6, 0, v5);
}

- (void)airQualityForLocation:(id)location locale:(id)locale requestIdentifier:(id)identifier options:(id)options completionHandler:(id)handler
{
  locationCopy = location;
  localeCopy = locale;
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  if (!locationCopy || !localeCopy || !identifierCopy || (v17 = handlerCopy) == 0)
  {
    v30 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v30);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __98__WFWeatherStoreService_airQualityForLocation_locale_requestIdentifier_options_completionHandler___block_invoke;
  v33[3] = &unk_279E6F1F8;
  v18 = identifierCopy;
  v34 = v18;
  v19 = locationCopy;
  v35 = v19;
  v20 = v17;
  v36 = v20;
  v21 = MEMORY[0x2743D5580](v33);
  geoLocation = [v19 geoLocation];
  [geoLocation coordinate];
  v23 = CLLocationCoordinate2DIsValid(v37);

  v24 = WFLogForCategory(2uLL);
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [WFWeatherStoreService airQualityForLocation:locale:requestIdentifier:options:completionHandler:];
    }

    date = [MEMORY[0x277CBEAA8] date];
    v27 = [(WFWeatherStoreService *)self _cachedAirQualityConditionsForLocation:v19 date:date];
    v28 = v27;
    if (v27 && ([v27 isExpired] & 1) == 0)
    {
      v29 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [WFWeatherStoreService airQualityForLocation:locale:requestIdentifier:options:completionHandler:];
      }

      (v21)[2](v21, v28, 1, 0);
    }

    else
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __98__WFWeatherStoreService_airQualityForLocation_locale_requestIdentifier_options_completionHandler___block_invoke_130;
      v31[3] = &unk_279E6F1D0;
      v32 = v21;
      [(WFWeatherStoreService *)self _forecastConditionsForTypes:1 location:v19 locale:localeCopy date:date requestIdentifier:v18 completionHandler:v31];
    }
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreService airQualityForLocation:locale:requestIdentifier:options:completionHandler:];
    }

    date = [MEMORY[0x277CCA9B8] wf_errorWithCode:4];
    (v21)[2](v21, 0, 0, date);
  }
}

void __98__WFWeatherStoreService_airQualityForLocation_locale_requestIdentifier_options_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  v8 = [(WFResponse *)[WFAirQualityResponse alloc] initWithIdentifier:a1[4] error:v7];

  [v9 setLocation:a1[5]];
  [(WFAirQualityResponse *)v8 setAirQualityConditions:v9];
  [(WFAirQualityResponse *)v8 setResponseWasFromCache:a3];
  (*(a1[6] + 16))();
}

void __98__WFWeatherStoreService_airQualityForLocation_locale_requestIdentifier_options_completionHandler___block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 airQualityObservations];
  (*(v4 + 16))(v4, v6, 0, v5);
}

- (void)forecast:(unint64_t)forecast forLocation:(id)location withUnits:(int)units locale:(id)locale requestIdentifier:(id)identifier requestOptions:(id)options completionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  localeCopy = locale;
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __114__WFWeatherStoreService_forecast_forLocation_withUnits_locale_requestIdentifier_requestOptions_completionHandler___block_invoke;
  v44[3] = &unk_279E6F220;
  v18 = identifierCopy;
  v45 = v18;
  v19 = locationCopy;
  v46 = v19;
  v20 = handlerCopy;
  v47 = v20;
  v21 = MEMORY[0x2743D5580](v44);
  if (!v18 || !v20)
  {
    v33 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v33);
  }

  v22 = v21;
  if (v19 && ([v19 geoLocation], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "coordinate"), v24 = CLLocationCoordinate2DIsValid(v51), v23, v24))
  {
    unitsCopy = units;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v49) = 1;
    date = [MEMORY[0x277CBEAA8] date];
    v26 = objc_opt_new();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __114__WFWeatherStoreService_forecast_forLocation_withUnits_locale_requestIdentifier_requestOptions_completionHandler___block_invoke_134;
    v39[3] = &unk_279E6F248;
    v39[4] = self;
    v27 = v19;
    v40 = v27;
    v28 = date;
    v41 = v28;
    v29 = v26;
    v42 = v29;
    v43 = buf;
    [(WFWeatherStoreService *)self _enumerateForecastTypesIn:forecast usingBlock:v39];
    if (*(*&buf[8] + 24) == 1)
    {
      (v22)[2](v22, v29, 1, 0);
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __114__WFWeatherStoreService_forecast_forLocation_withUnits_locale_requestIdentifier_requestOptions_completionHandler___block_invoke_2;
      v37[3] = &unk_279E6F1D0;
      v38 = v22;
      [(WFWeatherStoreService *)self _forecastConditionsForTypes:forecast location:v27 units:unitsCopy locale:localeCopy date:v28 requestIdentifier:v18 requestOptions:optionsCopy completionHandler:v37];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v30 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      geoLocation = [v19 geoLocation];
      *buf = 138543875;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = forecast;
      *&buf[22] = 2113;
      v49 = geoLocation;
      _os_log_error_impl(&dword_272B94000, v30, OS_LOG_TYPE_ERROR, "(%{public}@) Invalid location given for %lu Forecast request: %{private}@", buf, 0x20u);
    }

    v31 = [MEMORY[0x277CCA9B8] wf_errorWithCode:4];
    (v22)[2](v22, 0, 0, v31);
  }
}

void __114__WFWeatherStoreService_forecast_forLocation_withUnits_locale_requestIdentifier_requestOptions_completionHandler___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v18 = [(WFResponse *)[WFAggregateCommonResponse alloc] initWithIdentifier:a1[4] error:v7];

  v9 = [v8 airQualityObservations];
  [v9 setLocation:a1[5]];
  [(WFAggregateCommonResponse *)v18 setAirQualityObservations:v9];

  v10 = [v8 currentConditions];
  [v10 setLocation:a1[5]];
  [(WFAggregateCommonResponse *)v18 setCurrentObservations:v10];

  v11 = [v8 lastTwentyFourHoursOfObservations];
  [v11 makeObjectsPerformSelector:sel_setLocation_ withObject:a1[5]];
  [(WFAggregateCommonResponse *)v18 setLastTwentyFourHoursOfObservations:v11];

  v12 = [v8 hourlyForecasts];
  [v12 makeObjectsPerformSelector:sel_setLocation_ withObject:a1[5]];
  [(WFAggregateCommonResponse *)v18 setHourlyForecastedConditions:v12];

  v13 = [v8 dailyForecasts];
  [v13 makeObjectsPerformSelector:sel_setLocation_ withObject:a1[5]];
  [(WFAggregateCommonResponse *)v18 setDailyForecastedConditions:v13];

  v14 = [v8 pollenForecasts];
  [(WFAggregateCommonResponse *)v18 setDailyPollenForecastedConditions:v14];

  v15 = [v8 changeForecasts];
  [(WFAggregateCommonResponse *)v18 setChangeForecasts:v15];

  v16 = [v8 severeWeatherEvents];
  [(WFAggregateCommonResponse *)v18 setSevereWeatherEvents:v16];

  v17 = [v8 nextHourPrecipitation];

  [(WFAggregateCommonResponse *)v18 setNextHourPrecipitation:v17];
  [(WFAggregateCommonResponse *)v18 setResponseWasFromCache:a3];
  (*(a1[6] + 16))();
}

void __114__WFWeatherStoreService_forecast_forLocation_withUnits_locale_requestIdentifier_requestOptions_completionHandler___block_invoke_134(uint64_t a1, uint64_t a2)
{
  if (a2 > 15)
  {
    if (a2 > 511)
    {
      if (a2 != 512)
      {
        if (a2 == 1024)
        {
          v5 = [*(a1 + 32) _cachedSevereWeatherEventsForLocation:*(a1 + 40) date:*(a1 + 48)];
          if (v5)
          {
            [*(a1 + 56) setSevereWeatherEvents:v5];
          }

          else
          {
            *(*(*(a1 + 64) + 8) + 24) = 0;
          }
        }

        else if (a2 != 2048)
        {
          goto LABEL_42;
        }

        v6 = [*(a1 + 32) _cachedNextHourPrecipitationForLocation:*(a1 + 40) date:*(a1 + 48)];
        if (v6)
        {
          [*(a1 + 56) setNextHourPrecipitation:v6];
        }

        else
        {
          *(*(*(a1 + 64) + 8) + 24) = 0;
        }

        goto LABEL_42;
      }

      v3 = [*(a1 + 32) _cachedChangeForecastForLocation:*(a1 + 40) date:*(a1 + 48)];
      v4 = v3;
      if (v3)
      {
        v7 = v3;
        v3 = [*(a1 + 56) setChangeForecasts:v3];
        goto LABEL_29;
      }

LABEL_30:
      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_31;
    }

    if (a2 == 16)
    {
      v3 = [*(a1 + 32) _cachedDailyPollenForecastedConditionsForLocation:*(a1 + 40) date:*(a1 + 48)];
      v4 = v3;
      if (v3)
      {
        v7 = v3;
        v3 = [*(a1 + 56) setPollenForecasts:v3];
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (a2 == 32)
    {
      v3 = [*(a1 + 32) _cachedHistoricalObservationsForLast24hForLocation:*(a1 + 40) date:*(a1 + 48)];
      v4 = v3;
      if (!v3)
      {
        goto LABEL_30;
      }

      v7 = v3;
      v3 = [*(a1 + 56) setLastTwentyFourHoursOfObservations:v3];
      goto LABEL_29;
    }

LABEL_42:
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v3 = [*(a1 + 32) _cachedHourlyForecastedConditionsForLocation:*(a1 + 40) date:*(a1 + 48)];
      v4 = v3;
      if (!v3)
      {
        goto LABEL_30;
      }

      v7 = v3;
      v3 = [*(a1 + 56) setHourlyForecasts:v3];
      goto LABEL_29;
    }

    if (a2 != 8)
    {
      goto LABEL_42;
    }

    v3 = [*(a1 + 32) _cachedDailyForecastedConditionsForLocation:*(a1 + 40) date:*(a1 + 48)];
    v4 = v3;
    if (!v3)
    {
      goto LABEL_30;
    }

    v7 = v3;
    v3 = [*(a1 + 56) setDailyForecasts:v3];
  }

  else
  {
    if (a2 == 1)
    {
      v3 = [*(a1 + 32) _cachedAirQualityConditionsForLocation:*(a1 + 40) date:*(a1 + 48)];
      v4 = v3;
      if (!v3)
      {
        goto LABEL_30;
      }

      v7 = v3;
      v3 = [v3 isExpired];
      v4 = v7;
      if (v3)
      {
        goto LABEL_30;
      }

      v3 = [*(a1 + 56) setAirQualityObservations:v7];
      goto LABEL_29;
    }

    if (a2 != 2)
    {
      goto LABEL_42;
    }

    v3 = [*(a1 + 32) _cachedCurrentObservationsForLocation:*(a1 + 40) date:*(a1 + 48)];
    v4 = v3;
    if (!v3)
    {
      goto LABEL_30;
    }

    v7 = v3;
    v3 = [*(a1 + 56) setCurrentConditions:v3];
  }

LABEL_29:
  v4 = v7;
LABEL_31:

  MEMORY[0x2821F96F8](v3, v4);
}

- (id)_cachedData:(unint64_t)data forLocation:(id)location date:(id)date
{
  v15 = 0;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  dateCopy = date;
  locationCopy = location;
  WFCacheDetailsForForecastType(data, &v16, &v15);
  v10 = v15;
  cache = [(WFWeatherStoreService *)self cache];
  v12 = WFCacheKeyForForecastType(data, locationCopy, dateCopy);

  v13 = [cache cachedObjectWithinDomain:v10 forKey:v12 staleness:v16];

  return v13;
}

- (BOOL)_isConnectivityAvailableForWeatherHost:(id *)host
{
  configuration = [(WFWeatherStoreService *)self configuration];
  isServiceAvailable = [configuration isServiceAvailable];

  if (host && (isServiceAvailable & 1) == 0)
  {
    *host = [MEMORY[0x277CCA9B8] wf_errorWithCode:14];
  }

  return isServiceAvailable;
}

- (void)_forecastConditionsForTypes:(unint64_t)types location:(id)location units:(int)units locale:(id)locale date:(id)date requestIdentifier:(id)identifier requestOptions:(id)options completionHandler:(id)self0
{
  v13 = *&units;
  v61 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  typesCopy = types;
  if (!types || !locationCopy || !dateCopy || !identifierCopy || (v19 = handlerCopy) == 0)
  {
    v32 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"completionHandler / requestIdentifier are mandatory." userInfo:0];
    objc_exception_throw(v32);
  }

  configuration = [(WFWeatherStoreService *)self configuration];
  settingsManager = [configuration settingsManager];
  v22 = [(WFWeatherStoreService *)self apiVersionForSettings:settingsManager];

  if ([@"twc_v2" isEqualToString:v22] && types != 1 && (types & 1) != 0)
  {
    selfCopy = self;
    v24 = localeCopy;
    [(WFWeatherStoreService *)selfCopy _forecastConditionsForTWCAQIAndTypes:types location:locationCopy locale:localeCopy date:dateCopy requestIdentifier:identifierCopy completionHandler:v19];
    v25 = 0;
  }

  else
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke;
    v53[3] = &unk_279E6F270;
    v53[4] = self;
    v37 = v19;
    v54 = v37;
    v26 = MEMORY[0x2743D5580](v53);
    v52 = 0;
    v27 = [configuration forecastRequestForTypes:typesCopy location:locationCopy units:v13 date:dateCopy apiVersion:v22 error:&v52 requestOptions:optionsCopy];
    v28 = v52;
    v25 = v28;
    if (v27)
    {
      v34 = v28;
      v35 = v13;
      v36 = optionsCopy;
      v29 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543874;
        v56 = identifierCopy;
        v57 = 2112;
        v58 = v27;
        v59 = 2112;
        v60 = locationCopy;
        _os_log_debug_impl(&dword_272B94000, v29, OS_LOG_TYPE_DEBUG, "(%{public}@) Built forecast request '%@' for location %@", buf, 0x20u);
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137;
      v42[3] = &unk_279E6F2C0;
      selfCopy2 = self;
      v42[4] = self;
      v49 = v26;
      v51 = typesCopy;
      v43 = locationCopy;
      v44 = dateCopy;
      v45 = identifierCopy;
      v46 = configuration;
      v47 = v22;
      v30 = v27;
      v48 = v27;
      v50 = v37;
      v24 = localeCopy;
      [(WFWeatherStoreService *)selfCopy2 _submitRequest:v48 withIdentifier:v45 forLocation:v43 forecastTypes:typesCopy configuration:v46 units:v35 locale:localeCopy date:v44 apiVersion:v47 completionHandler:v42];

      optionsCopy = v36;
      v25 = v34;
    }

    else
    {
      if (!v28)
      {
        v25 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
      }

      v31 = WFLogForCategory(2uLL);
      v24 = localeCopy;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherStoreService _forecastConditionsForTypes:location:units:locale:date:requestIdentifier:requestOptions:completionHandler:];
      }

      (*(v37 + 2))(v37, 0, v25);
      v30 = 0;
    }
  }
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a1 + 32);
  v14 = a7;
  v15 = a2;
  [v13 _cacheParsedForecastData:v15 types:a3 location:a4 date:a5 requestIdentifier:a6];
  (*(*(a1 + 40) + 16))();
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 airQualityObservations];
    v8 = [v7 airQualityScale];

    if (!v8)
    {
      v21 = [v5 airQualityObservations];
      v22 = [v21 temporarilyUnavailable];

      if (v22)
      {
        v23 = WFLogForCategory(2uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_5();
        }
      }

      else
      {
        v36 = [*(a1 + 80) URL];
        v23 = [v36 query];

        v37 = [*(a1 + 40) countryAbbreviation];
        v38 = WFLogForCategory(2uLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v40 = *(a1 + 56);
          v41 = [v6 description];
          *buf = 138544130;
          v56 = v40;
          v57 = 2114;
          v58 = v23;
          v59 = 2114;
          v60 = v37;
          v61 = 2114;
          v62 = v41;
          _os_log_error_impl(&dword_272B94000, v38, OS_LOG_TYPE_ERROR, "(%{public}@) WDS did not send an airQualityScale in its response. urlQuery=%{public}@, countryCode=%{public}@, error=%{public}@", buf, 0x2Au);
        }
      }

      (*(*(a1 + 88) + 16))();
      goto LABEL_27;
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v9 languageForLocale:v10];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, v11];
    v13 = +[WFAQIScaleCacheManager sharedManager];
    v14 = [v13 cachedScaleFromIdentifier:v12];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = WFLogForCategory(7uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_2();
        }

        v16 = [v5 airQualityObservations];
        [v16 setScale:v14];

        v17 = *(a1 + 32);
        v18 = [v5 airQualityObservations];
        v19 = [v17 _currentScaleCategoryForScale:v14 index:{objc_msgSend(v18, "currentCategoryIndex")}];
        v20 = [v5 airQualityObservations];
        [v20 setCurrentScaleCategory:v19];

        (*(*(a1 + 88) + 16))();
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v24 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_1();
      }
    }

    v25 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_3();
    }

    v26 = *(a1 + 64);
    v54 = v6;
    v14 = [v26 aqiScaleRequestForScaleNamed:v8 language:v11 error:&v54];
    v27 = v54;

    if (v14)
    {
      v46 = v27;
      v28 = *(a1 + 32);
      v45 = *(a1 + 64);
      v43 = *(a1 + 56);
      v44 = *(a1 + 72);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_144;
      v47[3] = &unk_279E6F298;
      v48 = v12;
      v49 = v5;
      v42 = *(a1 + 32);
      v29 = *(a1 + 56);
      v30 = *(a1 + 88);
      v31 = *(a1 + 104);
      v52 = v30;
      v53 = v31;
      v32 = *(a1 + 40);
      v33 = *(a1 + 48);
      *&v34 = v32;
      *(&v34 + 1) = v33;
      *&v35 = v42;
      *(&v35 + 1) = v29;
      v50 = v35;
      v51 = v34;
      [v28 _submitRequest:v14 withIdentifier:v43 forScaleNamed:v8 language:v11 configuration:v45 apiVersion:v44 completionHandler:v47];

      v6 = v46;
    }

    else
    {
      v39 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_4();
      }

      (*(*(a1 + 88) + 16))();
      v6 = v27;
    }

    goto LABEL_26;
  }

  (*(*(a1 + 96) + 16))();
LABEL_28:
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[WFAQIScaleCacheManager sharedManager];
    [v7 updateCacheWithScale:v5 identifier:*(a1 + 32)];

    v8 = [*(a1 + 40) airQualityObservations];
    [v8 setScale:v5];

    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) airQualityObservations];
    v11 = [v9 _currentScaleCategoryForScale:v5 index:{objc_msgSend(v10, "currentCategoryIndex")}];
    v12 = [*(a1 + 40) airQualityObservations];
    [v12 setCurrentScaleCategory:v11];
  }

  else
  {
    v13 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_144_cold_1();
    }
  }

  (*(*(a1 + 80) + 16))();
}

- (id)languageForLocale:(id)locale
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  v5 = [preferredLocalizations objectAtIndex:0];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v6;
}

- (void)_forecastConditionsForTWCAQIAndTypes:(unint64_t)types location:(id)location locale:(id)locale date:(id)date requestIdentifier:(id)identifier completionHandler:(id)handler
{
  v74 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  localeCopy = locale;
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  configuration = [(WFWeatherStoreService *)self configuration];
  settingsManager = [configuration settingsManager];
  v17 = [(WFWeatherStoreService *)self apiVersionForSettings:settingsManager];

  group = dispatch_group_create();
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__2;
  v66[4] = __Block_byref_object_dispose__2;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__2;
  v64[4] = __Block_byref_object_dispose__2;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__2;
  v62[4] = __Block_byref_object_dispose__2;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__2;
  v60 = __Block_byref_object_dispose__2;
  v61 = 0;
  v55 = 0;
  v18 = [configuration forecastRequestForTypes:types & 0xFFFFFFFFFFFFFFFELL location:locationCopy date:dateCopy apiVersion:v17 error:&v55];
  v19 = v55;
  v30 = v19;
  if (v18)
  {
    dispatch_group_enter(group);
    v20 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      v69 = identifierCopy;
      v70 = 2112;
      v71 = v18;
      v72 = 2112;
      v73 = locationCopy;
      _os_log_debug_impl(&dword_272B94000, v20, OS_LOG_TYPE_DEBUG, "(%{public}@) Built forecast request '%@' for location %@", buf, 0x20u);
    }

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __119__WFWeatherStoreService__forecastConditionsForTWCAQIAndTypes_location_locale_date_requestIdentifier_completionHandler___block_invoke;
    v51[3] = &unk_279E6F2E8;
    v53 = v66;
    v54 = v62;
    v21 = group;
    v52 = v21;
    [(WFWeatherStoreService *)self _submitRequest:v18 withIdentifier:identifierCopy forLocation:locationCopy forecastTypes:types configuration:configuration units:0 locale:localeCopy date:dateCopy apiVersion:v17 completionHandler:v51];

    v50 = 0;
    v22 = [configuration forecastRequestForTypes:1 location:locationCopy date:dateCopy apiVersion:v17 error:&v50];
    v23 = v50;
    v29 = v50;
    if (v22)
    {
      dispatch_group_enter(v21);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __119__WFWeatherStoreService__forecastConditionsForTWCAQIAndTypes_location_locale_date_requestIdentifier_completionHandler___block_invoke_153;
      v45[3] = &unk_279E6F310;
      v48 = v64;
      v46 = locationCopy;
      v49 = &v56;
      v47 = v21;
      [(WFWeatherStoreService *)self _submitRequest:v22 withIdentifier:identifierCopy forLocation:v46 forecastTypes:1 configuration:configuration units:0 locale:localeCopy date:dateCopy apiVersion:v17 completionHandler:v45];

      v24 = v46;
    }

    else
    {
      objc_storeStrong(v57 + 5, v23);
      if (!v57[5])
      {
        v26 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
        v27 = v57[5];
        v57[5] = v26;
      }

      v24 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WFWeatherStoreService _forecastConditionsForTWCAQIAndTypes:location:locale:date:requestIdentifier:completionHandler:];
      }
    }

    parseQueue = [(WFWeatherStoreService *)self parseQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__WFWeatherStoreService__forecastConditionsForTWCAQIAndTypes_location_locale_date_requestIdentifier_completionHandler___block_invoke_154;
    block[3] = &unk_279E6F338;
    v41 = v66;
    v42 = v64;
    block[4] = self;
    typesCopy = types;
    v37 = locationCopy;
    v38 = dateCopy;
    v39 = identifierCopy;
    v40 = handlerCopy;
    v43 = v62;
    dispatch_group_notify(v21, parseQueue, block);
  }

  else
  {
    if (!v19)
    {
      v30 = [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
    }

    v25 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreService _forecastConditionsForTypes:location:units:locale:date:requestIdentifier:requestOptions:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v30);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);
}

void __119__WFWeatherStoreService__forecastConditionsForTWCAQIAndTypes_location_locale_date_requestIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __119__WFWeatherStoreService__forecastConditionsForTWCAQIAndTypes_location_locale_date_requestIdentifier_completionHandler___block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 airQualityObservations];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(*(*(a1 + 48) + 8) + 40) setLocation:*(a1 + 32)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __119__WFWeatherStoreService__forecastConditionsForTWCAQIAndTypes_location_locale_date_requestIdentifier_completionHandler___block_invoke_154(uint64_t a1)
{
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (v2)
  {
    [v2 setAirQualityObservations:*(*(*(a1 + 80) + 8) + 40)];
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      [*(a1 + 32) _cacheParsedForecastData:*(*(*(a1 + 72) + 8) + 40) types:*(a1 + 96) location:*(a1 + 40) date:*(a1 + 48) requestIdentifier:*(a1 + 56)];
    }
  }

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

- (id)_currentScaleCategoryForScale:(id)scale index:(unint64_t)index
{
  scaleCopy = scale;
  v6 = scaleCopy;
  if (index && ([scaleCopy categories], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 >= index))
  {
    categories = [v6 categories];
    v10 = [categories objectAtIndexedSubscript:index - 1];
  }

  else
  {
    v9 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreService _currentScaleCategoryForScale:v9 index:?];
    }

    v10 = 0;
  }

  return v10;
}

- (void)_cacheObject:(id)object type:(unint64_t)type date:(id)date forLocation:(id)location
{
  objectCopy = object;
  v11 = WFCacheKeyForForecastType(type, location, date);
  v14 = 0;
  WFCacheDetailsForForecastType(type, 0, &v14);
  v12 = v14;
  cache = [(WFWeatherStoreService *)self cache];
  [cache cache:objectCopy withinDomain:v12 forKey:v11];
}

- (BOOL)_cacheParsedForecastData:(id)data types:(unint64_t)types location:(id)location date:(id)date requestIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  locationCopy = location;
  dateCopy = date;
  identifierCopy = identifier;
  if (dataCopy)
  {
    v16 = locationCopy == 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = v16 || dateCopy == 0 || types == 0;
  v19 = !v18;
  if (v18)
  {
    v20 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v28 = identifierCopy;
      v29 = 2048;
      typesCopy = types;
      v31 = 2112;
      v32 = dateCopy;
      _os_log_error_impl(&dword_272B94000, v20, OS_LOG_TYPE_ERROR, "(%@) Failed to cache result.  Forecast Type: %lu / Date: %@", buf, 0x20u);
    }
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__WFWeatherStoreService__cacheParsedForecastData_types_location_date_requestIdentifier___block_invoke;
    v22[3] = &unk_279E6F360;
    v23 = dataCopy;
    selfCopy = self;
    v25 = dateCopy;
    v26 = locationCopy;
    [(WFWeatherStoreService *)self _enumerateForecastTypesIn:types usingBlock:v22];

    v20 = v23;
  }

  return v19;
}

uint64_t __88__WFWeatherStoreService__cacheParsedForecastData_types_location_date_requestIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForForecastType:a2];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [*(a1 + 40) _cacheObject:v4 type:a2 date:*(a1 + 48) forLocation:*(a1 + 56)];
    v5 = v7;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)_enumerateForecastTypesIn:(unint64_t)in usingBlock:(id)block
{
  blockCopy = block;
  v6 = WFForecastTypes();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__WFWeatherStoreService__enumerateForecastTypesIn_usingBlock___block_invoke;
  v8[3] = &unk_279E6F388;
  v9 = blockCopy;
  inCopy = in;
  v7 = blockCopy;
  [v6 enumerateIndexesUsingBlock:v8];
}

uint64_t __62__WFWeatherStoreService__enumerateForecastTypesIn_usingBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if ((a2 & ~*(result + 40)) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_submitRequest:(id)request withIdentifier:(id)identifier forLocation:(id)location forecastTypes:(unint64_t)types configuration:(id)configuration units:(int)units locale:(id)locale date:(id)self0 apiVersion:(id)self1 completionHandler:(id)self2
{
  requestCopy = request;
  identifierCopy = identifier;
  locationCopy = location;
  configurationCopy = configuration;
  localeCopy = locale;
  dateCopy = date;
  versionCopy = version;
  handlerCopy = handler;
  v22 = [requestCopy URL];
  queue = [(WFWeatherStoreService *)self incomingRequestQueue];
  parseQueue = [(WFWeatherStoreService *)self parseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke;
  block[3] = &unk_279E6F400;
  block[4] = self;
  v40 = identifierCopy;
  v41 = v22;
  v42 = configurationCopy;
  v43 = requestCopy;
  v44 = versionCopy;
  v45 = parseQueue;
  v49 = handlerCopy;
  typesCopy = types;
  v46 = locationCopy;
  v47 = localeCopy;
  unitsCopy = units;
  v48 = dateCopy;
  v38 = dateCopy;
  v36 = localeCopy;
  v34 = locationCopy;
  v24 = parseQueue;
  v25 = versionCopy;
  v26 = requestCopy;
  v27 = configurationCopy;
  v28 = v22;
  v29 = identifierCopy;
  v30 = handlerCopy;
  dispatch_async(queue, block);
}

void __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [[WFWeatherStoreCallbackWrapper alloc] initWithForecastRetrievalBlock:*(a1 + 112)];
  v3 = *(a1 + 32);
  v52 = 0;
  v4 = [v3 _isConnectivityAvailableForWeatherHost:&v52];
  v5 = v52;
  if (v4)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__2;
    v46 = __Block_byref_object_dispose__2;
    v47 = [*(a1 + 32) _taskForURL:*(a1 + 48)];
    if (v43[5])
    {
      v6 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 120);
        v9 = [v43[5] description];
        *buf = 138543874;
        v54 = v7;
        v55 = 2048;
        v56 = v8;
        v57 = 2114;
        v58 = v9;
        _os_log_impl(&dword_272B94000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) %lu request will multiplex to %{public}@.", buf, 0x20u);
      }

      [*(a1 + 32) _addCallback:v2 requestIdentifier:*(a1 + 40) forURL:*(a1 + 48)];
    }

    else
    {
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [*(a1 + 56) session];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_158;
      v29[3] = &unk_279E6F3D8;
      v29[4] = *(a1 + 32);
      v13 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = *(a1 + 40);
      v32 = *(a1 + 48);
      v39 = &v42;
      v14 = v11;
      v33 = v14;
      v34 = *(a1 + 80);
      v15 = *(a1 + 56);
      v16 = *(a1 + 120);
      v35 = v15;
      v40 = v16;
      v36 = *(a1 + 88);
      v41 = *(a1 + 128);
      v37 = *(a1 + 96);
      v38 = *(a1 + 104);
      v17 = [v12 dataTaskWithRequest:v13 completionHandler:v29];
      v18 = v43[5];
      v43[5] = v17;

      [*(a1 + 32) _setTask:v43[5] requestIdentifier:*(a1 + 40) callback:v2 forURL:*(a1 + 48)];
      v19 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 40);
        v27 = *(a1 + 120);
        v28 = [v43[5] description];
        *buf = 138543874;
        v54 = v26;
        v55 = 2048;
        v56 = v27;
        v57 = 2114;
        v58 = v28;
        _os_log_debug_impl(&dword_272B94000, v19, OS_LOG_TYPE_DEBUG, "(%{public}@) %lu request is starting for %{public}@", buf, 0x20u);
      }

      v20 = [*(a1 + 32) forecastRequestStartingCallback];

      if (v20)
      {
        v21 = [*(a1 + 32) forecastRequestStartingCallback];
        v21[2](v21, *(a1 + 48), *(a1 + 88));
      }

      [v43[5] resume];
      v22 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 120);
        v25 = [v43[5] description];
        *buf = 138543874;
        v54 = v23;
        v55 = 2048;
        v56 = v24;
        v57 = 2114;
        v58 = v25;
        _os_log_impl(&dword_272B94000, v22, OS_LOG_TYPE_DEFAULT, "(%{public}@) %lu request has resumed for %{public}@.", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v10 = [*(a1 + 32) mapQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_2;
    block[3] = &unk_279E6E8A8;
    v49 = *(a1 + 40);
    v50 = v2;
    v51 = v5;
    dispatch_async(v10, block);
  }
}

uint64_t __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WFLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_2_cold_1();
  }

  return [*(a1 + 40) executeCallbackwithResponse:0 error:*(a1 + 48)];
}

void __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_158(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _handleDataTaskCompletionWithData:v7 httpResponse:a3 apiVersion:*(a1 + 40) identifier:*(a1 + 48) requestURL:*(a1 + 56) dataTask:*(*(*(a1 + 112) + 8) + 40) dataTaskError:v8 startDate:*(a1 + 64)])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_159;
    block[3] = &unk_279E6F3B0;
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 120);
    v16 = v10;
    v25 = v11;
    v17 = v7;
    v18 = *(a1 + 88);
    v26 = *(a1 + 128);
    v19 = *(a1 + 96);
    v20 = *(a1 + 104);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v23 = v12;
    v24 = v13;
    dispatch_async(v9, block);
  }

  else
  {
    v14 = WFLogForCategory(8uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_158_cold_1();
    }

    [*(a1 + 32) _executeCallbacksForURL:*(a1 + 56) responseData:0 error:v8];
  }
}

void __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_159(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 104);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 112);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v17 = 0;
  v10 = [v3 parseForecast:v2 data:v4 location:v5 units:v6 locale:v7 date:v8 apiVersion:v9 error:&v17];
  v11 = v17;
  if (v11)
  {
    v12 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 88);
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*(a1 + 40) encoding:4];
      *buf = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v11;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_error_impl(&dword_272B94000, v12, OS_LOG_TYPE_ERROR, "(%{public}@) Observed error while parsing forecast data: %{public}@\n%@\n%@", buf, 0x2Au);
    }
  }

  v13 = [[WFWeatherStoreResponseDataWrapper alloc] initWithForecastData:v10];
  [*(a1 + 96) _executeCallbacksForURL:*(a1 + 88) responseData:v13 error:v11];
}

- (BOOL)_handleDataTaskCompletionWithData:(id)data httpResponse:(id)response apiVersion:(id)version identifier:(id)identifier requestURL:(id)l dataTask:(id)task dataTaskError:(id)error startDate:(id)self0
{
  v62 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  responseCopy = response;
  versionCopy = version;
  identifierCopy = identifier;
  lCopy = l;
  taskCopy = task;
  errorCopy = error;
  dateCopy = date;
  if (dataCopy && [responseCopy statusCode] == 200)
  {
    v23 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [dataCopy length];
      [taskCopy description];
      v51 = dateCopy;
      v26 = v25 = taskCopy;
      *buf = 138543874;
      v57 = identifierCopy;
      v58 = 2048;
      v59 = v24;
      v60 = 2114;
      v61 = v26;
      _os_log_impl(&dword_272B94000, v23, OS_LOG_TYPE_INFO, "(%{public}@) Received data (%lu bytes) from %{public}@.", buf, 0x20u);

      taskCopy = v25;
      dateCopy = v51;
    }

    [(WFWeatherStoreService *)self requestSuccessForAPIVersion:versionCopy];
    v27 = 1;
    goto LABEL_22;
  }

  [(WFWeatherStoreService *)self requestFailureForAPIVersion:versionCopy error:errorCopy];
  domain = [errorCopy domain];
  v52 = taskCopy;
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    code = [errorCopy code];

    if (code == -999)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = &unk_288254F28;
      v32 = 13;
      v33 = errorCopy;
      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([responseCopy statusCode] == 200)
  {
    if (!dataCopy)
    {
      v34 = [MEMORY[0x277CCA9B8] wf_errorWithCode:9];
      goto LABEL_18;
    }

    v30 = MEMORY[0x277CCA9B8];
    if (!errorCopy)
    {
      v34 = [MEMORY[0x277CCA9B8] wf_errorWithCode:17 userInfo:0];
      goto LABEL_18;
    }

    v32 = 5;
    v33 = errorCopy;
    v31 = 0;
LABEL_14:
    v34 = [v30 wf_errorWithCode:v32 encapsulatedError:v33 userInfo:v31];
LABEL_18:
    v44 = v34;
    goto LABEL_19;
  }

  v35 = MEMORY[0x277CCA9B8];
  v54 = @"statusCode";
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
  v55 = v36;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v37 = versionCopy;
  selfCopy = self;
  v39 = responseCopy;
  v40 = dataCopy;
  v41 = dateCopy;
  v43 = v42 = lCopy;
  v44 = [v35 wf_errorWithCode:8 userInfo:v43];

  lCopy = v42;
  dateCopy = v41;
  dataCopy = v40;
  responseCopy = v39;
  self = selfCopy;
  versionCopy = v37;

LABEL_19:
  v45 = lCopy;
  [(WFWeatherStoreService *)self _executeCallbacksForURL:lCopy responseData:0 error:v44];
  v46 = WFLogForCategory(2uLL);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v50 = [v52 description];
    *buf = 138543874;
    v57 = identifierCopy;
    v58 = 2114;
    v59 = v50;
    v60 = 2112;
    v61 = v44;
    _os_log_error_impl(&dword_272B94000, v46, OS_LOG_TYPE_ERROR, "(%{public}@) Error received from %{public}@: %@", buf, 0x20u);
  }

  v47 = [[WFNetworkEvent alloc] initWithEventType:WFNetworkEventTypeFromAPIVersion(versionCopy) startDate:dateCopy error:errorCopy];
  v48 = +[WFNetworkBehaviorMonitor sharedInstance];
  [v48 logNetworkEvent:v47];

  v27 = 0;
  lCopy = v45;
  taskCopy = v52;
LABEL_22:

  return v27;
}

- (void)_submitRequest:(id)request withIdentifier:(id)identifier forScaleNamed:(id)named language:(id)language configuration:(id)configuration apiVersion:(id)version completionHandler:(id)handler
{
  requestCopy = request;
  identifierCopy = identifier;
  namedCopy = named;
  configurationCopy = configuration;
  versionCopy = version;
  handlerCopy = handler;
  v20 = [requestCopy URL];
  incomingRequestQueue = [(WFWeatherStoreService *)self incomingRequestQueue];
  parseQueue = [(WFWeatherStoreService *)self parseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke;
  block[3] = &unk_279E6F450;
  v38 = namedCopy;
  v39 = handlerCopy;
  block[4] = self;
  v32 = identifierCopy;
  v33 = v20;
  v34 = configurationCopy;
  v35 = requestCopy;
  v36 = versionCopy;
  v37 = parseQueue;
  v23 = namedCopy;
  v24 = parseQueue;
  v25 = versionCopy;
  v26 = requestCopy;
  v27 = configurationCopy;
  v28 = v20;
  v29 = identifierCopy;
  v30 = handlerCopy;
  dispatch_async(incomingRequestQueue, block);
}

void __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [[WFWeatherStoreCallbackWrapper alloc] initWithAQIScaleRetrievalBlock:*(a1 + 96)];
  v3 = *(a1 + 32);
  v44 = 0;
  v4 = [v3 _isConnectivityAvailableForWeatherHost:&v44];
  v5 = v44;
  if (v4)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__2;
    v38 = __Block_byref_object_dispose__2;
    v39 = [*(a1 + 32) _taskForURL:*(a1 + 48)];
    if (v35[5])
    {
      v6 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 88);
        v9 = [v35[5] description];
        *buf = 138543874;
        v46 = v7;
        v47 = 2114;
        v48 = v8;
        v49 = 2114;
        v50 = v9;
        _os_log_impl(&dword_272B94000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) (%{public}@) scale request will multiplex to %{public}@.", buf, 0x20u);
      }

      [*(a1 + 32) _addCallback:v2 requestIdentifier:*(a1 + 40) forURL:*(a1 + 48)];
    }

    else
    {
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [*(a1 + 56) session];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke_176;
      v25[3] = &unk_279E6F428;
      v25[4] = *(a1 + 32);
      v13 = *(a1 + 64);
      v26 = *(a1 + 72);
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v33 = &v34;
      v14 = v11;
      v29 = v14;
      v30 = *(a1 + 80);
      v31 = *(a1 + 56);
      v32 = *(a1 + 88);
      v15 = [v12 dataTaskWithRequest:v13 completionHandler:v25];
      v16 = v35[5];
      v35[5] = v15;

      [*(a1 + 32) _setTask:v35[5] requestIdentifier:*(a1 + 40) callback:v2 forURL:*(a1 + 48)];
      v17 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 40);
        v23 = *(a1 + 88);
        v24 = [v35[5] description];
        *buf = 138543874;
        v46 = v22;
        v47 = 2114;
        v48 = v23;
        v49 = 2114;
        v50 = v24;
        _os_log_debug_impl(&dword_272B94000, v17, OS_LOG_TYPE_DEBUG, "(%{public}@) (%{public}@) scale is starting for %{public}@", buf, 0x20u);
      }

      [v35[5] resume];
      v18 = WFLogForCategory(2uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        v20 = *(a1 + 88);
        v21 = [v35[5] description];
        *buf = 138543874;
        v46 = v19;
        v47 = 2114;
        v48 = v20;
        v49 = 2114;
        v50 = v21;
        _os_log_impl(&dword_272B94000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@)  (%{public}@) scale request has resumed for %{public}@.", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v10 = [*(a1 + 32) mapQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke_2;
    block[3] = &unk_279E6E8A8;
    v41 = *(a1 + 40);
    v42 = v2;
    v43 = v5;
    dispatch_async(v10, block);
  }
}

uint64_t __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = WFLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_2_cold_1();
  }

  return [*(a1 + 40) executeCallbackwithResponse:0 error:*(a1 + 48)];
}

void __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke_176(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if ([*(a1 + 32) _handleDataTaskCompletionWithData:v7 httpResponse:a3 apiVersion:*(a1 + 40) identifier:*(a1 + 48) requestURL:*(a1 + 56) dataTask:*(*(*(a1 + 96) + 8) + 40) dataTaskError:v8 startDate:*(a1 + 64)])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke_177;
    block[3] = &unk_279E6DA98;
    v9 = *(a1 + 72);
    v16 = *(a1 + 80);
    v17 = *(a1 + 88);
    v18 = v7;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    *&v12 = *(a1 + 56);
    *(&v12 + 1) = *(a1 + 32);
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v19 = v13;
    v20 = v12;
    dispatch_async(v9, block);
  }

  else
  {
    v14 = WFLogForCategory(8uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __142__WFWeatherStoreService__submitRequest_withIdentifier_forLocation_forecastTypes_configuration_units_locale_date_apiVersion_completionHandler___block_invoke_158_cold_1();
    }

    [*(a1 + 32) _executeCallbacksForURL:*(a1 + 56) responseData:0 error:v8];
  }
}

void __121__WFWeatherStoreService__submitRequest_withIdentifier_forScaleNamed_language_configuration_apiVersion_completionHandler___block_invoke_177(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v13 = 0;
  v6 = [v2 parseAQIScaleNamed:v3 data:v4 apiVersion:v5 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*(a1 + 48) encoding:4];
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_error_impl(&dword_272B94000, v8, OS_LOG_TYPE_ERROR, "(%{public}@) Observed error while parsing AQI Scale: %{public}@\n%@\n%@", buf, 0x2Au);
    }
  }

  v9 = [[WFWeatherStoreResponseDataWrapper alloc] initWithAQIScale:v6];
  [*(a1 + 80) _executeCallbacksForURL:*(a1 + 72) responseData:v9 error:v7];
}

- (id)apiVersionForSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  retryManager = [(WFWeatherStoreService *)self retryManager];
  settings = [settingsCopy settings];

  v7 = [retryManager apiVersionForSettings:settings];
  v8 = v7;
  v9 = @"wds_v1";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  os_unfair_lock_unlock(&self->_retryLock);

  return v10;
}

- (void)requestSuccessForAPIVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  retryManager = [(WFWeatherStoreService *)self retryManager];
  [retryManager requestSuccessForAPIVersion:versionCopy];

  os_unfair_lock_unlock(&self->_retryLock);
}

- (void)requestFailureForAPIVersion:(id)version error:(id)error
{
  errorCopy = error;
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  retryManager = [(WFWeatherStoreService *)self retryManager];
  [retryManager requestFailureForAPIVersion:versionCopy error:errorCopy];

  os_unfair_lock_unlock(&self->_retryLock);
}

- (void)_cancelWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  incomingRequestQueue = [(WFWeatherStoreService *)self incomingRequestQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WFWeatherStoreService__cancelWithRequestIdentifier___block_invoke;
  v7[3] = &unk_279E6EA40;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(incomingRequestQueue, v7);
}

void __54__WFWeatherStoreService__cancelWithRequestIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__WFWeatherStoreService__cancelWithRequestIdentifier___block_invoke_2;
  v4[3] = &unk_279E6EA40;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_sync(v2, v4);
}

void __54__WFWeatherStoreService__cancelWithRequestIdentifier___block_invoke_2(uint64_t a1)
{
  v14 = [*(a1 + 32) URLToCallbackMap];
  v2 = [*(a1 + 32) URLToTaskMap];
  v3 = [*(a1 + 32) UUIDToCallbackMap];
  v4 = [*(a1 + 32) UUIDToURLMap];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v14 objectForKeyedSubscript:v5];
  v7 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 requestType];
    if (v9 == 1)
    {
      v10 = [v8 aqiScaleRetrievalCompletionBlock];
      v11 = &unk_288254F78;
    }

    else
    {
      if (v9)
      {
LABEL_8:
        [v3 removeObjectForKey:*(a1 + 40)];
        [v6 removeObject:v8];
        goto LABEL_9;
      }

      v10 = [v8 forecastRetrievalCompletionBlock];
      v11 = &unk_288254F50;
    }

    v12 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13 userInfo:v11];
    (v10)[2](v10, 0, v12);

    goto LABEL_8;
  }

LABEL_9:
  if (![v6 count])
  {
    [v14 removeObjectForKey:v5];
    v13 = [v2 objectForKeyedSubscript:v5];
    [v13 cancel];
    [v2 removeObjectForKey:v5];
    [v4 removeObjectForKey:*(a1 + 40)];
  }

LABEL_12:
}

- (id)_taskForURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  mapQueue = [(WFWeatherStoreService *)self mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFWeatherStoreService__taskForURL___block_invoke;
  block[3] = &unk_279E6F478;
  v10 = lCopy;
  v11 = &v12;
  block[4] = self;
  v6 = lCopy;
  dispatch_sync(mapQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __37__WFWeatherStoreService__taskForURL___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) URLToTaskMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setTask:(id)task requestIdentifier:(id)identifier callback:(id)callback forURL:(id)l
{
  taskCopy = task;
  identifierCopy = identifier;
  callbackCopy = callback;
  lCopy = l;
  mapQueue = [(WFWeatherStoreService *)self mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WFWeatherStoreService__setTask_requestIdentifier_callback_forURL___block_invoke;
  block[3] = &unk_279E6F4A0;
  block[4] = self;
  v20 = identifierCopy;
  v21 = lCopy;
  v22 = callbackCopy;
  v23 = taskCopy;
  v15 = taskCopy;
  v16 = callbackCopy;
  v17 = lCopy;
  v18 = identifierCopy;
  dispatch_async(mapQueue, block);
}

void __68__WFWeatherStoreService__setTask_requestIdentifier_callback_forURL___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) UUIDToURLMap];
  [v6 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  v2 = [*(a1 + 32) UUIDToCallbackMap];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 32) URLToTaskMap];
  [v3 setObject:*(a1 + 64) forKeyedSubscript:*(a1 + 48)];
  v4 = [*(a1 + 32) URLToCallbackMap];
  v5 = [MEMORY[0x277CBEB18] arrayWithObject:*(a1 + 56)];
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 48)];
}

- (void)_addCallback:(id)callback requestIdentifier:(id)identifier forURL:(id)l
{
  callbackCopy = callback;
  identifierCopy = identifier;
  lCopy = l;
  mapQueue = [(WFWeatherStoreService *)self mapQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__WFWeatherStoreService__addCallback_requestIdentifier_forURL___block_invoke;
  v15[3] = &unk_279E6F4C8;
  v15[4] = self;
  v16 = lCopy;
  v17 = callbackCopy;
  v18 = identifierCopy;
  v12 = identifierCopy;
  v13 = callbackCopy;
  v14 = lCopy;
  dispatch_async(mapQueue, v15);
}

void __63__WFWeatherStoreService__addCallback_requestIdentifier_forURL___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) URLToCallbackMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  [v2 addObject:*(a1 + 48)];
  v3 = [*(a1 + 32) UUIDToURLMap];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 56)];
  v4 = [*(a1 + 32) UUIDToCallbackMap];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 56)];
}

- (void)_executeCallbacksForURL:(id)l responseData:(id)data error:(id)error
{
  lCopy = l;
  dataCopy = data;
  errorCopy = error;
  mapQueue = [(WFWeatherStoreService *)self mapQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__WFWeatherStoreService__executeCallbacksForURL_responseData_error___block_invoke;
  v15[3] = &unk_279E6F4C8;
  v15[4] = self;
  v16 = lCopy;
  v17 = dataCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = dataCopy;
  v14 = lCopy;
  dispatch_async(mapQueue, v15);
}

void __68__WFWeatherStoreService__executeCallbacksForURL_responseData_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) URLToCallbackMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __68__WFWeatherStoreService__executeCallbacksForURL_responseData_error___block_invoke_2;
  v7 = &unk_279E6F4F0;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v3 enumerateObjectsUsingBlock:&v4];
  [*(a1 + 32) _cleanupCallbacksAndTasksForURL:{*(a1 + 40), v4, v5, v6, v7}];
}

- (void)_cleanupCallbacksAndTasksForURL:(id)l
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  uUIDToURLMap = [(WFWeatherStoreService *)self UUIDToURLMap];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__WFWeatherStoreService__cleanupCallbacksAndTasksForURL___block_invoke;
  v26[3] = &unk_279E6F518;
  v7 = lCopy;
  v27 = v7;
  v8 = v6;
  v28 = v8;
  [uUIDToURLMap enumerateKeysAndObjectsUsingBlock:v26];
  uUIDToCallbackMap = [(WFWeatherStoreService *)self UUIDToCallbackMap];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        [uUIDToURLMap removeObjectForKey:{v15, v22}];
        [uUIDToCallbackMap removeObjectForKey:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v12);
  }

  uRLToCallbackMap = [(WFWeatherStoreService *)self URLToCallbackMap];
  [uRLToCallbackMap removeObjectForKey:v7];
  uRLToTaskMap = [(WFWeatherStoreService *)self URLToTaskMap];
  v18 = [uRLToTaskMap objectForKeyedSubscript:v7];
  if (v18)
  {
    v19 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v10 componentsJoinedByString:{@", "}];
      v21 = [v18 description];
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&dword_272B94000, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@) Finished processing %{public}@.", buf, 0x16u);
    }

    [uRLToTaskMap removeObjectForKey:v7];
  }
}

void __57__WFWeatherStoreService__cleanupCallbacksAndTasksForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)initWithConfiguration:error:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)forecastForLocation:locale:onDate:requestIdentifier:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v7 = [OUTLINED_FUNCTION_10(v0 v1)];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)forecastForLocation:locale:onDate:requestIdentifier:options:completionHandler:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v2 = 2114;
  v3 = 0;
  _os_log_error_impl(&dword_272B94000, v0, OS_LOG_TYPE_ERROR, "(%{public}@) Invalid date given for Forecast request: %{public}@", v1, 0x16u);
}

- (void)hourlyForecastForLocation:locale:requestIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_10(v0 v1)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7(&dword_272B94000, v3, v4, "(%{public}@) Invalid location given for HourlyForecast request: %@", v5, v6, v7, v8, v9);
}

- (void)dailyForecastForLocation:locale:requestIdentifier:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_10(v0 v1)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7(&dword_272B94000, v3, v4, "(%{public}@) Invalid location given for DailyForecast request: %@", v5, v6, v7, v8, v9);
}

- (void)airQualityForLocation:locale:requestIdentifier:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_10(v0 v1)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)airQualityForLocation:locale:requestIdentifier:options:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_9();
  v2 = [OUTLINED_FUNCTION_10(v0 v1)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_7(&dword_272B94000, v3, v4, "(%{public}@) Valid WFAirQualityConditions instance found in cache. Expires @ %@", v5, v6, v7, v8, v9);
}

- (void)_forecastConditionsForTypes:location:units:locale:date:requestIdentifier:requestOptions:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5(&dword_272B94000, v0, v1, "(%{public}@) Failed to build forecast request: %{public}@");
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_272B94000, v0, OS_LOG_TYPE_FAULT, "The unarchived scale with identifier: (%{public}@) is not of the correct type", v1, 0xCu);
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(&dword_272B94000, v0, OS_LOG_TYPE_DEBUG, "Applying cached aqi scale found with identifier: (%{public}@), scale: (%{public}@)", v1, 0x16u);
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5(&dword_272B94000, v0, v1, "(%{public}@) AQI scale request failed: %{public}@");
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_137_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5(&dword_272B94000, v0, v1, "(%{public}@) WDS told us that air quality data is temporarily unavailable. Forecast Data=%{public}@");
}

void __131__WFWeatherStoreService__forecastConditionsForTypes_location_units_locale_date_requestIdentifier_requestOptions_completionHandler___block_invoke_144_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5(&dword_272B94000, v0, v1, "(%{public}@) AQI scale request succeeded but parsing failed for identfier: %{public}@");
}

@end