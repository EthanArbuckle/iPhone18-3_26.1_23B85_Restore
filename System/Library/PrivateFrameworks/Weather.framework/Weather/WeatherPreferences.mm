@interface WeatherPreferences
+ (BOOL)performUpgradeOfPersistence:(id)a3 fileManager:(id)a4 error:(id *)a5;
+ (WeatherPreferences)preferencesWithPersistence:(id)a3;
+ (id)readInternalDefaultValueForKey:(id)a3;
+ (id)serviceDebuggingPath;
+ (id)sharedPreferences;
+ (id)userDefaultsPersistence;
- (BOOL)_defaultsAreValid;
- (BOOL)_defaultsCurrent;
- (BOOL)areCitiesDefault:(id)a3;
- (BOOL)ensureValidSelectedCityID;
- (BOOL)isLocalWeatherEnabled;
- (City)localWeatherCity;
- (SynchronizedDefaultsDelegate)syncDelegate;
- (WeatherPreferences)init;
- (WeatherPreferences)initWithPersistence:(id)a3;
- (id)UUID;
- (id)_cacheDirectoryPath;
- (id)_defaultCities;
- (id)citiesByConsolidatingDuplicates:(id)a3 originalOrder:(id)a4;
- (id)citiesByConsolidatingDuplicatesInBucket:(id)a3;
- (id)cityFromPreferencesDictionary:(id)a3;
- (id)loadSavedCities;
- (id)readInternalDefaultValueForKey:(id)a3;
- (int)loadActiveCity;
- (int)loadDefaultSelectedCity;
- (int)userTemperatureUnit;
- (void)_clearCachedObjects;
- (void)forceSyncCloudPreferences;
- (void)resetLocale;
- (void)saveToDiskWithCities:(id)a3;
- (void)saveToDiskWithCities:(id)a3 activeCity:(unint64_t)a4;
- (void)saveToDiskWithCity:(id)a3 forActiveIndex:(unint64_t)a4;
- (void)saveToDiskWithLocalWeatherCity:(id)a3;
- (void)saveToUbiquitousStore;
- (void)setActiveCity:(unint64_t)a3;
- (void)setCelsius:(BOOL)a3;
- (void)setDefaultCities:(id)a3;
- (void)setDefaultSelectedCity:(unint64_t)a3;
- (void)setSyncDelegate:(id)a3;
- (void)setupUbiquitousStoreIfNeeded;
- (void)synchronizeStateToDiskDoNotify:(BOOL)a3;
- (void)temperatureUnitObserver:(id)a3 didChangeTemperatureUnitTo:(int)a4;
@end

@implementation WeatherPreferences

+ (id)sharedPreferences
{
  if (MKBDeviceUnlockedSinceBoot() || (v2 = MKBGetDeviceLockState(), v3 = 0, v2 == 3))
  {
    if (sharedPreferences_onceToken != -1)
    {
      +[WeatherPreferences sharedPreferences];
    }

    v3 = sharedPreferences___sharedPreferences;
  }

  return v3;
}

void __39__WeatherPreferences_sharedPreferences__block_invoke()
{
  if (!sharedPreferences___sharedPreferences)
  {
    v0 = objc_alloc_init(WeatherPreferences);
    v1 = sharedPreferences___sharedPreferences;
    sharedPreferences___sharedPreferences = v0;

    v2 = sharedPreferences___sharedPreferences;

    [v2 setupUbiquitousStoreIfNeeded];
  }
}

+ (id)userDefaultsPersistence
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) _initWithSuiteName:@"group.com.apple.weather" container:v3];
  v5 = WALogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 dictionaryRepresentation];
    v7 = [v6 valueForKey:@"Cities"];
    v8 = [v7 valueForKeyPath:@"Name"];
    v12 = 136315650;
    v13 = "+[WeatherPreferences userDefaultsPersistence]";
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_INFO, "%s tempGroupUrl? %@, Cities: %@", &v12, 0x20u);
  }

  v9 = [[WeatherUserDefaults alloc] initWithUserDefaults:v4];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (WeatherPreferences)preferencesWithPersistence:(id)a3
{
  v3 = a3;
  v4 = [[WeatherPreferences alloc] initWithPersistence:v3];

  return v4;
}

- (WeatherPreferences)init
{
  v3 = [objc_opt_class() userDefaultsPersistence];
  v4 = [(WeatherPreferences *)self initWithPersistence:v3];

  return v4;
}

- (WeatherPreferences)initWithPersistence:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = WeatherPreferences;
  v6 = [(WeatherPreferences *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistence, a3);
    v8 = +[WeatherInternalPreferences sharedInternalPreferences];
    v9 = [v8 objectForKey:@"ServiceDebugging"];
    v7->_serviceDebugging = [v9 BOOLValue];

    v10 = +[WeatherInternalPreferences sharedInternalPreferences];
    v11 = [v10 objectForKey:@"LogLocaleAndUnits"];
    v7->_logUnitsAndLocale = [v11 BOOLValue];

    v12 = [MEMORY[0x277D7B2D8] sharedObserver];
    [v12 addObserver:v7];
  }

  return v7;
}

- (void)setSyncDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WeatherPreferences *)self cloudPreferences];
  [v5 setSyncDelegate:v4];
}

- (void)setupUbiquitousStoreIfNeeded
{
  v3 = [(WeatherPreferences *)self cloudPreferences];

  if (!v3)
  {
    v4 = [[WeatherCloudPreferences alloc] initWithLocalPreferences:self];
    [(WeatherPreferences *)self setCloudPreferences:v4];
  }
}

- (BOOL)ensureValidSelectedCityID
{
  v3 = [(WeatherPreferences *)self loadSavedCities];
  v4 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"DefaultSelectedCity"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
    if ([v3 count] > v6)
    {
      v7 = [v3 objectAtIndexedSubscript:{objc_msgSend(v5, "intValue")}];
      if ([v7 isLocalWeatherCity])
      {
        v8 = @"_localCity_";
      }

      else
      {
        v8 = [v7 locationID];
      }

      v9 = v8;
      [(WeatherPreferences *)self setDefaultSelectedCityID:v8];
    }

    [(WeatherPreferencesPersistence *)self->_persistence setObject:0 forKey:@"DefaultSelectedCity"];
    [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:0];
  }

  return v5 != 0;
}

- (void)setCelsius:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  if (self->_logUnitsAndLocale)
  {
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [(WeatherPreferences *)self userTemperatureUnit];
      v6 = NSStringFromWFTemperatureUnit();
      v7 = v6;
      v8 = @"FAHRENHEIT";
      if (v3)
      {
        v8 = @"CELSIUS";
      }

      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Changing temperature units from %@ to %@", &v13, 0x16u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D7B2D0]) initWithResultHandler:0];
  v10 = v9;
  if (v3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v9 setTemperatureUnit:v11];
  [v10 start];

  v12 = *MEMORY[0x277D85DE8];
}

- (int)userTemperatureUnit
{
  v2 = [MEMORY[0x277D7B2D8] sharedObserver];
  v3 = [v2 temperatureUnit];

  return v3;
}

- (BOOL)_defaultsAreValid
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence stringForKey:@"PrefsVersion"];
  v3 = 0;
  do
  {
    v4 = [v2 isEqualToString:SupportedPrefsVersions[v3]];
    if (v4)
    {
      break;
    }
  }

  while (v3++ != 7);

  return v4;
}

- (BOOL)_defaultsCurrent
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence stringForKey:@"PrefsVersion"];
  v3 = v2;
  v4 = !v2 || [v2 isEqualToString:@"2.1"];

  return v4;
}

- (id)cityFromPreferencesDictionary:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(WeatherPreferences *)self _defaultsCurrent])
  {
    v13[0] = 0x28822C008;
    v13[1] = 0x28822C028;
    v13[2] = 0x28822C048;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__WeatherPreferences_cityFromPreferencesDictionary___block_invoke;
    v11[3] = &unk_279E68990;
    v12 = v5;
    v6 = v5;
    v7 = [v4 na_filter:v11];

    v4 = v7;
  }

  v8 = [CityPersistenceConversions cityFromDictionary:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (City)localWeatherCity
{
  v3 = [(WeatherPreferencesPersistence *)self->_persistence dictionaryForKey:@"LocalWeather"];
  if (v3)
  {
    v4 = [(WeatherPreferences *)self cityFromPreferencesDictionary:v3];
    [v4 setIsLocalWeatherCity:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)saveToDiskWithLocalWeatherCity:(id)a3
{
  persistence = self->_persistence;
  v5 = [(WeatherPreferences *)self preferencesDictionaryForCity:a3];
  [(WeatherPreferencesPersistence *)persistence setObject:v5 forKey:@"LocalWeather"];

  [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
}

- (void)saveToDiskWithCity:(id)a3 forActiveIndex:(unint64_t)a4
{
  persistence = self->_persistence;
  v7 = a3;
  v8 = [(WeatherPreferencesPersistence *)persistence arrayForKey:@"Cities"];
  v12 = [v8 mutableCopy];

  v9 = [(WeatherPreferences *)self preferencesDictionaryForCity:v7];

  if (v9 && [v12 count] > a4)
  {
    [v12 replaceObjectAtIndex:a4 withObject:v9];
  }

  [(WeatherPreferencesPersistence *)self->_persistence setObject:v12 forKey:@"Cities"];
  v10 = self->_persistence;
  v11 = [MEMORY[0x277CBEAA8] date];
  [(WeatherPreferencesPersistence *)v10 setObject:v11 forKey:@"LastUpdated"];

  [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
}

- (void)saveToDiskWithCities:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[WeatherInternalPreferences sharedInternalPreferences];
  v6 = [v5 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  v7 = WALogForCategory(5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "[WeatherPreferences] AlwaysUseLocallyAvailableSavedCities = 1, do not save new cities to disk.", &v17, 2u);
    }
  }

  else
  {
    if (v8)
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_272ACF000, v7, OS_LOG_TYPE_DEFAULT, "Saving cities to disk: %@", &v17, 0xCu);
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v9 = [v4 count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = [v4 objectAtIndex:i];
        if (([v12 isLocalWeatherCity] & 1) == 0 && (objc_msgSend(v12, "isTransient") & 1) == 0)
        {
          v13 = [(WeatherPreferences *)self preferencesDictionaryForCity:v12];
          [v7 na_safeAddObject:v13];
        }
      }
    }

    [(WeatherPreferencesPersistence *)self->_persistence setObject:v7 forKey:@"Cities"];
    persistence = self->_persistence;
    v15 = [MEMORY[0x277CBEAA8] date];
    [(WeatherPreferencesPersistence *)persistence setObject:v15 forKey:@"LastUpdated"];

    [(WeatherPreferencesPersistence *)self->_persistence setObject:@"The Weather Channel" forKey:@"ServiceProvider"];
    [(WeatherPreferencesPersistence *)self->_persistence setObject:@"2.1" forKey:@"PrefsVersion"];
    [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)saveToDiskWithCities:(id)a3 activeCity:(unint64_t)a4
{
  [(WeatherPreferences *)self saveToDiskWithCities:a3];
  persistence = self->_persistence;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(WeatherPreferencesPersistence *)persistence setObject:v7 forKey:@"ActiveCity"];

  [(WeatherPreferences *)self synchronizeStateToDiskDoNotify:1];
}

- (id)_defaultCities
{
  v2 = __defaultCities;
  if (!__defaultCities)
  {
    if (_defaultCities_onceToken != -1)
    {
      [WeatherPreferences _defaultCities];
    }

    dispatch_sync(_defaultCities_ALCityManagerDispatchQueue, &__block_literal_global_109);
    v2 = __defaultCities;
  }

  return v2;
}

uint64_t __36__WeatherPreferences__defaultCities__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.weather.ALCityManagerDispatchQueue", 0);
  v1 = _defaultCities_ALCityManagerDispatchQueue;
  _defaultCities_ALCityManagerDispatchQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __36__WeatherPreferences__defaultCities__block_invoke_2()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = CFLocaleCopyCurrent();
  Value = CFLocaleGetValue(v1, *MEMORY[0x277CBEE98]);
  v3 = CFLocaleGetValue(v1, *MEMORY[0x277CBEEC8]);
  v4 = [MEMORY[0x277CEC588] sharedManager];
  v5 = [v4 defaultCitiesForLocaleCode:v3];

  if (v5 || ([MEMORY[0x277CEC588] sharedManager], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "defaultCitiesForLocaleCode:", Value), v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    if ([v5 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = [CityPersistenceConversions cityFromALCity:*(*(&v14 + 1) + 8 * v10), v14];
            [v0 na_safeAddObject:v11];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }
    }
  }

  CFRelease(v1);
  v12 = __defaultCities;
  __defaultCities = v0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setDefaultCities:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WALogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 valueForKeyPath:@"name"];
    *buf = 136315394;
    v24 = "[WeatherPreferences setDefaultCities:]";
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_INFO, "%s cities: %@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [CityPersistenceConversions cityFromALCity:v13];
            [v6 na_safeAddObject:v14];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v6 na_safeAddObject:v12];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v15 = __defaultCities;
    __defaultCities = v6;

    v3 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)loadSavedCities
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = WALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v54 = "[WeatherPreferences loadSavedCities]";
    _os_log_impl(&dword_272ACF000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = @"Cities";
  v7 = +[WeatherInternalPreferences sharedInternalPreferences];
  v8 = [v7 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  if (v8)
  {
    v9 = WALogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "[WeatherPreferences] AlwaysUseLocallyAvailableSavedCities = 1, load cities using perf cities key.", buf, 2u);
    }

    v6 = @"PerfCities";
  }

  v10 = [(WeatherPreferencesPersistence *)self->_persistence arrayForKey:v6];
  v11 = [v10 na_filter:&__block_literal_global_121];
  [v5 addObjectsFromArray:v11];

  v12 = [(WeatherPreferences *)self isLocalWeatherEnabled];
  v13 = WALogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    *buf = 138412290;
    v54 = v14;
    _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_DEFAULT, "in loadSavedCities, localWeatherEnabled=%@", buf, 0xCu);
  }

  if (v12)
  {
    v15 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"LocalWeather"];
    if (v15)
    {
      v16 = [(WeatherPreferences *)self cityFromPreferencesDictionary:v15];
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;
    [v16 setIsLocalWeatherCity:1];
    v18 = WALogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v17;
      _os_log_impl(&dword_272ACF000, v18, OS_LOG_TYPE_DEFAULT, "in loadSavedCities, local weather city = %@", buf, 0xCu);
    }

    [v4 na_safeAddObject:v17];
  }

  v19 = [MEMORY[0x277CBEB18] array];
  if (v5 && [(WeatherPreferences *)self _defaultsAreValid])
  {
    v44 = v6;
    v46 = v4;
    v20 = [MEMORY[0x277CBEB38] dictionary];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = v5;
    obj = v5;
    v21 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 20 - v12;
      v24 = *v49;
LABEL_20:
      v25 = 0;
      while (1)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = self;
        v27 = [(WeatherPreferences *)self cityFromPreferencesDictionary:*(*(&v48 + 1) + 8 * v25)];
        [v19 na_safeAddObject:v27];
        v28 = [v27 name];
        v29 = [v20 objectForKey:v28];

        if (!v29)
        {
          v29 = [MEMORY[0x277CBEB18] array];
        }

        [v29 addObject:v27];
        v30 = [v27 name];
        [v20 setObject:v29 forKey:v30];

        v31 = [v19 count];
        self = v26;
        if (v31 == v23)
        {
          break;
        }

        if (v22 == ++v25)
        {
          v22 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v22)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }

    v32 = WALogForCategory(5);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = obj;
      _os_log_impl(&dword_272ACF000, v32, OS_LOG_TYPE_DEFAULT, "Retrieved stored cities: %@", buf, 0xCu);
    }

    v33 = WALogForCategory(5);
    v4 = v46;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v19;
      _os_log_impl(&dword_272ACF000, v33, OS_LOG_TYPE_DEFAULT, "Safely add stored cities: %@", buf, 0xCu);
    }

    v34 = [(WeatherPreferences *)self citiesByConsolidatingDuplicates:v20 originalOrder:v19];

    [v46 addObjectsFromArray:v34];
    v35 = [(WeatherPreferences *)self loadActiveCity];
    if ([v46 count] <= v35)
    {
      -[WeatherPreferences setActiveCity:](self, "setActiveCity:", [v46 count] - 1);
    }

    v36 = WALogForCategory(5);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v34;
      _os_log_impl(&dword_272ACF000, v36, OS_LOG_TYPE_DEFAULT, "Return loaded cities: %@", buf, 0xCu);
    }

    v37 = v46;
    v19 = v34;
    v6 = v44;
    v5 = v45;
  }

  else
  {
    v38 = [(WeatherPreferences *)self _defaultCities];
    [v19 addObjectsFromArray:v38];

    if (![v4 count] && !objc_msgSend(v19, "count"))
    {
      v39 = objc_alloc_init(City);
      [(City *)v39 setLatitude:37.3175];
      [(City *)v39 setLongitude:-122.041944];
      [(City *)v39 setName:@"Cupertino"];
      [v4 addObject:v39];
    }

    [v4 addObjectsFromArray:v19];
    v40 = WALogForCategory(5);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v4;
      _os_log_impl(&dword_272ACF000, v40, OS_LOG_TYPE_DEFAULT, "No saved cities, and defaults are not valid. Laod new default cities: %@", buf, 0xCu);
    }

    v41 = v4;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)citiesByConsolidatingDuplicates:(id)a3 originalOrder:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v17 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __68__WeatherPreferences_citiesByConsolidatingDuplicates_originalOrder___block_invoke;
  v24[3] = &unk_279E689B8;
  v7 = v6;
  v25 = v7;
  v26 = self;
  v27 = &v28;
  [v18 enumerateKeysAndObjectsUsingBlock:v24];
  if (v29[3])
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v17;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __68__WeatherPreferences_citiesByConsolidatingDuplicates_originalOrder___block_invoke_2;
          v19[3] = &unk_279E68358;
          v19[4] = v13;
          v14 = [v7 na_firstObjectPassingTest:v19];
          if (v14)
          {
            [v8 addObject:v14];
            [v7 removeObject:v14];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:v17];
  }

  _Block_object_dispose(&v28, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __68__WeatherPreferences_citiesByConsolidatingDuplicates_originalOrder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 count] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v7 firstObject];
    [v4 addObject:v5];
  }

  else
  {
    v5 = [*(a1 + 40) citiesByConsolidatingDuplicatesInBucket:v7];
    [*(a1 + 32) addObjectsFromArray:v5];
    v6 = [v5 count];
    if (v6 != [v7 count])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (id)citiesByConsolidatingDuplicatesInBucket:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 firstObject];
  [v4 addObject:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __62__WeatherPreferences_citiesByConsolidatingDuplicatesInBucket___block_invoke;
        v14[3] = &unk_279E68358;
        v14[4] = v11;
        if (([v4 na_all:v14] & 1) == 0)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int)loadActiveCity
{
  if ([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG])
  {
    return 0;
  }

  v3 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"ActiveCity"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 intValue];

  return v5;
}

- (void)setActiveCity:(unint64_t)a3
{
  persistence = self->_persistence;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(WeatherPreferencesPersistence *)persistence setObject:v4 forKey:@"ActiveCity"];
}

- (int)loadDefaultSelectedCity
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"DefaultSelectedCity"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDefaultSelectedCity:(unint64_t)a3
{
  persistence = self->_persistence;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(WeatherPreferencesPersistence *)persistence setObject:v4 forKey:@"DefaultSelectedCity"];
}

- (void)synchronizeStateToDiskDoNotify:(BOOL)a3
{
  v3 = a3;
  [(WeatherPreferencesPersistence *)self->_persistence synchronize];
  [(WeatherPreferences *)self saveToUbiquitousStore];
  if (v3)
  {
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [WeatherPreferences synchronizeStateToDiskDoNotify:v5];
    }

    v6 = [MEMORY[0x277CCA9A0] defaultCenter];
    v7 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v7 processName];
    [v6 postNotificationName:@"WeatherGroupPrefsDidUpdateNotification" object:v8 userInfo:0 deliverImmediately:1];
  }
}

- (void)forceSyncCloudPreferences
{
  v2 = [(WeatherPreferences *)self cloudPreferences];
  [v2 forceSync];
}

- (id)UUID
{
  p_UUID = &self->_UUID;
  UUID = self->_UUID;
  if (UUID)
  {
    v4 = UUID;
    goto LABEL_9;
  }

  v6 = [(WeatherPreferencesPersistence *)self->_persistence stringForKey:@"UUID"];
  if (v6)
  {
    v7 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"UUIDTimestamp"];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
      v9 = [v7 laterDate:v8];

      if (v9 == v7)
      {
        v15 = [v6 copy];
        v16 = *p_UUID;
        *p_UUID = v15;

        v4 = *p_UUID;
        goto LABEL_8;
      }
    }
  }

  v10 = CFUUIDCreate(0);
  v11 = CFUUIDCreateString(0, v10);

  CFRelease(v10);
  objc_storeStrong(p_UUID, v11);
  [(WeatherPreferencesPersistence *)self->_persistence setObject:self->_UUID forKey:@"UUID"];
  persistence = self->_persistence;
  v13 = [MEMORY[0x277CBEAA8] date];
  [(WeatherPreferencesPersistence *)persistence setObject:v13 forKey:@"UUIDTimestamp"];

  v4 = self->_UUID;
  v6 = v11;
LABEL_8:

LABEL_9:

  return v4;
}

- (id)_cacheDirectoryPath
{
  cacheDirectoryPath = self->_cacheDirectoryPath;
  if (!cacheDirectoryPath)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 userLibraryDirectory];
    v6 = [v5 stringByAppendingPathComponent:@"Caches/Weather"];
    v7 = self->_cacheDirectoryPath;
    self->_cacheDirectoryPath = v6;

    cacheDirectoryPath = self->_cacheDirectoryPath;
  }

  return cacheDirectoryPath;
}

+ (id)readInternalDefaultValueForKey:(id)a3
{
  v3 = a3;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (id)readInternalDefaultValueForKey:(id)a3
{
  v3 = a3;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (BOOL)isLocalWeatherEnabled
{
  v2 = [(WeatherPreferencesPersistence *)self->_persistence objectForKey:@"LocalWeatherEnabledKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)serviceDebuggingPath
{
  if (serviceDebuggingPath_onceToken != -1)
  {
    +[WeatherPreferences serviceDebuggingPath];
  }

  v3 = serviceDebuggingPath_debuggingPath;

  return v3;
}

void __42__WeatherPreferences_serviceDebuggingPath__block_invoke()
{
  v0 = [*MEMORY[0x277D76620] userLibraryDirectory];
  v6 = [v0 stringByAppendingPathComponent:@"Weather"];

  v1 = [MEMORY[0x277CCAA00] defaultManager];
  [v1 _web_createDirectoryAtPathWithIntermediateDirectories:v6 attributes:0];

  v2 = [v6 stringByAppendingPathComponent:@"ServiceDebugging"];
  v3 = [v2 stringByResolvingSymlinksInPath];
  v4 = [v3 copy];
  v5 = serviceDebuggingPath_debuggingPath;
  serviceDebuggingPath_debuggingPath = v4;
}

- (void)resetLocale
{
  v2 = __defaultCities;
  __defaultCities = 0;
}

- (void)_clearCachedObjects
{
  cacheDirectoryPath = self->_cacheDirectoryPath;
  self->_cacheDirectoryPath = 0;

  [(WeatherPreferences *)self resetLocale];
}

- (void)saveToUbiquitousStore
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 BOOLForKey:@"AlwaysUseLocallyAvailableSavedCities"];

  if (v4)
  {
    v5 = WALogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "[WeatherPreferences] AlwaysUseLocallyAvailableSavedCities = 1, do not save new cities to ubiquitous store.", buf, 2u);
    }
  }

  else
  {
    v7 = [(WeatherPreferences *)self cloudPreferences];
    v6 = [(WeatherPreferences *)self loadSavedCities];
    [v7 saveCitiesToCloud:v6];
  }
}

- (BOOL)areCitiesDefault:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WeatherPreferences *)self _defaultCities];
  v6 = [v4 count];
  v27 = v5;
  if (v6 == [v5 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = v4;
      LODWORD(v9) = 0;
      v10 = *v29;
      v11 = *MEMORY[0x277D7B1F0];
      v12 = *MEMORY[0x277D7B1F8];
      while (2)
      {
        v13 = 0;
        v9 = v9;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          v15 = [v27 objectAtIndex:v9];
          v16 = [v14 objectForKeyedSubscript:v11];
          [v16 floatValue];
          v18 = v17;
          v19 = [v14 objectForKeyedSubscript:v12];
          [v19 floatValue];
          v21 = [v15 containsLatitude:v18 longitude:v20];

          if (!v21)
          {
            v22 = 0;
            goto LABEL_13;
          }

          ++v9;
          ++v13;
        }

        while (v8 != v13);
        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v22 = 1;
LABEL_13:
      v4 = v25;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)temperatureUnitObserver:(id)a3 didChangeTemperatureUnitTo:(int)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = @"kWeatherPrefsUpdateNotificationKey";
  v6 = NSStringFromWFTemperatureUnit();
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 postNotificationName:@"kWeatherPrefsDidUpdateUserTemperatureUnit" object:self userInfo:v7];

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)performUpgradeOfPersistence:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = objc_opt_new();
    }

    if (performUpgradeOfPersistence_fileManager_error__onceToken != -1)
    {
      +[WeatherPreferences performUpgradeOfPersistence:fileManager:error:];
    }

    *v27 = 0;
    v28 = v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__3;
    v31 = __Block_byref_object_dispose__3;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v10 = WALogForCategory(14);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v10, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Performing Weather migration from the WeatherPreferences...if needed", buf, 2u);
    }

    v11 = performUpgradeOfPersistence_fileManager_error__migrationQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150;
    v17[3] = &unk_279E68A50;
    v9 = v9;
    v18 = v9;
    v20 = v27;
    v21 = &v23;
    v19 = v7;
    dispatch_sync(v11, v17);
    if (a5)
    {
      v12 = *(v28 + 5);
      if (v12)
      {
        *a5 = v12;
      }
    }

    LOBYTE(a5) = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(v27, 8);
  }

  else
  {
    v13 = WALogForCategory(14);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_272ACF000, v13, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - failed to update persistence.", v27, 2u);
    }

    if (a5)
    {
      v33 = *MEMORY[0x277CCA450];
      v34[0] = @"persistence was nil; can't upgrade it";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:3 userInfo:v14];

      LOBYTE(a5) = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return a5 & 1;
}

uint64_t __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.WeatherApp.migrationQueue", 0);
  v1 = performUpgradeOfPersistence_fileManager_error__migrationQueue;
  performUpgradeOfPersistence_fileManager_error__migrationQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150(uint64_t a1)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

  v4 = WALogForCategory(14);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v78 = v3;
      _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - groupContainers: %@", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Preferences/com.apple.weather.plist"];
    v6 = [(__CFString *)v3 URLByAppendingPathComponent:@"Library/Preferences/"];
    v7 = [(__CFString *)v3 URLByAppendingPathComponent:@"Library/Preferences/group.com.apple.weather.plist"];
    v8 = WALogForCategory(14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v4;
      _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - source: %@", buf, 0xCu);
    }

    v9 = WALogForCategory(14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v7;
      _os_log_impl(&dword_272ACF000, v9, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - destination: %@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [v4 path];
    LODWORD(v10) = [v10 fileExistsAtPath:v11];

    if (v10)
    {
      v12 = *(a1 + 32);
      v13 = [(__CFString *)v7 path];
      LOBYTE(v12) = [v12 fileExistsAtPath:v13];

      if (v12)
      {
        v14 = WALogForCategory(14);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v14, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - destination file is already present, don't overwrite", buf, 2u);
        }

        v15 = 0;
      }

      else
      {
        v16 = *(a1 + 32);
        v76 = 0;
        v17 = [v16 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v76];
        v18 = v76;
        v19 = WALogForCategory(14);
        v20 = v19;
        if (v17)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v78 = v6;
            _os_log_impl(&dword_272ACF000, v20, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - succeeded to create destination folder %@", buf, 0xCu);
          }

          v21 = *(a1 + 32);
          v75 = v18;
          v22 = [v21 copyItemAtURL:v4 toURL:v7 error:&v75];
          v15 = v75;

          v23 = WALogForCategory(14);
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_272ACF000, v24, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - succeeded to copyItemAtURL", buf, 2u);
            }

            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          else
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_2(v15, v24);
            }

            v85 = *MEMORY[0x277CCA450];
            v86[0] = @"failed copyItemAtURL";
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
            v15 = v15;
            v32 = v31;
            if (v15)
            {
              if (v31)
              {
                v33 = v31;
              }

              else
              {
                v33 = MEMORY[0x277CBEC10];
              }

              v32 = [v33 mutableCopy];
              [v32 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
            }

            v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:2 userInfo:v32];

            v35 = *(*(a1 + 48) + 8);
            v36 = *(v35 + 40);
            *(v35 + 40) = v34;
          }
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_1(v18, v20);
          }

          v83 = *MEMORY[0x277CCA450];
          v84 = @"failed to create destination folder";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v15 = v18;
          v26 = v25;
          if (v15)
          {
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              v27 = MEMORY[0x277CBEC10];
            }

            v26 = [v27 mutableCopy];
            [v26 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
          }

          v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:2 userInfo:v26];

          v29 = *(*(a1 + 48) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;
        }
      }

      v37 = WALogForCategory(14);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v37, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - removing source file", buf, 2u);
      }

      [*(a1 + 32) removeItemAtURL:v4 error:0];
    }

    else
    {
      v15 = WALogForCategory(14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272ACF000, v15, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - source file does not exist, nothing to do", buf, 2u);
      }
    }
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_272ACF000, v4, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - no groupContainers", buf, 2u);
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v38 = WALogForCategory(14);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = @"Celsius";
      _os_log_impl(&dword_272ACF000, v38, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Moving Prefs key '%@' (representing BOOL of whether user temperature unit is celsius or fahrenheit) to new NSLocale API", buf, 0xCu);
    }

    v39 = [*(a1 + 40) objectForKey:@"Celsius"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 BOOLValue];
      v42 = MEMORY[0x277CBE708];
      if (!v41)
      {
        v42 = MEMORY[0x277CBE710];
      }

      v43 = *v42;
      [MEMORY[0x277CBEAF8] _setPreferredTemperatureUnit:v43];
      CFPreferencesAppSynchronize(*MEMORY[0x277CBF008]);
      [*(a1 + 40) removeObjectForKey:@"Celsius"];
      v44 = WALogForCategory(14);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v78 = @"Celsius";
        v79 = 2112;
        v80 = v40;
        v81 = 2112;
        v82 = v43;
        _os_log_impl(&dword_272ACF000, v44, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Migrated key '%@' (%@) NSLocale API value (%@).", buf, 0x20u);
      }
    }

    else
    {
      v43 = WALogForCategory(14);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = @"Celsius";
        _os_log_impl(&dword_272ACF000, v43, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Skipping key '%@' migration to NSLocale API -- must have already been migrated or doesn't exist.", buf, 0xCu);
      }
    }

    v45 = [*(a1 + 40) stringForKey:@"PrefsVersion"];
    v46 = v45;
    if (v45)
    {
      [v45 doubleValue];
      v48 = v47;
      [@"2.1" doubleValue];
      v50 = v49;
      v51 = WALogForCategory(14);
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
      if (v48 < v50)
      {
        if (v52)
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v51, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - Updating to 2.1..", buf, 2u);
        }

        v51 = [MEMORY[0x277CBEB18] array];
        v53 = [*(a1 + 40) arrayForKey:@"Cities"];
        v54 = [v53 na_filter:&__block_literal_global_170];
        [v51 addObjectsFromArray:v54];

        v55 = [v51 mutableCopy];
        v56 = [*(a1 + 40) objectForKey:@"LocalWeather"];
        if (v56 && [CityPersistenceConversions cityDictionaryHasValidCoordinates:v56])
        {
          [v55 addObject:v56];
        }

        v57 = [v55 copy];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3;
        v71[3] = &unk_279E68A28;
        v58 = *(a1 + 48);
        v73 = &__block_literal_global_173;
        v74 = v58;
        v59 = v55;
        v72 = v59;
        [v57 enumerateObjectsUsingBlock:v71];

        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v60 = v59;
          v61 = v60;
          if (v56 && [v60 count])
          {
            v70 = [v61 lastObject];

            v69 = [v61 subarrayWithRange:{0, objc_msgSend(v61, "count") - 1}];

            v56 = v70;
            [*(a1 + 40) setObject:v70 forKey:@"LocalWeather"];
            v61 = v69;
          }

          [*(a1 + 40) setObject:v61 forKey:@"Cities"];
          v62 = *(a1 + 40);
          v63 = [MEMORY[0x277CBEAA8] date];
          [v62 setObject:v63 forKey:@"LastUpdated"];

          [*(a1 + 40) setObject:@"2.1" forKey:@"PrefsVersion"];
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        v64 = WALogForCategory(14);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = [*(a1 + 40) stringForKey:@"PrefsVersion"];
          [v65 doubleValue];
          *buf = 134217984;
          v78 = v66;
          _os_log_impl(&dword_272ACF000, v64, OS_LOG_TYPE_DEFAULT, "WeatherPreferences _performMigration - finished persistence upgrade from version: %f", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v52)
      {
        *buf = 0;
        v67 = "WeatherPreferences _performMigration - Prefs are more up to date than this migrator knows how to handle.  Bailing.";
        goto LABEL_74;
      }
    }

    else
    {
      v51 = WALogForCategory(14);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v67 = "WeatherPreferences _performMigration - First boot scenario; bailing from migration.";
LABEL_74:
        _os_log_impl(&dword_272ACF000, v51, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
      }
    }

LABEL_75:
  }

  v68 = *MEMORY[0x277D85DE8];
}

uint64_t __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [v6 objectForKey:v7];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          [v8 doubleValue];
          v10 = [objc_alloc(MEMORY[0x277D7B2C0]) initWithTemperatureUnit:2 value:v9];
          v11 = [CityPersistenceConversions dictionaryRepresentationOfTemperature:v10];
          [v6 setObject:v11 forKeyedSubscript:v7];

          v12 = 1;
LABEL_12:

          goto LABEL_13;
        }

        if (a4)
        {
          v17[0] = @"key";
          v17[1] = @"value";
          v18[0] = v7;
          v18[1] = v8;
          v17[2] = @"container";
          v13 = [v6 copy];
          v18[2] = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:v14];
        }
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:4 userInfo:0];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v40 = a2;
  v5 = [v40 mutableCopy];
  v6 = MEMORY[0x277CBEB98];
  v69[0] = 0x28822C648;
  v69[1] = 0x28822C1C8;
  v69[2] = 0x28822C7A8;
  v69[3] = 0x28822C7C8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
  v8 = [v6 setWithArray:v7];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v8;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v11)
  {
    v12 = *v60;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v15 = *(a1 + 40);
        v16 = *(*(a1 + 48) + 8);
        obj = *(v16 + 40);
        v17 = (*(v15 + 16))();
        objc_storeStrong((v16 + 40), obj);
        if (v17)
        {
          v10 = 1;
        }

        else if (*(*(*(a1 + 48) + 8) + 40))
        {
          *a4 = 1;

          goto LABEL_32;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v18 = MEMORY[0x277CBEB98];
  v67[0] = 0x28822C848;
  v67[1] = 0x28822C788;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v20 = [v18 setWithArray:v19];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = v20;
  v21 = [v41 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v21)
  {
    v22 = *v51;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v41);
        }

        v24 = *(*(&v50 + 1) + 8 * j);
        v25 = [v5 objectForKeyedSubscript:v24];
        v26 = [v25 mutableCopy];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = WALogForCategory(14);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3_cold_1(v33, buf, v31);
          }

          v63 = *MEMORY[0x277CCA470];
          v64 = @"Container class was of incorrect class type";
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.errorDomain" code:3 userInfo:v34];

          v36 = *(*(a1 + 48) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = v35;

          *a4 = 1;
          goto LABEL_31;
        }

        v27 = [v26 copy];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_190;
        v43[3] = &unk_279E68A00;
        v44 = v9;
        v28 = *(a1 + 40);
        v29 = *(a1 + 48);
        v46 = v28;
        v47 = v29;
        v30 = v26;
        v45 = v30;
        v48 = &v54;
        v49 = a4;
        [v27 enumerateObjectsUsingBlock:v43];

        if (*(*(*(a1 + 48) + 8) + 40))
        {

          goto LABEL_28;
        }

        if (*(v55 + 24) == 1)
        {
          [v5 setObject:v30 forKeyedSubscript:v24];
        }
      }

      v21 = [v41 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if ((v10 & 1) != 0 || *(v55 + 24) == 1)
  {
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
  }

LABEL_31:

  _Block_object_dispose(&v54, 8);
LABEL_32:

  v38 = *MEMORY[0x277D85DE8];
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_190(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [a2 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = *(*(a1 + 56) + 8);
        obj = *(v13 + 40);
        v14 = (*(*(a1 + 48) + 16))();
        objc_storeStrong((v13 + 40), obj);
        if (v14)
        {
          [*(a1 + 40) setObject:v6 atIndexedSubscript:a3];
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }

        if (*(*(*(a1 + 56) + 8) + 40))
        {
          **(a1 + 72) = 1;
          *a4 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (SynchronizedDefaultsDelegate)syncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_syncDelegate);

  return WeakRetained;
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "WeatherPreferences _performMigration - failed to create destination folder %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_150_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "WeatherPreferences _performMigration - failed copyItemAtURL %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __68__WeatherPreferences_performUpgradeOfPersistence_fileManager_error___block_invoke_3_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272ACF000, log, OS_LOG_TYPE_ERROR, "WeatherPreferences migration observed an unexpected class while upgrading temperature; should've received an NSArray, instead encountered a %@", buf, 0xCu);
}

@end