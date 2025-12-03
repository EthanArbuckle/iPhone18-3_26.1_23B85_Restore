@interface WeatherAQIAttribution
- (BOOL)isValid;
- (NSString)name;
- (WeatherAQIAttribution)initWithFoundationAttribution:(id)attribution;
- (int64_t)dataOrigination;
- (void)reverseGeocodeStationLocation:(id)location;
@end

@implementation WeatherAQIAttribution

- (WeatherAQIAttribution)initWithFoundationAttribution:(id)attribution
{
  attributionCopy = attribution;
  v21.receiver = self;
  v21.super_class = WeatherAQIAttribution;
  v5 = [(WeatherAQIAttribution *)&v21 init];
  if (v5)
  {
    name = [attributionCopy name];
    name = v5->_name;
    v5->_name = name;

    cachedLogoImage = [attributionCopy cachedLogoImage];
    cachedLogoImage = v5->_cachedLogoImage;
    v5->_cachedLogoImage = cachedLogoImage;

    v5->_dataOrigination = [attributionCopy dataOrigination];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.weatherframework.airquality.attribution.reverse.geocoding", v10);
    reverseGeocodingQueue = v5->_reverseGeocodingQueue;
    v5->_reverseGeocodingQueue = v11;

    station = [attributionCopy station];

    if (station)
    {
      station2 = [attributionCopy station];
      location = [station2 location];
      stationLocation = v5->_stationLocation;
      v5->_stationLocation = location;

      station3 = [attributionCopy station];
      lastReadDate = [station3 lastReadDate];
      stationLastReadDate = v5->_stationLastReadDate;
      v5->_stationLastReadDate = lastReadDate;

      [(WeatherAQIAttribution *)v5 reverseGeocodeStationLocation:0];
    }
  }

  return v5;
}

- (BOOL)isValid
{
  name = [(WeatherAQIAttribution *)self name];
  v3 = [name length] != 0;

  return v3;
}

- (void)reverseGeocodeStationLocation:(id)location
{
  locationCopy = location;
  stationLocation = [(WeatherAQIAttribution *)self stationLocation];

  if (stationLocation)
  {
    reverseGeocodingQueue = [(WeatherAQIAttribution *)self reverseGeocodingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__WeatherAQIAttribution_reverseGeocodeStationLocation___block_invoke;
    v8[3] = &unk_279E68158;
    v8[4] = self;
    v9 = locationCopy;
    dispatch_async(reverseGeocodingQueue, v8);
  }

  else if (locationCopy)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.foundation.airQuality.provider.attribution.errorDomain" code:7777 userInfo:0];
    (*(locationCopy + 2))(locationCopy, 0, v7);
  }
}

void __55__WeatherAQIAttribution_reverseGeocodeStationLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geocodeRequest];

  if (v2)
  {
    v3 = [*(a1 + 32) geocodeRequest];
    [v3 cancel];
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = objc_alloc(MEMORY[0x277D7B278]);
  v5 = [*(a1 + 32) stationLocation];
  [v5 coordinate];
  v7 = v6;
  v9 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__WeatherAQIAttribution_reverseGeocodeStationLocation___block_invoke_2;
  v12[3] = &unk_279E67BF8;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 40);
  v10 = [v4 initWithCoordinate:v12 resultHandler:{v7, v9}];
  [*(a1 + 32) setGeocodeRequest:v10];

  v11 = [*(a1 + 32) geocodeRequest];
  [v11 start];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__WeatherAQIAttribution_reverseGeocodeStationLocation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5)
  {
    v7 = [v9 displayName];
    [WeakRetained setStationLocationName:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

- (NSString)name
{
  p_isa = self->_name;
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  v5 = [v3 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  if (v4 && (v5 & 1) == 0)
  {
    v6 = [v3 objectForKey:@"feature.enhancedAQIView.airQualityDataProviderOverride"];
    if (!v6)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    integerValue = [v6 integerValue];
    if (integerValue)
    {
      if (integerValue != 1)
      {
LABEL_10:

        goto LABEL_11;
      }

      v8 = @"Breezometer";
    }

    else
    {
      v8 = @"The Weather Channel";
    }

    p_isa = &v8->isa;
    goto LABEL_10;
  }

LABEL_11:

  return p_isa;
}

- (int64_t)dataOrigination
{
  dataOrigination = self->_dataOrigination;
  v3 = +[WeatherInternalPreferences sharedInternalPreferences];
  v4 = [v3 BOOLForKey:@"feature.enhancedAQIView.overridesEnabled"];
  v5 = [v3 BOOLForKey:@"feature.enhancedAQIView.demoModeEnabled"];
  if (v4 && (v5 & 1) == 0)
  {
    v6 = [v3 objectForKey:@"feature.enhancedAQIView.airQualityDataOriginationOverride"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 integerValue] <= 1)
      {
        dataOrigination = [v6 integerValue];
      }
    }
  }

  return dataOrigination;
}

@end