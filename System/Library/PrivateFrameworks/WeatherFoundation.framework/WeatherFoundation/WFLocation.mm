@interface WFLocation
+ (id)locationsByConsolidatingDuplicates:(id)a3 originalOrder:(id)a4;
+ (id)locationsByConsolidatingDuplicatesInBucket:(id)a3;
+ (id)locationsByFilteringDuplicates:(id)a3;
- (BOOL)isDay;
- (BOOL)isDayForDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsGeocoding;
- (BOOL)shouldQueryForAirQualityData;
- (NSString)displayName;
- (NSString)locationID;
- (NSString)wf_weatherChannelGeocodeValue;
- (WFLocation)initWithCloudDictionaryRepresentation:(id)a3;
- (WFLocation)initWithCoder:(id)a3;
- (WFLocation)initWithLocalDataRepresentation:(id)a3;
- (WFLocation)initWithMapItem:(id)a3 isCurrentLocation:(BOOL)a4;
- (WFLocation)initWithPlacemark:(id)a3;
- (WFLocation)initWithSearchResponse:(id)a3;
- (id)_sunAlmanacForDate:(id)a3;
- (id)cloudDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)summaryThatIsCompact:(BOOL)a3;
- (id)sunriseForDate:(id)a3;
- (id)sunsetForDate:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setGeoLocation:(id)a3;
- (void)sunrise:(id *)a3 andSunset:(id *)a4 forDate:(id)a5;
@end

@implementation WFLocation

- (WFLocation)initWithSearchResponse:(id)a3
{
  v4 = [a3 mapItems];
  v5 = [v4 firstObject];

  v6 = [(WFLocation *)self initWithMapItem:v5];
  return v6;
}

- (WFLocation)initWithMapItem:(id)a3 isCurrentLocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [v6 placemark];
  self = [(WFLocation *)self initWithPlacemark:v8];

  if (self)
  {
    v9 = [v7 timeZone];
    if (!v9 && v4)
    {
      v9 = [MEMORY[0x277CBEBB0] localTimeZone];
    }

    objc_storeStrong(&self->_timeZone, v9);
    if (self->_timeZone)
    {
      v10 = [v7 _weatherDisplayName];
      v11 = [v10 copy];
      weatherDisplayName = self->_weatherDisplayName;
      self->_weatherDisplayName = v11;

      v13 = [v7 _weatherLocationName];
      v14 = [v13 copy];
      weatherLocationName = self->_weatherLocationName;
      self->_weatherLocationName = v14;

      goto LABEL_8;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

LABEL_8:
  self = self;
  v16 = self;
LABEL_11:

  return v16;
}

- (WFLocation)initWithPlacemark:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v32.receiver = self;
    v32.super_class = WFLocation;
    v5 = [(WFLocation *)&v32 init];
    if (v5)
    {
      v6 = [v4 location];
      v7 = [v6 copy];
      geoLocation = v5->_geoLocation;
      v5->_geoLocation = v7;

      v9 = WFLocationNameForPlacemark(v4);
      displayName = v5->_displayName;
      v5->_displayName = v9;

      v11 = [v4 locality];
      v12 = [v11 copy];
      city = v5->_city;
      v5->_city = v12;

      v14 = [v4 subAdministrativeArea];
      v15 = [v14 copy];
      county = v5->_county;
      v5->_county = v15;

      v17 = [v4 administrativeArea];
      v18 = [v17 copy];
      state = v5->_state;
      v5->_state = v18;

      v20 = [v4 country];
      v21 = [v20 copy];
      country = v5->_country;
      v5->_country = v21;

      v23 = [v4 ISOcountryCode];
      v24 = [v23 copy];
      countryAbbreviation = v5->_countryAbbreviation;
      v5->_countryAbbreviation = v24;

      v5->_archiveVersion = [objc_opt_class() currentArchiveVersion];
      v26 = [MEMORY[0x277CBEAA8] date];
      creationDate = v5->_creationDate;
      v5->_creationDate = v26;

      v28 = WFLogForCategory(3uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(WFLocation *)v5 description];
        *buf = 138412290;
        v34 = v29;
        _os_log_impl(&dword_272B94000, v28, OS_LOG_TYPE_DEFAULT, "Initialized a new location: %@", buf, 0xCu);
      }
    }

    self = v5;
    v30 = self;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(WFLocation *)self city];
    v7 = [v5 city];
    if ([v6 isEqualToString:v7])
    {
      v8 = 30000.0;
    }

    else
    {
      v10 = [(WFLocation *)self city];
      if (v10)
      {
        v8 = 5000.0;
      }

      else
      {
        v11 = [v5 city];
        v8 = dbl_272BE4D20[v11 == 0];
      }
    }

    v12 = [(WFLocation *)self geoLocation];
    v13 = [v5 geoLocation];
    v9 = [v12 wf_isEquivalentToLocation:v13 tolerance:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(WFLocation *)self geoLocation];
  v3 = [v2 hash];

  return v3;
}

- (id)summaryThatIsCompact:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <0x%x>", objc_opt_class(), self];
  [v5 appendString:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [objc_opt_class() knownKeys];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    if (v3)
    {
      v11 = @" %@:%@";
    }

    else
    {
      v11 = @"\n      %@ : %@";
    }

    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(WFLocation *)self valueForKey:v13];
        v15 = v14;
        if (v14)
        {
          [v5 appendFormat:v11, v13, v14, v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v5;
}

- (BOOL)needsGeocoding
{
  v3 = [(WFLocation *)self countryAbbreviation];
  if (v3)
  {
    v4 = [(WFLocation *)self timeZone];
    if (v4)
    {
      v5 = [(WFLocation *)self weatherDisplayName];
      if (v5)
      {
        v6 = [(WFLocation *)self weatherLocationName];
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(WFLocation *)self city];
  [v17 encodeObject:v4 forKey:@"WFLocationCodingCity"];

  v5 = [(WFLocation *)self county];
  [v17 encodeObject:v5 forKey:@"WFLocationCodingCounty"];

  v6 = [(WFLocation *)self state];
  [v17 encodeObject:v6 forKey:@"WFLocationCodingState"];

  v7 = [(WFLocation *)self stateAbbreviation];
  [v17 encodeObject:v7 forKey:@"WFLocationCodingStateAbbreviation"];

  v8 = [(WFLocation *)self country];
  [v17 encodeObject:v8 forKey:@"WFLocationCodingCountry"];

  v9 = [(WFLocation *)self countryAbbreviation];
  [v17 encodeObject:v9 forKey:@"WFLocationCodingCountryAbbreviation"];

  v10 = [(WFLocation *)self geoLocation];
  [v17 encodeObject:v10 forKey:@"WFLocationCodingGeoLocation"];

  v11 = [(WFLocation *)self locationID];
  [v17 encodeObject:v11 forKey:@"WFLocationCodingLocationID"];

  v12 = [(WFLocation *)self timeZone];
  [v17 encodeObject:v12 forKey:@"WFLocationCodingTimeZone"];

  v13 = [(WFLocation *)self creationDate];
  [v17 encodeObject:v13 forKey:@"WFLocationCodingCreationDate"];

  v14 = [(WFLocation *)self displayName];
  [v17 encodeObject:v14 forKey:@"WFLocationDisplayName"];

  v15 = [(WFLocation *)self weatherDisplayName];
  [v17 encodeObject:v15 forKey:@"WFLocationWeatherDisplayNameKey"];

  v16 = [(WFLocation *)self weatherLocationName];
  [v17 encodeObject:v16 forKey:@"WFLocationWeatherLacationName"];

  [v17 encodeInteger:-[WFLocation archiveVersion](self forKey:{"archiveVersion"), @"WFLocationArchiveVersion"}];
}

- (WFLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = WFLocation;
  v5 = [(WFLocation *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCity"];
    city = v5->_city;
    v5->_city = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCounty"];
    county = v5->_county;
    v5->_county = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingState"];
    state = v5->_state;
    v5->_state = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingStateAbbreviation"];
    stateAbbreviation = v5->_stateAbbreviation;
    v5->_stateAbbreviation = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCountry"];
    country = v5->_country;
    v5->_country = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCountryAbbreviation"];
    countryAbbreviation = v5->_countryAbbreviation;
    v5->_countryAbbreviation = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingGeoLocation"];
    geoLocation = v5->_geoLocation;
    v5->_geoLocation = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingLocationID"];
    locationID = v5->_locationID;
    v5->_locationID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingTimeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationWeatherDisplayNameKey"];
    weatherDisplayName = v5->_weatherDisplayName;
    v5->_weatherDisplayName = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationWeatherLacationName"];
    weatherLocationName = v5->_weatherLocationName;
    v5->_weatherLocationName = v30;

    v32 = [v4 decodeIntegerForKey:@"WFLocationArchiveVersion"];
    v5->_archiveVersion = v32;
    if (!v32)
    {
      v32 = [objc_opt_class() currentArchiveVersion];
    }

    v5->_archiveVersion = v32;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(WFLocation *)self city];
  [v4 setCity:v5];

  v6 = [(WFLocation *)self state];
  [v4 setState:v6];

  v7 = [(WFLocation *)self county];
  [v4 setCounty:v7];

  v8 = [(WFLocation *)self country];
  [v4 setCountry:v8];

  v9 = [(WFLocation *)self stateAbbreviation];
  [v4 setStateAbbreviation:v9];

  v10 = [(WFLocation *)self countryAbbreviation];
  [v4 setCountryAbbreviation:v10];

  v11 = [(WFLocation *)self displayName];
  [v4 setDisplayName:v11];

  v12 = [(WFLocation *)self weatherDisplayName];
  [v4 setWeatherDisplayName:v12];

  v13 = [(WFLocation *)self weatherLocationName];
  [v4 setWeatherLocationName:v13];

  v14 = [(WFLocation *)self creationDate];
  [v4 setCreationDate:v14];

  v15 = [(WFLocation *)self geoLocation];
  [v4 setGeoLocation:v15];

  v16 = [(WFLocation *)self locationID];
  [v4 setLocationID:v16];

  v17 = [(WFLocation *)self timeZone];
  [v4 setTimeZone:v17];

  [v4 setArchiveVersion:{-[WFLocation archiveVersion](self, "archiveVersion")}];
  return v4;
}

- (NSString)locationID
{
  locationID = self->_locationID;
  if (!locationID)
  {
    v4 = [(WFLocation *)self geoLocation];
    v5 = v4;
    if (!v4 || ([v4 coordinate], NSStringFromCLLocationCoordinate2D(v6, v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [MEMORY[0x277CCAD78] UUID];
      v8 = [v9 UUIDString];
    }

    v10 = self->_locationID;
    self->_locationID = v8;

    locationID = self->_locationID;
  }

  return locationID;
}

- (void)setGeoLocation:(id)a3
{
  v4 = [a3 copy];
  geoLocation = self->_geoLocation;
  self->_geoLocation = v4;

  locationID = self->_locationID;
  self->_locationID = 0;
}

+ (id)locationsByFilteringDuplicates:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 city];
        v13 = [v5 objectForKey:v12];

        if (!v13)
        {
          v13 = [MEMORY[0x277CBEB18] array];
        }

        [v13 addObject:v11];
        v14 = [v11 city];
        [v5 setObject:v13 forKey:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [a1 locationsByConsolidatingDuplicates:v5 originalOrder:v6];

  return v15;
}

+ (id)locationsByConsolidatingDuplicates:(id)a3 originalOrder:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v16 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__WFLocation_locationsByConsolidatingDuplicates_originalOrder___block_invoke;
  v24[3] = &unk_279E6F808;
  v7 = v6;
  v26 = &v28;
  v27 = a1;
  v25 = v7;
  [v17 enumerateKeysAndObjectsUsingBlock:v24];
  if (v29[3])
  {
    v18 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v16;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __63__WFLocation_locationsByConsolidatingDuplicates_originalOrder___block_invoke_2;
          v19[3] = &unk_279E6F830;
          v19[4] = v12;
          v13 = [v7 indexOfObjectPassingTest:v19];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [v7 objectAtIndex:v13];
            [v18 addObject:v14];
            [v7 removeObject:v14];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithArray:v16];
  }

  _Block_object_dispose(&v28, 8);

  return v18;
}

void __63__WFLocation_locationsByConsolidatingDuplicates_originalOrder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    v5 = [*(a1 + 48) locationsByConsolidatingDuplicatesInBucket:v7];
    [*(a1 + 32) addObjectsFromArray:v5];
    v6 = [v5 count];
    if (v6 != [v7 count])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

+ (id)locationsByConsolidatingDuplicatesInBucket:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 firstObject];
  [v4 addObject:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v13 = 0;
        v14 = &v13;
        v15 = 0x2020000000;
        v16 = 1;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __57__WFLocation_locationsByConsolidatingDuplicatesInBucket___block_invoke;
        v12[3] = &unk_279E6F858;
        v12[4] = v9;
        v12[5] = &v13;
        [v4 enumerateObjectsUsingBlock:v12];
        if ((v14[3] & 1) == 0)
        {
          [v4 addObject:v9];
        }

        _Block_object_dispose(&v13, 8);
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

uint64_t __57__WFLocation_locationsByConsolidatingDuplicatesInBucket___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isDay
{
  v3 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(self) = [(WFLocation *)self isDayForDate:v3];

  return self;
}

- (BOOL)isDayForDate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x277D0EAB0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(WFLocation *)self geoLocation];
  [v7 coordinate];
  v9 = v8;
  v11 = v10;

  [v6 calculateAstronomicalTimeForLocation:{v9, v11}];
  [v5 timeIntervalSinceReferenceDate];
  v13 = v12;

  LOBYTE(v7) = [v6 isDayLightForTime:v13];
  return v7;
}

- (id)_sunAlmanacForDate:(id)a3
{
  v4 = MEMORY[0x277D0EAB0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(WFLocation *)self geoLocation];
  [v7 coordinate];
  v9 = v8;
  v11 = v10;

  [v5 timeIntervalSinceReferenceDate];
  v13 = v12;

  [v6 calculateAstronomicalTimeForLocation:2 time:v9 altitudeInDegrees:v11 options:{v13, *MEMORY[0x277D0E7C0]}];

  return v6;
}

- (void)sunrise:(id *)a3 andSunset:(id *)a4 forDate:(id)a5
{
  if (a3 | a4)
  {
    v7 = [(WFLocation *)self _sunAlmanacForDate:a5];
    v8 = v7;
    if (a3)
    {
      *a3 = [v7 sunrise];
      v7 = v8;
    }

    if (a4)
    {
      *a4 = [v8 sunset];
      v7 = v8;
    }
  }
}

- (id)sunriseForDate:(id)a3
{
  v3 = [(WFLocation *)self _sunAlmanacForDate:a3];
  v4 = [v3 sunrise];

  return v4;
}

- (id)sunsetForDate:(id)a3
{
  v3 = [(WFLocation *)self _sunAlmanacForDate:a3];
  v4 = [v3 sunset];

  return v4;
}

- (BOOL)shouldQueryForAirQualityData
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(WFLocation *)self countryAbbreviation];
  if (v2)
  {
    v3 = +[WFSettingsManager sharedInstance];
    v4 = [v3 settings];

    v5 = [v4 aqiEnabledCountryCodes];
    v6 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_272B94000, v6, OS_LOG_TYPE_DEFAULT, "Current country code=%@; AQI enabled country codes=%@", &v9, 0x16u);
    }

    v7 = [v5 containsObject:v2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (displayName)
  {
    v3 = displayName;
  }

  else
  {
    v5 = [(WFLocation *)self city];
    v6 = [(WFLocation *)self country];
    v7 = [(WFLocation *)self countryAbbreviation];
    v8 = [(WFLocation *)self state];
    v9 = [(WFLocation *)self stateAbbreviation];
    v10 = objc_opt_new();
    if ([v5 length])
    {
      [v10 addObject:v5];
    }

    v11 = [v8 length];
    v12 = v8;
    if (v11 || (v13 = [v9 length], v12 = v9, v13) || (v14 = objc_msgSend(v6, "length", v9), v12 = v6, v14) || (v15 = objc_msgSend(v7, "length", v6), v12 = v7, v15))
    {
      [v10 addObject:v12];
    }

    v16 = [v10 componentsJoinedByString:{@", "}];
    v17 = self->_displayName;
    self->_displayName = v16;

    v3 = v16;
  }

  return v3;
}

- (WFLocation)initWithLocalDataRepresentation:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v11 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];

  v7 = v11;
  if (v7)
  {
    v8 = WFLogForCategory(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WFLocation *)v7 initWithLocalDataRepresentation:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)cloudDictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(WFLocation *)self city];
  [v3 setObject:v4 forKey:@"CityName"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(WFLocation *)self geoLocation];
  [v6 coordinate];
  v7 = [v5 numberWithDouble:?];
  [v3 setObject:v7 forKey:@"Latitude"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(WFLocation *)self geoLocation];
  [v9 coordinate];
  v11 = [v8 numberWithDouble:v10];
  [v3 setObject:v11 forKey:@"Longitude"];

  return v3;
}

- (WFLocation)initWithCloudDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"Longitude", @"Latitude", @"CityName", 0}];
  if ([v4 count] && (v6 = MEMORY[0x277CBEB98], objc_msgSend(v4, "allKeys"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setWithArray:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intersectsSet:", v5), v8, v7, v9))
  {
    v27.receiver = self;
    v27.super_class = WFLocation;
    v10 = [(WFLocation *)&v27 init];
    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"Latitude"];
      [v11 doubleValue];
      v13 = v12;

      v14 = [v4 objectForKeyedSubscript:@"Longitude"];
      [v14 doubleValue];
      v16 = v15;

      v17 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v13 longitude:v16];
      geoLocation = v10->_geoLocation;
      v10->_geoLocation = v17;
      v19 = v17;

      v20 = [v4 objectForKeyedSubscript:@"CityName"];
      v21 = [v20 copy];
      city = v10->_city;
      v10->_city = v21;

      v23 = [MEMORY[0x277CBEAA8] date];
      creationDate = v10->_creationDate;
      v10->_creationDate = v23;
    }

    self = v10;
    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (NSString)wf_weatherChannelGeocodeValue
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFLocation *)self geoLocation];
  [v4 coordinate];
  v6 = v5;
  v7 = [(WFLocation *)self geoLocation];
  [v7 coordinate];
  v9 = [v3 stringWithFormat:@"%f, %f", v6, v8];

  return v9;
}

- (void)initWithLocalDataRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Error occured while unarchiving %@", &v2, 0xCu);
}

@end