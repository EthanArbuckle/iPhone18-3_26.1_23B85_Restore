@interface WLKNetworkRequestUtilities
+ (BOOL)isGDPRAccepted;
+ (id)_createAMSEncoder:(int64_t)encoder account:(id)account;
+ (id)_defaultAppSessionConfiguration;
+ (id)_sharedCacheSessionConfiguration;
+ (id)defaultSessionConfiguration;
+ (void)_prepareEncoder:(id)encoder account:(id)account sessionConfiguration:(id)configuration options:(int64_t)options completionHandler:(id)handler;
+ (void)startNetworkRequest:(id)request account:(id)account sessionConfiguration:(id)configuration options:(int64_t)options completion:(id)completion;
@end

@implementation WLKNetworkRequestUtilities

+ (BOOL)isGDPRAccepted
{
  v8 = *MEMORY[0x277D85DE8];
  activeOrLocalAccount = [MEMORY[0x277D6C478] activeOrLocalAccount];
  v3 = [MEMORY[0x277CEE3D0] acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:activeOrLocalAccount];
  v4 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestUtilities - is GDPR needed? [%d]", v7, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

+ (id)defaultSessionConfiguration
{
  if (WLKIsTVApp())
  {
    [self _defaultAppSessionConfiguration];
  }

  else
  {
    [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  }
  v3 = ;

  return v3;
}

+ (id)_defaultAppSessionConfiguration
{
  if (_defaultAppSessionConfiguration_onceToken != -1)
  {
    +[WLKNetworkRequestUtilities _defaultAppSessionConfiguration];
  }

  v3 = _defaultAppSessionConfiguration___appSessionConfiguration;

  return v3;
}

void __61__WLKNetworkRequestUtilities__defaultAppSessionConfiguration__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  v1 = _defaultAppSessionConfiguration___appSessionConfiguration;
  _defaultAppSessionConfiguration___appSessionConfiguration = v0;

  [_defaultAppSessionConfiguration___appSessionConfiguration setHTTPShouldUsePipelining:1];
  v2 = objc_alloc(MEMORY[0x277CBAB70]);
  v3 = WLKDefaultSupportPath();
  v4 = [v2 initWithMemoryCapacity:0x100000 diskCapacity:52428800 diskPath:v3];

  v5 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = [v4 memoryCapacity];
    v9 = 2048;
    v10 = [v4 diskCapacity];
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestUtilities - Using TV App custom URL cache: mem capacity %lu disk capacity %lu", &v7, 0x16u);
  }

  [_defaultAppSessionConfiguration___appSessionConfiguration setURLCache:v4];
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_prepareEncoder:(id)encoder account:(id)account sessionConfiguration:(id)configuration options:(int64_t)options completionHandler:(id)handler
{
  encoderCopy = encoder;
  accountCopy = account;
  configurationCopy = configuration;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v15 = encoderCopy;
  v16 = v15;
  v30 = v15;
  if ((options & 4) != 0)
  {
    v18 = [v15 mutableCopy];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__WLKNetworkRequestUtilities__prepareEncoder_account_sessionConfiguration_options_completionHandler___block_invoke;
    v19[3] = &unk_279E5E928;
    v23 = &v25;
    v17 = v18;
    v20 = v17;
    optionsCopy = options;
    v21 = accountCopy;
    v22 = handlerCopy;
    [WLKMescal signNetworkRequest:v17 completionHandler:v19];
  }

  else
  {
    v17 = [WLKNetworkRequestUtilities _createAMSEncoder:options account:accountCopy];
    (*(handlerCopy + 2))(handlerCopy, v17, v26[5], 0);
  }

  _Block_object_dispose(&v25, 8);
}

void __101__WLKNetworkRequestUtilities__prepareEncoder_account_sessionConfiguration_options_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    v7 = [WLKNetworkRequestUtilities _createAMSEncoder:*(a1 + 64) account:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      v8 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __101__WLKNetworkRequestUtilities__prepareEncoder_account_sessionConfiguration_options_completionHandler___block_invoke_cold_1(v6, v8);
      }
    }

    v7 = 0;
  }

  v9 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();
}

+ (id)_createAMSEncoder:(int64_t)encoder account:(id)account
{
  encoderCopy = encoder;
  accountCopy = account;
  v6 = objc_alloc(MEMORY[0x277CEE6D8]);
  wlk_defaultBag = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v8 = [v6 initWithBag:wlk_defaultBag];

  if (encoderCopy)
  {
    [v8 setDialogOptions:1];
  }

  [v8 setIncludeClientVersions:0];
  if (+[WLKNetworkRequestUtilities isGDPRAccepted]|| (*&encoderCopy & 0x200000) != 0)
  {
    if (accountCopy)
    {
      activeAccount = accountCopy;
    }

    else
    {
      activeAccount = [MEMORY[0x277D6C478] activeAccount];
    }

    v10 = activeAccount;
    [v8 setAccount:activeAccount];
  }

  return v8;
}

+ (void)startNetworkRequest:(id)request account:(id)account sessionConfiguration:(id)configuration options:(int64_t)options completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v13 = MEMORY[0x277CBEAA8];
  accountCopy = account;
  requestCopy = request;
  date = [v13 date];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__WLKNetworkRequestUtilities_startNetworkRequest_account_sessionConfiguration_options_completion___block_invoke;
  v20[3] = &unk_279E5E9C0;
  v21 = 0;
  v22 = configurationCopy;
  v23 = date;
  v24 = completionCopy;
  v17 = date;
  v18 = configurationCopy;
  v19 = completionCopy;
  [WLKNetworkRequestUtilities _prepareEncoder:requestCopy account:accountCopy sessionConfiguration:v18 options:options completionHandler:v20];
}

void __98__WLKNetworkRequestUtilities_startNetworkRequest_account_sessionConfiguration_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v8 = [v5 requestByEncodingRequest:v6 parameters:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__WLKNetworkRequestUtilities_startNetworkRequest_account_sessionConfiguration_options_completion___block_invoke_2;
  v9[3] = &unk_279E5E998;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v8 resultWithCompletion:v9];
}

void __98__WLKNetworkRequestUtilities_startNetworkRequest_account_sessionConfiguration_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[WLKLaunchConfiguration sharedInstance];
    v5 = [v4 useSharedURLSession];

    if (v5)
    {
      v6 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestUtilities - Request uses shared urlSession", buf, 2u);
      }

      v7 = +[WLKURLSessionManager sharedInstance];
      v8 = [v7 urlSession];
    }

    else
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = +[WLKNetworkRequestUtilities defaultSessionConfiguration];
      }

      v7 = v10;
      v8 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v10];
      v11 = objc_alloc_init(WLKURLResponseDecoder);
      [v8 setResponseDecoder:v11];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__WLKNetworkRequestUtilities_startNetworkRequest_account_sessionConfiguration_options_completion___block_invoke_2_16;
    v12[3] = &unk_279E5E970;
    v13 = *(a1 + 40);
    v14 = v3;
    v15 = *(a1 + 48);
    [v8 createDataTaskWithRequest:v14 activity:0 dataTaskCreationCompletionHandler:&__block_literal_global_2 requestCompletionHandler:v12];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __98__WLKNetworkRequestUtilities_startNetworkRequest_account_sessionConfiguration_options_completion___block_invoke_2_16(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = v8;

  if (v6)
  {
    v10 = [v6 description];
  }

  else
  {
    v10 = &stru_288206BC0;
  }

  v11 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 responseStatusCode];
    v13 = [v5 logUUID];
    v14 = [*(a1 + 40) HTTPMethod];
    v15 = [*(a1 + 40) URL];
    v16 = [v15 relativePath];
    v18 = 134219266;
    v19 = v12;
    v20 = 2048;
    v21 = v9;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestUtilities - Request status: %lu elapsed time: %.5f id: %@ url: %@ %@ %@", &v18, 0x3Eu);
  }

  (*(*(a1 + 48) + 16))();
  v17 = *MEMORY[0x277D85DE8];
}

+ (id)_sharedCacheSessionConfiguration
{
  if (_sharedCacheSessionConfiguration_onceToken != -1)
  {
    +[WLKNetworkRequestUtilities _sharedCacheSessionConfiguration];
  }

  v3 = _sharedCacheSessionConfiguration___sessionConfiguration;

  return v3;
}

void __62__WLKNetworkRequestUtilities__sharedCacheSessionConfiguration__block_invoke()
{
  v18[5] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  v1 = _sharedCacheSessionConfiguration___sessionConfiguration;
  _sharedCacheSessionConfiguration___sessionConfiguration = v0;

  v2 = MEMORY[0x277CCACA8];
  v18[0] = CPSharedResourcesDirectory();
  v18[1] = @"Library";
  v18[2] = @"Caches";
  v18[3] = @"sharedCaches";
  v18[4] = @"com.apple.WatchListKit.NSURLCache";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  v4 = [v2 pathWithComponents:v3];

  v5 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestUtilities - Using shared cache path: %@", &v16, 0xCu);
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  [v6 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 isWritableFileAtPath:v4];

  if (v8)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CBACE0], *MEMORY[0x277CBED28]);
    v10 = _CFURLStorageSessionCreate();
    CFRelease(Mutable);
    if (v10)
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = _CFURLStorageSessionCopyCache();
      v13 = [objc_alloc(MEMORY[0x277CBAB70]) _initWithExistingCFURLCache:v12];
      [_sharedCacheSessionConfiguration___sessionConfiguration setURLCache:v13];
      CFRelease(v10);
      CFRelease(v12);
      goto LABEL_11;
    }
  }

  else
  {
    v14 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __62__WLKNetworkRequestUtilities__sharedCacheSessionConfiguration__block_invoke_cold_1(v14);
    }
  }

  v13 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __62__WLKNetworkRequestUtilities__sharedCacheSessionConfiguration__block_invoke_cold_2(v13);
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

void __101__WLKNetworkRequestUtilities__prepareEncoder_account_sessionConfiguration_options_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKNetworkRequestUtilities - _prepareEncoder failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end