@interface WCDefaultCityManager
- (NSArray)defaultCities;
- (id)defaultCityForLocalTimeZone;
- (id)initDeferLoading:(BOOL)a3;
- (id)reloadDefaultCities;
@end

@implementation WCDefaultCityManager

- (id)reloadDefaultCities
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 countryCode];
  v6 = [v4 localeIdentifier];
  if (+[WCMobileGestaltBridge isChineseSKU])
  {
    v7 = WCLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_1C945E000, v7, OS_LOG_TYPE_DEFAULT, "Previous localeCode=%@, overriding localeCode to the countryCode CN", buf, 0xCu);
    }

    v6 = @"CN";
  }

  if (+[WCMobileGestaltBridge isJapaneseSKU])
  {
    v8 = WCLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_1C945E000, v8, OS_LOG_TYPE_DEFAULT, "Previous localeCode=%@, overriding localeCode to the countryCode JP", buf, 0xCu);
    }

    v6 = @"JP";
  }

  v9 = WCLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v6;
    v40 = 2112;
    v41 = v5;
    v42 = 2112;
    v43 = v4;
    _os_log_impl(&dword_1C945E000, v9, OS_LOG_TYPE_DEFAULT, "About to ask the ALCityManager for our default cities. LocaleCode=%@, countryCode=%@, currentLocale=%@", buf, 0x20u);
  }

  v10 = [MEMORY[0x1E698B670] sharedManager];
  v11 = [v10 defaultCitiesForLocaleCode:v6];

  v12 = [(__CFString *)v11 count];
  v13 = WCLogForCategory(1uLL);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 138412546;
      v39 = v6;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_1C945E000, v13, OS_LOG_TYPE_DEFAULT, "[ALCityManager.defaultCitiesForLocaleCode:%@] returned the following cities:%@", buf, 0x16u);
    }

    v15 = v11;
  }

  else
  {
    if (v14)
    {
      *buf = 138412546;
      v39 = v6;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_1C945E000, v13, OS_LOG_TYPE_DEFAULT, "[ALCityManager.defaultCitiesForLocaleCode:%@] returned NO cities.  Trying [ALCityManager.defaultCitiesForLocaleCode:%@]", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E698B670] sharedManager];
    v15 = [v16 defaultCitiesForLocaleCode:v5];

    v17 = [(__CFString *)v15 count];
    v13 = WCLogForCategory(1uLL);
    v18 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_23;
      }

      *buf = 138412546;
      v39 = v5;
      v40 = 2112;
      v41 = v15;
      v19 = "[ALCityManager.defaultCitiesForLocaleCode:%@] returned the following cities:%@";
      v20 = v13;
      v21 = 22;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      v39 = v5;
      v19 = "[ALCityManager.defaultCitiesForLocaleCode:%@] returned NO cities.  We are out of luck";
      v20 = v13;
      v21 = 12;
    }

    _os_log_impl(&dword_1C945E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
  }

LABEL_23:

  if ([(__CFString *)v15 count])
  {
    v31 = v5;
    v32 = v4;
    v22 = self;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = v15;
    v24 = [(__CFString *)v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [WCDefaultCity cityFromAlCity:*(*(&v33 + 1) + 8 * i), v31, v32, v33];
          if (v28)
          {
            [(__CFString *)v3 addObject:v28];
          }
        }

        v25 = [(__CFString *)v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v25);
    }

    self = v22;
    v5 = v31;
    v4 = v32;
  }

  v29 = WCLogForCategory(1uLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v3;
    _os_log_impl(&dword_1C945E000, v29, OS_LOG_TYPE_DEFAULT, "Built and returning the following WCDefaultCities:%@", buf, 0xCu);
  }

  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_defaultCities, v3);
  os_unfair_lock_unlock(&self->_dataSynchronizationLock);

  return v3;
}

- (NSArray)defaultCities
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_defaultCities copy];
  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  if (!v3)
  {
    v3 = [(WCDefaultCityManager *)self reloadDefaultCities];
  }

  return v3;
}

- (id)initDeferLoading:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = WCDefaultCityManager;
  v4 = [(WCDefaultCityManager *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_dataSynchronizationLock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.weathercore.defaultcitymanager", v6);
    reloadQueue = v5->_reloadQueue;
    v5->_reloadQueue = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel_reloadDefaultCities name:*MEMORY[0x1E695D8F0] object:0];

    if (!a3)
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__WCDefaultCityManager_initDeferLoading___block_invoke;
      block[3] = &unk_1E8340B18;
      v13 = v5;
      dispatch_async(v10, block);
    }
  }

  return v5;
}

- (id)defaultCityForLocalTimeZone
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = WCLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1C945E000, v2, OS_LOG_TYPE_DEFAULT, "About to ask the ALCityManager for our defaultCityForTimeZone:localTimeZone", &v9, 2u);
  }

  v3 = [MEMORY[0x1E698B670] sharedManager];
  v4 = [MEMORY[0x1E695DFE8] localTimeZone];
  v5 = [v3 defaultCityForTimeZone:v4];

  v6 = WCLogForCategory(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1C945E000, v6, OS_LOG_TYPE_DEFAULT, "Obtained default ALCity for local timezone=%@", &v9, 0xCu);
  }

  v7 = [WCDefaultCity cityFromAlCity:v5];

  return v7;
}

@end