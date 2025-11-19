@interface WFWeatherStoreServiceConfiguration
+ (id)defaultConfiguration;
+ (id)defaultConfigurationWithSourceBundleIdentifier:(id)a3;
+ (id)generateUserAgent;
- (BOOL)isServiceAvailableSync;
- (BOOL)isValid;
- (NSString)apiVersion;
- (NSURL)serviceConnectivityEvaluationURL;
- (WFWeatherStoreServiceConfiguration)init;
- (id)apiConfiguration;
- (id)apiConfigurationForAPIVersion:(id)a3;
- (id)aqiScaleRequestForScaleNamed:(id)a3 language:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 date:(id)a5 error:(id *)a6;
- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 units:(int)a5 date:(id)a6 apiVersion:(id)a7 error:(id *)a8 requestOptions:(id)a9;
- (id)parseAQIScaleNamed:(id)a3 data:(id)a4 apiVersion:(id)a5 error:(id *)a6;
- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 apiVersion:(id)a9 error:(id *)a10;
- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)invalidate;
- (void)setServiceConnectivityEvaluationURL:(id)a3;
@end

@implementation WFWeatherStoreServiceConfiguration

+ (id)defaultConfigurationWithSourceBundleIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v5 setHTTPShouldUsePipelining:1];
  [v5 setTimeoutIntervalForRequest:30.0];
  v12 = @"User-Agent";
  v6 = +[WFWeatherStoreServiceConfiguration generateUserAgent];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v5 setHTTPAdditionalHeaders:v7];

  if (v3)
  {
    [v5 set_sourceApplicationBundleIdentifier:v3];
  }

  v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5 delegate:v4 delegateQueue:0];
  [v4 setSession:v8];

  v9 = [MEMORY[0x277CBEBC0] wf_inMemoryAddress];
  [v4 setCacheURL:v9];

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
  v2 = [(WFWeatherStoreServiceConfiguration *)self session];
  [v2 invalidateAndCancel];
}

- (NSString)apiVersion
{
  v2 = [(WFWeatherStoreServiceConfiguration *)self settingsManager];
  v3 = [v2 APIVersion];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v3 = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v4 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:v3];

  return v4;
}

- (id)apiConfigurationForAPIVersion:(id)a3
{
  v4 = [WFAPIConfigurationFactory configurationForAPIVersion:a3];
  if (v4)
  {
    v5 = [(WFWeatherStoreServiceConfiguration *)self serviceConnectivityEvaluationURL];
    v6 = [v4 hostUrl];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v4 hostUrl];
      [(WFWeatherStoreServiceConfiguration *)self setServiceConnectivityEvaluationURL:v8];
    }
  }

  return v4;
}

- (BOOL)isValid
{
  v3 = [(WFWeatherStoreServiceConfiguration *)self apiConfiguration];
  if ([v3 isValid] && -[WFWeatherStoreServiceConfiguration cacheClass](self, "cacheClass"))
  {
    v4 = [(WFWeatherStoreServiceConfiguration *)self session];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 date:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v13 = [(WFWeatherStoreServiceConfiguration *)self forecastRequestForTypes:a3 location:v11 date:v10 apiVersion:v12 error:a6];

  return v13;
}

- (id)forecastRequestForTypes:(unint64_t)a3 location:(id)a4 units:(int)a5 date:(id)a6 apiVersion:(id)a7 error:(id *)a8 requestOptions:(id)a9
{
  v12 = *&a5;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = WFForecastTypesUnknownTypes(a3);
  if (v19)
  {
    if (a8)
    {
LABEL_3:
      [MEMORY[0x277CCA9B8] wf_errorWithCode:5];
      *a8 = v20 = 0;
      goto LABEL_10;
    }

    v30 = v19;
    v31 = WFLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:a3 location:v30 units:v31 date:? apiVersion:? error:? requestOptions:?];
    }
  }

  else
  {
    v21 = [v15 geoLocation];

    if (v21)
    {
      v22 = [WFRequestFormattingRules alloc];
      [(WFWeatherStoreServiceConfiguration *)self settingsManager];
      v34 = v15;
      v23 = v18;
      v24 = v17;
      v26 = v25 = v16;
      v27 = [v26 settings];
      v28 = [(WFRequestFormattingRules *)v22 initWithSettings:v27];

      v16 = v25;
      v17 = v24;
      v18 = v23;
      v15 = v34;
      v29 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:v17];
      v20 = [v29 forecastRequestForTypes:a3 location:v34 units:v12 date:v16 error:a8 rules:v28 options:v18];

      goto LABEL_10;
    }

    v33 = WFLogForCategory(2uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreServiceConfiguration forecastRequestForTypes:v15 location:v33 units:? date:? apiVersion:? error:? requestOptions:?];
    }

    if (a8)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 error:(id *)a9
{
  v10 = *&a6;
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v20 = [(WFWeatherStoreServiceConfiguration *)self parseForecast:a3 data:v18 location:v17 units:v10 locale:v16 date:v15 apiVersion:v19 error:a9];

  return v20;
}

- (id)parseForecast:(unint64_t)a3 data:(id)a4 location:(id)a5 units:(int)a6 locale:(id)a7 date:(id)a8 apiVersion:(id)a9 error:(id *)a10
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = [WFResponseParsingRules alloc];
  v21 = [(WFWeatherStoreServiceConfiguration *)self settingsManager];
  v22 = [v21 settings];
  v23 = [(WFResponseParsingRules *)v20 initWithSettings:v22];

  v24 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:v15];

  v25 = [v24 parseForecast:a3 data:v19 location:v18 units:a6 locale:v17 date:v16 error:a10 rules:v23];

  return v25;
}

- (id)aqiScaleRequestForScaleNamed:(id)a3 language:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v10 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:v9];

  v11 = [v10 aqiRequestForScaleNamed:v8 language:v7];

  return v11;
}

- (id)parseAQIScaleNamed:(id)a3 data:(id)a4 apiVersion:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
  v12 = [(WFWeatherStoreServiceConfiguration *)self apiConfigurationForAPIVersion:v11];

  v13 = [v12 parseAQIScaleNamed:v10 data:v9 error:a6];

  return v13;
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = a4;
  v8 = [v6 transactionMetrics];
  v9 = [v8 firstObject];

  v10 = MEMORY[0x277CCACA8];
  v11 = [v7 response];
  v12 = [v11 URL];
  v13 = [v12 host];
  v14 = [v7 response];

  v15 = [v14 URL];
  v16 = [v15 path];
  v17 = [v10 stringWithFormat:@"%@%@", v13, v16];

  v18 = [v6 taskInterval];

  v19 = [v9 requestEndDate];
  v20 = [v9 requestStartDate];
  [v19 timeIntervalSinceDate:v20];
  v22 = v21;

  v23 = [v9 responseEndDate];
  v24 = [v9 responseStartDate];
  [v23 timeIntervalSinceDate:v24];
  v26 = v25;

  v27 = [v9 secureConnectionEndDate];
  v28 = [v9 secureConnectionStartDate];
  [v27 timeIntervalSinceDate:v28];
  v30 = v29;

  v31 = [v9 domainLookupEndDate];
  v32 = [v9 domainLookupStartDate];
  [v31 timeIntervalSinceDate:v32];
  v34 = v33;

  v35 = WFLogForCategory(8uLL);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 138479107;
    v43 = v17;
    v44 = 2114;
    v45 = v18;
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

  v36 = [v9 response];

  if (v36)
  {
    v37 = [WFNetworkEvent alloc];
    v38 = [(WFWeatherStoreServiceConfiguration *)self apiVersion];
    v39 = [(WFNetworkEvent *)v37 initWithEventType:WFNetworkEventTypeFromAPIVersion(v38) metrics:v9];

    v40 = +[WFNetworkBehaviorMonitor sharedInstance];
    [v40 logNetworkEvent:v39];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(WFWeatherStoreServiceConfiguration *)self settingsManager];
  [v4 setSettingsManager:v5];

  v6 = [(WFWeatherStoreServiceConfiguration *)self session];
  [v4 setSession:v6];

  v7 = [(WFWeatherStoreServiceConfiguration *)self cacheURL];
  [v4 setCacheURL:v7];

  v8 = [(WFWeatherStoreServiceConfiguration *)self serviceConnectivityEvaluationURL];
  v9 = v4[3];
  v4[3] = v8;

  return v4;
}

- (NSURL)serviceConnectivityEvaluationURL
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSURL *)self->_serviceConnectivityEvaluationURL copy];
  os_unfair_lock_unlock(&self->_serviceConnectivityEvaluationURLLock);

  return v3;
}

- (void)setServiceConnectivityEvaluationURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v4 copy];

  serviceConnectivityEvaluationURL = self->_serviceConnectivityEvaluationURL;
  self->_serviceConnectivityEvaluationURL = v5;

  os_unfair_lock_unlock(&self->_serviceConnectivityEvaluationURLLock);
}

+ (id)generateUserAgent
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];
  v4 = _CFCopySystemVersionDictionary();
  v5 = [MEMORY[0x277CCACA8] stringWithString:{CFDictionaryGetValue(v4, *MEMORY[0x277CBEC70])}];
  CFRelease(v4);
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:560.0];
  v8 = [v6 stringWithFormat:@"%@_WeatherFoundation[%@]_%@", v3, v7, v5];
  v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  return v10;
}

- (BOOL)isServiceAvailableSync
{
  os_unfair_lock_lock_with_options();
  serviceConnectivityEvaluator = self->_serviceConnectivityEvaluator;
  if (serviceConnectivityEvaluator || (v4 = MEMORY[0x277CD9200], -[WFWeatherStoreServiceConfiguration serviceConnectivityEvaluationURL](self, "serviceConnectivityEvaluationURL"), v5 = objc_claimAutoreleasedReturnValue(), [v4 wf_pathEvaluatorForURL:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_serviceConnectivityEvaluator, self->_serviceConnectivityEvaluator = v6, v7, v5, (serviceConnectivityEvaluator = self->_serviceConnectivityEvaluator) != 0))
  {
    v8 = [(NWPathEvaluator *)serviceConnectivityEvaluator path];
    v9 = [v8 status];

    v10 = (v9 & 0xFFFFFFFFFFFFFFFDLL) == 1;
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