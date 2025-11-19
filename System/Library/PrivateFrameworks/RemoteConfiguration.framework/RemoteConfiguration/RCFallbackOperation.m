@interface RCFallbackOperation
- (BOOL)validateOperation;
- (void)_fetchConfigurationWithURL:(id)a3 requestKey:(id)a4 enableExtraLogs:(BOOL)a5 fallbackTimeoutDuration:(double)a6;
- (void)_parseFallbackResponse:(id)a3 fallbackURL:(id)a4 requestKey:(id)a5 enableExtraLogs:(BOOL)a6 maxAge:(id)a7 etag:(id)a8 lastModifiedString:(id)a9 completion:(id)a10;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation RCFallbackOperation

- (BOOL)validateOperation
{
  v3 = [(RCFallbackOperation *)self requestKey];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCFallbackOperation validateOperation];
  }

  v4 = [(RCFallbackOperation *)self fallbackURL];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCFallbackOperation validateOperation];
  }

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)performOperation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = RCSharedLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(RCOperation *)self shortOperationDescription];
    v5 = [(RCFallbackOperation *)self fallbackURL];
    v10 = 138543618;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2179FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform operation to fetch config with fallback URL: %@", &v10, 0x16u);
  }

  v6 = [(RCFallbackOperation *)self fallbackURL];
  v7 = [(RCFallbackOperation *)self requestKey];
  v8 = [(RCFallbackOperation *)self enableExtraLogs];
  [(RCFallbackOperation *)self fallbackTimeoutDuration];
  [(RCFallbackOperation *)self _fetchConfigurationWithURL:v6 requestKey:v7 enableExtraLogs:v8 fallbackTimeoutDuration:?];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(RCFallbackOperation *)self completionQueue];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = RCDispatchQueueForQualityOfService([(RCFallbackOperation *)self qualityOfService]);
  }

  v8 = v7;

  v9 = [(RCFallbackOperation *)self configurationCompletionHandler];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__RCFallbackOperation_operationWillFinishWithError___block_invoke;
    v10[3] = &unk_27822F130;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v8, v10);
  }
}

void __52__RCFallbackOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) configurationCompletionHandler];
  v2 = [*(a1 + 32) configurationResource];
  v3[2](v3, v2, *(a1 + 40));
}

- (void)_fetchConfigurationWithURL:(id)a3 requestKey:(id)a4 enableExtraLogs:(BOOL)a5 fallbackTimeoutDuration:(double)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(RCURLFetchOperation);
  [(RCURLFetchOperation *)v12 setURL:v10];
  [(RCURLFetchOperation *)v12 setHTTPMethod:@"GET"];
  v13 = [v10 absoluteString];
  [(RCURLFetchOperation *)v12 setLoggingKey:v13];

  [(RCURLFetchOperation *)v12 setURLRequestTimeoutDuration:a6];
  v14 = [(RCFallbackOperation *)self networkEventHandler];
  [(RCURLFetchOperation *)v12 setNetworkEventHandler:v14];

  v15 = [(RCFallbackOperation *)self cachedConfigurationResource];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [(RCFallbackOperation *)self cachedConfigurationResource];
  v18 = [v17 lastModifiedFallbackString];

  v19 = [(RCFallbackOperation *)self cachedConfigurationResource];
  v20 = v19;
  if (v18)
  {
    v21 = [v19 lastModifiedFallbackString];
    v22 = @"If-Modified-Since";
LABEL_6:
    [v16 setObject:v21 forKeyedSubscript:v22];

    goto LABEL_7;
  }

  v23 = [v19 etag];

  if (v23)
  {
    v20 = [(RCFallbackOperation *)self cachedConfigurationResource];
    v21 = [v20 etag];
    v22 = @"If-None-Match";
    goto LABEL_6;
  }

LABEL_7:
  [(RCURLFetchOperation *)v12 setAdditionalRequestHTTPHeaders:v16];
  v24 = RCSharedLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(RCOperation *)self shortOperationDescription];
    *buf = 138543618;
    v38 = v25;
    v39 = 2112;
    v40 = v16;
    _os_log_impl(&dword_2179FC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ sending additional headers with URL fetch operation: %@", buf, 0x16u);
  }

LABEL_10:
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __101__RCFallbackOperation__fetchConfigurationWithURL_requestKey_enableExtraLogs_fallbackTimeoutDuration___block_invoke;
  v32 = &unk_27822F180;
  v33 = self;
  v34 = v10;
  v35 = v11;
  v36 = a5;
  v26 = v11;
  v27 = v10;
  [(RCURLFetchOperation *)v12 setConfigurationCompletionHandler:&v29];
  [(RCOperation *)self associateChildOperation:v12, v29, v30, v31, v32, v33];
  [(RCOperation *)v12 start];

  v28 = *MEMORY[0x277D85DE8];
}

void __101__RCFallbackOperation__fetchConfigurationWithURL_requestKey_enableExtraLogs_fallbackTimeoutDuration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v9 || v12)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __101__RCFallbackOperation__fetchConfigurationWithURL_requestKey_enableExtraLogs_fallbackTimeoutDuration___block_invoke_2;
    v35[3] = &unk_27822F130;
    v35[4] = *(a1 + 32);
    v36 = v12;
    __101__RCFallbackOperation__fetchConfigurationWithURL_requestKey_enableExtraLogs_fallbackTimeoutDuration___block_invoke_2(v35);
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    if ([v11 statusCode] == 304)
    {
      v14 = [*(a1 + 32) cachedConfigurationResource];
      v15 = [v14 copy];
      [*(a1 + 32) setConfigurationResource:v15];

      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [*(a1 + 32) configurationResource];
      [v17 setLastFetchedDate:v16];

      v18 = RCSharedLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) shortOperationDescription];
        *buf = 138543362;
        v38 = v19;
        _os_log_impl(&dword_2179FC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ the config has not changed since we last downloaded it (HTTP 304)", buf, 0xCu);
      }
    }

    else
    {
      v20 = [v11 allHeaderFields];
      v18 = [v20 objectForKeyedSubscript:@"ETag"];

      v21 = [v11 allHeaderFields];
      v22 = [v21 objectForKeyedSubscript:@"Last-Modified"];

      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __101__RCFallbackOperation__fetchConfigurationWithURL_requestKey_enableExtraLogs_fallbackTimeoutDuration___block_invoke_24;
      v28[3] = &unk_27822F158;
      v28[4] = v23;
      v28[5] = &v29;
      [v23 _parseFallbackResponse:v9 fallbackURL:v24 requestKey:v25 enableExtraLogs:v26 maxAge:v10 etag:v18 lastModifiedString:v22 completion:v28];
    }

    [*(a1 + 32) finishedPerformingOperationWithError:v30[5]];
    _Block_object_dispose(&v29, 8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __101__RCFallbackOperation__fetchConfigurationWithURL_requestKey_enableExtraLogs_fallbackTimeoutDuration___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setConfigurationResource:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_parseFallbackResponse:(id)a3 fallbackURL:(id)a4 requestKey:(id)a5 enableExtraLogs:(BOOL)a6 maxAge:(id)a7 etag:(id)a8 lastModifiedString:(id)a9 completion:(id)a10
{
  v53 = a6;
  v80 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v59 = a5;
  v58 = a7;
  v57 = a8;
  v15 = a9;
  v16 = a10;
  v17 = [v14 rc_gzipInflate];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v14;
  }

  v63 = 0;
  v55 = v19;
  v20 = [MEMORY[0x277CBEAC0] rc_dictionaryFromData:? error:?];
  v54 = 0;
  if (v54)
  {
    v21 = RCSharedLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [RCFallbackOperation _parseFallbackResponse:v54 fallbackURL:v21 requestKey:? enableExtraLogs:? maxAge:? etag:? lastModifiedString:? completion:?];
    }
  }

  v56 = v20;
  if (v20)
  {
    v22 = objc_alloc_init(RCConfigurationResource);
    [(RCConfigurationResource *)v22 setRequestKey:v59];
    v52 = v18;
    if (v18)
    {
      [(RCConfigurationResource *)v22 setGzippedConfigurationData:v14];
    }

    else
    {
      v24 = [v14 rc_gzipDeflate];
      [(RCConfigurationResource *)v22 setGzippedConfigurationData:v24];
    }

    v25 = [RCUserSegmentationConfiguration userSegmentationConfigurationWithConfigDict:v56 environment:[(RCFallbackOperation *)self environment]];
    [(RCConfigurationResource *)v22 setUserSegmentationConfiguration:v25];

    [(RCConfigurationResource *)v22 setTreatmentIDs:0];
    [(RCConfigurationResource *)v22 setSegmentSetIDs:0];
    v26 = [(RCFallbackOperation *)self userID];
    [(RCConfigurationResource *)v22 setUserID:v26];

    v27 = [(RCFallbackOperation *)self storefrontID];
    [(RCConfigurationResource *)v22 setStorefrontID:v27];

    v28 = [(RCFallbackOperation *)self preferredLanguages];
    [(RCConfigurationResource *)v22 setPreferredLanguages:v28];

    v29 = [MEMORY[0x277CBEAA8] date];
    [(RCConfigurationResource *)v22 setLastFetchedDate:v29];

    [(RCConfigurationResource *)v22 setFallbackMaxAge:v58];
    v30 = [v57 copy];
    [(RCConfigurationResource *)v22 setEtag:v30];

    v31 = [v15 copy];
    [(RCConfigurationResource *)v22 setLastModifiedFallbackString:v31];

    v32 = RCSharedLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(RCOperation *)self shortOperationDescription];
      [(RCConfigurationResource *)v22 lastFetchedDate];
      v33 = v48 = self;
      v34 = [(RCConfigurationResource *)v22 fallbackMaxAge];
      v35 = [(RCConfigurationResource *)v22 etag];
      [(RCConfigurationResource *)v22 lastModifiedFallbackString];
      v36 = v50 = v16;
      [(RCConfigurationResource *)v22 treatmentIDs];
      v37 = v51 = v14;
      v38 = [v37 rc_description];
      [(RCConfigurationResource *)v22 segmentSetIDs];
      v39 = v49 = v15;
      v40 = [v39 rc_description];
      *buf = 138545154;
      v65 = v47;
      v66 = 2114;
      v67 = v59;
      v68 = 2114;
      v69 = v33;
      v70 = 2114;
      v71 = v34;
      v72 = 2114;
      v73 = v35;
      v74 = 2114;
      v75 = v36;
      v76 = 2114;
      v77 = v38;
      v78 = 2114;
      v79 = v40;
      v41 = v40;
      _os_log_impl(&dword_2179FC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ fallback: received configuration with requestKey: %{public}@ lastFetchedDate: %{public}@ maxAge: %{public}@ etag: %{public}@ lastModified: %{public}@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x52u);

      v15 = v49;
      v14 = v51;

      v16 = v50;
      self = v48;
    }

    if (v53)
    {
      v42 = v16;
      v43 = RCSharedLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(RCOperation *)self shortOperationDescription];
        v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v55 encoding:4];
        *buf = 138543618;
        v65 = v44;
        v66 = 2112;
        v67 = v45;
        _os_log_impl(&dword_2179FC000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ CloudKit JSON response: %@", buf, 0x16u);
      }

      v16 = v42;
    }

    v16[2](v16, v22, 0);
    v18 = v52;
    v23 = v54;
  }

  else
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __127__RCFallbackOperation__parseFallbackResponse_fallbackURL_requestKey_enableExtraLogs_maxAge_etag_lastModifiedString_completion___block_invoke;
    v60[3] = &unk_27822F1A8;
    v23 = v54;
    v61 = v54;
    v62 = v16;
    __127__RCFallbackOperation__parseFallbackResponse_fallbackURL_requestKey_enableExtraLogs_maxAge_etag_lastModifiedString_completion___block_invoke(v60);

    v22 = v61;
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __127__RCFallbackOperation__parseFallbackResponse_fallbackURL_requestKey_enableExtraLogs_maxAge_etag_lastModifiedString_completion___block_invoke(uint64_t a1)
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

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"the fallback operation must have valid URL"];
  v2 = 136315906;
  v3 = "[RCFallbackOperation validateOperation]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCFallbackOperation.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_parseFallbackResponse:(NSObject *)a3 fallbackURL:requestKey:enableExtraLogs:maxAge:etag:lastModifiedString:completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 shortOperationDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "%{public}@ parseFallbackResponse - JSON parsing failed with error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end