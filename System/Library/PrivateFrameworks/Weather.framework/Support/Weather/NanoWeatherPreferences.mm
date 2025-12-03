@interface NanoWeatherPreferences
+ (NanoWeatherPreferences)sharedPreferences;
- (NSDate)lastUpdated;
- (NSString)userIdentifier;
- (NanoWeatherPreferences)init;
- (id)cityList;
- (id)cityObjectsListFromNanoPreferences;
- (id)nanoPreferencesDictionaryForCity:(id)city;
- (void)setCity:(id)city atIndex:(unint64_t)index lastUpdated:(id)updated;
- (void)setCityList:(id)list lastUpdated:(id)updated;
- (void)setCityListFromCityObjs:(id)objs lastUpdated:(id)updated;
- (void)setUserIdentifier:(id)identifier;
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
      allObjects = [(NSMutableSet *)self->_keysToSync allObjects];
      v6 = [allObjects componentsJoinedByString:{@", "}];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Synchronizing %{public}@ to watch.", &v8, 0xCu);
    }

    sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
    [sharedDefaults synchronize];

    [v3 synchronizeUserDefaultsDomain:@"com.apple.nanoweatherprefs" keys:self->_keysToSync];
    [(NSMutableSet *)self->_keysToSync removeAllObjects];
  }
}

- (void)syncPreferencesWithDisk
{
  sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
  [sharedDefaults synchronize];
}

- (void)setCityListFromCityObjs:(id)objs lastUpdated:(id)updated
{
  objsCopy = objs;
  updatedCopy = updated;
  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = objsCopy;
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

  [(NanoWeatherPreferences *)self setCityList:v8 lastUpdated:updatedCopy];
}

- (void)setCityList:(id)list lastUpdated:(id)updated
{
  listCopy = list;
  updatedCopy = updated;
  if (listCopy)
  {
    cityList = [(NanoWeatherPreferences *)self cityList];
    if (([listCopy isEqualToArray:cityList] & 1) == 0)
    {
      sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
      [sharedDefaults setObject:listCopy forKey:@"Cities"];

      keysToSync = [(NanoWeatherPreferences *)self keysToSync];
      [keysToSync addObject:@"Cities"];

      sharedDefaults2 = [(NanoWeatherPreferences *)self sharedDefaults];
      v11 = sharedDefaults2;
      if (updatedCopy)
      {
        [sharedDefaults2 setObject:updatedCopy forKey:@"LastUpdated"];
      }

      else
      {
        v12 = +[NSDate date];
        [v11 setObject:v12 forKey:@"LastUpdated"];
      }

      keysToSync2 = [(NanoWeatherPreferences *)self keysToSync];
      [keysToSync2 addObject:@"LastUpdated"];
    }
  }
}

- (void)setCity:(id)city atIndex:(unint64_t)index lastUpdated:(id)updated
{
  updatedCopy = updated;
  cityCopy = city;
  cityList = [(NanoWeatherPreferences *)self cityList];
  v11 = [NSMutableArray arrayWithArray:cityList];

  [v11 setObject:cityCopy atIndexedSubscript:index];
  [(NanoWeatherPreferences *)self setCityList:v11 lastUpdated:updatedCopy];
}

- (id)cityList
{
  sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
  v3 = [sharedDefaults arrayForKey:@"Cities"];

  return v3;
}

- (id)cityObjectsListFromNanoPreferences
{
  cityList = [(NanoWeatherPreferences *)self cityList];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(cityList, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = cityList;
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
            allKeys = [v9 allKeys];
            *buf = 138543362;
            v20 = allKeys;
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

- (id)nanoPreferencesDictionaryForCity:(id)city
{
  cityCopy = city;
  v4 = cityCopy;
  if (cityCopy)
  {
    locationID = [cityCopy locationID];
    v6 = locationID;
    v7 = &stru_10000C9E0;
    if (locationID)
    {
      v8 = locationID;
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

    name = [v4 name];
    v12 = name;
    if (name)
    {
      v7 = name;
    }

    [v4 latitude];
    v13 = [NSNumber numberWithDouble:?];
    [v4 longitude];
    v14 = [NSNumber numberWithDouble:?];
    v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v7, @"Name", v13, @"Lat", v14, @"Lon", v9, @"UUID", 0];

    iSO3166CountryAbbreviation = [v4 ISO3166CountryAbbreviation];

    if (iSO3166CountryAbbreviation)
    {
      iSO3166CountryAbbreviation2 = [v4 ISO3166CountryAbbreviation];
      [v15 setObject:iSO3166CountryAbbreviation2 forKey:@"CountryAbbreviation"];
    }

    else
    {
      iSO3166CountryAbbreviation2 = sub_1000010B8(0);
      if (os_log_type_enabled(iSO3166CountryAbbreviation2, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v4 name];
        *buf = 138412290;
        v26 = name2;
        _os_log_impl(&_mh_execute_header, iSO3166CountryAbbreviation2, OS_LOG_TYPE_DEFAULT, "Unable to find country abbreviation for %@.", buf, 0xCu);
      }
    }

    timeZone = [v4 timeZone];

    if (timeZone)
    {
      timeZone2 = [v4 timeZone];
      name3 = [timeZone2 name];
      [v15 setObject:name3 forKey:@"TimeZone"];

      timeZoneUpdateDate = [v4 timeZoneUpdateDate];

      if (timeZoneUpdateDate)
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
  sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
  v3 = [sharedDefaults objectForKey:@"LastUpdated"];

  return v3;
}

- (void)setUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
  [sharedDefaults setObject:identifierCopy forKey:@"UserIdentifier"];

  keysToSync = [(NanoWeatherPreferences *)self keysToSync];
  [keysToSync addObject:@"UserIdentifier"];
}

- (NSString)userIdentifier
{
  sharedDefaults = [(NanoWeatherPreferences *)self sharedDefaults];
  v3 = [sharedDefaults stringForKey:@"UserIdentifier"];

  return v3;
}

@end