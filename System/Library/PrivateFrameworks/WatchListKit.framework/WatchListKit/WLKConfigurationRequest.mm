@interface WLKConfigurationRequest
+ (id)_configURLString:(id *)a3;
+ (void)_fetchV3WithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 sessionConfiguration:(id)a5 queryParameters:(id)a6 completion:(id)a7;
+ (void)fetchWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 wlkCachePolicy:(unint64_t)a5 extendedCacheExpireDuration:(double)a6 sessionConfiguration:(id)a7 queryParameters:(id)a8 fileStorage:(id)a9 completion:(id)a10;
@end

@implementation WLKConfigurationRequest

+ (void)fetchWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 wlkCachePolicy:(unint64_t)a5 extendedCacheExpireDuration:(double)a6 sessionConfiguration:(id)a7 queryParameters:(id)a8 fileStorage:(id)a9 completion:(id)a10
{
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke;
  v36[3] = &unk_279E60080;
  v21 = v20;
  v38 = v21;
  v22 = v19;
  v37 = v22;
  v23 = MEMORY[0x2743D2DF0](v36);
  if (a4 == 1 || !v22)
  {
    [a1 _fetchV3WithOptions:a3 cachePolicy:a4 sessionConfiguration:v17 queryParameters:v18 completion:v23];
  }

  else
  {
    v24 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheRead", &unk_272A8884E, buf, 2u);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_7;
    v25[3] = &unk_279E600D0;
    v30 = a5;
    v31 = a6;
    v28 = v21;
    v32 = a1;
    v33 = a3;
    v34 = a4;
    v26 = v17;
    v27 = v18;
    v29 = v23;
    [v22 read:v25];
  }
}

void __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 requiredRequestKeyValuePairsDictionary];
    v8 = [v7 count];
    v9 = v8 != 0;

    if (!v6 && v8)
    {
      v10 = WLKStartupSignpostLogObject();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheWrite", &unk_272A8884E, buf, 2u);
      }

      v11 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Configuration request is completed", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
      v12 = *(a1 + 32);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_4;
      v16[3] = &unk_279E60058;
      v17 = v5;
      [v12 write:v17 completion:v16];

      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 localizedDescription];
    *buf = 138412546;
    v19 = v14;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Not persisting config on disk. Error:%@; isResponseValid:%d", buf, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

void __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) expirationDate];
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Wrote to disk. Exp:%@ Success:%d err:%@", &v10, 0x1Cu);
  }

  v8 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheWrite", &unk_272A8884E, &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.DiskCacheRead", &unk_272A8884E, buf, 2u);
  }

  [v5 setFromDiskCache:1];
  v7 = *(a1 + 64);
  if ((v7 - 1) < 2)
  {
    goto LABEL_7;
  }

  if (v7 == 4)
  {
    if ([v5 isValidIgnoringExpiration])
    {
      goto LABEL_7;
    }
  }

  else if (v7 == 5)
  {
    if ([v5 isValidWithinExtendedExpiration:*(a1 + 72)])
    {
LABEL_7:
      v8 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Disk cache hit", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_17;
    }
  }

  else if ([v5 isValid])
  {
    goto LABEL_7;
  }

  if (v5 && !a3)
  {
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 expirationDate];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKConfigurationRequest - Disk cache is invalid. Expiration:%@", buf, 0xCu);
    }
  }

  v11 = dispatch_get_global_queue(17, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __159__WLKConfigurationRequest_fetchWithOptions_cachePolicy_wlkCachePolicy_extendedCacheExpireDuration_sessionConfiguration_queryParameters_fileStorage_completion___block_invoke_8;
  v13[3] = &unk_279E600A8;
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  dispatch_async(v11, v13);

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_fetchV3WithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 sessionConfiguration:(id)a5 queryParameters:(id)a6 completion:(id)a7
{
  v40 = a5;
  v12 = a6;
  v13 = a7;
  if (!v13)
  {
    +[WLKConfigurationRequest _fetchV3WithOptions:cachePolicy:sessionConfiguration:queryParameters:completion:];
  }

  v14 = v13;
  v46 = 0;
  v15 = [a1 _configURLString:&v46];
  v16 = v46;
  if ([v15 length])
  {
    v36 = a3;
    v37 = v16;
    v17 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.RequestCreation", &unk_272A8884E, buf, 2u);
    }

    v18 = +[WLKUserEnvironment currentEnvironment];
    v19 = objc_alloc(MEMORY[0x277CBEB38]);
    v20 = [v18 _queryParametersV3];
    v21 = [v19 initWithDictionary:v20];

    v38 = v12;
    [v21 addEntriesFromDictionary:v12];
    v22 = [v21 objectForKeyedSubscript:@"caller"];

    if (!v22)
    {
      [v21 setObject:@"wlk" forKeyedSubscript:@"caller"];
    }

    v23 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v15];
    v35 = [MEMORY[0x277CBEBC0] wlk_sortedQueryItemsFromDictionary:v21];
    [v23 setQueryItems:?];
    v24 = objc_alloc(MEMORY[0x277CBAB50]);
    v25 = [v23 URL];
    v26 = [v24 initWithURL:v25 cachePolicy:a4 timeoutInterval:10.0];

    v27 = [v18 _queryPostV3];
    v44 = 0;
    v28 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v27 options:0 error:&v44];
    v39 = v44;
    if (!v28)
    {
      v29 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [WLKConfigurationRequest _fetchV3WithOptions:v39 cachePolicy:v29 sessionConfiguration:? queryParameters:? completion:?];
      }
    }

    [v26 setHTTPMethod:@"POST"];
    [v26 setHTTPBody:v28];
    [v26 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v30 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.RequestCreation", &unk_272A8884E, buf, 2u);
    }

    v31 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v31, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.NetworkRequest", &unk_272A8884E, buf, 2u);
    }

    v32 = [v26 copy];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __107__WLKConfigurationRequest__fetchV3WithOptions_cachePolicy_sessionConfiguration_queryParameters_completion___block_invoke;
    v41[3] = &unk_279E600F8;
    v42 = v18;
    v43 = v14;
    v33 = v18;
    v34 = v40;
    [WLKNetworkRequestUtilities startNetworkRequest:v32 account:0 sessionConfiguration:v40 options:v36 completion:v41];

    v16 = v37;
    v12 = v38;
  }

  else
  {
    v21 = WLKError(100, v16, @"WLKConfigurationRequest: Error: UTS init/config (v3) not available in the URL bag.");
    (v14)[2](v14, 0, v21);
    v34 = v40;
  }
}

void __107__WLKConfigurationRequest__fetchV3WithOptions_cachePolicy_sessionConfiguration_queryParameters_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.NetworkRequest", &unk_272A8884E, buf, 2u);
  }

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v8))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.ResponseParse", &unk_272A8884E, v16, 2u);
    }

    v9 = objc_alloc_init(WLKDictionaryResponseProcessor);
    [(WLKDictionaryResponseProcessor *)v9 setDictionaryKeyPath:@"data"];
    v10 = [v5 data];
    v15 = 0;
    v11 = [(WLKDictionaryResponseProcessor *)v9 processResponseData:v10 error:&v15];
    v6 = v15;

    v12 = -[WLKServerConfigurationResponse initWithServerResponseDictionary:expirationDate:environmentHash:]([WLKServerConfigurationResponse alloc], "initWithServerResponseDictionary:expirationDate:environmentHash:", v11, 0, [*(a1 + 32) hash]);
    v13 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v13))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.ResponseParse", &unk_272A8884E, v14, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)_configURLString:(id *)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v4 = WLKBaseURLReturningError();
  v5 = 0;
  if ([v4 length])
  {
    v6 = kBagKeyUVSearchRoutesInitConfigPathV3;
    v7 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v7))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.initConfigEndpointFromBag", &unk_272A8884E, v17, 2u);
    }

    v8 = [MEMORY[0x277D6C480] app];
    v9 = [v8 cachedStringForKey:v6];

    v10 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v10))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.initConfigEndpointFromBag", &unk_272A8884E, v17, 2u);
    }

    if ([v9 length])
    {
      v11 = v9;
    }

    else
    {
      if (a3)
      {
        *a3 = 0;
      }

      v11 = @"uts/v3/configurations";
    }

    v19[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v13 = [v4 wlk_stringByAppendingPathComponents:v14];
  }

  else if (a3)
  {
    v12 = v5;
    v13 = 0;
    *a3 = v5;
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)_fetchV3WithOptions:(uint64_t)a1 cachePolicy:(NSObject *)a2 sessionConfiguration:queryParameters:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKConfigurationRequest - Failed to construct POST payload... continuing with empty body.%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end