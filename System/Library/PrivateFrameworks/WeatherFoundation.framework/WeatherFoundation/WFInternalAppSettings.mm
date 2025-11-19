@interface WFInternalAppSettings
- (NSSet)aqiEnabledCountryCodes;
- (NSString)apiVersion;
- (NSString)apiVersionFallback;
- (NSString)description;
- (WFWeatherEventsConfig)weatherEventsConfig;
- (unint64_t)locationNumDecimalsOfPrecision;
- (unint64_t)networkFailedAttemptsLimit;
- (unint64_t)networkSwitchExpirationTimeInSeconds;
@end

@implementation WFInternalAppSettings

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFInternalAppSettings *)self apiVersion];
  v5 = [(WFInternalAppSettings *)self apiVersionFallback];
  v6 = [v3 stringWithFormat:@"API version = %@, API Fallback version = %@, Network Failed Attempts Limit = %lu, Network Switch Expiration Time In Seconds = %lu, location precision = %ld", v4, v5, -[WFInternalAppSettings networkFailedAttemptsLimit](self, "networkFailedAttemptsLimit"), -[WFInternalAppSettings networkFailedAttemptsLimit](self, "networkFailedAttemptsLimit"), -[WFInternalAppSettings locationNumDecimalsOfPrecision](self, "locationNumDecimalsOfPrecision")];

  return v6;
}

- (NSString)apiVersion
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 stringForKey:@"apiVersion"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"twc_v2";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSSet)aqiEnabledCountryCodes
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 BOOLForKey:@"aqiEnabled"];

  if (v3)
  {
    v4 = WeatherFoundationInternalUserDefaults();
    v5 = [v4 arrayForKey:@"aqiEnabledCountries"];

    if (v5)
    {
      [MEMORY[0x277CBEB98] setWithArray:v5];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithObjects:{@"CN", @"US", @"DE", @"IN", @"MX", @"GB", 0}];
    }
    v6 = ;
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (NSString)apiVersionFallback
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 stringForKey:@"apiVersionFallback"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"twc_v2";
  }

  v6 = v5;

  return &v5->isa;
}

- (unint64_t)networkFailedAttemptsLimit
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 objectForKey:@"networkFailedAttemptsLimit"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)networkSwitchExpirationTimeInSeconds
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 objectForKey:@"networkSwitchExpirationTime"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 60;
  }

  return v4;
}

- (unint64_t)locationNumDecimalsOfPrecision
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 objectForKey:@"locationDecimalPrecision"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (WFWeatherEventsConfig)weatherEventsConfig
{
  v2 = [[WFWeatherEventsConfig alloc] initWithDictionary:0];

  return v2;
}

@end