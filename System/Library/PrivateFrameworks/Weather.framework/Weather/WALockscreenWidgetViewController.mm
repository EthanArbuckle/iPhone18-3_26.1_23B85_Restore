@interface WALockscreenWidgetViewController
+ (id)sharedInstanceIfExists;
- (BOOL)_delegateShouldUpdateForecast;
- (BOOL)shouldFakeWeather;
- (BOOL)todayViewIsVisible;
- (WALockscreenWidgetViewController)init;
- (WAWidgetDelegate)delegate;
- (id)_conditionsImage;
- (id)_conditionsLine;
- (id)_locationName;
- (id)_temperature;
- (void)_delegateDidUpdate;
- (void)_delegateUpdateDidFailWithError:(id)error;
- (void)_delegateWillUpdate;
- (void)_scheduleNewTimer;
- (void)_setupWeatherModel;
- (void)_teardownTimer;
- (void)_teardownWeatherModel;
- (void)_updateTimerFired:(id)fired;
- (void)_updateTodayView;
- (void)_updateWithReason:(id)reason;
- (void)getLocationServicesAuthorizationStatus:(id)status;
- (void)setUpdateInterval:(double)interval;
- (void)todayModel:(id)model forecastWasUpdated:(id)updated;
- (void)updateForChangedSettings:(id)settings;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WALockscreenWidgetViewController

+ (id)sharedInstanceIfExists
{
  WeakRetained = objc_loadWeakRetained(&sharedLockscreenWidgetViewControllerIfExists);

  return WeakRetained;
}

- (WALockscreenWidgetViewController)init
{
  v12.receiver = self;
  v12.super_class = WALockscreenWidgetViewController;
  v2 = [(WALockscreenWidgetViewController *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(WALockscreenWidgetViewController *)v2 setTodayView:v3];

    v4 = objc_opt_new();
    todayView = [(WALockscreenWidgetViewController *)v2 todayView];
    [todayView setStyle:v4];

    todayView2 = [(WALockscreenWidgetViewController *)v2 todayView];
    [todayView2 setHidden:1];

    clearColor = [MEMORY[0x277D75348] clearColor];
    todayView3 = [(WALockscreenWidgetViewController *)v2 todayView];
    [todayView3 setBackgroundColor:clearColor];

    todayView4 = [(WALockscreenWidgetViewController *)v2 todayView];
    [todayView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(WALockscreenWidgetViewController *)v2 setLocationServicesActive:1];
    [(WALockscreenWidgetViewController *)v2 setUpdateInterval:300.0];
    WeakRetained = objc_loadWeakRetained(&sharedLockscreenWidgetViewControllerIfExists);

    if (!WeakRetained)
    {
      objc_storeWeak(&sharedLockscreenWidgetViewControllerIfExists, v2);
    }
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WALockscreenWidgetViewController;
  [(WALockscreenWidgetViewController *)&v4 viewDidLoad];
  todayView = [(WALockscreenWidgetViewController *)self todayView];
  [(WALockscreenWidgetViewController *)self setView:todayView];

  [(WALockscreenWidgetViewController *)self _updateTodayView];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = WALockscreenWidgetViewController;
  coordinatorCopy = coordinator;
  [(WALockscreenWidgetViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  todayView = [(WALockscreenWidgetViewController *)self todayView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__WALockscreenWidgetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_279E67F50;
  v11 = todayView;
  v9 = todayView;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
}

void __87__WALockscreenWidgetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 orientation];

  v4 = [*(a1 + 32) window];
  v5 = [v4 screen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;

  v10 = [WATodayPadViewStyle styleForScreenWithSize:v3 orientation:v7, v9];
  [*(a1 + 32) setStyle:v10];
}

- (void)setUpdateInterval:(double)interval
{
  if (self->_updateInterval != interval)
  {
    [(WALockscreenWidgetViewController *)self _teardownTimer];
    self->_updateInterval = interval;

    [(WALockscreenWidgetViewController *)self _scheduleNewTimer];
  }
}

- (void)updateForChangedSettings:(id)settings
{
  settingsCopy = settings;
  todayView = [(WALockscreenWidgetViewController *)self todayView];
  [todayView updateForChangedSettings:settingsCopy];
}

- (BOOL)todayViewIsVisible
{
  if ([(WALockscreenWidgetViewController *)self isViewLoaded])
  {
    todayView = [(WALockscreenWidgetViewController *)self todayView];
    v4 = [todayView isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateWithReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  todayModel = [(WALockscreenWidgetViewController *)self todayModel];

  if (!todayModel)
  {
    [(WALockscreenWidgetViewController *)self _setupWeatherModel];
  }

  if ([(WALockscreenWidgetViewController *)self _delegateShouldUpdateForecast])
  {
    [(WALockscreenWidgetViewController *)self _delegateWillUpdate];
    objc_initWeak(&location, self);
    v6 = WALogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = reasonCopy;
      _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "Updating with reason: %@", buf, 0xCu);
    }

    v7 = objc_loadWeakRetained(&location);
    todayModel2 = [v7 todayModel];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__WALockscreenWidgetViewController__updateWithReason___block_invoke;
    v11[3] = &unk_279E67F78;
    objc_copyWeak(&v13, &location);
    v12 = reasonCopy;
    [todayModel2 executeModelUpdateWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = WALogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = reasonCopy;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "Delegate said to not update with reason: %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__WALockscreenWidgetViewController__updateWithReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setUpdateLastCompletionDate:v5];

  if (v4)
  {
    v7 = WALogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__WALockscreenWidgetViewController__updateWithReason___block_invoke_cold_1(v4, a1, v7);
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 _delegateUpdateDidFailWithError:v4];
  }

  else
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 todayModel];
    v11 = [v10 forecastModel];
    v12 = [v11 city];
    v13 = [v12 isLocalWeatherCity];

    v8 = WALogForCategory(3);
    v14 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v14)
      {
        __54__WALockscreenWidgetViewController__updateWithReason___block_invoke_cold_3(a1, v8);
      }

      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = [v15 todayModel];
      v8 = [v16 forecastModel];

      v17 = objc_loadWeakRetained((a1 + 40));
      [v17 setCurrentForecastModel:v8];
    }

    else if (v14)
    {
      __54__WALockscreenWidgetViewController__updateWithReason___block_invoke_cold_2(a1, v8);
    }
  }

  v18 = objc_loadWeakRetained((a1 + 40));
  [v18 _updateTodayView];
}

- (void)_updateTodayView
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = WALogForCategory(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[WALockscreenWidgetViewController _updateTodayView]";
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WALockscreenWidgetViewController__updateTodayView__block_invoke;
  v5[3] = &unk_279E67FA0;
  v5[4] = self;
  [(WALockscreenWidgetViewController *)self getLocationServicesAuthorizationStatus:v5];
  v4 = *MEMORY[0x277D85DE8];
}

void __52__WALockscreenWidgetViewController__updateTodayView__block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = WALogForCategory(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "AuthorizationStatus %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) currentForecastModel];
  v7 = [v6 city];
  v8 = [v7 isLocalWeatherCity];
  v9 = [*(a1 + 32) locationServicesActive];
  if (a2 == 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) _locationName];
  if (v11 && v8 && (v10 & 1) != 0 || ([*(a1 + 32) shouldFakeWeather] & 1) != 0)
  {
    v12 = [*(a1 + 32) _temperature];
    v13 = [*(a1 + 32) _conditionsLine];
    v14 = [*(a1 + 32) _conditionsImage];
    v15 = [*(a1 + 32) todayView];
    [v15 setLocationName:v11];

    v16 = [*(a1 + 32) todayView];
    [v16 setTemperature:v12];

    v17 = [*(a1 + 32) todayView];
    [v17 setConditionsImage:v14];

    v18 = [*(a1 + 32) todayView];
    [v18 setConditionsLine:v13];

    v19 = WALogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) todayView];
      v20 = v32 = v7;
      v21 = [v20 locationName];
      [*(a1 + 32) todayView];
      v22 = v31 = v13;
      [v22 temperature];
      v23 = v11;
      v25 = v24 = v6;
      *buf = 138412546;
      v34 = v21;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_272ACF000, v19, OS_LOG_TYPE_DEFAULT, "Show Today View: %@ at %@", buf, 0x16u);

      v6 = v24;
      v11 = v23;

      v13 = v31;
      v7 = v32;
    }

    [*(a1 + 32) _setTodayViewHidden:0];
  }

  else
  {
    [*(a1 + 32) _setTodayViewHidden:1];
    v27 = [*(a1 + 32) todayView];
    [v27 setConditionsLine:&stru_2882270E8];

    v28 = [*(a1 + 32) todayView];
    [v28 setLocationName:&stru_2882270E8];

    v29 = [*(a1 + 32) todayView];
    [v29 setTemperature:&stru_2882270E8];

    v12 = WALogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = @"Location Services are disabled.";
      if (v10)
      {
        v30 = @"Unknown!";
      }

      if (!v8)
      {
        v30 = @"First Weather Forecast Location; not local weather city";
      }

      *buf = 138412290;
      v34 = v30;
      _os_log_impl(&dword_272ACF000, v12, OS_LOG_TYPE_DEFAULT, "Today View Is Hidden: %@", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)todayModel:(id)model forecastWasUpdated:(id)updated
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  updatedCopy = updated;
  v8 = WALogForCategory(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315650;
    v21 = "[WALockscreenWidgetViewController todayModel:forecastWasUpdated:]";
    v22 = 2112;
    v23 = modelCopy;
    v24 = 2112;
    v25 = updatedCopy;
    _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v20, 0x20u);
  }

  v9 = WALogForCategory(10);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    currentForecastModel = [(WALockscreenWidgetViewController *)self currentForecastModel];
    todayModel = [(WALockscreenWidgetViewController *)self todayModel];
    forecastModel = [todayModel forecastModel];
    v20 = 138412546;
    v21 = currentForecastModel;
    v22 = 2112;
    v23 = forecastModel;
    _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "current %@ todayModel.forcastModel %@", &v20, 0x16u);
  }

  currentForecastModel2 = [(WALockscreenWidgetViewController *)self currentForecastModel];
  todayModel2 = [(WALockscreenWidgetViewController *)self todayModel];
  forecastModel2 = [todayModel2 forecastModel];

  if (currentForecastModel2 == forecastModel2)
  {
    v18 = WALogForCategory(10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_272ACF000, v18, OS_LOG_TYPE_DEFAULT, "Not updating today view since currentForcastModel is equal to todayModel.forcastModel", &v20, 2u);
    }
  }

  else
  {
    todayModel3 = [(WALockscreenWidgetViewController *)self todayModel];
    forecastModel3 = [todayModel3 forecastModel];
    [(WALockscreenWidgetViewController *)self setCurrentForecastModel:forecastModel3];

    [(WALockscreenWidgetViewController *)self _updateTodayView];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateTimerFired:(id)fired
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__WALockscreenWidgetViewController__updateTimerFired___block_invoke;
  v3[3] = &unk_279E67FC8;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__WALockscreenWidgetViewController__updateTimerFired___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithReason:@"Timer Fired!"];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _scheduleNewTimer];
}

- (void)_scheduleNewTimer
{
  todayModel = [(WALockscreenWidgetViewController *)self todayModel];

  if (todayModel)
  {
    [(WALockscreenWidgetViewController *)self updateInterval];
    if (v4 > 0.0)
    {
      [(WALockscreenWidgetViewController *)self _teardownTimer];
      v5 = MEMORY[0x277CBEBB8];
      [(WALockscreenWidgetViewController *)self updateInterval];
      v6 = [v5 scheduledTimerWithTimeInterval:self target:sel__updateTimerFired_ selector:0 userInfo:0 repeats:?];
      [(WALockscreenWidgetViewController *)self setUpdateTimer:v6];

      updateTimer = [(WALockscreenWidgetViewController *)self updateTimer];
      [updateTimer setTolerance:60.0];
    }
  }
}

- (void)_teardownTimer
{
  updateTimer = [(WALockscreenWidgetViewController *)self updateTimer];
  [updateTimer invalidate];

  [(WALockscreenWidgetViewController *)self setUpdateTimer:0];
}

- (void)_setupWeatherModel
{
  if ([(WALockscreenWidgetViewController *)self shouldFakeWeather])
  {
    todayModel = objc_opt_new();
    v4 = +[WeatherInternalPreferences sharedInternalPreferences];
    v5 = [v4 objectForKey:@"FakePadWeatherLatitude"];
    v6 = [v4 objectForKey:@"FakePadWeatherLongitude"];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v15 = -122.029488;
      v13 = 37.3333702;
    }

    else
    {
      [v5 floatValue];
      v13 = v12;
      [v7 floatValue];
      v15 = v14;
    }

    v16 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v13 longitude:v15];
    [todayModel setGeoLocation:v16];

    v17 = [v4 objectForKey:@"FakePadWeatherDisplayName"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"Cupertino, CA";
    }

    [todayModel setDisplayName:v19];

    v20 = [WATodayModel modelWithLocation:todayModel];
    [(WALockscreenWidgetViewController *)self setTodayModel:v20];

    [(WALockscreenWidgetViewController *)self _updateWithReason:@"We're faking the weather, so let's just get some data in here"];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [WATodayModel autoupdatingLocationModelWithPreferences:v9 effectiveBundleIdentifier:0];
    [(WALockscreenWidgetViewController *)self setTodayModel:v10];

    locationServicesActive = [(WALockscreenWidgetViewController *)self locationServicesActive];
    todayModel = [(WALockscreenWidgetViewController *)self todayModel];
    [todayModel setLocationServicesActive:locationServicesActive];
  }

  todayModel2 = [(WALockscreenWidgetViewController *)self todayModel];
  forecastModel = [todayModel2 forecastModel];
  [(WALockscreenWidgetViewController *)self setCurrentForecastModel:forecastModel];

  currentForecastModel = [(WALockscreenWidgetViewController *)self currentForecastModel];

  if (currentForecastModel)
  {
    [(WALockscreenWidgetViewController *)self _updateTodayView];
  }

  [(WALockscreenWidgetViewController *)self _scheduleNewTimer];
  todayModel3 = [(WALockscreenWidgetViewController *)self todayModel];
  [todayModel3 addObserver:self];
}

- (void)_teardownWeatherModel
{
  todayModel = [(WALockscreenWidgetViewController *)self todayModel];
  [todayModel removeObserver:self];

  [(WALockscreenWidgetViewController *)self setTodayModel:0];
}

- (BOOL)shouldFakeWeather
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 objectForKey:@"FakePadWeather"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_locationName
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  if (-[WALockscreenWidgetViewController shouldFakeWeather](self, "shouldFakeWeather") && ([v3 objectForKey:@"FakePadWeatherDisplayName"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    displayName = [v3 objectForKey:@"FakePadWeatherDisplayName"];
  }

  else
  {
    currentForecastModel = [(WALockscreenWidgetViewController *)self currentForecastModel];
    city = [currentForecastModel city];
    name = [city name];
    v9 = name;
    if (name)
    {
      displayName = name;
    }

    else
    {
      location = [currentForecastModel location];
      displayName = [location displayName];
    }
  }

  return displayName;
}

- (id)_temperature
{
  if (_temperature_onceToken != -1)
  {
    [WALockscreenWidgetViewController _temperature];
  }

  mEMORY[0x277D7B2D8] = [MEMORY[0x277D7B2D8] sharedObserver];
  temperatureUnit = [mEMORY[0x277D7B2D8] temperatureUnit];
  [_temperature_temperatureFormatter setOutputUnit:temperatureUnit];

  [_temperature_temperatureFormatter setSymbolType:!WAIsChinaSKUAndSimplifiedChinese()];
  v5 = +[WeatherInternalPreferences sharedInternalPreferences];
  if (-[WALockscreenWidgetViewController shouldFakeWeather](self, "shouldFakeWeather") && ([v5 objectForKey:@"FakePadWeatherConditionTemperature"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = _temperature_temperatureFormatter;
    currentForecastModel = [v5 objectForKey:@"FakePadWeatherConditionTemperature"];
    v9 = [v7 stringForObjectValue:currentForecastModel];
  }

  else
  {
    currentForecastModel = [(WALockscreenWidgetViewController *)self currentForecastModel];
    currentConditions = [currentForecastModel currentConditions];
    v11 = _temperature_temperatureFormatter;
    temperature = [currentConditions temperature];
    v9 = [v11 stringForObjectValue:temperature];
  }

  return v9;
}

uint64_t __48__WALockscreenWidgetViewController__temperature__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _temperature_temperatureFormatter;
  _temperature_temperatureFormatter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_conditionsLine
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  isV3Enabled = [v3 isV3Enabled];

  v5 = +[WeatherInternalPreferences sharedInternalPreferences];
  shouldFakeWeather = [(WALockscreenWidgetViewController *)self shouldFakeWeather];
  if (!isV3Enabled)
  {
    if (!shouldFakeWeather || ([v5 objectForKey:@"FakePadWeatherConditionDescription"], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      currentForecastModel = [(WALockscreenWidgetViewController *)self currentForecastModel];
      currentConditions = [currentForecastModel currentConditions];
      airQualityConditions = [currentForecastModel airQualityConditions];
      v22 = WAAirQualityCategoryFromConditions();

      currentForecastModel2 = [(WALockscreenWidgetViewController *)self currentForecastModel];
      location = [currentForecastModel2 location];
      countryAbbreviation = [location countryAbbreviation];
      IsSignificantForCategory = WAAirQualityIsSignificantForCategory(v22, countryAbbreviation);

      if (IsSignificantForCategory)
      {
        currentForecastModel3 = [(WALockscreenWidgetViewController *)self currentForecastModel];
        location2 = [currentForecastModel3 location];
        countryAbbreviation2 = [location2 countryAbbreviation];
        v18 = WAAirQualityDescriptionForCategory(v22, countryAbbreviation2);
      }

      else
      {
        v18 = WAConditionsLineStringFromCurrentForecasts(currentConditions);
      }

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (shouldFakeWeather)
  {
    v7 = [v5 objectForKey:@"FakePadWeatherConditionDescription"];

    if (v7)
    {
LABEL_9:
      v18 = [v5 objectForKey:@"FakePadWeatherConditionDescription"];
      goto LABEL_16;
    }
  }

  currentForecastModel4 = [(WALockscreenWidgetViewController *)self currentForecastModel];
  currentConditions2 = [currentForecastModel4 currentConditions];
  city = [currentForecastModel4 city];
  airQualityScaleCategory = [city airQualityScaleCategory];

  longDescription = [airQualityScaleCategory longDescription];
  if (longDescription && (v13 = longDescription, v14 = [airQualityScaleCategory categoryIndex], v15 = objc_msgSend(airQualityScaleCategory, "warningLevel"), v13, v14 > v15))
  {
    longDescription2 = [airQualityScaleCategory longDescription];
  }

  else
  {
    longDescription2 = WAConditionsLineStringFromCurrentForecasts(currentConditions2);
  }

  v18 = longDescription2;

LABEL_16:

  return v18;
}

- (id)_conditionsImage
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  if (-[WALockscreenWidgetViewController shouldFakeWeather](self, "shouldFakeWeather") && ([v3 objectForKey:@"FakePadWeatherCondition"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 objectForKey:@"FakePadWeatherCondition"];
    intValue = [v5 intValue];

    v7 = WAImageForLegacyConditionCode(intValue, 0);
  }

  else
  {
    currentForecastModel = [(WALockscreenWidgetViewController *)self currentForecastModel];
    currentConditions = [currentForecastModel currentConditions];
    v7 = WAImageForLegacyConditionCode([currentConditions conditionCode], 0);
  }

  return v7;
}

- (BOOL)_delegateShouldUpdateForecast
{
  objc_initWeak(&location, self);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__WALockscreenWidgetViewController__delegateShouldUpdateForecast__block_invoke;
  v5[3] = &unk_279E67FF0;
  objc_copyWeak(&v6, &location);
  v5[4] = &v7;
  v2 = MEMORY[0x2743D4690](v5);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], v2);
  }

  v3 = *(v8 + 24);

  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  objc_destroyWeak(&location);
  return v3;
}

void __65__WALockscreenWidgetViewController__delegateShouldUpdateForecast__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v5 = [v7 delegate];
    v6 = objc_loadWeakRetained((a1 + 40));
    *(*(*(a1 + 32) + 8) + 24) = [v5 widgetViewControllerShouldUpdateForecast:v6];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)_delegateWillUpdate
{
  delegate = [(WALockscreenWidgetViewController *)self delegate];
  if (delegate)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WALockscreenWidgetViewController__delegateWillUpdate__block_invoke;
    block[3] = &unk_279E68018;
    v5 = delegate;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

void __55__WALockscreenWidgetViewController__delegateWillUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 widgetViewControllerWillUpdate:WeakRetained];
}

- (void)_delegateDidUpdate
{
  delegate = [(WALockscreenWidgetViewController *)self delegate];
  if (delegate)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__WALockscreenWidgetViewController__delegateDidUpdate__block_invoke;
    block[3] = &unk_279E68018;
    v5 = delegate;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

void __54__WALockscreenWidgetViewController__delegateDidUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 widgetViewControllerDidUpdate:WeakRetained];
}

- (void)_delegateUpdateDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(WALockscreenWidgetViewController *)self delegate];
  if (delegate)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__WALockscreenWidgetViewController__delegateUpdateDidFailWithError___block_invoke;
    v6[3] = &unk_279E68040;
    v7 = delegate;
    objc_copyWeak(&v9, &location);
    v8 = errorCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __68__WALockscreenWidgetViewController__delegateUpdateDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 widgetViewController:WeakRetained failedToUpdateWithError:*(a1 + 40)];
}

- (void)getLocationServicesAuthorizationStatus:(id)status
{
  statusCopy = status;
  v4 = __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke_3;
  block[3] = &unk_279E68090;
  v7 = statusCopy;
  v5 = statusCopy;
  dispatch_async(v4, block);
}

id __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke()
{
  if (WALockscreenWidgetDidDisappearNotification_block_invoke_na_once_token_12 != -1)
  {
    __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke_cold_1();
  }

  v1 = WALockscreenWidgetDidDisappearNotification_block_invoke_na_once_object_12;

  return v1;
}

uint64_t __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke_2()
{
  v0 = dispatch_queue_create("com.apple.weather.location-auth-status", 0);
  v1 = WALockscreenWidgetDidDisappearNotification_block_invoke_na_once_object_12;
  WALockscreenWidgetDidDisappearNotification_block_invoke_na_once_object_12 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke_3(uint64_t a1)
{
  v2 = [WeatherLocationManager locationManagerAuthorizationWithEffectiveBundleId:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__WALockscreenWidgetViewController_getLocationServicesAuthorizationStatus___block_invoke_4;
  v3[3] = &unk_279E68068;
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (WAWidgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __54__WALockscreenWidgetViewController__updateWithReason___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_272ACF000, log, OS_LOG_TYPE_ERROR, "Update Error: %@ (Update Reason: %@)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __54__WALockscreenWidgetViewController__updateWithReason___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_272ACF000, a2, OS_LOG_TYPE_DEBUG, "Update Ignored (not local weather city) (Update Reason: %@)", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __54__WALockscreenWidgetViewController__updateWithReason___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_272ACF000, a2, OS_LOG_TYPE_DEBUG, "Update Received (Update Reason: %@)", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end