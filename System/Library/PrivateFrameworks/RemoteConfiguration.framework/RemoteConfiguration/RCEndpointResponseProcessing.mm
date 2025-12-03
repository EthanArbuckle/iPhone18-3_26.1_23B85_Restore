@interface RCEndpointResponseProcessing
+ (id)_configurationErrorForErrorDicts:(id)dicts;
+ (void)parseEndpointResponse:(id)response configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion;
+ (void)parseEndpointResponseDict:(id)dict parsingError:(id)error configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion;
@end

@implementation RCEndpointResponseProcessing

+ (void)parseEndpointResponse:(id)response configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion
{
  responseCopy = response;
  settingsCopy = settings;
  ageCopy = age;
  prefixCopy = prefix;
  completionCopy = completion;
  rc_gzipInflate = [responseCopy rc_gzipInflate];
  v18 = rc_gzipInflate;
  if (rc_gzipInflate)
  {
    v19 = rc_gzipInflate;
  }

  else
  {
    v19 = responseCopy;
  }

  v23 = 0;
  v20 = [MEMORY[0x277CBEAC0] rc_dictionaryFromData:v19 error:&v23];
  v21 = v23;
  if (v21)
  {
    v22 = RCSharedLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [RCEndpointResponseProcessing parseEndpointResponse:prefixCopy configurationSettings:v21 maxAge:v22 loggingPrefix:? completion:?];
    }
  }

  [self parseEndpointResponseDict:v20 parsingError:v21 configurationSettings:settingsCopy maxAge:ageCopy loggingPrefix:prefixCopy completion:completionCopy];
}

+ (void)parseEndpointResponseDict:(id)dict parsingError:(id)error configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion
{
  v106 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  errorCopy = error;
  settingsCopy = settings;
  ageCopy = age;
  prefixCopy = prefix;
  completionCopy = completion;
  v19 = completionCopy;
  if (dictCopy)
  {
    v62 = completionCopy;
    v61 = RCJSONDictionaryValue(dictCopy, @"errorWrapper");
    v63 = RCJSONArrayValue(v61, @"errors");
    if ([v63 count])
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2;
      v84[3] = &unk_27822FF10;
      selfCopy = self;
      v85 = v63;
      v20 = v62;
      v86 = v62;
      __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2(v84);

      v21 = v85;
    }

    else
    {
      v60 = errorCopy;
      v23 = RCJSONDictionaryValue(dictCopy, @"userInfo");
      v73 = RCJSONArrayValue(v23, @"treatmentIds");
      v59 = v23;
      v72 = RCJSONArrayValue(v23, @"segmentSetIds");
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = [settingsCopy requestInfos];
      v74 = [obj countByEnumeratingWithState:&v80 objects:v105 count:16];
      if (v74)
      {
        v70 = *v81;
        v65 = settingsCopy;
        v66 = dictCopy;
        v64 = ageCopy;
        do
        {
          for (i = 0; i != v74; ++i)
          {
            if (*v81 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v80 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            responseKey = [v25 responseKey];
            v27 = RCJSONDictionaryValue(dictCopy, responseKey);

            v28 = RCJSONDictionaryValue(v27, @"configuration");
            if (v28)
            {
              v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:0];
            }

            else
            {
              v29 = 0;
            }

            v30 = objc_alloc_init(RCConfigurationResource);
            v76 = v25;
            requestCacheKey = [v25 requestCacheKey];
            [(RCConfigurationResource *)v30 setRequestKey:requestCacheKey];

            v79 = v29;
            rc_gzipDeflate = [v29 rc_gzipDeflate];
            [(RCConfigurationResource *)v30 setGzippedConfigurationData:rc_gzipDeflate];

            debugOverrides = [settingsCopy debugOverrides];
            v75 = v28;
            v34 = +[RCUserSegmentationConfiguration userSegmentationConfigurationWithConfigDict:environment:](RCUserSegmentationConfiguration, "userSegmentationConfigurationWithConfigDict:environment:", v28, [debugOverrides debugEnvironment]);
            [(RCConfigurationResource *)v30 setUserSegmentationConfiguration:v34];

            [(RCConfigurationResource *)v30 setTreatmentIDs:v73];
            [(RCConfigurationResource *)v30 setSegmentSetIDs:v72];
            userID = [settingsCopy userID];
            [(RCConfigurationResource *)v30 setUserID:userID];

            storefrontID = [settingsCopy storefrontID];
            [(RCConfigurationResource *)v30 setStorefrontID:storefrontID];

            deviceInfo = [settingsCopy deviceInfo];
            preferredLanguages = [deviceInfo preferredLanguages];
            [(RCConfigurationResource *)v30 setPreferredLanguages:preferredLanguages];

            v39 = RCJSONStringValue(v27, @"id", 0);
            [(RCConfigurationResource *)v30 setConfigurationID:v39];

            v40 = RCJSONStringValue(v27, @"changeTag", 0);
            [(RCConfigurationResource *)v30 setContentHash:v40];

            v77 = v27;
            v41 = RCJSONStringValue(v27, @"lastModified", 0);
            [(RCConfigurationResource *)v30 setLastModifiedString:v41];

            date = [MEMORY[0x277CBEAA8] date];
            [(RCConfigurationResource *)v30 setLastFetchedDate:date];

            [(RCConfigurationResource *)v30 setEndpointMaxAge:ageCopy];
            endpointConfig = [settingsCopy endpointConfig];
            -[RCConfigurationResource setEnvironment:](v30, "setEnvironment:", [endpointConfig environment]);

            v44 = RCSharedLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              [(RCConfigurationResource *)v30 configurationID];
              v45 = v69 = i;
              lastModifiedString = [(RCConfigurationResource *)v30 lastModifiedString];
              lastFetchedDate = [(RCConfigurationResource *)v30 lastFetchedDate];
              endpointMaxAge = [(RCConfigurationResource *)v30 endpointMaxAge];
              treatmentIDs = [(RCConfigurationResource *)v30 treatmentIDs];
              rc_description = [treatmentIDs rc_description];
              segmentSetIDs = [(RCConfigurationResource *)v30 segmentSetIDs];
              rc_description2 = [segmentSetIDs rc_description];
              *buf = 138544898;
              v92 = prefixCopy;
              v93 = 2114;
              v94 = v45;
              v95 = 2114;
              v96 = lastModifiedString;
              v97 = 2114;
              v98 = lastFetchedDate;
              v99 = 2112;
              v100 = endpointMaxAge;
              v101 = 2114;
              v102 = rc_description;
              v103 = 2114;
              v104 = rc_description2;
              _os_log_impl(&dword_2179FC000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ endpoint: received configuration with configurationID: %{public}@ lastModified: %{public}@ lastFetched: %{public}@ maxAge: %@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x48u);

              dictCopy = v66;
              i = v69;

              settingsCopy = v65;
              ageCopy = v64;
            }

            debugOverrides2 = [settingsCopy debugOverrides];
            enableExtraLogs = [debugOverrides2 enableExtraLogs];

            if (enableExtraLogs)
            {
              v55 = RCSharedLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v79 encoding:4];
                *buf = 138543618;
                v92 = prefixCopy;
                v93 = 2112;
                v94 = v56;
                _os_log_impl(&dword_2179FC000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ Endpoint JSON response: %@", buf, 0x16u);
              }
            }

            requestCacheKey2 = [v76 requestCacheKey];
            [dictionary setObject:v30 forKeyedSubscript:requestCacheKey2];

            objc_autoreleasePoolPop(context);
          }

          v74 = [obj countByEnumeratingWithState:&v80 objects:v105 count:16];
        }

        while (v74);
      }

      v20 = v62;
      (v62)[2](v62, dictionary, 0);

      v21 = v59;
      errorCopy = v60;
    }

    v22 = v61;
  }

  else
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke;
    v88[3] = &unk_27822F1A8;
    v89 = errorCopy;
    v90 = v19;
    __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke(v88);

    v22 = v89;
    v20 = v19;
  }

  v58 = *MEMORY[0x277D85DE8];
}

void __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] rc_parsingError];
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

void __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 48) _configurationErrorForErrorDicts:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (id)_configurationErrorForErrorDicts:(id)dicts
{
  v3 = [dicts rc_arrayByTransformingWithBlock:&__block_literal_global_8];
  v4 = [MEMORY[0x277CCA9B8] rc_endpointErrorWithUnderlyingEndpointErrors:v3];

  return v4;
}

+ (void)parseEndpointResponse:(os_log_t)log configurationSettings:maxAge:loggingPrefix:completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2179FC000, log, OS_LOG_TYPE_ERROR, "%{public}@ parseEndpointResponse - JSON parsing failed with error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end