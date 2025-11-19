@interface TWCCityUpdater
+ (id)sharedCityUpdater;
- (BOOL)isUpdatingCity:(id)a3;
- (NSString)trackingParameter;
- (TWCCityUpdater)init;
- (WeatherUpdaterDelegate)delegate;
- (void)cancel;
- (void)setTrackingParameter:(id)a3;
- (void)updateWeatherForCities:(id)a3 withCompletionHandler:(id)a4;
- (void)updateWeatherForCity:(id)a3;
@end

@implementation TWCCityUpdater

+ (id)sharedCityUpdater
{
  if (sharedCityUpdater_onceToken != -1)
  {
    +[TWCCityUpdater sharedCityUpdater];
  }

  v3 = sharedCityUpdater_sharedCityUpdater;

  return v3;
}

uint64_t __35__TWCCityUpdater_sharedCityUpdater__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedCityUpdater_sharedCityUpdater;
  sharedCityUpdater_sharedCityUpdater = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (TWCCityUpdater)init
{
  v5.receiver = self;
  v5.super_class = TWCCityUpdater;
  v2 = [(TWCCityUpdater *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TWCCityUpdater *)v2 setForecastModelController:v3];
  }

  return v2;
}

- (BOOL)isUpdatingCity:(id)a3
{
  v4 = a3;
  v5 = [(TWCCityUpdater *)self forecastModelController];
  v6 = [v5 isCityBeingUpdated:v4];

  return v6;
}

- (void)cancel
{
  v2 = [(TWCCityUpdater *)self forecastModelController];
  [v2 cancelAllFetchRequests];
}

- (NSString)trackingParameter
{
  v2 = [(TWCCityUpdater *)self forecastModelController];
  v3 = [v2 trackingParameter];

  return v3;
}

- (void)setTrackingParameter:(id)a3
{
  v4 = a3;
  v5 = [(TWCCityUpdater *)self forecastModelController];
  [v5 setTrackingParameter:v4];
}

- (void)updateWeatherForCity:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(TWCCityUpdater *)self forecastModelController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TWCCityUpdater_updateWeatherForCity___block_invoke;
  v7[3] = &unk_279E68818;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 fetchForecastForCity:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__TWCCityUpdater_updateWeatherForCity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__TWCCityUpdater_updateWeatherForCity___block_invoke_2;
  v9[3] = &unk_279E687F0;
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  objc_copyWeak(&v13, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v9);
  objc_destroyWeak(&v13);
}

void __39__TWCCityUpdater_updateWeatherForCity___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    [*(a1 + 40) updateCityForModel:*(a1 + 48)];
    v2 = *(a1 + 32);
  }

  [*(a1 + 40) cityDidFinishUpdatingWithError:v2];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained delegate];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v3)
  {
    [v4 city:v6 failedToUpdateWithError:*(a1 + 32)];
  }

  else
  {
    [v4 cityDidUpdateWeather:v6];
  }
}

- (void)updateWeatherForCities:(id)a3 withCompletionHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WALogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[TWCCityUpdater updateWeatherForCities:withCompletionHandler:]";
    v31 = 2112;
    v32 = self;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "%s self=%@, updating weather for cities: %@ in city updater", buf, 0x20u);
  }

  v9 = [v6 count];
  if (v7 || v9 > 1)
  {
    v11 = dispatch_group_create();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke;
    v27[3] = &unk_279E68840;
    v12 = v11;
    v28 = v12;
    [v6 enumerateObjectsUsingBlock:v27];
    v13 = [(TWCCityUpdater *)self delegate];
    objc_initWeak(buf, v13);

    v14 = objc_opt_new();
    v15 = [(TWCCityUpdater *)self forecastModelController];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_2;
    v23[3] = &unk_279E68890;
    objc_copyWeak(&v26, buf);
    v16 = v14;
    v24 = v16;
    v10 = v12;
    v25 = v10;
    [v15 fetchForecastForCities:v6 completion:v23];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_6;
    block[3] = &unk_279E688B8;
    v22 = v7;
    v20 = v16;
    v21 = v6;
    v17 = v16;
    dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = [v6 firstObject];
    [(TWCCityUpdater *)self updateWeatherForCity:v10];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_3;
  v13[3] = &unk_279E68868;
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v9;
  objc_copyWeak(&v19, a1 + 6);
  v17 = a1[4];
  v18 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v19);
}

void __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2)
  {
    v4 = WALogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "Success updated city: %@, with forecast model: %@", &v10, 0x16u);
    }

    [*(a1 + 40) updateCityForModel:*(a1 + 48)];
    v2 = *(a1 + 32);
  }

  [*(a1 + 40) cityDidFinishUpdatingWithError:v2];
  if (*(a1 + 32))
  {
    [*(a1 + 56) addObject:?];
    v7 = WALogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_3_cold_1(v3, (a1 + 40), v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained city:*(a1 + 40) failedToUpdateWithError:*(a1 + 32)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained cityDidUpdateWeather:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 64));
  v9 = *MEMORY[0x277D85DE8];
}

void __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_6(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) count];
    v3 = *(a1 + 32);
    if (v2 == 1)
    {
      v4 = [v3 firstObject];
    }

    else if ([v3 count])
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = *(a1 + 32);
      v10 = @"errors";
      v11[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v4 = [v5 errorWithDomain:@"com.apple.weather.errorDomain" code:7 userInfo:v7];
    }

    else
    {
      v4 = 0;
    }

    v8 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (WeatherUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __63__TWCCityUpdater_updateWeatherForCities_withCompletionHandler___block_invoke_3_cold_1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_272ACF000, log, OS_LOG_TYPE_ERROR, "Forecast retrieval error: %@ for city: %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end