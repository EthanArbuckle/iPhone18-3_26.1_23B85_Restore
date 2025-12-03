@interface City
+ (id)_ISO8601Calendar;
+ (id)cityContainingLocation:(id)location expectedName:(id)name fromCities:(id)cities;
- (BOOL)_dataIsValid;
- (BOOL)_isUpdating;
- (BOOL)_isValidLearnMoreURLForSevereEvent:(id)event;
- (BOOL)airQualityCanUseDefaultAttribution;
- (BOOL)airQualityForceHideRecommendation;
- (BOOL)airQualityScaleIsAscending;
- (BOOL)airQualityScaleIsNumerical;
- (BOOL)isDay;
- (BOOL)isDuplicateOfCity:(id)city;
- (BOOL)isEqual:(id)equal;
- (BOOL)populateWithDataFromCity:(id)city;
- (BOOL)timeZoneIsFresh;
- (BOOL)update;
- (CLLocationCoordinate2D)coordinate;
- (City)init;
- (City)initWithDictionaryRepresentation:(id)representation;
- (NSArray)dayForecasts;
- (NSArray)hourlyForecasts;
- (NSDictionary)urlComponents;
- (NSNumber)airQualityCategory;
- (NSNumber)airQualityIdx;
- (NSString)countryCode;
- (NSString)description;
- (NSString)identifier;
- (NSString)locationID;
- (NSString)weatherLocationCitationName;
- (WFAQIScale)airQualityScale;
- (double)distanceToLatitude:(double)latitude longitude:(double)longitude;
- (double)distanceToLocation:(id)location;
- (double)latitude;
- (double)longitude;
- (id)cityAndState;
- (id)detailedDescription;
- (id)displayName;
- (id)getName;
- (id)naturalLanguageDescriptionWithDescribedCondition:(int64_t *)condition;
- (id)windDirectionAsString:(double)string;
- (int64_t)conditionCode;
- (int64_t)locationOfTime:(int64_t)time;
- (int64_t)primaryConditionForRange:(_NSRange)range;
- (int64_t)timeDigit;
- (unint64_t)airQualitySignificance;
- (unint64_t)aqiDataAvailabilityStatus;
- (unint64_t)aqiDataAvailabilityStatusFromAppConfig;
- (unint64_t)hash;
- (unint64_t)precipitationForecast;
- (unint64_t)weatherDataAge;
- (void)_clearAutoUpdateTimer;
- (void)_generateLocalizableStrings;
- (void)_notifyDidStartWeatherUpdate;
- (void)_updateTimeZone;
- (void)addUpdateObserver:(id)observer;
- (void)cityDidFinishUpdatingWithError:(id)error;
- (void)clearForecasts;
- (void)dealloc;
- (void)discardDataIfNeeded;
- (void)localWeatherDidBeginUpdate;
- (void)removeUpdateObserver:(id)observer;
- (void)setAutoUpdate:(BOOL)update;
- (void)setConditionCode:(int64_t)code;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setDayForecasts:(id)forecasts;
- (void)setHourlyForecasts:(id)forecasts;
- (void)setIsDay:(BOOL)day;
- (void)setLatitude:(double)latitude;
- (void)setLongitude:(double)longitude;
- (void)setName:(id)name;
- (void)setTemperature:(id)temperature;
- (void)setUpdateTime:(id)time;
- (void)setWfLocation:(id)location;
- (void)update;
- (void)updateCityForModel:(id)model;
- (void)updateCityForSevereWeatherEvents:(id)events;
- (void)updateTimeZoneWithCompletionBlock:(id)block;
@end

@implementation City

+ (id)_ISO8601Calendar
{
  if (_ISO8601Calendar_onceToken != -1)
  {
    +[City _ISO8601Calendar];
  }

  v3 = _ISO8601Calendar_ISO6801Calendar;

  return v3;
}

uint64_t __24__City__ISO8601Calendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
  v2 = _ISO8601Calendar_ISO6801Calendar;
  _ISO8601Calendar_ISO6801Calendar = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (City)init
{
  v8.receiver = self;
  v8.super_class = City;
  v2 = [(City *)&v8 init];
  if (v2)
  {
    v3 = +[WeatherInternalPreferences sharedInternalPreferences];
    v4 = [v3 objectForKey:@"ShouldWeatherUpdateRapidly"];
    bOOLValue = [v4 BOOLValue];
    v6 = 300;
    if (bOOLValue)
    {
      v6 = 5;
    }

    v2->_updateInterval = v6;

    v2->_conditionCode = 3200;
    v2->_humidity = 1.1755e-38;
    v2->_heatIndex = 1.1755e-38;
    v2->_windChill = 1.1755e-38;
  }

  return v2;
}

- (City)initWithDictionaryRepresentation:(id)representation
{
  v4 = [CityPersistenceConversions cityFromDictionary:representation];

  return v4;
}

- (void)dealloc
{
  [(City *)self _clearAutoUpdateTimer];
  v3.receiver = self;
  v3.super_class = City;
  [(City *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  locationID = [(City *)self locationID];

  if (locationID)
  {
    locationID2 = [(City *)self locationID];
    [v6 locationID];
  }

  else
  {
    locationID2 = [(City *)self name];
    [v6 name];
  }
  v9 = ;

  v10 = [locationID2 isEqual:v9];
  return v10;
}

- (unint64_t)hash
{
  locationID = [(City *)self locationID];
  v3 = [locationID hash];

  return v3;
}

- (int64_t)conditionCode
{
  if (conditionCode_onceToken != -1)
  {
    [City conditionCode];
  }

  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  isInternalInstall = [v3 isInternalInstall];
  v5 = conditionCode_forceUnsetConditionCode;

  if (isInternalInstall && (v5 & 1) != 0)
  {
    return 3200;
  }

  else
  {
    return self->_conditionCode;
  }
}

void __21__City_conditionCode__block_invoke()
{
  v1 = +[WeatherInternalPreferences sharedInternalPreferences];
  v0 = [v1 objectForKey:@"Force3200Code"];
  conditionCode_forceUnsetConditionCode = [v0 BOOLValue];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = City;
  v4 = [(City *)&v9 description];
  name = [(City *)self name];
  locationID = [(City *)self locationID];
  v7 = [v3 stringWithFormat:@"<%@ -- Name: %@, LocationID: %@", v4, name, locationID];

  return v7;
}

- (id)detailedDescription
{
  v3 = WAUserTemperatureUnit();
  v4 = [(City *)self description];
  v5 = [v4 mutableCopy];

  v44 = +[WeatherVisibilityFormatter convenienceFormatter];
  v45 = +[WeatherWindSpeedFormatter convenienceFormatter];
  v43 = +[WeatherPressureFormatter convenienceFormatter];
  if ([(City *)self isLocalWeatherCity])
  {
    [v5 appendFormat:@"\nLocal Weather City"];
  }

  v6 = NSStringFromWeatherConditionCode([(City *)self conditionCode]);
  [v5 appendFormat:@"\nCondition Code: %@", v6];

  v7 = objc_alloc(MEMORY[0x277D7B2C0]);
  [(City *)self heatIndex];
  v42 = [v7 initWithTemperatureUnit:2 value:v8];
  v9 = MEMORY[0x277CCABB0];
  feelsLike = [(City *)self feelsLike];
  [feelsLike temperatureForUnit:v3];
  v11 = [v9 numberWithDouble:?];
  stringValue = [v11 stringValue];
  v13 = MEMORY[0x277CCABB0];
  [v42 temperatureForUnit:v3];
  v14 = [v13 numberWithDouble:?];
  stringValue2 = [v14 stringValue];
  [v5 appendFormat:@"\nFeels Like: %@, Heat Index: %@", stringValue, stringValue2];

  v16 = objc_alloc(MEMORY[0x277D7B2C0]);
  [(City *)self windChill];
  v41 = [v16 initWithTemperatureUnit:2 value:v17];
  [(City *)self windSpeed];
  v19 = v18;
  [(City *)self windDirection];
  LODWORD(v21) = v20;
  LODWORD(v22) = v19;
  v23 = [v45 formattedStringForSpeed:v22 direction:v21];
  v24 = MEMORY[0x277CCABB0];
  [v41 temperatureForUnit:v3];
  v25 = [v24 numberWithDouble:?];
  stringValue3 = [v25 stringValue];
  [v5 appendFormat:@"\nWind Chill: %@, Wind: %@", stringValue3, v23];

  v27 = objc_alloc(MEMORY[0x277D7B2C0]);
  [(City *)self dewPoint];
  v29 = [v27 initWithTemperatureUnit:2 value:v28];
  [(City *)self humidity];
  v31 = v30;
  [(City *)self visibility];
  v33 = [v44 stringFromKilometers:v32];
  [(City *)self pressure];
  v34 = [v43 stringFromMillibars:?];
  v35 = MEMORY[0x277CCABB0];
  [v29 temperatureForUnit:v3];
  v36 = [v35 numberWithDouble:?];
  stringValue4 = [v36 stringValue];
  [v5 appendFormat:@"\nHumidity %f%%, Visibility: %@, Pressure: %@, Dewpoint: %@, UV Index: %lu", *&v31, v33, v34, stringValue4, -[City uvIndex](self, "uvIndex")];

  [v5 appendFormat:@"\nObservation Time: %lu Sunrise: %lu, Sunset: %lu, Moonphase: %lu", -[City observationTime](self, "observationTime"), -[City sunriseTime](self, "sunriseTime"), -[City sunsetTime](self, "sunsetTime"), -[City moonPhase](self, "moonPhase")];
  dayForecasts = [(City *)self dayForecasts];
  [v5 appendFormat:@"\nForecasts: %@", dayForecasts];

  hourlyForecasts = [(City *)self hourlyForecasts];
  [v5 appendFormat:@"\nHourly Forecasts: %@>", hourlyForecasts];

  return v5;
}

- (void)addUpdateObserver:(id)observer
{
  observerCopy = observer;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  v5 = [cityUpdateObservers containsObject:observerCopy];

  if (v5)
  {
    NSLog(&cfstr_Cityupdateobse.isa);
  }

  cityUpdateObservers2 = [(City *)self cityUpdateObservers];

  if (!cityUpdateObservers2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(City *)self setCityUpdateObservers:weakObjectsHashTable];
  }

  cityUpdateObservers3 = [(City *)self cityUpdateObservers];
  [cityUpdateObservers3 addObject:observerCopy];
}

- (void)removeUpdateObserver:(id)observer
{
  observerCopy = observer;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  [cityUpdateObservers removeObject:observerCopy];
}

- (void)_clearAutoUpdateTimer
{
  [(NSTimer *)self->_autoUpdateTimer invalidate];
  autoUpdateTimer = self->_autoUpdateTimer;
  self->_autoUpdateTimer = 0;
}

- (void)setAutoUpdate:(BOOL)update
{
  if (self->_autoUpdate != update)
  {
    self->_autoUpdate = update;
    [(City *)self _clearAutoUpdateTimer];
    if (self->_autoUpdate && ![(City *)self isLocalWeatherCity])
    {
      [(City *)self update];
      v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_update selector:0 userInfo:1 repeats:300];
      [(City *)self setAutoUpdateTimer:v4];
    }
  }
}

- (id)displayName
{
  name = [(City *)self name];

  if (name)
  {
    [(City *)self name];
  }

  else
  {
    [(City *)self locationID];
  }
  v4 = ;

  return v4;
}

- (void)setTemperature:(id)temperature
{
  temperatureCopy = temperature;
  if (![(City *)self lockedForDemoMode])
  {
    temperature = self->_temperature;
    p_temperature = &self->_temperature;
    if (([temperatureCopy isEqual:temperature] & 1) == 0)
    {
      objc_storeStrong(p_temperature, temperature);
    }
  }
}

- (void)setDayForecasts:(id)forecasts
{
  forecastsCopy = forecasts;
  if (![(City *)self lockedForDemoMode])
  {
    v4 = [forecastsCopy copy];
    dayForecasts = self->_dayForecasts;
    self->_dayForecasts = v4;
  }
}

- (NSArray)dayForecasts
{
  if (self->_dayForecasts)
  {
    return self->_dayForecasts;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)setHourlyForecasts:(id)forecasts
{
  forecastsCopy = forecasts;
  if (![(City *)self lockedForDemoMode])
  {
    v4 = [forecastsCopy copy];
    hourlyForecasts = self->_hourlyForecasts;
    self->_hourlyForecasts = v4;
  }
}

- (NSArray)hourlyForecasts
{
  if (self->_hourlyForecasts)
  {
    return self->_hourlyForecasts;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (int64_t)timeDigit
{
  timeZone = [(City *)self timeZone];
  v3 = CityTimeDigitForTimeZone(timeZone);

  return v3;
}

- (void)setIsDay:(BOOL)day
{
  if (![(City *)self lockedForDemoMode])
  {
    self->_isDay = day;
  }
}

- (BOOL)isDay
{
  if ([(City *)self lockedForDemoMode])
  {
    return self->_isDay;
  }

  if ([(City *)self weatherDataAge]== 2 || ![(City *)self observationTime]&& ![(City *)self sunriseTime]&& ![(City *)self sunsetTime])
  {
    return 1;
  }

  timeDigit = [(City *)self timeDigit];
  if (timeDigit - [(City *)self observationTime]> 5)
  {
    [(City *)self setObservationTime:timeDigit];
  }

  sunsetTime = [(City *)self sunsetTime];
  sunriseTime = [(City *)self sunriseTime];
  observationTime = [(City *)self observationTime];
  if (sunsetTime <= sunriseTime)
  {
    if (observationTime > [(City *)self sunsetTime])
    {
      observationTime2 = [(City *)self observationTime];
      return observationTime2 >= [(City *)self sunriseTime];
    }

    return 1;
  }

  if (observationTime <= [(City *)self sunriseTime])
  {
    return 0;
  }

  else
  {
    observationTime3 = [(City *)self observationTime];
    return observationTime3 < [(City *)self sunsetTime];
  }
}

- (unint64_t)weatherDataAge
{
  updateTime = [(City *)self updateTime];

  if (!updateTime)
  {
    return 2;
  }

  updateTime2 = [(City *)self updateTime];
  [updateTime2 timeIntervalSinceNow];
  v6 = v5;

  v7 = -v6;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v8 < [(City *)self updateInterval])
  {
    return 0;
  }

  updateTime3 = [(City *)self updateTime];
  timeZone = [(City *)self timeZone];
  IsTodayInTimezone = DateIsTodayInTimezone(updateTime3, timeZone);

  if (IsTodayInTimezone)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)localWeatherDidBeginUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  allObjects = [cityUpdateObservers allObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cityDidStartWeatherUpdate:{self, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)update
{
  v3 = WALogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(City *)self update];
  }

  if ([(City *)self _dataIsValid]&& ![(City *)self weatherDataAge])
  {
    v10 = WALogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(City *)self update];
    }

    [(City *)self _updateTimeZone];
    return 0;
  }

  else
  {
    if ([(City *)self isLocalWeatherCity])
    {
      +[TWCLocationUpdater sharedLocationUpdater];
    }

    else
    {
      +[TWCCityUpdater sharedCityUpdater];
    }
    v4 = ;
    v5 = [v4 isUpdatingCity:self];
    v6 = WALogForCategory(0);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        [(City *)self update];
      }
    }

    else
    {
      if (v7)
      {
        [(City *)self update];
      }

      [(City *)self setIsUpdating:1];
      [(City *)self _notifyDidStartWeatherUpdate];
      [v4 updateWeatherForCity:self];
    }

    [(City *)self _updateTimeZone];
    isUpdating = [(City *)self isUpdating];
  }

  return isUpdating;
}

- (void)_notifyDidStartWeatherUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] conformsToProtocol:&unk_288257D50] && objc_msgSend(*v3, "showProgressIndicator"))
  {
    v4 = +[ProgressController sharedProgressController];
    [v4 setLoadingData:1];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  v6 = [cityUpdateObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(cityUpdateObservers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cityDidStartWeatherUpdate:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [cityUpdateObservers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)timeZoneIsFresh
{
  timeZone = [(City *)self timeZone];
  if (timeZone)
  {
    timeZoneUpdateDate = [(City *)self timeZoneUpdateDate];
    [timeZoneUpdateDate timeIntervalSinceNow];
    v6 = v5 >= -86400.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateTimeZone
{
  if (![(City *)self timeZoneIsFresh])
  {

    [(City *)self updateTimeZoneWithCompletionBlock:0];
  }
}

- (void)updateTimeZoneWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(City *)self isLocalWeatherCity]|| ([(City *)self coordinate], !CLLocationCoordinate2DIsValid(v21)))
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 1, self);
    }
  }

  else
  {
    activeGeocodeRequest = [(City *)self activeGeocodeRequest];

    if (activeGeocodeRequest)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy, 2, self);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x277D7B278]);
      [(City *)self coordinate];
      v8 = v7;
      v10 = v9;
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __42__City_updateTimeZoneWithCompletionBlock___block_invoke;
      v16 = &unk_279E68258;
      objc_copyWeak(&v19, &location);
      selfCopy = self;
      v18 = blockCopy;
      v11 = [v6 initWithCoordinate:&v13 resultHandler:{v8, v10}];
      [(City *)self setActiveGeocodeRequest:v11, v13, v14, v15, v16];

      activeGeocodeRequest2 = [(City *)self activeGeocodeRequest];
      [activeGeocodeRequest2 start];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __42__City_updateTimeZoneWithCompletionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2;
  block[3] = &unk_279E68230;
  v7 = v6;
  v11 = v7;
  objc_copyWeak(&v15, a1 + 6);
  v8 = v5;
  v12 = v8;
  v9 = a1[5];
  v13 = a1[4];
  v14 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [a1[4] setActiveGeocodeRequest:0];

  objc_destroyWeak(&v15);
}

void __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = WALogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2_cold_1(v2, v3);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 1, *(a1 + 48));
    }
  }

  else
  {
    objc_copyWeak(&to, (a1 + 64));
    v5 = *(a1 + 40);
    v6 = objc_loadWeakRetained(&to);
    [v6 setWfLocation:v5];

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, *(a1 + 48));
    }

    objc_destroyWeak(&to);
  }
}

- (void)clearForecasts
{
  [(City *)self setDayForecasts:0];
  [(City *)self setHourlyForecasts:0];
  [(City *)self setAirQualityIdx:0];
  [(City *)self setAirQualityScaleCategory:0];

  [(City *)self setAirQualityCategory:0];
}

- (void)setUpdateTime:(id)time
{
  timeCopy = time;
  objc_storeStrong(&self->_updateTime, time);
  updateTimeString = self->_updateTimeString;
  self->_updateTimeString = 0;

  if (self->_updateTime)
  {
    if (setUpdateTime__locale)
    {
      v7 = setUpdateTime__timeDateFormatter;
      if (setUpdateTime__timeDateFormatter)
      {
LABEL_4:
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v7, self->_updateTime);
        v9 = self->_updateTimeString;
        self->_updateTimeString = &StringWithDate->isa;

        goto LABEL_9;
      }
    }

    else
    {
      setUpdateTime__locale = CFLocaleCopyCurrent();
      v7 = CFDateFormatterCreate(0, setUpdateTime__locale, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
      setUpdateTime__timeDateFormatter = v7;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v10 = WALogForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [City setUpdateTime:v10];
    }
  }

LABEL_9:
}

- (void)cityDidFinishUpdatingWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [City cityDidFinishUpdatingWithError:];
  }

  if ([(City *)self isUpdating])
  {
    [(City *)self setIsUpdating:0];
    v6 = MEMORY[0x277D76620];
    if ([*MEMORY[0x277D76620] conformsToProtocol:&unk_288257D50])
    {
      if ([*v6 showProgressIndicator])
      {
        v7 = +[ProgressController sharedProgressController];
        [v7 setLoadingData:0];
      }
    }
  }

  if ([errorCopy code] == 3072)
  {
    [(City *)self setLastUpdateStatus:2];
    [(City *)self setLastUpdateError:errorCopy];
LABEL_10:
    [(City *)self discardDataIfNeeded];
    goto LABEL_11;
  }

  [(City *)self setLastUpdateStatus:errorCopy != 0];
  [(City *)self setLastUpdateError:errorCopy];
  if (errorCopy)
  {
    goto LABEL_10;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(City *)self setUpdateTime:date];

  dayForecasts = [(City *)self dayForecasts];
  v18 = [dayForecasts sortedArrayUsingSelector:sel_compareDayNumberToDayForecast_];
  [(City *)self setDayForecasts:v18];

LABEL_11:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  cityUpdateObservers = [(City *)self cityUpdateObservers];
  v9 = [cityUpdateObservers countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(cityUpdateObservers);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 cityDidFinishWeatherUpdate:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [cityUpdateObservers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CityDidUpdate" object:self];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isUpdating
{
  v3 = +[TWCCityUpdater sharedCityUpdater];
  LOBYTE(self) = [v3 isUpdatingCity:self];

  return self;
}

- (id)cityAndState
{
  if (self->_state)
  {
    v3 = MEMORY[0x277CCACA8];
    name = [(City *)self name];
    name2 = [v3 stringWithFormat:@"%@, %@", name, self->_state];
  }

  else
  {
    name2 = [(City *)self name];
  }

  return name2;
}

- (NSString)weatherLocationCitationName
{
  if ([(City *)self isLocalWeatherCity]&& ([(City *)self weatherLocationName], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    weatherLocationName = [(City *)self weatherLocationName];
  }

  else if ([(City *)self isLocalWeatherCity]|| ([(City *)self searchTitle], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    weatherLocationName = [(City *)self name];
  }

  else
  {
    weatherLocationName = [(City *)self searchTitle];
  }

  return weatherLocationName;
}

- (void)setName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(City *)selfCopy lockedForDemoMode])
  {
    v5 = [nameCopy copy];
    name = selfCopy->_name;
    selfCopy->_name = v5;
  }

  objc_sync_exit(selfCopy);
}

- (id)getName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_name;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setConditionCode:(int64_t)code
{
  if (![(City *)self lockedForDemoMode])
  {
    self->_conditionCode = code;
  }
}

- (void)setWfLocation:(id)location
{
  locationCopy = location;
  lockedForDemoMode = [(City *)self lockedForDemoMode];
  v6 = locationCopy;
  if ((lockedForDemoMode & 1) == 0)
  {
    if (!locationCopy || ([locationCopy geoLocation], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      wfLocation = self->_wfLocation;
      self->_wfLocation = 0;

      [(City *)self setTimeZone:0];
      [(City *)self setTimeZoneUpdateDate:0];
      lockedForDemoMode = [(City *)self setISO3166CountryAbbreviation:0];
LABEL_16:
      v6 = locationCopy;
      goto LABEL_17;
    }

    v8 = [locationCopy isEqual:self->_wfLocation];
    v6 = locationCopy;
    if (!v8)
    {
      goto LABEL_14;
    }

    geoLocation = [locationCopy geoLocation];
    geoLocation2 = [(WFLocation *)self->_wfLocation geoLocation];
    [geoLocation distanceFromLocation:geoLocation2];
    v12 = v11;
    v13 = *&CityMinimumContainmentDistance;

    v6 = locationCopy;
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    countryAbbreviation = [locationCopy countryAbbreviation];
    iSO3166CountryAbbreviation = [(City *)self ISO3166CountryAbbreviation];
    if ([countryAbbreviation isEqualToString:iSO3166CountryAbbreviation])
    {
      timeZone = [locationCopy timeZone];
      timeZone2 = [(City *)self timeZone];
      if ([timeZone isEqualToTimeZone:timeZone2])
      {
        weatherLocationName = [locationCopy weatherLocationName];
        if (!weatherLocationName)
        {

          goto LABEL_15;
        }

        v19 = weatherLocationName;
        weatherLocationName2 = [locationCopy weatherLocationName];
        weatherLocationName3 = [(WFLocation *)self->_wfLocation weatherLocationName];
        v22 = [weatherLocationName2 isEqualToString:weatherLocationName3];

        v6 = locationCopy;
        if (v22)
        {
          goto LABEL_17;
        }

LABEL_14:
        countryAbbreviation = [v6 timeZone];
        objc_storeStrong(&self->_wfLocation, location);
        geoLocation3 = [locationCopy geoLocation];
        [(City *)self setLocation:geoLocation3];

        [(City *)self setTimeZone:countryAbbreviation];
        date = [MEMORY[0x277CBEAA8] date];
        [(City *)self setTimeZoneUpdateDate:date];

        countryAbbreviation2 = [locationCopy countryAbbreviation];
        [(City *)self setISO3166CountryAbbreviation:countryAbbreviation2];

        weatherDisplayName = [locationCopy weatherDisplayName];
        [(City *)self setWeatherDisplayName:weatherDisplayName];

        weatherLocationName4 = [locationCopy weatherLocationName];
        [(City *)self setWeatherLocationName:weatherLocationName4];

LABEL_15:
        goto LABEL_16;
      }
    }

    v6 = locationCopy;
    goto LABEL_14;
  }

LABEL_17:

  MEMORY[0x2821F96F8](lockedForDemoMode, v6);
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  if (![(City *)self lockedForDemoMode])
  {
    v6 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
    [(City *)self setLocation:v6];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  location = [(City *)self location];

  if (location)
  {
    location2 = [(City *)self location];
    [location2 coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CE4278];
    v8 = *(MEMORY[0x277CE4278] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (double)latitude
{
  location = [(City *)self location];

  if (!location)
  {
    return *MEMORY[0x277CE4278];
  }

  location2 = [(City *)self location];
  [location2 coordinate];
  v6 = v5;

  return v6;
}

- (void)setLatitude:(double)latitude
{
  [(City *)self longitude];
  v6 = CLLocationCoordinate2DMake(latitude, v5);

  [(City *)self setCoordinate:v6.latitude, v6.longitude];
}

- (double)longitude
{
  location = [(City *)self location];

  if (!location)
  {
    return *(MEMORY[0x277CE4278] + 8);
  }

  location2 = [(City *)self location];
  [location2 coordinate];
  v6 = v5;

  return v6;
}

- (void)setLongitude:(double)longitude
{
  [(City *)self latitude];
  v6 = CLLocationCoordinate2DMake(v5, longitude);

  [(City *)self setCoordinate:v6.latitude, v6.longitude];
}

- (NSString)locationID
{
  location = [(City *)self location];

  if (location)
  {
    v4 = MEMORY[0x277CCACA8];
    location2 = [(City *)self location];
    [location2 coordinate];
    v7 = v6;
    location3 = [(City *)self location];
    [location3 coordinate];
    v10 = [v4 stringWithFormat:@"%f, %f", v7, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)populateWithDataFromCity:(id)city
{
  cityCopy = city;
  if ([(City *)self lockedForDemoMode])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    name = [cityCopy name];
    [(City *)self setName:name];

    state = [cityCopy state];
    [(City *)self setState:state];

    deeplink = [cityCopy deeplink];
    [(City *)self setDeeplink:deeplink];

    timeZone = [cityCopy timeZone];
    [(City *)self setTimeZone:timeZone];

    temperature = [cityCopy temperature];
    [(City *)self setTemperature:temperature];

    [cityCopy heatIndex];
    [(City *)self setHeatIndex:?];
    [cityCopy visibility];
    [(City *)self setVisibility:?];
    [cityCopy windChill];
    [(City *)self setWindChill:?];
    [cityCopy windDirection];
    [(City *)self setWindDirection:?];
    [cityCopy windSpeed];
    [(City *)self setWindSpeed:?];
    [cityCopy heatIndex];
    [(City *)self setHeatIndex:?];
    -[City setConditionCode:](self, "setConditionCode:", [cityCopy conditionCode]);
    dayForecasts = [cityCopy dayForecasts];
    [(City *)self setDayForecasts:dayForecasts];

    hourlyForecasts = [cityCopy hourlyForecasts];
    [(City *)self setHourlyForecasts:hourlyForecasts];

    -[City setObservationTime:](self, "setObservationTime:", [cityCopy observationTime]);
    -[City setSunsetTime:](self, "setSunsetTime:", [cityCopy sunsetTime]);
    -[City setSunriseTime:](self, "setSunriseTime:", [cityCopy sunriseTime]);
    -[City setMoonPhase:](self, "setMoonPhase:", [cityCopy moonPhase]);
    updateTime = [(City *)self updateTime];
    updateTime2 = [cityCopy updateTime];
    v15 = [updateTime isEqualToDate:updateTime2];

    updateTime3 = [cityCopy updateTime];
    [(City *)self setUpdateTime:updateTime3];

    -[City setLastUpdateStatus:](self, "setLastUpdateStatus:", [cityCopy lastUpdateStatus]);
    locationID = [(City *)self locationID];
    locationID2 = [cityCopy locationID];
    v5 = v15 & [locationID isEqualToString:locationID2] ^ 1;

    location = [cityCopy location];
    [(City *)self setLocation:location];
  }

  return v5;
}

- (void)discardDataIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  displayName = [self displayName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272ACF000, v2, v3, "Weather data is outdated for %@; dumping data...", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)windDirectionAsString:(double)string
{
  v3 = string + 22.5;
  v4 = vcvtms_s32_f32(v3 / 45.0);
  if (v4 > 8)
  {
    return &stru_2882270E8;
  }

  else
  {
    return off_279E68278[v4];
  }
}

- (double)distanceToLocation:(id)location
{
  locationCopy = location;
  location = [(City *)self location];

  if (location)
  {
    location2 = [(City *)self location];
    [location2 distanceFromLocation:locationCopy];
    v8 = v7;
  }

  else
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

- (double)distanceToLatitude:(double)latitude longitude:(double)longitude
{
  v5 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
  [(City *)self distanceToLocation:v5];
  v7 = v6;

  return v7;
}

+ (id)cityContainingLocation:(id)location expectedName:(id)name fromCities:(id)cities
{
  v30 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  nameCopy = name;
  citiesCopy = cities;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [citiesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(citiesCopy);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        [v16 distanceToLocation:locationCopy];
        v18 = v17;
        name = [v16 name];
        v20 = [name isEqualToString:nameCopy];

        if (v18 <= v14)
        {
          v21 = &CityMinimumContainmentDistanceMatchingNames;
          if (!v20)
          {
            v21 = &CityMinimumContainmentDistance;
          }

          if (v18 <= *v21)
          {
            v22 = v16;

            v12 = v22;
            v14 = v18;
          }
        }
      }

      v11 = [citiesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isDuplicateOfCity:(id)city
{
  v16[1] = *MEMORY[0x277D85DE8];
  cityCopy = city;
  if (-[City isLocalWeatherCity](self, "isLocalWeatherCity") || ([cityCopy isLocalWeatherCity] & 1) != 0 || (-[City name](self, "name"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(cityCopy, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, !v7))
  {
    v13 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    location = [(City *)self location];
    name = [(City *)self name];
    v16[0] = cityCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v12 = [v8 cityContainingLocation:location expectedName:name fromCities:v11];
    v13 = v12 != 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int64_t)primaryConditionForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  p_hourlyForecasts = &self->_hourlyForecasts;
  if (range.location < [(NSArray *)self->_hourlyForecasts count]&& location + length <= [(NSArray *)*p_hourlyForecasts count])
  {
    v7 = [(NSArray *)*p_hourlyForecasts subarrayWithRange:location, length];
  }

  else
  {
    v6 = WALogForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v28.location = location;
      v28.length = length;
      [(City *)v28 primaryConditionForRange:?];
    }

    v7 = *p_hourlyForecasts;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 conditionCode] <= 47)
        {
          conditionCode = [v13 conditionCode];
          ++*(v25 + conditionCode);
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = 0;
  v16 = 0;
  v17 = 3200;
  do
  {
    if (*(v25 + v15) > v16)
    {
      v17 = v15;
      v16 = *(v25 + v15);
    }

    ++v15;
  }

  while (v15 != 48);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int64_t)locationOfTime:(int64_t)time
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_hourlyForecasts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      time = [*(*(&v15 + 1) + 8 * v9) time];
      v12 = [WAHourlyForecast TimeValueFromString:time];

      if (v12 == time)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)naturalLanguageDescriptionWithDescribedCondition:(int64_t *)condition
{
  v118[2] = *MEMORY[0x277D85DE8];
  isDay = [(City *)self isDay];
  v6 = WAUserTemperatureUnit();
  conditionCode = self->_conditionCode;
  if (conditionCode == 3200 || (v8 = v6, -[City locationID](self, "locationID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, !v10))
  {
    v105 = &stru_2882270E8;
    if (!condition)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v105 = LocalizedWeatherDescription(self->_conditionCode, isDay, 1);
  v11 = [(NSArray *)self->_dayForecasts count];
  v12 = [(NSArray *)self->_hourlyForecasts count];
  if (v11)
  {
    firstObject = [(NSArray *)self->_dayForecasts firstObject];
  }

  else
  {
    firstObject = 0;
  }

  if (self->_conditionCode <= 2)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"MAJOR_EVENT_FORMAT" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v105 = [v17 stringWithFormat:v19, v105];

    goto LABEL_95;
  }

  string = [MEMORY[0x277CCAB68] string];
  array = [MEMORY[0x277CBEB18] array];
  string2 = [MEMORY[0x277CCAB68] string];
  [(WFTemperature *)self->_feelsLike temperatureForUnit:2];
  v22 = v21;
  [(WFTemperature *)self->_temperature temperatureForUnit:2];
  v97 = v12;
  if (self->_feelsLike)
  {
    v24 = v22 - v23;
    v25 = v24 > 10.0 || v22 <= *&CityMaxWindChillTemperature;
    v26 = v24 > 10.0 || v22 >= *&CityMinHeatIndexTemperature;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  windSpeed = self->_windSpeed;
  visibility = self->_visibility;
  v30 = visibility <= 1.6 && visibility != 1.1755e-38;
  v31 = @"FAHRENHEIT";
  if (v8 == 2)
  {
    v31 = @"CELSIUS";
  }

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"TEMP_UNIT_%@", v31];
  v104 = string;
  v99 = v32;
  if (WAIsChinaSKUAndSimplifiedChinese())
  {
    v33 = &stru_2882270E8;
  }

  else
  {
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v34 localizedStringForKey:v32 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

    string = v104;
  }

  v100 = v33;
  v101 = firstObject;
  if (v25 || v26 || windSpeed >= 25.0 || v30)
  {
    [string appendString:@"CONDITION_NOW_"];
    [array addObject:v105];
    if (v25)
    {
      [string appendString:@"WINDCHILL_"];
      v35 = WATemperatureStringForOutputUnit(self->_feelsLike, v8);
      v118[0] = v35;
      v36 = v118;
    }

    else
    {
      if (!v26)
      {
LABEL_38:
        if (windSpeed >= 25.0)
        {
          [string appendString:@"WIND_"];
          v38 = +[WeatherWindSpeedFormatter convenienceFormatter];
          *&v39 = self->_windSpeed;
          v96 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
          v95 = [v38 stringForObjectValue:v96];
          v116[0] = v95;
          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v41 = [(City *)self windDirectionAsString:self->_windDirection];
          v42 = [v40 localizedStringForKey:v41 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
          v116[1] = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
          [array addObjectsFromArray:v43];

          string = v104;
          v33 = v100;

          firstObject = v101;
        }

        if (v30)
        {
          [string appendString:@"VISIBILITY_"];
        }

        goto LABEL_42;
      }

      [string appendString:@"HEAT_INDEX_"];
      v35 = WATemperatureStringForOutputUnit(self->_feelsLike, v8);
      v117 = v35;
      v36 = &v117;
    }

    v36[1] = v33;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    [array addObjectsFromArray:v37];

    string = v104;
    goto LABEL_38;
  }

LABEL_42:
  observationTime = self->_observationTime;
  if (observationTime - 400 <= 0x258)
  {
    v45 = WALogForCategory(0);
    v46 = string2;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [City naturalLanguageDescriptionWithDescribedCondition:];
    }

    [string2 appendFormat:@"Forecast Type %d to %d", 400, 1000];
    v47 = [(City *)self primaryConditionForRange:0, v97];
    if (![v104 length] && v47 != 3200)
    {
      [v104 appendString:@"TODAY_CONDITION_"];
      v48 = LocalizedWeatherDescription(v47, 1, 1);
      [array addObject:v48];

      [v104 appendString:@"IT_IS_CURRENTLY_HIGH_WILL_BE"];
      v49 = WATemperatureStringForOutputUnit(self->_temperature, v8);
      v115[0] = v49;
      v115[1] = v33;
      high = [v101 high];
      v51 = v8;
      v52 = array;
      v53 = WATemperatureStringForOutputUnit(high, v51);
      v115[2] = v53;
      v115[3] = v33;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];
      [array addObjectsFromArray:v54];

      conditionCode = v47;
LABEL_91:

      firstObject = v101;
      v46 = string2;
      goto LABEL_92;
    }

    if ([v104 length])
    {
      goto LABEL_60;
    }

    [v104 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WILL_BE"];
    v114[0] = v105;
    v49 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v114[1] = v49;
    v114[2] = v33;
    high = [v101 high];
    v53 = WATemperatureStringForOutputUnit(high, v8);
    v114[3] = v53;
    v114[4] = v33;
    v74 = MEMORY[0x277CBEA60];
    v75 = v114;
    goto LABEL_82;
  }

  v46 = string2;
  if (observationTime - 1001 <= 0x31F)
  {
    v55 = WALogForCategory(0);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [City naturalLanguageDescriptionWithDescribedCondition:];
    }

    [string2 appendFormat:@"Forecast Type %d to %d", 1000, 1800];
    v56 = [(City *)self locationOfTime:1800];
    v57 = [(City *)self locationOfTime:0];
    v58 = [v104 length];
    if (v56 != 0x7FFFFFFFFFFFFFFFLL && v57 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v58)
      {
        [v104 appendString:@"CURRENTLY_NOW_"];
        [array addObject:v105];
      }

      v59 = v97;
      if (v56 < v57)
      {
        v59 = v57;
      }

      v60 = [(City *)self primaryConditionForRange:v56, v59 - v56];
      if (self->_conditionCode == v60)
      {
        [v104 appendString:@"MIDDAY_SAME"];
        [firstObject high];
        v49 = v61 = firstObject;
        high = WATemperatureStringForOutputUnit(v49, v8);
        v113[0] = high;
        v113[1] = v33;
        v53 = [v61 low];
        v62 = WATemperatureStringForOutputUnit(v53, v8);
        v113[2] = v62;
        v113[3] = v33;
        v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:4];
        v52 = array;
        [array addObjectsFromArray:v63];
      }

      else
      {
        v83 = v60;
        [v104 appendString:@"MIDDAY_DIFFERENT"];
        [firstObject high];
        v49 = v84 = firstObject;
        high = WATemperatureStringForOutputUnit(v49, v8);
        v112[0] = high;
        v112[1] = v33;
        v53 = LocalizedWeatherDescription(v83, 0, 1);
        v112[2] = v53;
        v62 = [v84 low];
        v63 = WATemperatureStringForOutputUnit(v62, v8);
        v112[3] = v63;
        v112[4] = v33;
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:5];
        v52 = array;
        [array addObjectsFromArray:v85];
      }

      goto LABEL_90;
    }

    if (v58)
    {
      goto LABEL_85;
    }

    [v104 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WILL_BE"];
    v111[0] = v105;
    v72 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v73 = firstObject;
    v49 = v72;
    v111[1] = v72;
    v111[2] = v33;
    high = [v73 high];
    v53 = WATemperatureStringForOutputUnit(high, v8);
    v111[3] = v53;
    v111[4] = v33;
    v74 = MEMORY[0x277CBEA60];
    v75 = v111;
    goto LABEL_82;
  }

  v64 = observationTime - 1801;
  v65 = WALogForCategory(0);
  v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG);
  if (v64 <= 0x22E)
  {
    if (v66)
    {
      [City naturalLanguageDescriptionWithDescribedCondition:];
    }

    [string2 appendFormat:@"Forecast Type %d to %d", 1800, 2359];
    v67 = [(City *)self locationOfTime:2359];
    v68 = [(City *)self locationOfTime:0];
    v69 = [v104 length];
    if (v67 != 0x7FFFFFFFFFFFFFFFLL && v68 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v69)
      {
        [v104 appendFormat:@"CURRENTLY_COMMA_"];
        [array addObject:v105];
      }

      v70 = v97;
      if (v67 < v68)
      {
        v70 = v68;
      }

      v71 = [(City *)self primaryConditionForRange:v67, v70 - v67];
      if (self->_conditionCode == v71)
      {
        [v104 appendFormat:@"AFTERNOON_SAME"];
        v49 = [firstObject low];
        high = WATemperatureStringForOutputUnit(v49, v8);
        v110[0] = high;
        v110[1] = v33;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
        v52 = array;
        [array addObjectsFromArray:v53];
        goto LABEL_91;
      }

      v90 = v71;
      [v104 appendFormat:@"AFTERNOON_DIFFERENT"];
      v91 = LocalizedWeatherDescription(v90, 0, 0);
      v92 = firstObject;
      v49 = v91;
      v109[0] = v91;
      high = [v92 low];
      v53 = WATemperatureStringForOutputUnit(high, v8);
      v109[1] = v53;
      v109[2] = v33;
      v74 = MEMORY[0x277CBEA60];
      v75 = v109;
      v82 = 3;
      goto LABEL_83;
    }

    if (v69)
    {
      goto LABEL_85;
    }

    [v104 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WAS"];
    v108[0] = v105;
    v93 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v94 = firstObject;
    v49 = v93;
    v108[1] = v93;
    v108[2] = v33;
    high = [v94 high];
    v53 = WATemperatureStringForOutputUnit(high, v8);
    v108[3] = v53;
    v108[4] = v33;
    v74 = MEMORY[0x277CBEA60];
    v75 = v108;
LABEL_82:
    v82 = 5;
LABEL_83:
    v62 = [v74 arrayWithObjects:v75 count:v82];
    v52 = array;
    [array addObjectsFromArray:v62];
LABEL_90:

    goto LABEL_91;
  }

  if (v66)
  {
    [City naturalLanguageDescriptionWithDescribedCondition:];
  }

  [string2 appendFormat:@"Forecast Type %d to %d", 2359, 400];
  v76 = [(City *)self locationOfTime:400];
  v77 = [(City *)self locationOfTime:2400];
  if (v76 != 0x7FFFFFFFFFFFFFFFLL && v77 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = v97;
    if (v76 < v77)
    {
      v78 = v77;
    }

    conditionCode = [(City *)self primaryConditionForRange:v76, v78 - v76];
    v98 = [MEMORY[0x277CCAB68] stringWithString:@"CONDITION_LIKELY_TOMORROW_WITH_HIGH_AND_LOW"];

    v49 = LocalizedWeatherDescription(conditionCode, 1, 1);
    v107[0] = v49;
    high = [v101 high];
    v53 = WATemperatureStringForOutputUnit(high, v8);
    v107[1] = v53;
    v107[2] = v33;
    v79 = [v101 low];
    v80 = WATemperatureStringForOutputUnit(v79, v8 == 2);
    v107[3] = v80;
    v107[4] = v100;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:5];
    v52 = array;
    [array addObjectsFromArray:v81];

    v104 = v98;
    goto LABEL_91;
  }

  if (![v104 length])
  {
    [v104 appendString:@"CURRENTLY_NOW_IT_IS_CURRENTLY_HIGH_WILL_BE"];
    v106[0] = v105;
    v49 = WATemperatureStringForOutputUnit(self->_temperature, v8);
    v106[1] = v49;
    v106[2] = v33;
    high = [v101 high];
    v53 = WATemperatureStringForOutputUnit(high, v8);
    v106[3] = v53;
    v106[4] = v33;
    v74 = MEMORY[0x277CBEA60];
    v75 = v106;
    goto LABEL_82;
  }

LABEL_60:
  firstObject = v101;
LABEL_85:
  v52 = array;
LABEL_92:
  [v46 appendFormat:@" - wc %f hi %f w %f v %f / hours %d / ", self->_windChill, self->_heatIndex, self->_windSpeed, self->_visibility, -[NSArray count](self->_hourlyForecasts, "count")];
  v86 = MEMORY[0x277CCACA8];
  v87 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v88 = [v87 localizedStringForKey:v104 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v105 = [v86 stringWithFormat:v88 andArguments:v52];

  [v46 appendString:v105];
  v89 = WALogForCategory(1);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    [City naturalLanguageDescriptionWithDescribedCondition:];
  }

LABEL_95:
  if (condition)
  {
LABEL_6:
    *condition = conditionCode;
  }

LABEL_7:
  v15 = *MEMORY[0x277D85DE8];

  return v105;
}

- (unint64_t)precipitationForecast
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = self->_hourlyForecasts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_32:
    v7 = 2;
    goto LABEL_33;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v2);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      conditionCode = [v12 conditionCode];
      if (((0x1017FFF80001uLL >> conditionCode) & 1) == 0)
      {
        v14 = PrecipitationTypeMap_0[conditionCode];
        if (!v7)
        {
          v7 = PrecipitationTypeMap_0[conditionCode];
        }

        if (v14 == 4)
        {
          v15 = v9 + 1;
        }

        else
        {
          v15 = v9;
        }

        if (v14 == 3)
        {
          v16 = v5 + 1;
        }

        else
        {
          v16 = v5;
        }

        if (v14 == 3)
        {
          v15 = v9;
        }

        if (v14 == 2)
        {
          ++v8;
        }

        else
        {
          v5 = v16;
        }

        if (v14 != 2)
        {
          v9 = v15;
        }
      }

      temperature = [v12 temperature];
      [temperature temperatureForUnit:2];
      v19 = v18;

      if (v19 < 0.0)
      {
        ++v6;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v4);

  if (v8 >= 1 && v8 > v5)
  {
    goto LABEL_32;
  }

  if (v5 < 1 || v5 <= v8)
  {
    if (v9 >= 1 && v9 > v8 && v9 > v5)
    {
      v7 = 4;
      goto LABEL_33;
    }

    if (v7)
    {
      goto LABEL_33;
    }

    if (!v6)
    {
      goto LABEL_32;
    }
  }

  v7 = 3;
LABEL_33:
  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_generateLocalizableStrings
{
  v130[4] = *MEMORY[0x277D85DE8];
  v127 = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v128 = @"It's currently %8$@%9$@; the high will be %10$@%11$@. ";
  v129[0] = @"TODAY_CONDITION";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v130[0] = v2;
  v129[1] = @"CURRENTLY_NOW";
  v125[0] = @"MIDDAY_SAME";
  v125[1] = @"MIDDAY_DIFFERENT";
  v126[0] = @"The high will be %2$@%3$@. The low tonight will be %4$@%5$@. ";
  v126[1] = @"The high will be %2$@%3$@. %4$@ tonight with a low of %5$@%6$@. ";
  v125[2] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v125[3] = @"IT_IS_CURRENTLY_HIGH_WAS";
  v126[2] = @"It's %8$@%9$@; the high will be %10$@%11$@. ";
  v126[3] = @"It's %8$@%9$@; the high today was forecast as %10$@%11$@. ";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:4];
  v130[1] = v3;
  v129[2] = @"CURRENTLY_COMMA";
  v123[0] = @"AFTERNOON_SAME";
  lowercaseString = [@"The low tonight will be %8$@%9$@. " lowercaseString];
  v124[0] = lowercaseString;
  v123[1] = @"AFTERNOON_DIFFERENT";
  lowercaseString2 = [@"%8$@ tonight with a low of %9$@%10$@. " lowercaseString];
  v124[1] = lowercaseString2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  v129[3] = @"CONDITION_LIKELY_TOMORROW";
  v130[2] = v6;
  v130[3] = &unk_2882357D8;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:4];

  v121[0] = @"TODAY_CONDITION";
  v119 = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v120 = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
  v122[0] = v7;
  v121[1] = @"CURRENTLY_NOW";
  v117[0] = @"MIDDAY_SAME";
  v117[1] = @"MIDDAY_DIFFERENT";
  v118[0] = @"2 = High Temperature for day, 3 = Temperature Unit , 4 = Low Temperature for day, 5 = Temperature Unit ";
  v118[1] = @"2 = High Temperature for day, 3 = Temperature Unit, 4 = Condition (Cloudy, Rainy, etc.), 5 = Low Temperature for day, 6 = Temperature Unit ";
  v117[2] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v117[3] = @"IT_IS_CURRENTLY_HIGH_WAS";
  v118[2] = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v118[3] = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:4];
  v122[1] = v8;
  v121[2] = @"CURRENTLY_COMMA";
  v115[0] = @"AFTERNOON_SAME";
  v115[1] = @"AFTERNOON_DIFFERENT";
  v116[0] = @"8 = Low Temperature for tonight, 9 = Temperature Unit";
  v116[1] = @"8 = Condition for tonight, 9 = Low Temperature for tonight, 10 = Temperature Unit ";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v121[3] = @"CONDITION_LIKELY_TOMORROW";
  v122[2] = v9;
  v122[3] = &unk_288235800;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];

  v113[0] = &stru_2882270E8;
  v113[1] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v114[0] = &stru_2882270E8;
  v114[1] = @"It's currently %8$@%9$@; the high will be %10$@%11$@. ";
  v113[2] = @"MIDDAY_SAME";
  v113[3] = @"MIDDAY_DIFFERENT";
  v114[2] = @"The high will be %8$@%9$@. The low tonight will be %10$@%11$@. ";
  v114[3] = @"The high will be %8$@%9$@. %10$@ tonight with a low of %11$@%12$@. ";
  v113[4] = @"AFTERNOON_SAME";
  v113[5] = @"AFTERNOON_DIFFERENT";
  v114[4] = @"The low tonight will be %8$@%9$@. ";
  v114[5] = @"%8$@ tonight with a low of %9$@%10$@. ";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:6];
  v111[0] = @"_";
  v111[1] = @"IT_IS_CURRENTLY_HIGH_WILL_BE";
  v112[0] = &stru_2882270E8;
  v112[1] = @"8 = Current Temperature, 9 = Temperature Unit, 10 = High Temperature for day, 11 = Temperature Unit ";
  v111[2] = @"MIDDAY_SAME";
  v111[3] = @"MIDDAY_DIFFERENT";
  v112[2] = @"8 = High Temperature for day, 9 = Temperature Unit, 10 = Low Temperature for day, 11 = Temperature Unit";
  v112[3] = @"8 = High Temperature for day, 9 = Temperature Unit, 10 = Condition (Cloudy, Rainy, etc.), 11 = Low Temperature for day, 12 = Temperature Unit,";
  v111[4] = @"AFTERNOON_SAME";
  v111[5] = @"AFTERNOON_DIFFERENT";
  v112[4] = @"8 = Low Temperature for tonight, 9 = Temperature Unit";
  v112[5] = @"8 = Condition for tonight, 9 = Low Temperature for tonight, 10 = Temperature Unit ";
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:6];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v56 = [&unk_288235788 countByEnumeratingWithState:&v84 objects:v110 count:16];
  if (v56)
  {
    v55 = *v85;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v55)
        {
          objc_enumerationMutation(&unk_288235788);
        }

        v58 = v10;
        v11 = *(*(&v84 + 1) + 8 * v10);
        v12 = [v48 objectForKey:v11];
        v61 = v11;
        v63 = [v47 objectForKey:v11];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v80 objects:v109 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v81;
          do
          {
            v17 = 0;
            v65 = v15;
            do
            {
              if (*v81 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v80 + 1) + 8 * v17);
              v19 = WALogForCategory(0);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                [&unk_288235788 objectForKey:v61];
                v21 = v20 = v16;
                v22 = [v13 objectForKey:v18];
                v23 = [&unk_2882357B0 objectForKey:v61];
                v24 = [v63 objectForKey:v18];
                *buf = 138413570;
                v89 = v61;
                v90 = 2112;
                v91 = v18;
                v92 = 2112;
                v93 = v21;
                v94 = 2112;
                v95 = v22;
                v96 = 2112;
                v97 = v23;
                v98 = 2112;
                v99 = v24;
                _os_log_impl(&dword_272ACF000, v19, OS_LOG_TYPE_DEFAULT, "########### %@_%@ = %@%@; /* %@%@ */", buf, 0x3Eu);

                v16 = v20;
                v15 = v65;
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v80 objects:v109 count:16];
          }

          while (v15);
        }

        v25 = WALogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v25, OS_LOG_TYPE_DEFAULT, "###########", buf, 2u);
        }

        v10 = v58 + 1;
      }

      while (v58 + 1 != v56);
      v56 = [&unk_288235788 countByEnumeratingWithState:&v84 objects:v110 count:16];
    }

    while (v56);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v49 = [&unk_288235828 countByEnumeratingWithState:&v76 objects:v108 count:16];
  if (v49)
  {
    v46 = *v77;
    do
    {
      v26 = 0;
      do
      {
        if (*v77 != v46)
        {
          objc_enumerationMutation(&unk_288235828);
        }

        v50 = v26;
        v57 = *(*(&v76 + 1) + 8 * v26);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v53 = [&unk_288235878 countByEnumeratingWithState:&v72 objects:v107 count:16];
        if (v53)
        {
          v52 = *v73;
          do
          {
            v27 = 0;
            do
            {
              if (*v73 != v52)
              {
                objc_enumerationMutation(&unk_288235878);
              }

              v54 = v27;
              v62 = *(*(&v72 + 1) + 8 * v27);
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v28 = v51;
              v29 = [v28 countByEnumeratingWithState:&v68 objects:v106 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v69;
                v59 = *v69;
                v60 = v28;
                do
                {
                  v32 = 0;
                  v64 = v30;
                  do
                  {
                    if (*v69 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v68 + 1) + 8 * v32);
                    v34 = [v67 objectForKey:v33];
                    v35 = v34;
                    v36 = &stru_2882270E8;
                    if (v34)
                    {
                      v36 = v34;
                    }

                    v37 = v36;

                    v38 = WALogForCategory(0);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                    {
                      v66 = [&unk_288235828 objectForKey:v57];
                      v39 = [&unk_288235878 objectForKey:v62];
                      v40 = [v28 objectForKey:v33];
                      v41 = [&unk_288235850 objectForKey:v57];
                      v42 = [&unk_2882358A0 objectForKey:v62];
                      *buf = 138414338;
                      v89 = v57;
                      v31 = v59;
                      v90 = 2112;
                      v91 = v62;
                      v92 = 2112;
                      v93 = v33;
                      v94 = 2112;
                      v95 = v66;
                      v96 = 2112;
                      v97 = v39;
                      v98 = 2112;
                      v99 = v40;
                      v100 = 2112;
                      v101 = v41;
                      v102 = 2112;
                      v103 = v42;
                      v104 = 2112;
                      v105 = v37;
                      _os_log_impl(&dword_272ACF000, v38, OS_LOG_TYPE_DEFAULT, "########### %@_%@_%@ = %@%@%@; /* %@%@%@ */", buf, 0x5Cu);

                      v30 = v64;
                      v28 = v60;
                    }

                    ++v32;
                  }

                  while (v30 != v32);
                  v30 = [v28 countByEnumeratingWithState:&v68 objects:v106 count:16];
                }

                while (v30);
              }

              v43 = WALogForCategory(0);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_272ACF000, v43, OS_LOG_TYPE_DEFAULT, "###########", buf, 2u);
              }

              v27 = v54 + 1;
            }

            while (v54 + 1 != v53);
            v53 = [&unk_288235878 countByEnumeratingWithState:&v72 objects:v107 count:16];
          }

          while (v53);
        }

        v44 = WALogForCategory(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272ACF000, v44, OS_LOG_TYPE_DEFAULT, "###########", buf, 2u);
        }

        v26 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [&unk_288235828 countByEnumeratingWithState:&v76 objects:v108 count:16];
    }

    while (v49);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)updateCityForModel:(id)model
{
  v60 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (!modelCopy)
  {
    goto LABEL_34;
  }

  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 136315650;
    selfCopy7 = "[City updateCityForModel:]";
    v56 = 2112;
    selfCopy2 = modelCopy;
    v58 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "%s, forecastModel:%@, city:%@, airQualityCondition", &v54, 0x20u);
  }

  [(City *)self clearForecasts];
  location = [(City *)modelCopy location];

  if (location)
  {
    location2 = [(City *)modelCopy location];
    [(City *)self setWfLocation:location2];
  }

  link = [(City *)modelCopy link];
  [(City *)self setLink:link];

  deepLink = [(City *)modelCopy deepLink];
  [(City *)self setDeeplink:deepLink];

  currentConditions = [(City *)modelCopy currentConditions];
  v11 = currentConditions;
  if (currentConditions)
  {
    temperature = [currentConditions temperature];
    [(City *)self setTemperature:temperature];

    feelsLike = [v11 feelsLike];
    [(City *)self setFeelsLike:feelsLike];

    [v11 windDirection];
    [(City *)self setWindDirection:?];
    [v11 windSpeed];
    [(City *)self setWindSpeed:?];
    [v11 humidity];
    [(City *)self setHumidity:?];
    [v11 dewPoint];
    [(City *)self setDewPoint:?];
    [v11 visibility];
    [(City *)self setVisibility:?];
    [v11 pressure];
    [(City *)self setPressure:?];
    -[City setPressureRising:](self, "setPressureRising:", [v11 pressureRising]);
    -[City setUVIndex:](self, "setUVIndex:", [v11 UVIndex]);
    [v11 precipitationPast24Hours];
    [(City *)self setPrecipitationPast24Hours:v14];
    -[City setConditionCode:](self, "setConditionCode:", [v11 conditionCode]);
    -[City setObservationTime:](self, "setObservationTime:", [v11 observationTime]);
  }

  airQualityConditions = [(City *)modelCopy airQualityConditions];
  localizedAirQualityScaleCategory = [(City *)airQualityConditions localizedAirQualityScaleCategory];
  if (airQualityConditions)
  {
    v17 = WALogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 138412546;
      selfCopy7 = airQualityConditions;
      v56 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_272ACF000, v17, OS_LOG_TYPE_DEFAULT, "airCondition=%@, city: %@", &v54, 0x16u);
    }

    scaleIdentifier = [(City *)airQualityConditions scaleIdentifier];
    if (!scaleIdentifier)
    {
      v19 = WALogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 138412290;
        selfCopy7 = self;
        _os_log_impl(&dword_272ACF000, v19, OS_LOG_TYPE_DEFAULT, "error airCondition.scaleIdentifier was NULL for city: %@, using default", &v54, 0xCu);
      }

      scaleIdentifier = @"AQI";
    }

    [(City *)self setAirQualityScaleIdentifier:scaleIdentifier];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[City airQualityIndex](airQualityConditions, "airQualityIndex")}];
    [(City *)self setAirQualityIdx:v20];

    [(City *)self setAirQualityScaleCategory:localizedAirQualityScaleCategory];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WAAirQualityCategoryFromConditions(airQualityConditions)];
    [(City *)self setAirQualityCategory:v21];

    [(City *)self setAirQualitySignificance:[(City *)airQualityConditions significance]];
    [(City *)self setAirQualityTemporarilyUnavailable:[(City *)airQualityConditions temporarilyUnavailable]];
    scale = [(City *)airQualityConditions scale];
    [(City *)self setAirQualityScale:scale];

    currentScaleCategory = [(City *)airQualityConditions currentScaleCategory];
    [(City *)self setAirQualityCurrentScaleCategory:currentScaleCategory];

    currentScaleCategory2 = [(City *)airQualityConditions currentScaleCategory];
    recommendation = [currentScaleCategory2 recommendation];
    [(City *)self setAirQualityRecommendation:recommendation];

    providerAttribution = [(City *)airQualityConditions providerAttribution];
    name = [providerAttribution name];
    v28 = [name length];

    if (v28)
    {
      v29 = [[WeatherAQIAttribution alloc] initWithFoundationAttribution:providerAttribution];
      [(City *)self setAirQualityAttribution:v29];
      learnMoreURL = [(City *)airQualityConditions learnMoreURL];
    }

    else
    {
      if (![(City *)self airQualityCanUseDefaultAttribution])
      {
LABEL_20:

        goto LABEL_21;
      }

      mEMORY[0x277D7B270] = [MEMORY[0x277D7B270] sharedManager];
      defaultProviderAttribution = [mEMORY[0x277D7B270] defaultProviderAttribution];

      v29 = [[WeatherAQIAttribution alloc] initWithFoundationAttribution:defaultProviderAttribution];
      [(City *)self setAirQualityAttribution:v29];
      learnMoreURL = [MEMORY[0x277CBEBC0] URLWithString:@"http://www.weather.com/wx/today/"];
      providerAttribution = defaultProviderAttribution;
    }

    [(City *)self setAirQualityLearnMoreURL:learnMoreURL];

    goto LABEL_20;
  }

LABEL_21:
  if ([(City *)self conditionCode]== 3200)
  {
    v33 = WALogForCategory(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [City updateCityForModel:?];
    }
  }

  v34 = WALogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    hourlyForecasts = [(City *)modelCopy hourlyForecasts];
    v54 = 138543618;
    selfCopy7 = self;
    v56 = 2114;
    selfCopy2 = hourlyForecasts;
    _os_log_impl(&dword_272ACF000, v34, OS_LOG_TYPE_DEFAULT, "Updating city with hourly forecast, city: %{public}@, hourlyForecast=%{public}@", &v54, 0x16u);
  }

  hourlyForecasts2 = [(City *)modelCopy hourlyForecasts];
  [(City *)self setHourlyForecasts:hourlyForecasts2];

  v37 = WALogForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    dailyForecasts = [(City *)modelCopy dailyForecasts];
    v54 = 138543618;
    selfCopy7 = self;
    v56 = 2114;
    selfCopy2 = dailyForecasts;
    _os_log_impl(&dword_272ACF000, v37, OS_LOG_TYPE_DEFAULT, "Updating city with daily forecast, city: %{public}@, dailyForecast=%{public}@", &v54, 0x16u);
  }

  dailyForecasts2 = [(City *)modelCopy dailyForecasts];
  [(City *)self setDayForecasts:dailyForecasts2];

  _ISO8601Calendar = [objc_opt_class() _ISO8601Calendar];
  timeZone = [(City *)self timeZone];
  [_ISO8601Calendar setTimeZone:timeZone];

  sunrise = [(City *)modelCopy sunrise];
  v43 = [_ISO8601Calendar components:96 fromDate:sunrise];

  -[City setSunriseTime:](self, "setSunriseTime:", [v43 minute] + 100 * objc_msgSend(v43, "hour"));
  sunset = [(City *)modelCopy sunset];
  v45 = [_ISO8601Calendar components:96 fromDate:sunset];

  -[City setSunsetTime:](self, "setSunsetTime:", [v45 minute] + 100 * objc_msgSend(v45, "hour"));
  v46 = WALogForCategory(0);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    severeWeatherEvents = [(City *)modelCopy severeWeatherEvents];
    v54 = 138543618;
    selfCopy7 = self;
    v56 = 2114;
    selfCopy2 = severeWeatherEvents;
    _os_log_impl(&dword_272ACF000, v46, OS_LOG_TYPE_DEFAULT, "Updating city with severe weather events, city: %{public}@, severeWeatherEvents=%{public}@", &v54, 0x16u);
  }

  severeWeatherEvents2 = [(City *)modelCopy severeWeatherEvents];
  [(City *)self updateCityForSevereWeatherEvents:severeWeatherEvents2];

  v49 = WALogForCategory(0);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    nextHourPrecipitation = [(City *)modelCopy nextHourPrecipitation];
    v54 = 138543618;
    selfCopy7 = self;
    v56 = 2114;
    selfCopy2 = nextHourPrecipitation;
    _os_log_impl(&dword_272ACF000, v49, OS_LOG_TYPE_DEFAULT, "Updating city with next hour precipitation model, city: %{public}@, nextHourPrecipitation=%{public}@", &v54, 0x16u);
  }

  nextHourPrecipitation2 = [(City *)modelCopy nextHourPrecipitation];
  [(City *)self setNextHourPrecipitation:nextHourPrecipitation2];

  date = [MEMORY[0x277CBEAA8] date];
  [(City *)self setUpdateTime:date];

LABEL_34:
  v53 = *MEMORY[0x277D85DE8];
}

- (void)updateCityForSevereWeatherEvents:(id)events
{
  v23 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = eventsCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        expirationDate = [v10 expirationDate];
        date = [MEMORY[0x277CBEAA8] date];
        v13 = [expirationDate compare:date];

        if (v13 == 1)
        {
          [array addObject:v10];
        }

        if ([(City *)self _isValidLearnMoreURLForSevereEvent:v10])
        {
          v14 = [v10 URL];

          v7 = v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(City *)self setSevereWeatherEvents:array];
  [(City *)self setSevereWeatherEventLearnMoreURL:v7];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isValidLearnMoreURLForSevereEvent:(id)event
{
  v3 = [event URL];
  v4 = v3;
  if (v3)
  {
    scheme = [v3 scheme];
    uppercaseString = [scheme uppercaseString];

    if ([uppercaseString isEqualToString:@"HTTPS"] & 1) != 0 || (objc_msgSend(uppercaseString, "isEqualToString:", @"HTTP"))
    {
      v7 = 1;
    }

    else
    {
      v8 = WALogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [City _isValidLearnMoreURLForSevereEvent:v4];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_dataIsValid
{
  timeZone = [(City *)self timeZone];
  if (timeZone)
  {
    hourlyForecasts = [(City *)self hourlyForecasts];
    if ([hourlyForecasts count])
    {
      dayForecasts = [(City *)self dayForecasts];
      if ([dayForecasts count])
      {
        temperature = [(City *)self temperature];
        v7 = temperature != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  [(City *)self coordinate];
  v5 = v4;
  [(City *)self coordinate];
  return [v3 stringWithFormat:@"%f-%f", v5, v6];
}

- (NSString)countryCode
{
  wfLocation = [(City *)self wfLocation];
  countryAbbreviation = [wfLocation countryAbbreviation];

  return countryAbbreviation;
}

- (unint64_t)aqiDataAvailabilityStatus
{
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v3 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"])
  {
    if ([(City *)self aqiDataAvailabilityStatusOverride])
    {
      aqiDataAvailabilityStatusOverride = [(City *)self aqiDataAvailabilityStatusOverride];
LABEL_9:
      v8 = aqiDataAvailabilityStatusOverride;
      goto LABEL_12;
    }

LABEL_8:
    aqiDataAvailabilityStatusOverride = [(City *)self aqiDataAvailabilityStatusFromAppConfig];
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v3 objectForKey:@"feature.enhancedAQIView.airQualityAvailabilityForCountryOverride"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = [(City *)self aqiDataAvailabilityStatusFromAppConfig];
  }

  v8 = integerValue;

LABEL_12:
  return v8;
}

- (unint64_t)aqiDataAvailabilityStatusFromAppConfig
{
  mEMORY[0x277D7B2B0] = [MEMORY[0x277D7B2B0] sharedInstance];
  settings = [mEMORY[0x277D7B2B0] settings];
  aqiEnabledCountryCodes = [settings aqiEnabledCountryCodes];

  countryCode = [(City *)self countryCode];
  LODWORD(settings) = [aqiEnabledCountryCodes containsObject:countryCode];

  if (!settings)
  {
    goto LABEL_6;
  }

  if (![(City *)self airQualityTemporarilyUnavailable])
  {
    airQualityIdx = [(City *)self airQualityIdx];
    if (airQualityIdx)
    {
      v9 = airQualityIdx;
      airQualityCategory = [(City *)self airQualityCategory];
      v11 = airQualityCategory != 0;

      v7 = 2 * v11;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (NSNumber)airQualityCategory
{
  v3 = self->_airQualityCategory;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v4 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"] && (-[City airQualityCategoryOverride](self, "airQualityCategoryOverride"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(City *)self airQualityCategoryOverride];
    v3 = v7 = v3;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v7 = [v4 objectForKey:@"feature.enhancedAQIView.airQualityCategoryOverride"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v7;

        v3 = v7;
      }
    }
  }

LABEL_9:

  return v3;
}

- (NSNumber)airQualityIdx
{
  v3 = self->_airQualityIdx;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v4 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"] && (-[City airQualityIdxOverride](self, "airQualityIdxOverride"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(City *)self airQualityIdxOverride];
    v3 = v7 = v3;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v7 = [v4 stringForKey:@"feature.enhancedAQIView.airQualityIndexOverride"];
    if (v7)
    {
      v8 = WANumberFormatterForDisplayingAQI();
      v9 = [v8 numberFromString:v7];

      v3 = v9;
    }
  }

LABEL_8:

  return v3;
}

- (unint64_t)airQualitySignificance
{
  airQualitySignificance = self->_airQualitySignificance;
  v4 = +[WeatherInternalPreferences sharedInternalPreferences];
  v5 = [v4 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  if ([v4 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"] && -[City airQualitySignificanceOverride](self, "airQualitySignificanceOverride"))
  {
    airQualitySignificance = [(City *)self airQualitySignificanceOverride];
  }

  else if (v5)
  {
    v6 = [v4 objectForKey:@"feature.enhancedAQIView.airQualitySignificanceOverride"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        airQualitySignificance = [v6 integerValue];
      }
    }
  }

  return airQualitySignificance;
}

- (BOOL)airQualityForceHideRecommendation
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  v4 = [v2 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  v5 = 0;
  if (v3 && (v4 & 1) == 0)
  {
    v6 = [v2 objectForKey:@"feature.enhancedAQIView.airQualityRecommendationEnabled"];
    v5 = v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 integerValue] == 1;
  }

  return v5;
}

- (BOOL)airQualityCanUseDefaultAttribution
{
  v2 = +[WeatherInternalPreferences sharedInternalPreferences];
  v3 = [v2 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  v4 = [v2 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  v5 = 0;
  if (v3 && (v4 & 1) == 0)
  {
    v5 = [v2 BOOLForKey:@"feature.enhancedAQIView.useDefaultAttribution"];
  }

  return v5;
}

- (BOOL)airQualityScaleIsAscending
{
  airQualityScale = [(City *)self airQualityScale];

  if (airQualityScale)
  {
    airQualityScale2 = [(City *)self airQualityScale];
    isAscending = [airQualityScale2 isAscending];
  }

  else
  {
    isAscending = 1;
  }

  v6 = +[WeatherInternalPreferences sharedInternalPreferences];
  v7 = [v6 BOOLForKey:@"feature.enhancedAQIView.scaleOverridesEnabled"];
  v8 = [v6 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  if (v7 && (v8 & 1) == 0)
  {
    v9 = [v6 objectForKey:@"feature.enhancedAQIView.scale.ascendingOverride"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v9 integerValue];
        if (integerValue == 1)
        {
          isAscending = 0;
        }

        else if (!integerValue)
        {
          isAscending = 1;
        }
      }
    }
  }

  return isAscending;
}

- (BOOL)airQualityScaleIsNumerical
{
  airQualityScale = [(City *)self airQualityScale];

  if (airQualityScale)
  {
    airQualityScale2 = [(City *)self airQualityScale];
    isNumerical = [airQualityScale2 isNumerical];
  }

  else
  {
    isNumerical = 1;
  }

  v6 = +[WeatherInternalPreferences sharedInternalPreferences];
  v7 = [v6 BOOLForKey:@"feature.enhancedAQIView.scaleOverridesEnabled"];
  v8 = [v6 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  if (v7 && (v8 & 1) == 0)
  {
    v9 = [v6 objectForKey:@"feature.enhancedAQIView.scale.numericalOverride"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v9 integerValue];
        if (integerValue == 1)
        {
          isNumerical = 0;
        }

        else if (!integerValue)
        {
          isNumerical = 1;
        }
      }
    }
  }

  return isNumerical;
}

- (WFAQIScale)airQualityScale
{
  defaultScale = self->_airQualityScale;
  if (!defaultScale)
  {
    v3 = +[WeatherInternalPreferences sharedInternalPreferences];
    if ([v3 BOOLForKey:@"feature.enhancedAQIView.allowUseDefaultScaleIfCacheEmpty"])
    {
      mEMORY[0x277D7B228] = [MEMORY[0x277D7B228] sharedManager];
      defaultScale = [mEMORY[0x277D7B228] defaultScale];
    }

    else
    {
      defaultScale = 0;
    }
  }

  return defaultScale;
}

- (NSDictionary)urlComponents
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(City *)self latitude];
  v5 = [v4 numberWithDouble:?];
  [dictionary na_safeSetObject:v5 forKey:@"lat"];

  v6 = MEMORY[0x277CCABB0];
  [(City *)self longitude];
  v7 = [v6 numberWithDouble:?];
  [dictionary na_safeSetObject:v7 forKey:@"long"];

  name = [(City *)self name];
  [dictionary na_safeSetObject:name forKey:@"city"];

  if ([(City *)self isLocalWeatherCity])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isLocal"];
  }

  return dictionary;
}

- (void)update
{
  v10 = *MEMORY[0x277D85DE8];
  displayName = [self displayName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_272ACF000, v2, v3, "update of %@ aborted; weather is up to date.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__City_updateTimeZoneWithCompletionBlock___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_272ACF000, a2, OS_LOG_TYPE_ERROR, "Geocode failure while updating wfLocation for timezone etc. Error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)cityDidFinishUpdatingWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_272ACF000, v1, OS_LOG_TYPE_ERROR, "City: %@, updating failed with error:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)primaryConditionForRange:(NSRange)a1 .cold.1(NSRange a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = NSStringFromRange(a1);
  [*a2 count];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272ACF000, v0, v1, "Forecast Type %d to %d", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)naturalLanguageDescriptionWithDescribedCondition:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_272ACF000, v0, OS_LOG_TYPE_DEBUG, "debugString: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateCityForModel:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 displayName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_isValidLearnMoreURLForSevereEvent:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end