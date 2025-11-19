@interface WATodayModel
+ (id)autoupdatingLocationModelWithPreferences:(id)a3 effectiveBundleIdentifier:(id)a4;
+ (id)currentLocationModel;
+ (id)modelWithLocation:(id)a3;
- (BOOL)executeModelUpdateWithCompletion:(id)a3;
- (BOOL)hasCrossedHourlyBoundary;
- (WATodayModel)init;
- (WATodayModel)initWithLocation:(id)a3;
- (id)location;
- (void)_executeForecastRetrievalForLocation:(id)a3 completion:(id)a4;
- (void)_executeLocationUpdateWithCompletion:(id)a3;
- (void)_fireTodayModelForecastWasUpdated:(id)a3;
- (void)_fireTodayModelWantsUpdate;
- (void)_forecastUpdateCompleted:(id)a3 forecastModel:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_locationUpdateCompleted:(id)a3 error:(id)a4 completion:(id)a5;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)performDelayedUpdatesForObserver:(id)a3;
@end

@implementation WATodayModel

+ (id)autoupdatingLocationModelWithPreferences:(id)a3 effectiveBundleIdentifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [[WATodayAutoupdatingLocationModel alloc] initWithPreferences:v6 effectiveBundleIdentifier:v5];

  [(WATodayModel *)v7 setHasPendingUpdates:0];
  v8 = WALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "+[WATodayModel autoupdatingLocationModelWithPreferences:effectiveBundleIdentifier:]";
    _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "%s , Flag pending update to No", &v11, 0xCu);
  }

  [(WATodayAutoupdatingLocationModel *)v7 configureWithLocationServicesActive:1];
  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)currentLocationModel
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [WATodayAutoupdatingLocationModel alloc];
  v3 = objc_alloc_init(WeatherPreferences);
  v4 = [(WATodayAutoupdatingLocationModel *)v2 initWithPreferences:v3 effectiveBundleIdentifier:0];

  [(WATodayModel *)v4 setHasPendingUpdates:0];
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "+[WATodayModel currentLocationModel]";
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "%s , Flag pending update to No", &v8, 0xCu);
  }

  [(WATodayAutoupdatingLocationModel *)v4 configureWithLocationServicesActive:1];
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)modelWithLocation:(id)a3
{
  v3 = a3;
  v4 = [[WATodayModel alloc] initWithLocation:v3];

  return v4;
}

- (WATodayModel)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = WATodayModel;
  v2 = [(WATodayModel *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_opt_new();
    modelOperationQueue = v2->_modelOperationQueue;
    v2->_modelOperationQueue = v5;

    [(NSOperationQueue *)v2->_modelOperationQueue setMaxConcurrentOperationCount:1];
    v2->_hasPendingUpdates = 0;
    v7 = WALogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[WATodayModel init]";
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "%s , Flag pending update to No", buf, 0xCu);
    }

    v2->_greenTeaLogger = ct_green_tea_logger_create();
    v8 = objc_opt_new();
    objc_initWeak(buf, v2);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __20__WATodayModel_init__block_invoke;
    v20[3] = &unk_279E67BA8;
    objc_copyWeak(&v21, buf);
    [v8 setForecastRequestStartingCallback:v20];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __20__WATodayModel_init__block_invoke_6;
    v18 = &unk_279E67BD0;
    objc_copyWeak(&v19, buf);
    [v8 setLocationGeocodeForCoordinateRequestStartingCallback:&v15];
    v9 = objc_alloc(MEMORY[0x277D7B2F0]);
    v10 = [v9 initWithStore:{v8, v15, v16, v17, v18}];
    v11 = objc_opt_new();
    [v11 setServiceProxy:v10];
    [v10 addClient:v11];
    connection = v2->_connection;
    v2->_connection = v11;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

void __20__WATodayModel_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 32));
  v7 = objc_loadWeakRetained(&to);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained(&to);
  v9 = [v8 forecastModel];
  v10 = [v9 location];
  v11 = [v6 isEqual:v10];

  if (v11)
  {
    v12 = objc_loadWeakRetained(&to);
    [v12 greenTeaLogger];
    v7 = getCTGreenTeaOsLogHandle();

    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_INFO, "Transmitting current location to %@ for local weather forecast.", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  objc_destroyWeak(&to);

  v13 = *MEMORY[0x277D85DE8];
}

void __20__WATodayModel_init__block_invoke_6(uint64_t a1, double a2, double a3)
{
  objc_copyWeak(&to, (a1 + 32));
  v5 = objc_loadWeakRetained(&to);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = objc_loadWeakRetained(&to);
  v7 = [v6 forecastModel];
  v8 = [v7 location];
  v9 = [v8 geoLocation];
  [v9 coordinate];
  v12 = CLLocationCoordinate2DEqualToCoordinates(v10, v11, a2, a3);

  if (v12)
  {
    v13 = objc_loadWeakRetained(&to);
    [v13 greenTeaLogger];
    v5 = getCTGreenTeaOsLogHandle();

    if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_INFO, "Transmitting current location to CoreLocation for reverse geocode request.", v14, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:
  objc_destroyWeak(&to);
}

- (WATodayModel)initWithLocation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(WATodayModel *)a2 initWithLocation:?];
  }

  v6 = [(WATodayModel *)self init];
  if (v6)
  {
    v7 = objc_opt_new();
    forecastModel = v6->_forecastModel;
    v6->_forecastModel = v7;

    [(WAForecastModel *)v6->_forecastModel setLocation:v5];
    v6->_hasPendingUpdates = 0;
    v9 = WALogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[WATodayModel initWithLocation:]";
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "%s , Flag pending update to No", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  [(WATodayModel *)self greenTeaLogger];
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = WATodayModel;
  [(WATodayModel *)&v3 dealloc];
}

- (BOOL)executeModelUpdateWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__WATodayModel_executeModelUpdateWithCompletion___block_invoke;
    v6[3] = &unk_279E67BF8;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [(WATodayModel *)self _executeLocationUpdateWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v4 != 0;
}

void __49__WATodayModel_executeModelUpdateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _locationUpdateCompleted:v6 error:v5 completion:*(a1 + 32)];
}

- (void)_locationUpdateCompleted:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    (*(v9 + 2))(v9, 0, a4);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__WATodayModel__locationUpdateCompleted_error_completion___block_invoke;
    v11[3] = &unk_279E67C20;
    v11[4] = self;
    v12 = v8;
    v13 = v10;
    [(WATodayModel *)self _executeForecastRetrievalForLocation:v12 completion:v11];
  }
}

- (void)_forecastUpdateCompleted:(id)a3 forecastModel:(id)a4 error:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__WATodayModel__forecastUpdateCompleted_forecastModel_error_completion___block_invoke;
  v15[3] = &unk_279E67C48;
  v16 = v10;
  v17 = self;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v11;
  v14 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

uint64_t __72__WATodayModel__forecastUpdateCompleted_forecastModel_error_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 56) + 16);

    return v3();
  }

  else
  {
    v5 = [*(a1 + 40) forecastModel];
    v6 = [v5 isEqual:*(a1 + 48)];

    if ((v6 & 1) == 0)
    {
      [*(a1 + 40) setForecastModel:*(a1 + 48)];
      [*(a1 + 40) _willDeliverForecastModel:*(a1 + 48)];
      [*(a1 + 40) _fireTodayModelForecastWasUpdated:*(a1 + 48)];
    }

    v7 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 40) setLastUpdateDate:v7];

    result = (*(*(a1 + 56) + 16))();
    if ((v6 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);

      return [v8 _persistStateWithModel:v9];
    }
  }

  return result;
}

- (id)location
{
  v2 = [(WATodayModel *)self forecastModel];
  v3 = [v2 location];

  return v3;
}

- (void)_executeLocationUpdateWithCompletion:(id)a3
{
  if (a3)
  {
    forecastModel = self->_forecastModel;
    v5 = a3;
    v6 = [(WAForecastModel *)forecastModel location];
    (*(a3 + 2))(v5, v6, 0);
  }
}

- (void)_executeForecastRetrievalForLocation:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(NSOperationQueue *)self->_modelOperationQueue cancelAllOperations];
    v8 = WALogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "Creating WAForecastOperation for %@", buf, 0xCu);
    }

    v9 = [WAForecastOperation alloc];
    v10 = [(WATodayModel *)self connection];
    v11 = [(WAForecastOperation *)v9 initWithLocation:v6 onConnection:v10];

    objc_initWeak(buf, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__WATodayModel__executeForecastRetrievalForLocation_completion___block_invoke;
    v14[3] = &unk_279E67C70;
    objc_copyWeak(&v17, buf);
    v15 = v6;
    v16 = v7;
    [(WAForecastOperation *)v11 setCompletionBlock:v14];
    [(NSOperationQueue *)self->_modelOperationQueue addOperation:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = WALogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WATodayModel _executeForecastRetrievalForLocation:v12 completion:?];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:0];
    (*(v7 + 2))(v7, 0, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __64__WATodayModel__executeForecastRetrievalForLocation_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained forecastModel];

  v4 = WALogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "WAForecastOperation completed for %@, %@", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 error];
  (*(v6 + 16))(v6, v3, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCrossedHourlyBoundary
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(WATodayModel *)self lastUpdateDate];
  v5 = DatesAreNotWithinSameHour(v3, v4);

  return v5;
}

- (void)addObserver:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[WATodayModel addObserver:]";
    v12 = 2112;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "%s self=%@, adding observer: %@", &v10, 0x20u);
  }

  [(NSHashTable *)self->_observers addObject:v4];
  if ([(WATodayModel *)self hasPendingUpdates])
  {
    v6 = WALogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "Has pending updates, start updating location", &v10, 2u);
    }

    [(WATodayModel *)self performDelayedUpdatesForObserver:v4];
    [(WATodayModel *)self setHasPendingUpdates:0];
    v7 = WALogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[WATodayModel addObserver:]";
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "%s , Flag pending update to No", &v10, 0xCu);
    }
  }

  v8 = WALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "Does not have pending updates, do nothing", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fireTodayModelWantsUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = WALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    observers = self->_observers;
    *buf = 136315394;
    v15 = "[WATodayModel _fireTodayModelWantsUpdate]";
    v16 = 2112;
    v17 = observers;
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WATodayModel *)self hasPendingUpdates];
    *buf = 138412546;
    v15 = self;
    v16 = 1024;
    LODWORD(v17) = v6;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "I am a WATodayModel: %@, current pending update status is %d", buf, 0x12u);
  }

  v7 = [(NSHashTable *)self->_observers allObjects];
  v8 = [v7 count];

  if (v8)
  {
    v9 = WALogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_observers;
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Has observers:%@, update location now", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WATodayModel__fireTodayModelWantsUpdate__block_invoke;
    block[3] = &unk_279E67C98;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(WATodayModel *)self setHasPendingUpdates:1];
    v11 = WALogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v11, OS_LOG_TYPE_DEFAULT, "Do not have observers, flag pending update to yes", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __42__WATodayModel__fireTodayModelWantsUpdate__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 todayModelWantsUpdate:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fireTodayModelForecastWasUpdated:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WALogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    observers = self->_observers;
    *buf = 136315394;
    v12 = "[WATodayModel _fireTodayModelForecastWasUpdated:]";
    v13 = 2112;
    v14 = observers;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__WATodayModel__fireTodayModelForecastWasUpdated___block_invoke;
  v9[3] = &unk_279E67CC0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __50__WATodayModel__fireTodayModelForecastWasUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 todayModel:*(a1 + 32) forecastWasUpdated:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performDelayedUpdatesForObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__WATodayModel_performDelayedUpdatesForObserver___block_invoke;
  v6[3] = &unk_279E67CC0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __49__WATodayModel_performDelayedUpdatesForObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 todayModelWantsUpdate:v5];
  }

  return result;
}

- (void)initWithLocation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"WATodayModel.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"location"}];
}

@end