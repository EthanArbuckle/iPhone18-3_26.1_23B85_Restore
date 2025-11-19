@interface RCEndpointResponseProcessing
+ (id)_configurationErrorForErrorDicts:(id)a3;
+ (void)parseEndpointResponse:(id)a3 configurationSettings:(id)a4 maxAge:(id)a5 loggingPrefix:(id)a6 completion:(id)a7;
+ (void)parseEndpointResponseDict:(id)a3 parsingError:(id)a4 configurationSettings:(id)a5 maxAge:(id)a6 loggingPrefix:(id)a7 completion:(id)a8;
@end

@implementation RCEndpointResponseProcessing

+ (void)parseEndpointResponse:(id)a3 configurationSettings:(id)a4 maxAge:(id)a5 loggingPrefix:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 rc_gzipInflate];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  v23 = 0;
  v20 = [MEMORY[0x277CBEAC0] rc_dictionaryFromData:v19 error:&v23];
  v21 = v23;
  if (v21)
  {
    v22 = RCSharedLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [RCEndpointResponseProcessing parseEndpointResponse:v15 configurationSettings:v21 maxAge:v22 loggingPrefix:? completion:?];
    }
  }

  [a1 parseEndpointResponseDict:v20 parsingError:v21 configurationSettings:v13 maxAge:v14 loggingPrefix:v15 completion:v16];
}

+ (void)parseEndpointResponseDict:(id)a3 parsingError:(id)a4 configurationSettings:(id)a5 maxAge:(id)a6 loggingPrefix:(id)a7 completion:(id)a8
{
  v106 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v68 = a7;
  v18 = a8;
  v19 = v18;
  if (v14)
  {
    v62 = v18;
    v61 = RCJSONDictionaryValue(v14, @"errorWrapper");
    v63 = RCJSONArrayValue(v61, @"errors");
    if ([v63 count])
    {
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2;
      v84[3] = &unk_27822FF10;
      v87 = a1;
      v85 = v63;
      v20 = v62;
      v86 = v62;
      __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2(v84);

      v21 = v85;
    }

    else
    {
      v60 = v15;
      v23 = RCJSONDictionaryValue(v14, @"userInfo");
      v73 = RCJSONArrayValue(v23, @"treatmentIds");
      v59 = v23;
      v72 = RCJSONArrayValue(v23, @"segmentSetIds");
      v71 = [MEMORY[0x277CBEB38] dictionary];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = [v16 requestInfos];
      v74 = [obj countByEnumeratingWithState:&v80 objects:v105 count:16];
      if (v74)
      {
        v70 = *v81;
        v65 = v16;
        v66 = v14;
        v64 = v17;
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
            v26 = [v25 responseKey];
            v27 = RCJSONDictionaryValue(v14, v26);

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
            v31 = [v25 requestCacheKey];
            [(RCConfigurationResource *)v30 setRequestKey:v31];

            v79 = v29;
            v32 = [v29 rc_gzipDeflate];
            [(RCConfigurationResource *)v30 setGzippedConfigurationData:v32];

            v33 = [v16 debugOverrides];
            v75 = v28;
            v34 = +[RCUserSegmentationConfiguration userSegmentationConfigurationWithConfigDict:environment:](RCUserSegmentationConfiguration, "userSegmentationConfigurationWithConfigDict:environment:", v28, [v33 debugEnvironment]);
            [(RCConfigurationResource *)v30 setUserSegmentationConfiguration:v34];

            [(RCConfigurationResource *)v30 setTreatmentIDs:v73];
            [(RCConfigurationResource *)v30 setSegmentSetIDs:v72];
            v35 = [v16 userID];
            [(RCConfigurationResource *)v30 setUserID:v35];

            v36 = [v16 storefrontID];
            [(RCConfigurationResource *)v30 setStorefrontID:v36];

            v37 = [v16 deviceInfo];
            v38 = [v37 preferredLanguages];
            [(RCConfigurationResource *)v30 setPreferredLanguages:v38];

            v39 = RCJSONStringValue(v27, @"id", 0);
            [(RCConfigurationResource *)v30 setConfigurationID:v39];

            v40 = RCJSONStringValue(v27, @"changeTag", 0);
            [(RCConfigurationResource *)v30 setContentHash:v40];

            v77 = v27;
            v41 = RCJSONStringValue(v27, @"lastModified", 0);
            [(RCConfigurationResource *)v30 setLastModifiedString:v41];

            v42 = [MEMORY[0x277CBEAA8] date];
            [(RCConfigurationResource *)v30 setLastFetchedDate:v42];

            [(RCConfigurationResource *)v30 setEndpointMaxAge:v17];
            v43 = [v16 endpointConfig];
            -[RCConfigurationResource setEnvironment:](v30, "setEnvironment:", [v43 environment]);

            v44 = RCSharedLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              [(RCConfigurationResource *)v30 configurationID];
              v45 = v69 = i;
              v46 = [(RCConfigurationResource *)v30 lastModifiedString];
              v47 = [(RCConfigurationResource *)v30 lastFetchedDate];
              v48 = [(RCConfigurationResource *)v30 endpointMaxAge];
              v49 = [(RCConfigurationResource *)v30 treatmentIDs];
              v50 = [v49 rc_description];
              v51 = [(RCConfigurationResource *)v30 segmentSetIDs];
              v52 = [v51 rc_description];
              *buf = 138544898;
              v92 = v68;
              v93 = 2114;
              v94 = v45;
              v95 = 2114;
              v96 = v46;
              v97 = 2114;
              v98 = v47;
              v99 = 2112;
              v100 = v48;
              v101 = 2114;
              v102 = v50;
              v103 = 2114;
              v104 = v52;
              _os_log_impl(&dword_2179FC000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ endpoint: received configuration with configurationID: %{public}@ lastModified: %{public}@ lastFetched: %{public}@ maxAge: %@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x48u);

              v14 = v66;
              i = v69;

              v16 = v65;
              v17 = v64;
            }

            v53 = [v16 debugOverrides];
            v54 = [v53 enableExtraLogs];

            if (v54)
            {
              v55 = RCSharedLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v79 encoding:4];
                *buf = 138543618;
                v92 = v68;
                v93 = 2112;
                v94 = v56;
                _os_log_impl(&dword_2179FC000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ Endpoint JSON response: %@", buf, 0x16u);
              }
            }

            v57 = [v76 requestCacheKey];
            [v71 setObject:v30 forKeyedSubscript:v57];

            objc_autoreleasePoolPop(context);
          }

          v74 = [obj countByEnumeratingWithState:&v80 objects:v105 count:16];
        }

        while (v74);
      }

      v20 = v62;
      (v62)[2](v62, v71, 0);

      v21 = v59;
      v15 = v60;
    }

    v22 = v61;
  }

  else
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke;
    v88[3] = &unk_27822F1A8;
    v89 = v15;
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

+ (id)_configurationErrorForErrorDicts:(id)a3
{
  v3 = [a3 rc_arrayByTransformingWithBlock:&__block_literal_global_8];
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