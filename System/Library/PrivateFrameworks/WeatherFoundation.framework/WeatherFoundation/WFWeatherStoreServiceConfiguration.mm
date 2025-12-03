@interface WFWeatherStoreServiceConfiguration
+ (id)defaultConfiguration;
+ (id)defaultConfigurationWithSourceBundleIdentifier:(id)identifier;
+ (id)generateUserAgent;
- (BOOL)isServiceAvailableSync;
- (BOOL)isValid;
- (NSString)apiVersion;
- (NSURL)serviceConnectivityEvaluationURL;
- (WFWeatherStoreServiceConfiguration)init;
- (id)apiConfiguration;
- (id)apiConfigurationForAPIVersion:(id)version;
- (id)aqiScaleRequestForScaleNamed:(id)named language:(id)language error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)forecastRequestForTypes:(unint64_t)types location:(id)location date:(id)date error:(id *)error;
- (id)forecastRequestForTypes:(unint64_t)types location:(id)location units:(int)units date:(id)date apiVersion:(id)version error:(id *)error requestOptions:(id)options;
- (id)parseAQIScaleNamed:(id)named data:(id)data apiVersion:(id)version error:(id *)error;
- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date apiVersion:(id)version error:(id *)self0;
- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)invalidate;
- (void)setServiceConnectivityEvaluationURL:(id)l;
@end

@implementation WFWeatherStoreServiceConfiguration

+ (id)defaultConfigurationWithSourceBundleIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  objc_opt_class();
  v4 = objc_opt_new();
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration setHTTPShouldUsePipelining:1];
  [defaultSessionConfiguration setTimeoutIntervalForRequest:30.0];
  v12 = @"User-Agent";
  v6 = +[WFWeatherStoreServiceConfiguration generateUserAgent];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [defaultSessionConfiguration setHTTPAdditionalHeaders:v7];

  if (identifierCopy)
  {
    [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:identifierCopy];
  }

  v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:v4 delegateQueue:0];
  [v4 setSession:v8];

  wf_inMemoryAddress = [MEMORY[0x277CBEBC0] wf_inMemoryAddress];
  [v4 setCacheURL:wf_inMemoryAddress];

  v10 = +[WFSettingsManager sharedInstance];
  [v4 setSettingsManager:v10];

  return v4;
}

+ (id)defaultConfiguration
{
  v2 = objc_opt_class();

  return [v2 defaultConfigurationWithSourceBundleIdentifier:0];
}

- (WFWeatherStoreServiceConfiguration)init
{
  v4.receiver = self;
  v4.super_class = WFWeatherStoreServiceConfiguration;
  v2 = [(WFWeatherStoreServiceConfiguration *)&v4 init];
  if (v2)
  {
    [(WFWeatherStoreServiceConfiguration *)v2 setCacheClass:objc_opt_class()];
    [(WFWeatherStoreServiceConfiguration *)v2 setServiceConnectivityEvaluationURLLock:0];
    [(WFWeatherStoreServiceConfiguration *)v2 setServiceConnectivityEvaluatorLock:0];
  }

  return v2;
}

- (void)invalidate
{
  session = [(WFWeatherStoreServiceConfiguration *)self session];
  [session invalidateAndCancel];
}

- (NSString)apiVersion
{
  settingsManager = [(WFWeatherStoreServiceConfiguration *)self settingsManager];
  aPIVersion = [settingsManager APIVersion];
  v4 = aPIVersion;
  if (aPIVersion)
  {
    v5 = aPIVersion;
  }

  else
  {
    v5 = @"wds_v1";
  }

  v6 = v5;

  return &v5->isa;
}

- (id)apiConfiguration
{
  apiVersion = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v4 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:apiVersion];

  return v4;
}

- (id)apiConfigurationForAPIVersion:(id)version
{
  v4 = [WFAPIConfigurationFactory configurationForAPIVersion:version];
  if (v4)
  {
    serviceConnectivityEvaluationURL = [(WFWeatherStoreServiceConfiguration *)self serviceConnectivityEvaluationURL];
    hostUrl = [v4 hostUrl];
    v7 = [serviceConnectivityEvaluationURL isEqual:hostUrl];

    if ((v7 & 1) == 0)
    {
      hostUrl2 = [v4 hostUrl];
      [(WFWeatherStoreServiceConfiguration *)self setServiceConnectivityEvaluationURL:hostUrl2];
    }
  }

  return v4;
}

- (BOOL)isValid
{
  apiConfiguration = [(WFWeatherStoreServiceConfiguration *)self apiConfiguration];
  if ([apiConfiguration isValid] && -[WFWeatherStoreServiceConfiguration cacheClass](self, "cacheClass"))
  {
    session = [(WFWeatherStoreServiceConfiguration *)self session];
    v5 = session != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)forecastRequestForTypes:(unint64_t)types location:(id)location date:(id)date error:(id *)error
{
  dateCopy = date;
  locationCopy = location;
  apiVersion = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v13 = [(WFWeatherStoreServiceConfiguration *)self forecastRequestForTypes:types location:locationCopy date:dateCopy apiVersion:apiVersion error:error];

  return v13;
}

- (id)forecastRequestForTypes:(unint64_t)types location:(id)location units:(int)units date:(id)date apiVersion:(id)version error:(id *)error requestOptions:(id)options
{
  v12 = *&units;
  locationCopy = location;
  dateCopy = date;
  versionCopy = version;
  optionsCopy = options;
  v19 = WFForecastTypesUnknownTypes(types);
  if (v19)
  {
    if (error)
    {
LABEL_3:
      [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
      *error = v20 = 0;
      goto LABEL_10;
    }

    v30 = v19;
    v31 = WFLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:types location:v30 units:v31 date:? apiVersion:? error:? requestOptions:?];
    }
  }

  else
  {
    geoLocation = [locationCopy geoLocation];

    if (geoLocation)
    {
      v22 = [WFRequestFormattingRules alloc];
      [(WFWeatherStoreServiceConfiguration *)self settingsManager];
      v34 = locationCopy;
      v23 = optionsCopy;
      v24 = versionCopy;
      v26 = v25 = dateCopy;
      settings = [v26 settings];
      v28 = [(WFRequestFormattingRules *)v22 initWithSettings:settings];

      dateCopy = v25;
      versionCopy = v24;
      optionsCopy = v23;
      locationCopy = v34;
      v29 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:versionCopy];
      v20 = [v29 forecastRequestForTypes:types location:v34 units:v12 date:dateCopy error:error rules:v28 options:optionsCopy];

      goto LABEL_10;
    }

    v33 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:locationCopy location:v33 units:? date:? apiVersion:? error:? requestOptions:?];
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date error:(id *)error
{
  v10 = *&units;
  dateCopy = date;
  localeCopy = locale;
  locationCopy = location;
  dataCopy = data;
  apiVersion = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v20 = [(WFWeatherStoreServiceConfiguration *)self parseForecast:forecast data:dataCopy location:locationCopy units:v10 locale:localeCopy date:dateCopy apiVersion:apiVersion error:error];

  return v20;
}

- (id)parseForecast:(unint64_t)forecast data:(id)data location:(id)location units:(int)units locale:(id)locale date:(id)date apiVersion:(id)version error:(id *)self0
{
  versionCopy = version;
  dateCopy = date;
  localeCopy = locale;
  locationCopy = location;
  dataCopy = data;
  v20 = [WFResponseParsingRules alloc];
  settingsManager = [(WFWeatherStoreServiceConfiguration *)self settingsManager];
  settings = [settingsManager settings];
  v23 = [(WFResponseParsingRules *)v20 initWithSettings:settings];

  v24 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:versionCopy];

  v25 = [v24 parseForecast:forecast data:dataCopy location:locationCopy units:units locale:localeCopy date:dateCopy error:error rules:v23];

  return v25;
}

- (id)aqiScaleRequestForScaleNamed:(id)named language:(id)language error:(id *)error
{
  languageCopy = language;
  namedCopy = named;
  apiVersion = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v10 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:apiVersion];

  v11 = [v10 aqiRequestForScaleNamed:namedCopy language:languageCopy];

  return v11;
}

- (id)parseAQIScaleNamed:(id)named data:(id)data apiVersion:(id)version error:(id *)error
{
  dataCopy = data;
  namedCopy = named;
  apiVersion = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v12 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:apiVersion];

  v13 = [v12 parseAQIScaleNamed:namedCopy data:dataCopy error:error];

  return v13;
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v54 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  taskCopy = task;
  transactionMetrics = [metricsCopy transactionMetrics];
  firstObject = [transactionMetrics firstObject];

  v10 = MEMORY[0x277CCACA8];
  response = [taskCopy response];
  v12 = [response URL];
  host = [v12 host];
  response2 = [taskCopy response];

  v15 = [response2 URL];
  path = [v15 path];
  v17 = [v10 stringWithFormat:@"%@%@", host, path];

  taskInterval = [metricsCopy taskInterval];

  requestEndDate = [firstObject requestEndDate];
  requestStartDate = [firstObject requestStartDate];
  [requestEndDate timeIntervalSinceDate:requestStartDate];
  v22 = v21;

  responseEndDate = [firstObject responseEndDate];
  responseStartDate = [firstObject responseStartDate];
  [responseEndDate timeIntervalSinceDate:responseStartDate];
  v26 = v25;

  secureConnectionEndDate = [firstObject secureConnectionEndDate];
  secureConnectionStartDate = [firstObject secureConnectionStartDate];
  [secureConnectionEndDate timeIntervalSinceDate:secureConnectionStartDate];
  v30 = v29;

  domainLookupEndDate = [firstObject domainLookupEndDate];
  domainLookupStartDate = [firstObject domainLookupStartDate];
  [domainLookupEndDate timeIntervalSinceDate:domainLookupStartDate];
  v34 = v33;

  v35 = WFLogForCategory(8uLL);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138479107;
    v43 = v17;
    v44 = 2114;
    v45 = taskInterval;
    v46 = 2048;
    v47 = v22;
    v48 = 2048;
    v49 = v26;
    v50 = 2048;
    v51 = v30;
    v52 = 2048;
    v53 = v34;
    _os_log_impl(&dword_272B94000, v35, OS_LOG_TYPE_INFO, "Data fetched from: %{private}@, total time: %{public}@, request time: %f, response time: %f, TLS time:  %f, DNS time: %f", buf, 0x3Eu);
  }

  response3 = [firstObject response];

  if (response3)
  {
    v37 = [WFNetworkEvent alloc];
    apiVersion = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
    v39 = [(WFNetworkEvent *)v37 initWithEventType:WFNetworkEventTypeFromAPIVersion(apiVersion) metrics:firstObject];

    v40 = +[WFNetworkBehaviorMonitor sharedInstance];
    [v40 logNetworkEvent:v39];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  settingsManager = [(WFWeatherStoreServiceConfiguration *)self settingsManager];
  [v4 setSettingsManager:settingsManager];

  session = [(WFWeatherStoreServiceConfiguration *)self session];
  [v4 setSession:session];

  cacheURL = [(WFWeatherStoreServiceConfiguration *)self cacheURL];
  [v4 setCacheURL:cacheURL];

  serviceConnectivityEvaluationURL = [(WFWeatherStoreServiceConfiguration *)self serviceConnectivityEvaluationURL];
  v9 = v4[3];
  v4[3] = serviceConnectivityEvaluationURL;

  return v4;
}

- (NSURL)serviceConnectivityEvaluationURL
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSURL *)self->_serviceConnectivityEvaluationURL copy];
  os_unfair_lock_unlock(&self->_serviceConnectivityEvaluationURLLock);

  return v3;
}

- (void)setServiceConnectivityEvaluationURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock_with_options();
  v5 = [lCopy copy];

  serviceConnectivityEvaluationURL = self->_serviceConnectivityEvaluationURL;
  self->_serviceConnectivityEvaluationURL = v5;

  os_unfair_lock_unlock(&self->_serviceConnectivityEvaluationURLLock);
}

+ (id)generateUserAgent
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v4 = _CFCopySystemVersionDictionary();
  v5 = [MEMORY[0x277CCACA8] stringWithString:{CFDictionaryGetValue(v4, *MEMORY[0x277CBEC70])}];
  CFRelease(v4);
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:560.0];
  v8 = [v6 stringWithFormat:@"%@_WeatherFoundation[%@]_%@", processName, v7, v5];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v10;
}

- (BOOL)isServiceAvailableSync
{
  os_unfair_lock_lock_with_options();
  serviceConnectivityEvaluator = self->_serviceConnectivityEvaluator;
  if (serviceConnectivityEvaluator || (v4 = MEMORY[0x277CD9200], -[WFWeatherStoreServiceConfiguration serviceConnectivityEvaluationURL](self, "serviceConnectivityEvaluationURL"), v5 = objc_claimAutoreleasedReturnValue(), [v4 wf_pathEvaluatorForURL:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_serviceConnectivityEvaluator, self->_serviceConnectivityEvaluator = v6, v7, v5, (serviceConnectivityEvaluator = self->_serviceConnectivityEvaluator) != 0))
  {
    path = [(NWPathEvaluator *)serviceConnectivityEvaluator path];
    status = [path status];

    v10 = (status & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_serviceConnectivityEvaluatorLock);
  return v10;
}

- (void)forecastRequestForTypes:(os_log_t)log location:units:date:apiVersion:error:requestOptions:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_272B94000, log, OS_LOG_TYPE_ERROR, "Asked for forecast request for %lu, but it contains unknown types %lu.", &v3, 0x16u);
}

- (void)forecastRequestForTypes:(uint64_t)a1 location:(NSObject *)a2 units:date:apiVersion:error:requestOptions:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_272B94000, a2, OS_LOG_TYPE_ERROR, "Cannot format a forecast request without a geolocation: %@", &v2, 0xCu);
}

@end