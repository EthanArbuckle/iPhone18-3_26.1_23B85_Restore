@interface WAForecastModelController
- (BOOL)fetchForecastForCities:(id)cities completion:(id)completion;
- (BOOL)fetchForecastForCity:(id)city withUnits:(int)units requestOptions:(id)options completion:(id)completion;
- (BOOL)isCityBeingUpdated:(id)updated;
- (BOOL)isPriorityCity:(id)city;
- (BOOL)isPriorityCityBeingUpdated:(id)updated;
- (BOOL)isPriorityForecastOperationsEnabled;
- (WAForecastModelController)init;
- (id)_commaSeparatedNamesForUpdatingCities:(id)cities;
- (id)_commaSeparatedPriorityUpdatingCitiesNames;
- (id)_commaSeparatedUpdatingCitiesNames;
- (void)_handleForecastOperationCompletion:(id)completion;
- (void)cancelAllFetchRequests;
- (void)dealloc;
- (void)setLocationGeocodingSampler:(id)sampler;
@end

@implementation WAForecastModelController

- (WAForecastModelController)init
{
  v25.receiver = self;
  v25.super_class = WAForecastModelController;
  v2 = [(WAForecastModelController *)&v25 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(WAForecastModelController *)v2 setForecastOperationQueue:v3];

    forecastOperationQueue = [(WAForecastModelController *)v2 forecastOperationQueue];
    [forecastOperationQueue setMaxConcurrentOperationCount:1];

    v5 = dispatch_queue_create("com.apple.weather.forecastModelController.incomingRequestQueue", 0);
    [(WAForecastModelController *)v2 setIncomingRequestQueue:v5];

    v6 = dispatch_queue_create("com.apple.weather.forecastModelController.completionHandlerQueue", MEMORY[0x277D85CD8]);
    [(WAForecastModelController *)v2 setCompletionHandlerQueue:v6];

    v7 = objc_opt_new();
    [(WAForecastModelController *)v2 setUpdatingCities:v7];

    v8 = objc_opt_new();
    [(WAForecastModelController *)v2 setCompletionHandlersForCity:v8];

    if ([(WAForecastModelController *)v2 isPriorityForecastOperationsEnabled])
    {
      v9 = objc_opt_new();
      [(WAForecastModelController *)v2 setPriorityForecastOperationQueue:v9];

      priorityForecastOperationQueue = [(WAForecastModelController *)v2 priorityForecastOperationQueue];
      [priorityForecastOperationQueue setMaxConcurrentOperationCount:1];

      v11 = objc_opt_new();
      [(WAForecastModelController *)v2 setPriorityUpdatingCities:v11];

      v12 = objc_opt_new();
      [(WAForecastModelController *)v2 setPriorityCompletionHandlersForCity:v12];
    }

    v2->_greenTeaLogger = ct_green_tea_logger_create();
    v13 = objc_opt_new();
    v14 = +[WeatherInternalPreferences sharedInternalPreferences];
    isInternalInstall = [v14 isInternalInstall];

    if (isInternalInstall)
    {
      objc_storeStrong(&v2->_store, v13);
    }

    objc_initWeak(&location, v2);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __33__WAForecastModelController_init__block_invoke;
    v22[3] = &unk_279E67BA8;
    objc_copyWeak(&v23, &location);
    [v13 setForecastRequestStartingCallback:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __33__WAForecastModelController_init__block_invoke_12;
    v20[3] = &unk_279E67BD0;
    objc_copyWeak(&v21, &location);
    [v13 setLocationGeocodeForCoordinateRequestStartingCallback:v20];
    v16 = [objc_alloc(MEMORY[0x277D7B2F0]) initWithStore:v13];
    v17 = objc_opt_new();
    [v17 setServiceProxy:v16];
    [v16 addClient:v17];
    connection = v2->_connection;
    v2->_connection = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__WAForecastModelController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained incomingRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WAForecastModelController_init__block_invoke_2;
  block[3] = &unk_279E69000;
  v13 = WeakRetained;
  v14 = v6;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  v11 = WeakRetained;
  dispatch_async(v8, block);
}

void __33__WAForecastModelController_init__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updatingCities];
  v3 = [v2 copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isLocalWeatherCity])
        {
          v11 = *(a1 + 40);
          v12 = [v10 wfLocation];
          LODWORD(v11) = [v11 isEqual:v12];

          if (v11)
          {
            [*(a1 + 32) greenTeaLogger];
            v13 = getCTGreenTeaOsLogHandle();
            v14 = v13;
            if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v15 = *(a1 + 48);
              *buf = v17;
              v23 = v15;
              _os_log_impl(&dword_272ACF000, v14, OS_LOG_TYPE_INFO, "Transmitting current location to %@ for local weather forecast.", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __33__WAForecastModelController_init__block_invoke_12(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained incomingRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WAForecastModelController_init__block_invoke_2_13;
  block[3] = &unk_279E69028;
  v9 = WeakRetained;
  v10 = a2;
  v11 = a3;
  v7 = WeakRetained;
  dispatch_async(v6, block);
}

void __33__WAForecastModelController_init__block_invoke_2_13(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updatingCities];
  v3 = [v2 copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 isLocalWeatherCity])
        {
          v10 = [v9 wfLocation];
          v11 = [v10 geoLocation];
          [v11 coordinate];
          v14 = CLLocationCoordinate2DEqualToCoordinates(v12, v13, *(a1 + 40), *(a1 + 48));

          if (v14)
          {
            [*(a1 + 32) greenTeaLogger];
            v15 = getCTGreenTeaOsLogHandle();
            v16 = v15;
            if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *v18 = 0;
              _os_log_impl(&dword_272ACF000, v16, OS_LOG_TYPE_INFO, "Transmitting current location to CoreLocation for reverse geocode request.", v18, 2u);
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(WAForecastModelController *)self greenTeaLogger];
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = WAForecastModelController;
  [(WAForecastModelController *)&v3 dealloc];
}

- (void)setLocationGeocodingSampler:(id)sampler
{
  samplerCopy = sampler;
  incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WAForecastModelController_setLocationGeocodingSampler___block_invoke;
  v7[3] = &unk_279E67CC0;
  v7[4] = self;
  v8 = samplerCopy;
  v6 = samplerCopy;
  dispatch_sync(incomingRequestQueue, v7);
}

- (BOOL)isCityBeingUpdated:(id)updated
{
  updatedCopy = updated;
  if (updatedCopy)
  {
    if ([(WAForecastModelController *)self isPriorityCity:updatedCopy])
    {
      v5 = [(WAForecastModelController *)self isPriorityCityBeingUpdated:updatedCopy];
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__WAForecastModelController_isCityBeingUpdated___block_invoke;
      block[3] = &unk_279E69050;
      v10 = &v11;
      block[4] = self;
      v9 = updatedCopy;
      dispatch_sync(incomingRequestQueue, block);

      v5 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __48__WAForecastModelController_isCityBeingUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updatingCities];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (BOOL)isPriorityCityBeingUpdated:(id)updated
{
  updatedCopy = updated;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WAForecastModelController_isPriorityCityBeingUpdated___block_invoke;
  block[3] = &unk_279E69050;
  v9 = updatedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = updatedCopy;
  dispatch_sync(incomingRequestQueue, block);

  LOBYTE(updatedCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return updatedCopy;
}

void __56__WAForecastModelController_isPriorityCityBeingUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) priorityUpdatingCities];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (BOOL)fetchForecastForCity:(id)city withUnits:(int)units requestOptions:(id)options completion:(id)completion
{
  cityCopy = city;
  optionsCopy = options;
  completionCopy = completion;
  if (!completionCopy)
  {
    goto LABEL_5;
  }

  locationID = [cityCopy locationID];

  if (!locationID)
  {
    v16 = WAErrorWithCode(4, 0, cityCopy, 0);
    completionCopy[2](completionCopy, 0, v16);

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__WAForecastModelController_fetchForecastForCity_withUnits_requestOptions_completion___block_invoke;
  block[3] = &unk_279E69078;
  block[4] = self;
  v19 = cityCopy;
  unitsCopy = units;
  v20 = optionsCopy;
  v21 = completionCopy;
  dispatch_async(incomingRequestQueue, block);

  v15 = 1;
LABEL_6:

  return v15;
}

void __86__WAForecastModelController_fetchForecastForCity_withUnits_requestOptions_completion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_executeFetchForCity:*(a1 + 40) withUnits:*(a1 + 64) requestOptions:*(a1 + 48) completion:*(a1 + 56)];
  v2 = [*(a1 + 32) isPriorityCity:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 priorityForecastOperationQueue];
  }

  else
  {
    [v3 forecastOperationQueue];
  }
  v4 = ;
  [v4 addOperation:v5];
}

- (BOOL)fetchForecastForCities:(id)cities completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  completionCopy = completion;
  if (completionCopy && [citiesCopy count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = citiesCopy;
    v8 = citiesCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          locationID = [v13 locationID];

          if (locationID)
          {
            v15 = WALogForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v29 = v13;
              _os_log_impl(&dword_272ACF000, v15, OS_LOG_TYPE_DEFAULT, "Creating forecastOperation for city : %@", buf, 0xCu);
            }

            incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __63__WAForecastModelController_fetchForecastForCities_completion___block_invoke;
            block[3] = &unk_279E67D10;
            block[4] = self;
            block[5] = v13;
            v23 = completionCopy;
            dispatch_async(incomingRequestQueue, block);
          }

          else
          {
            v17 = WAErrorWithCode(4, 0, v13, 0);
            (*(completionCopy + 2))(completionCopy, v13, 0, v17);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v10);
    }

    v18 = 1;
    citiesCopy = v21;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __63__WAForecastModelController_fetchForecastForCities_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __63__WAForecastModelController_fetchForecastForCities_completion___block_invoke_2;
  v12 = &unk_279E690A0;
  v4 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = v4;
  v5 = [v2 _queue_executeFetchForCity:v3 completion:&v9];
  v6 = [*(a1 + 32) isPriorityCity:{*(a1 + 40), v9, v10, v11, v12}];
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 priorityForecastOperationQueue];
  }

  else
  {
    [v7 forecastOperationQueue];
  }
  v8 = ;
  [v8 addOperation:v5];
}

void __133__WAForecastModelController__queue_executeFetchForCity_withUnits_requestOptions_completion_completionHandlersForCity_updatingCities___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleForecastOperationCompletion:v2];
}

- (void)cancelAllFetchRequests
{
  mEMORY[0x277D7B2B0] = [MEMORY[0x277D7B2B0] sharedInstance];
  settings = [mEMORY[0x277D7B2B0] settings];
  disableForecastRequestCancelation = [settings disableForecastRequestCancelation];

  if ((disableForecastRequestCancelation & 1) == 0)
  {
    incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__WAForecastModelController_cancelAllFetchRequests__block_invoke;
    block[3] = &unk_279E67C98;
    block[4] = self;
    dispatch_sync(incomingRequestQueue, block);
  }
}

void __51__WAForecastModelController_cancelAllFetchRequests__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) forecastOperationQueue];
  v3 = [v2 operations];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = WALogForCategory(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 city];
          *buf = 138412290;
          v22 = v10;
          _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling forecast request for %@", buf, 0xCu);
        }

        [v8 setCompletionBlock:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) completionHandlersForCity];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__WAForecastModelController_cancelAllFetchRequests__block_invoke_22;
  v16[3] = &unk_279E69118;
  v16[4] = *(a1 + 32);
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  v12 = [*(a1 + 32) completionHandlersForCity];
  [v12 removeAllObjects];

  v13 = [*(a1 + 32) forecastOperationQueue];
  [v13 cancelAllOperations];

  v14 = [*(a1 + 32) updatingCities];
  [v14 removeAllObjects];

  v15 = *MEMORY[0x277D85DE8];
}

void __51__WAForecastModelController_cancelAllFetchRequests__block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v20 = @"city";
  v21[0] = a2;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v10 = [v5 errorWithDomain:@"com.apple.weather.forecastModelController.errorDomain" code:3072 userInfo:v9];

  v11 = [v7 allObjects];

  v12 = [v11 count];
  v13 = [*(a1 + 32) completionHandlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WAForecastModelController_cancelAllFetchRequests__block_invoke_2;
  block[3] = &unk_279E690F0;
  v18 = v11;
  v19 = v10;
  v14 = v10;
  v15 = v11;
  dispatch_apply(v12, v13, block);

  v16 = *MEMORY[0x277D85DE8];
}

void __51__WAForecastModelController_cancelAllFetchRequests__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  (*(v3 + 2))(v3, 0, *(a1 + 40));
}

- (void)_handleForecastOperationCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  city = [completionCopy city];
  if (!city)
  {
    [(WAForecastModelController *)a2 _handleForecastOperationCompletion:?];
  }

  error = [completionCopy error];
  forecastModel = [completionCopy forecastModel];

  v9 = WALogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[WAForecastModelController _handleForecastOperationCompletion:]";
    v22 = 2112;
    v23 = city;
    v24 = 2112;
    v25 = forecastModel;
    _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "%s, completed forecast city=%@, forecastModel=%@", buf, 0x20u);
  }

  incomingRequestQueue = [(WAForecastModelController *)self incomingRequestQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke;
  v15[3] = &unk_279E68B40;
  v16 = error;
  v17 = city;
  selfCopy = self;
  v19 = forecastModel;
  v11 = forecastModel;
  v12 = city;
  v13 = error;
  dispatch_async(incomingRequestQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke(id *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  v3 = a1[4];
  v4 = WALogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke_cold_1(a1, v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1[5] name];
    *buf = 138412290;
    v49 = v6;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Completed forecast request for %@", buf, 0xCu);
  }

  v7 = [a1[6] isPriorityCity:a1[5]];
  v8 = a1[6];
  if (v7)
  {
    v9 = [v8 priorityUpdatingCities];
    [v9 removeObject:a1[5]];

    v10 = WALogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1[6] _commaSeparatedPriorityUpdatingCitiesNames];
      *buf = 138412290;
      v49 = v11;
      _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "Remaining priority updating cities: %@", buf, 0xCu);
    }

    v12 = [a1[6] priorityCompletionHandlersForCity];
    v13 = [a1[5] locationID];
    v14 = [v12 objectForKey:v13];
    v15 = [v14 allObjects];

    v16 = [v15 count];
    v17 = [a1[6] completionHandlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke_34;
    block[3] = &unk_279E69140;
    v18 = &v45;
    v19 = v15;
    v45 = v19;
    v20 = &v46;
    v46 = a1[7];
    v21 = &v47;
    v47 = a1[4];
    dispatch_apply(v16, v17, block);

    v22 = [a1[5] locationID];

    if (v22)
    {
      v23 = [a1[6] priorityCompletionHandlersForCity];
LABEL_15:
      v34 = v23;
      v35 = [a1[5] locationID];
      [v34 removeObjectForKey:v35];
    }
  }

  else
  {
    v24 = [v8 updatingCities];
    [v24 removeObject:a1[5]];

    v25 = WALogForCategory(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [a1[6] _commaSeparatedUpdatingCitiesNames];
      *buf = 138412290;
      v49 = v26;
      _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "Remaining updating cities: %@", buf, 0xCu);
    }

    v27 = [a1[6] completionHandlersForCity];
    v28 = [a1[5] locationID];
    v29 = [v27 objectForKey:v28];
    v30 = [v29 allObjects];

    v31 = [v30 count];
    v32 = [a1[6] completionHandlerQueue];
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke_35;
    v40 = &unk_279E69140;
    v18 = &v41;
    v19 = v30;
    v41 = v19;
    v20 = &v42;
    v42 = a1[7];
    v21 = &v43;
    v43 = a1[4];
    dispatch_apply(v31, v32, &v37);

    v33 = [a1[5] locationID];

    if (v33)
    {
      v23 = [a1[6] completionHandlersForCity];
      goto LABEL_15;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke_34(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
}

void __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke_35(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
}

- (id)_commaSeparatedUpdatingCitiesNames
{
  updatingCities = [(WAForecastModelController *)self updatingCities];
  v4 = [(WAForecastModelController *)self _commaSeparatedNamesForUpdatingCities:updatingCities];

  return v4;
}

- (id)_commaSeparatedPriorityUpdatingCitiesNames
{
  priorityUpdatingCities = [(WAForecastModelController *)self priorityUpdatingCities];
  v4 = [(WAForecastModelController *)self _commaSeparatedNamesForUpdatingCities:priorityUpdatingCities];

  return v4;
}

- (id)_commaSeparatedNamesForUpdatingCities:(id)cities
{
  if (cities)
  {
    allObjects = [cities allObjects];
    v4 = [allObjects valueForKey:@"name"];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"<None>";
  }

  return v5;
}

- (BOOL)isPriorityCity:(id)city
{
  cityCopy = city;
  if ([(WAForecastModelController *)self isPriorityForecastOperationsEnabled])
  {
    if ([cityCopy isLocalWeatherCity])
    {
      isTransient = 1;
    }

    else
    {
      isTransient = [cityCopy isTransient];
    }
  }

  else
  {
    isTransient = 0;
  }

  return isTransient;
}

- (BOOL)isPriorityForecastOperationsEnabled
{
  if (isPriorityForecastOperationsEnabled_onceToken != -1)
  {
    [WAForecastModelController isPriorityForecastOperationsEnabled];
  }

  return isPriorityForecastOperationsEnabled_sIsPriorityForecastOperationsEnabled;
}

void __64__WAForecastModelController_isPriorityForecastOperationsEnabled__block_invoke()
{
  v1 = [MEMORY[0x277D7B2B0] sharedInstance];
  v0 = [v1 settings];
  isPriorityForecastOperationsEnabled_sIsPriorityForecastOperationsEnabled = [v0 disablePriorityForecastRequestQueue] ^ 1;
}

- (void)_handleForecastOperationCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WAForecastModelController.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"city"}];
}

void __64__WAForecastModelController__handleForecastOperationCompletion___block_invoke_cold_1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 40) name];
  v6 = *a2;
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_272ACF000, a3, OS_LOG_TYPE_ERROR, "Failed to complete forecast request for %@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end