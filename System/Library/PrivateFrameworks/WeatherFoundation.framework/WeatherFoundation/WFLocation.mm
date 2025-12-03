@interface WFLocation
+ (id)locationsByConsolidatingDuplicates:(id)duplicates originalOrder:(id)order;
+ (id)locationsByConsolidatingDuplicatesInBucket:(id)bucket;
+ (id)locationsByFilteringDuplicates:(id)duplicates;
- (BOOL)isDay;
- (BOOL)isDayForDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsGeocoding;
- (BOOL)shouldQueryForAirQualityData;
- (NSString)displayName;
- (NSString)locationID;
- (NSString)wf_weatherChannelGeocodeValue;
- (WFLocation)initWithCloudDictionaryRepresentation:(id)representation;
- (WFLocation)initWithCoder:(id)coder;
- (WFLocation)initWithLocalDataRepresentation:(id)representation;
- (WFLocation)initWithMapItem:(id)item isCurrentLocation:(BOOL)location;
- (WFLocation)initWithPlacemark:(id)placemark;
- (WFLocation)initWithSearchResponse:(id)response;
- (id)_sunAlmanacForDate:(id)date;
- (id)cloudDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)summaryThatIsCompact:(BOOL)compact;
- (id)sunriseForDate:(id)date;
- (id)sunsetForDate:(id)date;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setGeoLocation:(id)location;
- (void)sunrise:(id *)sunrise andSunset:(id *)sunset forDate:(id)date;
@end

@implementation WFLocation

- (WFLocation)initWithSearchResponse:(id)response
{
  mapItems = [response mapItems];
  firstObject = [mapItems firstObject];

  v6 = [(WFLocation *)self initWithMapItem:firstObject];
  return v6;
}

- (WFLocation)initWithMapItem:(id)item isCurrentLocation:(BOOL)location
{
  locationCopy = location;
  itemCopy = item;
  v7 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_10;
  }

  placemark = [itemCopy placemark];
  self = [(WFLocation *)self initWithPlacemark:placemark];

  if (self)
  {
    timeZone = [v7 timeZone];
    if (!timeZone && locationCopy)
    {
      timeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    }

    objc_storeStrong(&self->_timeZone, timeZone);
    if (self->_timeZone)
    {
      _weatherDisplayName = [v7 _weatherDisplayName];
      v11 = [_weatherDisplayName copy];
      weatherDisplayName = self->_weatherDisplayName;
      self->_weatherDisplayName = v11;

      _weatherLocationName = [v7 _weatherLocationName];
      v14 = [_weatherLocationName copy];
      weatherLocationName = self->_weatherLocationName;
      self->_weatherLocationName = v14;

      goto LABEL_8;
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

LABEL_8:
  self = self;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (WFLocation)initWithPlacemark:(id)placemark
{
  v35 = *MEMORY[0x277D85DE8];
  placemarkCopy = placemark;
  if (placemarkCopy)
  {
    v32.receiver = self;
    v32.super_class = WFLocation;
    v5 = [(WFLocation *)&v32 init];
    if (v5)
    {
      location = [placemarkCopy location];
      v7 = [location copy];
      geoLocation = v5->_geoLocation;
      v5->_geoLocation = v7;

      v9 = WFLocationNameForPlacemark(placemarkCopy);
      displayName = v5->_displayName;
      v5->_displayName = v9;

      locality = [placemarkCopy locality];
      v12 = [locality copy];
      city = v5->_city;
      v5->_city = v12;

      subAdministrativeArea = [placemarkCopy subAdministrativeArea];
      v15 = [subAdministrativeArea copy];
      county = v5->_county;
      v5->_county = v15;

      administrativeArea = [placemarkCopy administrativeArea];
      v18 = [administrativeArea copy];
      state = v5->_state;
      v5->_state = v18;

      country = [placemarkCopy country];
      v21 = [country copy];
      country = v5->_country;
      v5->_country = v21;

      iSOcountryCode = [placemarkCopy ISOcountryCode];
      v24 = [iSOcountryCode copy];
      countryAbbreviation = v5->_countryAbbreviation;
      v5->_countryAbbreviation = v24;

      v5->_archiveVersion = [objc_opt_class() currentArchiveVersion];
      date = [MEMORY[0x277CBEAA8] date];
      creationDate = v5->_creationDate;
      v5->_creationDate = date;

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    city = [(WFLocation *)self city];
    city2 = [v5 city];
    if ([city isEqualToString:city2])
    {
      v8 = 30000.0;
    }

    else
    {
      city3 = [(WFLocation *)self city];
      if (city3)
      {
        v8 = 5000.0;
      }

      else
      {
        city4 = [v5 city];
        v8 = dbl_272BE4D20[city4 == 0];
      }
    }

    geoLocation = [(WFLocation *)self geoLocation];
    geoLocation2 = [v5 geoLocation];
    v9 = [geoLocation wf_isEquivalentToLocation:geoLocation2 tolerance:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  geoLocation = [(WFLocation *)self geoLocation];
  v3 = [geoLocation hash];

  return v3;
}

- (id)summaryThatIsCompact:(BOOL)compact
{
  compactCopy = compact;
  v22 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <0x%x>", objc_opt_class(), self];
  [string appendString:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  knownKeys = [objc_opt_class() knownKeys];
  v8 = [knownKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    if (compactCopy)
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
          objc_enumerationMutation(knownKeys);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(WFLocation *)self valueForKey:v13];
        v15 = v14;
        if (v14)
        {
          [string appendFormat:v11, v13, v14, v17];
        }
      }

      v9 = [knownKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return string;
}

- (BOOL)needsGeocoding
{
  countryAbbreviation = [(WFLocation *)self countryAbbreviation];
  if (countryAbbreviation)
  {
    timeZone = [(WFLocation *)self timeZone];
    if (timeZone)
    {
      weatherDisplayName = [(WFLocation *)self weatherDisplayName];
      if (weatherDisplayName)
      {
        weatherLocationName = [(WFLocation *)self weatherLocationName];
        v7 = weatherLocationName == 0;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  city = [(WFLocation *)self city];
  [coderCopy encodeObject:city forKey:@"WFLocationCodingCity"];

  county = [(WFLocation *)self county];
  [coderCopy encodeObject:county forKey:@"WFLocationCodingCounty"];

  state = [(WFLocation *)self state];
  [coderCopy encodeObject:state forKey:@"WFLocationCodingState"];

  stateAbbreviation = [(WFLocation *)self stateAbbreviation];
  [coderCopy encodeObject:stateAbbreviation forKey:@"WFLocationCodingStateAbbreviation"];

  country = [(WFLocation *)self country];
  [coderCopy encodeObject:country forKey:@"WFLocationCodingCountry"];

  countryAbbreviation = [(WFLocation *)self countryAbbreviation];
  [coderCopy encodeObject:countryAbbreviation forKey:@"WFLocationCodingCountryAbbreviation"];

  geoLocation = [(WFLocation *)self geoLocation];
  [coderCopy encodeObject:geoLocation forKey:@"WFLocationCodingGeoLocation"];

  locationID = [(WFLocation *)self locationID];
  [coderCopy encodeObject:locationID forKey:@"WFLocationCodingLocationID"];

  timeZone = [(WFLocation *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"WFLocationCodingTimeZone"];

  creationDate = [(WFLocation *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"WFLocationCodingCreationDate"];

  displayName = [(WFLocation *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"WFLocationDisplayName"];

  weatherDisplayName = [(WFLocation *)self weatherDisplayName];
  [coderCopy encodeObject:weatherDisplayName forKey:@"WFLocationWeatherDisplayNameKey"];

  weatherLocationName = [(WFLocation *)self weatherLocationName];
  [coderCopy encodeObject:weatherLocationName forKey:@"WFLocationWeatherLacationName"];

  [coderCopy encodeInteger:-[WFLocation archiveVersion](self forKey:{"archiveVersion"), @"WFLocationArchiveVersion"}];
}

- (WFLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = WFLocation;
  v5 = [(WFLocation *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCity"];
    city = v5->_city;
    v5->_city = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCounty"];
    county = v5->_county;
    v5->_county = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingState"];
    state = v5->_state;
    v5->_state = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingStateAbbreviation"];
    stateAbbreviation = v5->_stateAbbreviation;
    v5->_stateAbbreviation = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCountry"];
    country = v5->_country;
    v5->_country = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCountryAbbreviation"];
    countryAbbreviation = v5->_countryAbbreviation;
    v5->_countryAbbreviation = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingGeoLocation"];
    geoLocation = v5->_geoLocation;
    v5->_geoLocation = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingLocationID"];
    locationID = v5->_locationID;
    v5->_locationID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingTimeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationCodingCreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationWeatherDisplayNameKey"];
    weatherDisplayName = v5->_weatherDisplayName;
    v5->_weatherDisplayName = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFLocationWeatherLacationName"];
    weatherLocationName = v5->_weatherLocationName;
    v5->_weatherLocationName = v30;

    currentArchiveVersion = [coderCopy decodeIntegerForKey:@"WFLocationArchiveVersion"];
    v5->_archiveVersion = currentArchiveVersion;
    if (!currentArchiveVersion)
    {
      currentArchiveVersion = [objc_opt_class() currentArchiveVersion];
    }

    v5->_archiveVersion = currentArchiveVersion;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  city = [(WFLocation *)self city];
  [v4 setCity:city];

  state = [(WFLocation *)self state];
  [v4 setState:state];

  county = [(WFLocation *)self county];
  [v4 setCounty:county];

  country = [(WFLocation *)self country];
  [v4 setCountry:country];

  stateAbbreviation = [(WFLocation *)self stateAbbreviation];
  [v4 setStateAbbreviation:stateAbbreviation];

  countryAbbreviation = [(WFLocation *)self countryAbbreviation];
  [v4 setCountryAbbreviation:countryAbbreviation];

  displayName = [(WFLocation *)self displayName];
  [v4 setDisplayName:displayName];

  weatherDisplayName = [(WFLocation *)self weatherDisplayName];
  [v4 setWeatherDisplayName:weatherDisplayName];

  weatherLocationName = [(WFLocation *)self weatherLocationName];
  [v4 setWeatherLocationName:weatherLocationName];

  creationDate = [(WFLocation *)self creationDate];
  [v4 setCreationDate:creationDate];

  geoLocation = [(WFLocation *)self geoLocation];
  [v4 setGeoLocation:geoLocation];

  locationID = [(WFLocation *)self locationID];
  [v4 setLocationID:locationID];

  timeZone = [(WFLocation *)self timeZone];
  [v4 setTimeZone:timeZone];

  [v4 setArchiveVersion:{-[WFLocation archiveVersion](self, "archiveVersion")}];
  return v4;
}

- (NSString)locationID
{
  locationID = self->_locationID;
  if (!locationID)
  {
    geoLocation = [(WFLocation *)self geoLocation];
    v5 = geoLocation;
    if (!geoLocation || ([geoLocation coordinate], NSStringFromCLLocationCoordinate2D(v6, v7), (uUIDString = objc_claimAutoreleasedReturnValue()) == 0))
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
    }

    v10 = self->_locationID;
    self->_locationID = uUIDString;

    locationID = self->_locationID;
  }

  return locationID;
}

- (void)setGeoLocation:(id)location
{
  v4 = [location copy];
  geoLocation = self->_geoLocation;
  self->_geoLocation = v4;

  locationID = self->_locationID;
  self->_locationID = 0;
}

+ (id)locationsByFilteringDuplicates:(id)duplicates
{
  v22 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = duplicatesCopy;
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
        city = [v11 city];
        array = [dictionary objectForKey:city];

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v11];
        city2 = [v11 city];
        [dictionary setObject:array forKey:city2];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [self locationsByConsolidatingDuplicates:dictionary originalOrder:v6];

  return v15;
}

+ (id)locationsByConsolidatingDuplicates:(id)duplicates originalOrder:(id)order
{
  v33 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  orderCopy = order;
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__WFLocation_locationsByConsolidatingDuplicates_originalOrder___block_invoke;
  v24[3] = &unk_279E6F808;
  v7 = array;
  v26 = &v28;
  selfCopy = self;
  v25 = v7;
  [duplicatesCopy enumerateKeysAndObjectsUsingBlock:v24];
  if (v29[3])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = orderCopy;
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
            [array2 addObject:v14];
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
    array2 = [MEMORY[0x277CBEB18] arrayWithArray:orderCopy];
  }

  _Block_object_dispose(&v28, 8);

  return array2;
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

+ (id)locationsByConsolidatingDuplicatesInBucket:(id)bucket
{
  v22 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  array = [MEMORY[0x277CBEB18] array];
  firstObject = [bucketCopy firstObject];
  [array addObject:firstObject];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = bucketCopy;
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
        [array enumerateObjectsUsingBlock:v12];
        if ((v14[3] & 1) == 0)
        {
          [array addObject:v9];
        }

        _Block_object_dispose(&v13, 8);
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return array;
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
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(self) = [(WFLocation *)self isDayForDate:date];

  return self;
}

- (BOOL)isDayForDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  v4 = MEMORY[0x277D0EAB0];
  dateCopy = date;
  v6 = objc_alloc_init(v4);
  geoLocation = [(WFLocation *)self geoLocation];
  [geoLocation coordinate];
  v9 = v8;
  v11 = v10;

  [v6 calculateAstronomicalTimeForLocation:{v9, v11}];
  [dateCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  LOBYTE(geoLocation) = [v6 isDayLightForTime:v13];
  return geoLocation;
}

- (id)_sunAlmanacForDate:(id)date
{
  v4 = MEMORY[0x277D0EAB0];
  dateCopy = date;
  v6 = objc_alloc_init(v4);
  geoLocation = [(WFLocation *)self geoLocation];
  [geoLocation coordinate];
  v9 = v8;
  v11 = v10;

  [dateCopy timeIntervalSinceReferenceDate];
  v13 = v12;

  [v6 calculateAstronomicalTimeForLocation:2 time:v9 altitudeInDegrees:v11 options:{v13, *MEMORY[0x277D0E7C0]}];

  return v6;
}

- (void)sunrise:(id *)sunrise andSunset:(id *)sunset forDate:(id)date
{
  if (sunrise | sunset)
  {
    v7 = [(WFLocation *)self _sunAlmanacForDate:date];
    v8 = v7;
    if (sunrise)
    {
      *sunrise = [v7 sunrise];
      v7 = v8;
    }

    if (sunset)
    {
      *sunset = [v8 sunset];
      v7 = v8;
    }
  }
}

- (id)sunriseForDate:(id)date
{
  v3 = [(WFLocation *)self _sunAlmanacForDate:date];
  sunrise = [v3 sunrise];

  return sunrise;
}

- (id)sunsetForDate:(id)date
{
  v3 = [(WFLocation *)self _sunAlmanacForDate:date];
  sunset = [v3 sunset];

  return sunset;
}

- (BOOL)shouldQueryForAirQualityData
{
  v13 = *MEMORY[0x277D85DE8];
  countryAbbreviation = [(WFLocation *)self countryAbbreviation];
  if (countryAbbreviation)
  {
    v3 = +[WFSettingsManager sharedInstance];
    settings = [v3 settings];

    aqiEnabledCountryCodes = [settings aqiEnabledCountryCodes];
    v6 = WFLogForCategory(3uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = countryAbbreviation;
      v11 = 2112;
      v12 = aqiEnabledCountryCodes;
      _os_log_impl(&dword_272B94000, v6, OS_LOG_TYPE_DEFAULT, "Current country code=%@; AQI enabled country codes=%@", &v9, 0x16u);
    }

    v7 = [aqiEnabledCountryCodes containsObject:countryAbbreviation];
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
    city = [(WFLocation *)self city];
    country = [(WFLocation *)self country];
    countryAbbreviation = [(WFLocation *)self countryAbbreviation];
    state = [(WFLocation *)self state];
    stateAbbreviation = [(WFLocation *)self stateAbbreviation];
    v10 = objc_opt_new();
    if ([city length])
    {
      [v10 addObject:city];
    }

    v11 = [state length];
    v12 = state;
    if (v11 || (v13 = [stateAbbreviation length], v12 = stateAbbreviation, v13) || (v14 = objc_msgSend(country, "length", stateAbbreviation), v12 = country, v14) || (v15 = objc_msgSend(countryAbbreviation, "length", country), v12 = countryAbbreviation, v15))
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

- (WFLocation)initWithLocalDataRepresentation:(id)representation
{
  v4 = MEMORY[0x277CCAAC8];
  representationCopy = representation;
  v11 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v11];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  city = [(WFLocation *)self city];
  [dictionary setObject:city forKey:@"CityName"];

  v5 = MEMORY[0x277CCABB0];
  geoLocation = [(WFLocation *)self geoLocation];
  [geoLocation coordinate];
  v7 = [v5 numberWithDouble:?];
  [dictionary setObject:v7 forKey:@"Latitude"];

  v8 = MEMORY[0x277CCABB0];
  geoLocation2 = [(WFLocation *)self geoLocation];
  [geoLocation2 coordinate];
  v11 = [v8 numberWithDouble:v10];
  [dictionary setObject:v11 forKey:@"Longitude"];

  return dictionary;
}

- (WFLocation)initWithCloudDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"Longitude", @"Latitude", @"CityName", 0}];
  if ([representationCopy count] && (v6 = MEMORY[0x277CBEB98], objc_msgSend(representationCopy, "allKeys"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setWithArray:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intersectsSet:", v5), v8, v7, v9))
  {
    v27.receiver = self;
    v27.super_class = WFLocation;
    v10 = [(WFLocation *)&v27 init];
    if (v10)
    {
      v11 = [representationCopy objectForKeyedSubscript:@"Latitude"];
      [v11 doubleValue];
      v13 = v12;

      v14 = [representationCopy objectForKeyedSubscript:@"Longitude"];
      [v14 doubleValue];
      v16 = v15;

      v17 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v13 longitude:v16];
      geoLocation = v10->_geoLocation;
      v10->_geoLocation = v17;
      v19 = v17;

      v20 = [representationCopy objectForKeyedSubscript:@"CityName"];
      v21 = [v20 copy];
      city = v10->_city;
      v10->_city = v21;

      date = [MEMORY[0x277CBEAA8] date];
      creationDate = v10->_creationDate;
      v10->_creationDate = date;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)wf_weatherChannelGeocodeValue
{
  v3 = MEMORY[0x277CCACA8];
  geoLocation = [(WFLocation *)self geoLocation];
  [geoLocation coordinate];
  v6 = v5;
  geoLocation2 = [(WFLocation *)self geoLocation];
  [geoLocation2 coordinate];
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