@interface WFRemoteAppSettings
+ (BOOL)useInternalBundleID;
+ (BOOL)wfInternalBuild;
+ (id)bundleIDsListFor:(id)for useInternalBundleID:(BOOL)d useSeedBundleID:(BOOL)iD;
+ (id)configurationWithData:(id)data bundleIDs:(id)ds country:(id)country userID:(id)d error:(id *)error;
+ (id)configurationWithData:(id)data userID:(id)d error:(id *)error;
+ (id)defaultSettings;
- (BOOL)aqiEnabledForCountryCode:(id)code;
- (BOOL)isExpired;
- (BOOL)shouldUseAPIVersionFromDictionary:(id)dictionary userID:(id)d;
- (NSString)description;
- (WFRemoteAppSettings)initWithConfigDictionary:(id)dictionary bundleIDs:(id)ds country:(id)country userID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getAPIVersionFromDictionary:(id)dictionary userID:(id)d;
- (id)getEnvironmentSpecificConfigDictionaryFromDictionary:(id)dictionary bundleIDs:(id)ds country:(id)country;
- (id)getSpecificConfigFromConfigs:(id)configs configSpecifiers:(id)specifiers specifierKey:(id)key;
- (void)isExpired;
@end

@implementation WFRemoteAppSettings

+ (id)configurationWithData:(id)data userID:(id)d error:(id *)error
{
  v7 = MEMORY[0x277CCA8D8];
  dCopy = d;
  dataCopy = data;
  mainBundle = [v7 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];

  useInternalBundleID = [objc_opt_class() useInternalBundleID];
  wfSeedBuild = [objc_opt_class() wfSeedBuild];
  if (bundleIdentifier)
  {
    v16 = [objc_opt_class() bundleIDsListFor:bundleIdentifier useInternalBundleID:useInternalBundleID useSeedBundleID:wfSeedBuild];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [objc_opt_class() configurationWithData:dataCopy bundleIDs:v16 country:countryCode userID:dCopy error:error];

  return v17;
}

+ (id)configurationWithData:(id)data bundleIDs:(id)ds country:(id)country userID:(id)d error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dsCopy = ds;
  countryCopy = country;
  dCopy = d;
  v21 = 0;
  v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v21];
  v15 = v21;
  v16 = +[WFRemoteAppSettings defaultSettings];
  v17 = v16;
  if (v15)
  {
    v18 = v16;
  }

  else
  {
    v18 = [[WFRemoteAppSettings alloc] initWithConfigDictionary:v14 bundleIDs:dsCopy country:countryCopy userID:dCopy];

    v19 = WFLogForCategory(9uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_impl(&dword_272B94000, v19, OS_LOG_TYPE_DEFAULT, "[WFRemoteAppSettings] initialized new remote app settings instance: %@", buf, 0xCu);
    }
  }

  return v18;
}

+ (id)defaultSettings
{
  v2 = [[WFRemoteAppSettings alloc] initWithConfigDictionary:0 bundleIDs:0 country:0 userID:0];

  return v2;
}

+ (id)bundleIDsListFor:(id)for useInternalBundleID:(BOOL)d useSeedBundleID:(BOOL)iD
{
  iDCopy = iD;
  dCopy = d;
  forCopy = for;
  v8 = objc_opt_new();
  if (dCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", forCopy, @"internal"];
    [v8 addObject:v9];
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v11 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li_%li", 0, 0];
  if (iDCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.seed", forCopy, v12];
    [v8 addObject:v13];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", forCopy, v12];
  [v8 addObject:v14];

  [v8 addObject:forCopy];

  return v8;
}

+ (BOOL)useInternalBundleID
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 BOOLForKey:@"use_non_internal_bundleid"];

  return [objc_opt_class() wfInternalBuild] & (v3 ^ 1);
}

+ (BOOL)wfInternalBuild
{
  if (wfInternalBuild_onceToken != -1)
  {
    +[WFRemoteAppSettings wfInternalBuild];
  }

  return wfInternalBuild_internalBuild;
}

uint64_t __38__WFRemoteAppSettings_wfInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  wfInternalBuild_internalBuild = result;
  return result;
}

- (WFRemoteAppSettings)initWithConfigDictionary:(id)dictionary bundleIDs:(id)ds country:(id)country userID:(id)d
{
  dictionaryCopy = dictionary;
  dsCopy = ds;
  countryCopy = country;
  dCopy = d;
  v39.receiver = self;
  v39.super_class = WFRemoteAppSettings;
  v14 = [(WFRemoteAppSettings *)&v39 init];
  if (v14)
  {
    v15 = WeatherFoundationInternalUserDefaults();
    v16 = [v15 objectForKey:@"cachedAppConfigLastSavedDate"];
    v17 = [v16 copy];
    lastModificationDate = v14->_lastModificationDate;
    v14->_lastModificationDate = v17;

    if (!v14->_lastModificationDate)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v20 = v14->_lastModificationDate;
      v14->_lastModificationDate = distantPast;
    }

    v21 = [(WFRemoteAppSettings *)v14 getEnvironmentSpecificConfigDictionaryFromDictionary:dictionaryCopy bundleIDs:dsCopy country:countryCopy];
    objc_storeStrong(&v14->_config, v21);
    if (v21)
    {
      v22 = MEMORY[0x277CBEB98];
      v23 = [v21 objectForKeyedSubscript:@"aqiEnabledCountries"];
      v24 = [v22 setWithArray:v23];
      aqiEnabledCountryCodes = v14->_aqiEnabledCountryCodes;
      v14->_aqiEnabledCountryCodes = v24;
    }

    else
    {
      v23 = v14->_aqiEnabledCountryCodes;
      v14->_aqiEnabledCountryCodes = 0;
    }

    v14->_appConfigRefreshRate = [MEMORY[0x277CBEAC0] integerValueFromDictionary:v21 forKey:@"configRefreshRate" defaultValue:86400];
    v14->_networkFailedAttemptsLimit = [MEMORY[0x277CBEAC0] integerValueFromDictionary:v21 forKey:@"networkFailedAttemptsLimit" defaultValue:3];
    v14->_networkSwitchExpirationTimeInSeconds = [MEMORY[0x277CBEAC0] integerValueFromDictionary:v21 forKey:@"networkSwitchExpirationTime" defaultValue:3600];
    v26 = [(WFRemoteAppSettings *)v14 getAPIVersionFromDictionary:v21 userID:dCopy];
    apiVersion = v14->_apiVersion;
    v14->_apiVersion = v26;

    v28 = [MEMORY[0x277CBEAC0] stringValueFromDictionary:v21 forKey:@"apiVersionFallback" defaultValue:@"twc_v2"];
    apiVersionFallback = v14->_apiVersionFallback;
    v14->_apiVersionFallback = v28;

    v14->_locationNumDecimalsOfPrecision = [MEMORY[0x277CBEAC0] integerValueFromDictionary:v21 forKey:@"locationDecimalPrecision" defaultValue:3];
    v30 = [v21 dictionaryForKey:@"widgetRefresh"];
    widgetRefreshPolicy = v14->_widgetRefreshPolicy;
    v14->_widgetRefreshPolicy = v30;

    v32 = [v21 dictionaryForKey:@"WeatherEventConfig"];
    v33 = [[WFWeatherEventsConfig alloc] initWithDictionary:v32];
    weatherEventsConfig = v14->_weatherEventsConfig;
    v14->_weatherEventsConfig = v33;

    [MEMORY[0x277CBEAC0] timeIntervalValueFromDictionary:v21 forKey:@"cachedGeocodeLocationExpirationTimeInterval" defaultValue:86400.0];
    v14->_cachedGeocodeLocationExpirationTimeInterval = v35;
    [MEMORY[0x277CBEAC0] timeIntervalValueFromDictionary:v21 forKey:@"locationUpdateMinTimeInterval" defaultValue:1800.0];
    v14->_locationUpdateMinTimeInterval = v36;
    [MEMORY[0x277CBEAC0] doubleValueFromDictionary:v21 forKey:@"locationUpdateMinDistance" defaultValue:1500.0];
    v14->_locationUpdateMinDistance = v37;
    v14->_disableForecastRequestCancelation = [v21 BOOLForKey:@"disableForecastRequestCancelation" defaultValue:0];
    v14->_disablePriorityForecastRequestQueue = [v21 BOOLForKey:@"disablePriorityForecastRequestQueue" defaultValue:0];
    v14->_loadSavedCitiesFromKVSOnly = [v21 BOOLForKey:@"loadSavedCitiesFromKVSOnly" defaultValue:0];
    v14->_disableLimitReverseGeocoding = [v21 BOOLForKey:@"disableLimitReverseGeocoding" defaultValue:0];
  }

  return v14;
}

- (id)getEnvironmentSpecificConfigDictionaryFromDictionary:(id)dictionary bundleIDs:(id)ds country:(id)country
{
  v49[1] = *MEMORY[0x277D85DE8];
  countryCopy = country;
  dsCopy = ds;
  dictionaryCopy = dictionary;
  v48 = [dictionaryCopy stringForKey:@"fallbackBundleId"];
  v11 = [dsCopy mutableCopy];

  v47 = v11;
  [v11 wf_safelyAddObject:v48];
  v46 = [dictionaryCopy arrayForKey:@"weatherBundleConfigs"];
  v12 = [(WFRemoteAppSettings *)self getSpecificConfigFromConfigs:v46 configSpecifiers:v11 specifierKey:@"bundleId"];
  v13 = [v12 stringForKey:@"bundleId"];
  bundleID = self->_bundleID;
  self->_bundleID = v13;

  v15 = [dictionaryCopy arrayForKey:@"endpointConfigs"];
  v45 = v15;
  v16 = WeatherFoundationInternalUserDefaults();
  v17 = [v16 stringForKey:@"AppAnalyticsEnvironment"];
  v18 = v17;
  v19 = @"PRODUCTION";
  if (v17)
  {
    v19 = v17;
  }

  v20 = v19;

  v49[0] = v20;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v21 = [(WFRemoteAppSettings *)self getSpecificConfigFromConfigs:v15 configSpecifiers:v44 specifierKey:@"environment"];
  v22 = [v21 objectForKeyedSubscript:@"appAnalyticsEndpointUrl"];
  v23 = v22;
  v24 = @"https://weather-analytics-events.apple.com/analyticseventsv2/async";
  if (v22)
  {
    v24 = v22;
  }

  v25 = v24;

  v26 = [MEMORY[0x277CBEBC0] URLWithString:v25];

  appAnalyticsEndpointUrl = self->_appAnalyticsEndpointUrl;
  self->_appAnalyticsEndpointUrl = v26;

  v28 = [dictionaryCopy objectForKey:@"privacyConfiguration"];

  LODWORD(v29) = 1045220557;
  [MEMORY[0x277CBEAC0] floatValueFromDictionary:v28 forKey:@"dataSamplingRate" defaultValue:v29];
  self->_dataSamplingRate = v30;
  LODWORD(v31) = 0.25;
  [MEMORY[0x277CBEAC0] floatValueFromDictionary:v28 forKey:@"telemetrySamplingRate" defaultValue:v31];
  self->_telemetrySamplingRate = v32;
  LODWORD(v33) = 1045220557;
  [MEMORY[0x277CBEAC0] floatValueFromDictionary:v28 forKey:@"locationGeocodingSamplingRate" defaultValue:v33];
  self->_locationGeocodingSamplingRate = v34;
  [MEMORY[0x277CBEAC0] timeIntervalValueFromDictionary:v28 forKey:@"userIdentifierResetTimeInterval" defaultValue:2592000.0];
  self->_userIdentifierResetTimeInterval = v35;
  [MEMORY[0x277CBEAC0] timeIntervalValueFromDictionary:v28 forKey:@"privateUserIdentifierResetTimeInterval" defaultValue:33696000.0];
  self->_privateUserIdentifierResetTimeInterval = v36;
  v37 = [v12 stringForKey:@"fallbackCountryCode"];
  v38 = objc_opt_new();
  [v38 wf_safelyAddObject:countryCopy];

  [v38 wf_safelyAddObject:v37];
  v39 = [v12 arrayForKey:@"weatherCountryConfigs"];
  v40 = [(WFRemoteAppSettings *)self getSpecificConfigFromConfigs:v39 configSpecifiers:v38 specifierKey:@"countryCode"];
  v41 = [v40 stringForKey:@"countryCode"];
  countryCode = self->_countryCode;
  self->_countryCode = v41;

  return v40;
}

- (id)getSpecificConfigFromConfigs:(id)configs configSpecifiers:(id)specifiers specifierKey:(id)key
{
  v36 = *MEMORY[0x277D85DE8];
  configsCopy = configs;
  specifiersCopy = specifiers;
  keyCopy = key;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = specifiersCopy;
  v24 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v11 = *v31;
    v25 = configsCopy;
    v23 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = configsCopy;
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v26 + 1) + 8 * j);
              v20 = [v19 stringForKey:keyCopy];
              if ([v20 length] && (objc_msgSend(v13, "isEqualToString:", v20) & 1) != 0)
              {
                v21 = v19;

                configsCopy = v25;
                goto LABEL_20;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        configsCopy = v25;
        v11 = v23;
      }

      v21 = 0;
      v24 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  else
  {
    v21 = 0;
  }

LABEL_20:

  return v21;
}

- (id)getAPIVersionFromDictionary:(id)dictionary userID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dictionary)
  {
    [dictionary arrayForKey:@"weatherApiVersionConfigs"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
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
          if ([(WFRemoteAppSettings *)self shouldUseAPIVersionFromDictionary:v12 userID:dCopy, v18])
          {
            v14 = [MEMORY[0x277CBEAC0] stringValueFromDictionary:v12 forKey:@"apiVersion" defaultValue:@"wds_v1"];
            v15 = WFLogForCategory(9uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [WFRemoteAppSettings getAPIVersionFromDictionary:v12 userID:?];
            }

            goto LABEL_16;
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

    v13 = WFLogForCategory(9uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [WFRemoteAppSettings getAPIVersionFromDictionary:v13 userID:?];
    }

    v14 = @"wds_v1";
LABEL_16:
  }

  else
  {
    v16 = WFLogForCategory(9uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [WFRemoteAppSettings getAPIVersionFromDictionary:v16 userID:?];
    }

    v14 = @"wds_v1";
  }

  return v14;
}

- (BOOL)shouldUseAPIVersionFromDictionary:(id)dictionary userID:(id)d
{
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  dictionaryCopy = dictionary;
  v9 = [v6 integerValueFromDictionary:dictionaryCopy forKey:@"modMax" defaultValue:1000];
  v10 = [dCopy hash];

  self->_apiConfigModdedHash = v10 % v9;
  v11 = WeatherFoundationInternalUserDefaults();
  v12 = [v11 objectForKey:@"api_version_bucket_hash"];

  if (v12)
  {
    self->_apiConfigModdedHash = [v12 unsignedIntegerValue] % v9;
  }

  self->_apiConfigMinRange = [MEMORY[0x277CBEAC0] integerValueFromDictionary:dictionaryCopy forKey:@"minRange" defaultValue:0];
  v13 = [MEMORY[0x277CBEAC0] integerValueFromDictionary:dictionaryCopy forKey:@"maxRange" defaultValue:0];

  self->_apiConfigMaxRange = v13;
  apiConfigModdedHash = self->_apiConfigModdedHash;
  v16 = self->_apiConfigMinRange <= apiConfigModdedHash && apiConfigModdedHash < v13;

  return v16;
}

- (NSString)description
{
  v17 = MEMORY[0x277CCACA8];
  aqiEnabledCountryCodes = [(WFRemoteAppSettings *)self aqiEnabledCountryCodes];
  appConfigRefreshRate = [(WFRemoteAppSettings *)self appConfigRefreshRate];
  networkFailedAttemptsLimit = [(WFRemoteAppSettings *)self networkFailedAttemptsLimit];
  networkSwitchExpirationTimeInSeconds = [(WFRemoteAppSettings *)self networkSwitchExpirationTimeInSeconds];
  apiVersion = [(WFRemoteAppSettings *)self apiVersion];
  apiVersionFallback = [(WFRemoteAppSettings *)self apiVersionFallback];
  locationNumDecimalsOfPrecision = [(WFRemoteAppSettings *)self locationNumDecimalsOfPrecision];
  [(WFRemoteAppSettings *)self cachedGeocodeLocationExpirationTimeInterval];
  v10 = v9;
  [(WFRemoteAppSettings *)self locationUpdateMinTimeInterval];
  v12 = v11;
  [(WFRemoteAppSettings *)self locationUpdateMinDistance];
  v14 = [v17 stringWithFormat:@"AQI countries = %@, refresh rate = %lld, network fail limit = %lu, network switch expiration = %lu, API version = %@, API version fallback = %@, location precision = %ld, _cachedGeocodeLocationExpirationTimeInterval: %f, locationUpdateMinTimeInterval: %f, locationUpdateMinDistance: %f, disableForecastRequestCancelation: %d, disablePriorityForecastRequestQueue: %d, loadSavedCitiesFromKVSOnly: %d, disableLimitReverseGeocoding: %d", aqiEnabledCountryCodes, appConfigRefreshRate, networkFailedAttemptsLimit, networkSwitchExpirationTimeInSeconds, apiVersion, apiVersionFallback, locationNumDecimalsOfPrecision, v10, v12, v13, -[WFRemoteAppSettings disableForecastRequestCancelation](self, "disableForecastRequestCancelation"), -[WFRemoteAppSettings disablePriorityForecastRequestQueue](self, "disablePriorityForecastRequestQueue"), -[WFRemoteAppSettings loadSavedCitiesFromKVSOnly](self, "loadSavedCitiesFromKVSOnly"), -[WFRemoteAppSettings disableLimitReverseGeocoding](self, "disableLimitReverseGeocoding")];

  return v14;
}

- (BOOL)isExpired
{
  date = [MEMORY[0x277CBEAA8] date];
  lastModificationDate = [(WFRemoteAppSettings *)self lastModificationDate];
  [date timeIntervalSinceDate:lastModificationDate];
  v6 = v5;

  appConfigRefreshRate = [(WFRemoteAppSettings *)self appConfigRefreshRate];
  v8 = WFLogForCategory(9uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6 < appConfigRefreshRate)
  {
    if (v9)
    {
      [(WFRemoteAppSettings *)self isExpired];
    }
  }

  else if (v9)
  {
    [(WFRemoteAppSettings *)self isExpired];
  }

  return v6 >= appConfigRefreshRate;
}

- (BOOL)aqiEnabledForCountryCode:(id)code
{
  codeCopy = code;
  aqiEnabledCountryCodes = [(WFRemoteAppSettings *)self aqiEnabledCountryCodes];
  if (aqiEnabledCountryCodes)
  {
    aqiEnabledCountryCodes2 = [(WFRemoteAppSettings *)self aqiEnabledCountryCodes];
    v7 = [aqiEnabledCountryCodes2 containsObject:codeCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_apiVersion copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSDictionary *)self->_widgetRefreshPolicy copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(NSString *)self->_apiVersionFallback copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSSet *)self->_aqiEnabledCountryCodes copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 144) = self->_appConfigRefreshRate;
  v14 = [(NSDate *)self->_lastModificationDate copyWithZone:zone];
  v15 = *(v5 + 152);
  *(v5 + 152) = v14;

  *(v5 + 48) = self->_networkFailedAttemptsLimit;
  *(v5 + 56) = self->_networkSwitchExpirationTimeInSeconds;
  *(v5 + 64) = self->_locationNumDecimalsOfPrecision;
  v16 = [(WFWeatherEventsConfig *)self->_weatherEventsConfig copyWithZone:zone];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(NSString *)self->_bundleID copyWithZone:zone];
  v19 = *(v5 + 160);
  *(v5 + 160) = v18;

  v20 = [(NSString *)self->_countryCode copyWithZone:zone];
  v21 = *(v5 + 168);
  *(v5 + 168) = v20;

  *(v5 + 176) = self->_apiConfigModdedHash;
  *(v5 + 184) = self->_apiConfigMinRange;
  *(v5 + 192) = self->_apiConfigMaxRange;
  v22 = [(NSURL *)self->_appAnalyticsEndpointUrl copyWithZone:zone];
  v23 = *(v5 + 88);
  *(v5 + 88) = v22;

  *(v5 + 12) = self->_dataSamplingRate;
  *(v5 + 16) = self->_telemetrySamplingRate;
  *(v5 + 20) = self->_locationGeocodingSamplingRate;
  *(v5 + 96) = self->_userIdentifierResetTimeInterval;
  *(v5 + 104) = self->_privateUserIdentifierResetTimeInterval;
  *(v5 + 112) = self->_cachedGeocodeLocationExpirationTimeInterval;
  *(v5 + 120) = self->_locationUpdateMinTimeInterval;
  *(v5 + 128) = self->_locationUpdateMinDistance;
  return v5;
}

- (void)getAPIVersionFromDictionary:(void *)a1 userID:.cold.1(void *a1)
{
  v2 = [a1 numberForKey:@"minRange"];
  v8 = [a1 numberForKey:@"maxRange"];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)getAPIVersionFromDictionary:(uint64_t)a1 userID:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "user did not fall in any range, use default source: %@", &v2, 0xCu);
}

- (void)getAPIVersionFromDictionary:(uint64_t)a1 userID:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "no apiVersion dictionary to parse, use default source: %@", &v2, 0xCu);
}

- (void)isExpired
{
  lastModificationDate = [self lastModificationDate];
  [self appConfigRefreshRate];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end