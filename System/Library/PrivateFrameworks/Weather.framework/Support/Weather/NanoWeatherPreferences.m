@interface NanoWeatherPreferences
+ (NanoWeatherPreferences)sharedPreferences;
- (NSDate)lastUpdated;
- (NSString)userIdentifier;
- (NanoWeatherPreferences)init;
- (id)cityList;
- (id)cityObjectsListFromNanoPreferences;
- (id)nanoPreferencesDictionaryForCity:(id)a3;
- (void)setCity:(id)a3 atIndex:(unint64_t)a4 lastUpdated:(id)a5;
- (void)setCityList:(id)a3 lastUpdated:(id)a4;
- (void)setCityListFromCityObjs:(id)a3 lastUpdated:(id)a4;
- (void)setUserIdentifier:(id)a3;
- (void)syncPreferencesToNano;
- (void)syncPreferencesWithDisk;
@end

@implementation NanoWeatherPreferences

+ (NanoWeatherPreferences)sharedPreferences
{
  if (qword_1000114A0 != -1)
  {
    sub_100005EE0();
  }

  v3 = qword_100011498;

  return v3;
}

- (NanoWeatherPreferences)init
{
  v8.receiver = self;
  v8.super_class = NanoWeatherPreferences;
  v2 = [(NanoWeatherPreferences *)&v8 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.nanoweatherprefs"];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v3;

    v5 = objc_alloc_init(NSMutableSet);
    keysToSync = v2->_keysToSync;
    v2->_keysToSync = v5;
  }

  return v2;
}

- (void)syncPreferencesToNano
{
  if ([(NSMutableSet *)self->_keysToSync count])
  {
    v3 = objc_opt_new();
    v4 = sub_1000010B8(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSMutableSet *)self->_keysToSync allObjects];
      v6 = [v5 componentsJoinedByString:{@", "}];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Synchronizing %{public}@ to watch.", &v8, 0xCu);
    }

    v7 = [(NanoWeatherPreferences *)self sharedDefaults];
    [v7 synchronize];

    [v3 synchronizeUserDefaultsDomain:@"com.apple.nanoweatherprefs" keys:self->_keysToSync];
    [(NSMutableSet *)self->_keysToSync removeAllObjects];
  }
}

- (void)syncPreferencesWithDisk
{
  v2 = [(NanoWeatherPreferences *)self sharedDefaults];
  [v2 synchronize];
}

- (void)setCityListFromCityObjs:(id)a3 lastUpdated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v14 isLocalWeatherCity] & 1) == 0)
        {
          v15 = [(NanoWeatherPreferences *)self nanoPreferencesDictionaryForCity:v14];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(NanoWeatherPreferences *)self setCityList:v8 lastUpdated:v7];
}

- (void)setCityList:(id)a3 lastUpdated:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = [(NanoWeatherPreferences *)self cityList];
    if (([v14 isEqualToArray:v7] & 1) == 0)
    {
      v8 = [(NanoWeatherPreferences *)self sharedDefaults];
      [v8 setObject:v14 forKey:@"Cities"];

      v9 = [(NanoWeatherPreferences *)self keysToSync];
      [v9 addObject:@"Cities"];

      v10 = [(NanoWeatherPreferences *)self sharedDefaults];
      v11 = v10;
      if (v6)
      {
        [v10 setObject:v6 forKey:@"LastUpdated"];
      }

      else
      {
        v12 = +[NSDate date];
        [v11 setObject:v12 forKey:@"LastUpdated"];
      }

      v13 = [(NanoWeatherPreferences *)self keysToSync];
      [v13 addObject:@"LastUpdated"];
    }
  }
}

- (void)setCity:(id)a3 atIndex:(unint64_t)a4 lastUpdated:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NanoWeatherPreferences *)self cityList];
  v11 = [NSMutableArray arrayWithArray:v10];

  [v11 setObject:v9 atIndexedSubscript:a4];
  [(NanoWeatherPreferences *)self setCityList:v11 lastUpdated:v8];
}

- (id)cityList
{
  v2 = [(NanoWeatherPreferences *)self sharedDefaults];
  v3 = [v2 arrayForKey:@"Cities"];

  return v3;
}

- (id)cityObjectsListFromNanoPreferences
{
  v2 = [(NanoWeatherPreferences *)self cityList];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [[City alloc] initWithDictionaryRepresentation:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = sub_1000010B8(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v9 allKeys];
            *buf = 138543362;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Couldn't create a City object from the city dictionary. The dictionary may be missing required values. Keys present in the dictionary: %{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)nanoPreferencesDictionaryForCity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 locationID];
    v6 = v5;
    v7 = &stru_10000C9E0;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &stru_10000C9E0;
    }

    v9 = v8;

    if ([v4 isLocalWeatherCity])
    {
      v10 = kLocalWeatherCityID;

      v9 = v10;
    }

    v11 = [v4 name];
    v12 = v11;
    if (v11)
    {
      v7 = v11;
    }

    [v4 latitude];
    v13 = [NSNumber numberWithDouble:?];
    [v4 longitude];
    v14 = [NSNumber numberWithDouble:?];
    v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v7, @"Name", v13, @"Lat", v14, @"Lon", v9, @"UUID", 0];

    v16 = [v4 ISO3166CountryAbbreviation];

    if (v16)
    {
      v17 = [v4 ISO3166CountryAbbreviation];
      [v15 setObject:v17 forKey:@"CountryAbbreviation"];
    }

    else
    {
      v17 = sub_1000010B8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 name];
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to find country abbreviation for %@.", buf, 0xCu);
      }
    }

    v19 = [v4 timeZone];

    if (v19)
    {
      v20 = [v4 timeZone];
      v21 = [v20 name];
      [v15 setObject:v21 forKey:@"TimeZone"];

      v22 = [v4 timeZoneUpdateDate];

      if (v22)
      {
        [v4 timeZoneUpdateDate];
      }

      else
      {
        +[NSDate distantPast];
      }
      v23 = ;
      [v15 setObject:v23 forKey:@"TimeZoneLastUpdated"];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDate)lastUpdated
{
  v2 = [(NanoWeatherPreferences *)self sharedDefaults];
  v3 = [v2 objectForKey:@"LastUpdated"];

  return v3;
}

- (void)setUserIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NanoWeatherPreferences *)self sharedDefaults];
  [v5 setObject:v4 forKey:@"UserIdentifier"];

  v6 = [(NanoWeatherPreferences *)self keysToSync];
  [v6 addObject:@"UserIdentifier"];
}

- (NSString)userIdentifier
{
  v2 = [(NanoWeatherPreferences *)self sharedDefaults];
  v3 = [v2 stringForKey:@"UserIdentifier"];

  return v3;
}

@end