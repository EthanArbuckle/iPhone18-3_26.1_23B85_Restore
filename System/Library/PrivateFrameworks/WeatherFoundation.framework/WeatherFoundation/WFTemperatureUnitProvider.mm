@interface WFTemperatureUnitProvider
- (WFTemperatureUnitProvider)init;
- (int)_providerQueue_changeUnit:(int)unit;
- (int)_providerQueue_readUnit;
- (int)userTemperatureUnit;
- (void)_postDidChangeUnitDefaultsPreference;
- (void)fetchTemperatureUnitWithCompletionHandler:(id)handler;
- (void)replaceUnit:(int)unit;
- (void)replaceUnit:(int)unit completionHandler:(id)handler;
@end

@implementation WFTemperatureUnitProvider

- (WFTemperatureUnitProvider)init
{
  v5.receiver = self;
  v5.super_class = WFTemperatureUnitProvider;
  v2 = [(WFTemperatureUnitProvider *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WeatherFoundation.TemperatureUnitProviderSerialQueue", 0);
    [(WFTemperatureUnitProvider *)v2 setProviderQueue:v3];
  }

  return v2;
}

- (void)fetchTemperatureUnitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  providerQueue = [(WFTemperatureUnitProvider *)self providerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFTemperatureUnitProvider_fetchTemperatureUnitWithCompletionHandler___block_invoke;
  block[3] = &unk_279E6FA40;
  v8 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(providerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__WFTemperatureUnitProvider_fetchTemperatureUnitWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, [WeakRetained _providerQueue_readUnit]);
}

- (int)userTemperatureUnit
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 2;
  objc_initWeak(&location, self);
  providerQueue = [(WFTemperatureUnitProvider *)self providerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFTemperatureUnitProvider_userTemperatureUnit__block_invoke;
  block[3] = &unk_279E6FA68;
  block[4] = &v8;
  objc_copyWeak(&v6, &location);
  dispatch_sync(providerQueue, block);

  LODWORD(providerQueue) = *(v9 + 6);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return providerQueue;
}

void __48__WFTemperatureUnitProvider_userTemperatureUnit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [WeakRetained _providerQueue_readUnit];
}

- (void)replaceUnit:(int)unit
{
  objc_initWeak(&location, self);
  providerQueue = [(WFTemperatureUnitProvider *)self providerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WFTemperatureUnitProvider_replaceUnit___block_invoke;
  block[3] = &unk_279E6FA90;
  objc_copyWeak(&v7, &location);
  unitCopy = unit;
  dispatch_async(providerQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__WFTemperatureUnitProvider_replaceUnit___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _providerQueue_changeUnit:*(a1 + 40)];
}

- (void)replaceUnit:(int)unit completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  providerQueue = [(WFTemperatureUnitProvider *)self providerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WFTemperatureUnitProvider_replaceUnit_completionHandler___block_invoke;
  v9[3] = &unk_279E6FAB8;
  objc_copyWeak(&v11, &location);
  unitCopy = unit;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(providerQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __59__WFTemperatureUnitProvider_replaceUnit_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _providerQueue_changeUnit:*(a1 + 48)];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (int)_providerQueue_readUnit
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  wf_temperatureUnit = [currentLocale wf_temperatureUnit];

  return wf_temperatureUnit;
}

- (int)_providerQueue_changeUnit:(int)unit
{
  v3 = *&unit;
  v16 = *MEMORY[0x277D85DE8];
  _providerQueue_readUnit = [(WFTemperatureUnitProvider *)self _providerQueue_readUnit];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [currentLocale setWf_temperatureUnit:v3];
  CFPreferencesAppSynchronize(*MEMORY[0x277CBF008]);
  [(WFTemperatureUnitProvider *)self _postDidChangeUnitDefaultsPreference];
  v7 = WFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSLocaleTemperatureUnitFromWFTemperatureUnit(_providerQueue_readUnit);
    v9 = NSLocaleTemperatureUnitFromWFTemperatureUnit([(WFTemperatureUnitProvider *)self _providerQueue_readUnit]);
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_272B94000, v7, OS_LOG_TYPE_DEFAULT, "Temperature unit was changed from %@ to %@", &v12, 0x16u);
  }

  _providerQueue_readUnit2 = [(WFTemperatureUnitProvider *)self _providerQueue_readUnit];
  return _providerQueue_readUnit2;
}

- (void)_postDidChangeUnitDefaultsPreference
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.weather.temperatureUnitsChangedNotification", 0, 0, 1u);
}

@end