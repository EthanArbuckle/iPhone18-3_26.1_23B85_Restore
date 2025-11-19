@interface WLKNetworkRequestOperation
- (WLKNetworkRequestOperation)init;
- (WLKNetworkRequestOperation)initWithURLRequest:(id)a3 options:(int64_t)a4;
- (id)authenticationDelegate;
- (id)httpHeaderMaxAge;
- (id)httpHeaderResponseDate;
- (id)originalExpirationDate;
- (id)shortDescription;
- (int64_t)_statusCodeForAMSResult:(id)a3 error:(id)a4;
- (void)_executeRequest;
- (void)_finishExecutionIfPossibleWithError:(id)a3;
- (void)_startNetworkRequest;
- (void)cancel;
- (void)configureSession;
- (void)executionDidBegin;
- (void)finishExecutionIfPossible;
- (void)handleResult:(id)a3 error:(id)a4;
- (void)prepareAndStartNetworkRequest;
@end

@implementation WLKNetworkRequestOperation

- (void)executionDidBegin
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WLKNetworkRequestOperation *)self identifier];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Request start: %@", &v9, 0xCu);
  }

  v5 = WLKNetworkSignpostLogObject();
  v6 = [(WLKNetworkRequestOperation *)self signpostIdentifier];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NetworkRequest.Total", &unk_272A8884E, &v9, 2u);
    }
  }

  if (self->_request)
  {
    [(WLKNetworkRequestOperation *)self configureSession];
    [(WLKNetworkRequestOperation *)self _startNetworkRequest];
  }

  else
  {
    [(WLKNetworkRequestOperation *)self prepareAndStartNetworkRequest];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareAndStartNetworkRequest
{
  [(WLKNetworkRequestOperation *)self configureSession];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__WLKNetworkRequestOperation_prepareAndStartNetworkRequest__block_invoke;
  v3[3] = &unk_279E5EDE0;
  objc_copyWeak(&v4, &location);
  [(WLKNetworkRequestOperation *)self prepareURLRequest:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)configureSession
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CEE6D8]);
  v4 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v5 = [v3 initWithBag:v4];

  [v5 setLogUUID:self->_identifier];
  if (self->_options)
  {
    [v5 setDialogOptions:1];
  }

  [v5 setIncludeClientVersions:0];
  options = self->_options;
  if ((options & 0x10) == 0)
  {
    if (+[WLKNetworkRequestUtilities isGDPRAccepted])
    {
      goto LABEL_7;
    }

    options = self->_options;
  }

  if ((options & 0x200000) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277D6C478] activeAccount];
    v8 = v7;
    DSID = self->_DSID;
    if (DSID)
    {
      v10 = [v7 ams_DSID];
      v11 = DSID;
      v12 = v10;
      v13 = v12;
      if (v11 != v12)
      {
        if (v12)
        {
          v14 = [(NSNumber *)v11 isEqual:v12];

          if (v14)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        v15 = [MEMORY[0x277D6C478] accountWithDSID:self->_DSID];
        v16 = WLKNetworkingLogObject();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v18 = self->_DSID;
            LODWORD(v34) = 138412290;
            *(&v34 + 4) = v18;
            v19 = "WLKNetworkRequestOperation - Found account for DSID override: %@";
LABEL_19:
            _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, v19, &v34, 0xCu);
          }
        }

        else if (v17)
        {
          v20 = self->_DSID;
          LODWORD(v34) = 138412290;
          *(&v34 + 4) = v20;
          v19 = "WLKNetworkRequestOperation - No account found for DSID override. Proceeding with non-personalized request %@";
          goto LABEL_19;
        }

        v8 = v15;
        goto LABEL_21;
      }
    }

LABEL_21:
    [v5 setAccount:{v8, v34}];
  }

  [(WLKNetworkRequestOperation *)self setEncoder:v5];
  v21 = +[WLKLaunchConfiguration sharedInstance];
  v22 = [v21 useSharedURLSession];

  if (!v22)
  {
    goto LABEL_43;
  }

  v23 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(WLKNetworkRequestOperation *)self shortDescription];
    LODWORD(v34) = 138412290;
    *(&v34 + 4) = v24;
    _os_log_impl(&dword_272A0F000, v23, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Use shared URLSession for request: %@", &v34, 0xCu);
  }

  v25 = +[WLKURLSessionManager sharedInstance];
  v26 = [v25 urlSession];

  if (!v26)
  {
LABEL_43:
    if ((self->_options & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    v27 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(WLKNetworkRequestOperation *)self shortDescription];
      LODWORD(v34) = 138412290;
      *(&v34 + 4) = v28;
      _os_log_impl(&dword_272A0F000, v27, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Use sharedCacheAMSURLSession for request: %@", &v34, 0xCu);
    }

    if (configureSession_sharedCacheAMSURLSessionOnceToken != -1)
    {
      [WLKNetworkRequestOperation configureSession];
    }

    v29 = configureSession_sharedCacheAMSURLSession;
    if (!v29)
    {
LABEL_32:
      v30 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(WLKNetworkRequestOperation *)self shortDescription];
        LODWORD(v34) = 138412290;
        *(&v34 + 4) = v31;
        _os_log_impl(&dword_272A0F000, v30, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Use default AMSURLSession for request: %@", &v34, 0xCu);
      }

      if (configureSession_sharedAMSURLSessionOnceToken != -1)
      {
        [WLKNetworkRequestOperation configureSession];
      }

      v29 = configureSession_sharedAMSURLSession;
    }

    v26 = v29;
  }

  if ((self->_options & 1) == 0)
  {
    v32 = [(WLKNetworkRequestOperation *)self authenticationDelegate];
    [v26 setDelegate:v32];
  }

  [(WLKNetworkRequestOperation *)self setSession:v26];

  v33 = *MEMORY[0x277D85DE8];
}

- (id)authenticationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);

  return WeakRetained;
}

- (void)_startNetworkRequest
{
  v3 = WLKIgnoreHTTPCacheOverride();
  v4 = [v3 BOOLValue];

  if ((v4 & 1) != 0 || (options = self->_options, (options & 8) != 0))
  {
    v6 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Request will ignore HTTP cache", buf, 2u);
    }

    v7 = [(NSURLRequest *)self->_request mutableCopy];
    [v7 setCachePolicy:1];
    v8 = [v7 copy];
    [(WLKNetworkRequestOperation *)self setRequest:v8];

    v9 = [(WLKNetworkRequestOperation *)self session];
    v10 = [v9 configuration];
    v11 = [v10 URLCache];
    [v11 removeCachedResponseForRequest:self->_request];

    options = self->_options;
  }

  if ((options & 4) != 0)
  {
    v12 = [(NSURLRequest *)self->_request mutableCopy];
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__WLKNetworkRequestOperation__startNetworkRequest__block_invoke;
    v14[3] = &unk_279E5EE30;
    objc_copyWeak(&v17, buf);
    v13 = v12;
    v15 = v13;
    v16 = 0;
    [WLKMescal signNetworkRequest:v13 completionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    [(WLKNetworkRequestOperation *)self _executeRequest];
  }
}

- (void)_executeRequest
{
  objc_initWeak(&location, self);
  v3 = [(AMSURLRequestEncoder *)self->_encoder requestByEncodingRequest:self->_request parameters:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__WLKNetworkRequestOperation__executeRequest__block_invoke;
  v4[3] = &unk_279E5EEA8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [v3 resultWithCompletion:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

void __59__WLKNetworkRequestOperation_prepareAndStartNetworkRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRequest:v8];
    if (v8)
    {
      [v7 _startNetworkRequest];
    }

    else
    {
      if (!v5)
      {
        v5 = WLKError(0, 0, @"WLKNetworkRequestOperation: failed to prepare request. No error was provided.");
      }

      [v7 setError:v5];
      [v7 finishExecutionIfPossible];
    }
  }
}

- (id)httpHeaderMaxAge
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [(WLKNetworkRequestOperation *)self httpResponse];
  v3 = [v2 valueForHTTPHeaderField:@"Cache-Control"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 componentsSeparatedByString:{@", "}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 containsString:{@"max-age", v18}])
          {
            v10 = [v9 componentsSeparatedByString:@"="];
            if ([v10 count] == 2)
            {
              v12 = [v10 objectAtIndex:1];
              v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v14 = [v12 stringByTrimmingCharactersInSet:v13];

              v15 = MEMORY[0x277CCABB0];
              [v14 doubleValue];
              v11 = [v15 numberWithDouble:?];

              goto LABEL_15;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_15:
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)httpHeaderResponseDate
{
  if (httpHeaderResponseDate_onceToken != -1)
  {
    [WLKNetworkRequestOperation(ResponseHeaders) httpHeaderResponseDate];
  }

  v3 = [(WLKNetworkRequestOperation *)self httpResponse];
  v4 = [v3 valueForHTTPHeaderField:@"Date"];

  v5 = [httpHeaderResponseDate_httpDateFormatter dateFromString:v4];

  return v5;
}

uint64_t __69__WLKNetworkRequestOperation_ResponseHeaders__httpHeaderResponseDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = httpHeaderResponseDate_httpDateFormatter;
  httpHeaderResponseDate_httpDateFormatter = v0;

  v2 = httpHeaderResponseDate_httpDateFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = httpHeaderResponseDate_httpDateFormatter;

  return [v4 setDateFormat:@"EEE', ' dd' 'MMM' 'yyyy HH':'mm':'ss zzz"];
}

- (id)originalExpirationDate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(WLKNetworkRequestOperation *)self httpHeaderMaxAge];
  v4 = [(WLKNetworkRequestOperation *)self httpHeaderResponseDate];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [v4 dateByAddingTimeInterval:{objc_msgSend(v3, "integerValue")}];
  }

  v7 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "MaxAge: %@, Response Date: %@, Expiration:%@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (WLKNetworkRequestOperation)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKUTSNetworkRequestOperation" format:@"-init is not supported"];

  return 0;
}

- (WLKNetworkRequestOperation)initWithURLRequest:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = WLKNetworkRequestOperation;
  v7 = [(WLKAsyncOperation *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = a4;
    v9 = [v6 copy];
    request = v8->_request;
    v8->_request = v9;

    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = v12;

    v14 = WLKNetworkSignpostLogObject();
    v8->_signpostIdentifier = os_signpost_id_make_with_pointer(v14, v8);
  }

  return v8;
}

- (id)shortDescription
{
  v3 = [(WLKNetworkRequestOperation *)self identifier];
  v4 = v3;
  v5 = &stru_288206BC0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  if ([(__CFString *)v6 length]>= 7)
  {
    v7 = [(WLKNetworkRequestOperation *)self identifier];
    v8 = [v7 substringToIndex:7];

    v6 = v8;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [(NSURLRequest *)self->_request URL];
  v11 = [v10 path];
  v12 = [v9 stringWithFormat:@"%@ %@", v6, v11];

  return v12;
}

void __46__WLKNetworkRequestOperation_configureSession__block_invoke()
{
  v0 = +[WLKNetworkRequestUtilities _sharedCacheSessionConfiguration];
  if (v0)
  {
    v5 = v0;
    v1 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v0];
    v2 = configureSession_sharedCacheAMSURLSession;
    configureSession_sharedCacheAMSURLSession = v1;

    v3 = configureSession_sharedCacheAMSURLSession;
    v4 = objc_alloc_init(WLKURLResponseDecoder);
    [v3 setResponseDecoder:v4];

    v0 = v5;
  }
}

void __46__WLKNetworkRequestOperation_configureSession__block_invoke_21()
{
  v4 = +[WLKNetworkRequestUtilities defaultSessionConfiguration];
  v0 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v4];
  v1 = configureSession_sharedAMSURLSession;
  configureSession_sharedAMSURLSession = v0;

  v2 = configureSession_sharedAMSURLSession;
  v3 = objc_alloc_init(WLKURLResponseDecoder);
  [v2 setResponseDecoder:v3];
}

- (void)handleResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 response];
  [(WLKNetworkRequestOperation *)self setHttpResponse:v8];

  v9 = [v7 data];
  [(WLKNetworkRequestOperation *)self setData:v9];

  [(WLKNetworkRequestOperation *)self setError:v6];
  v10 = [(WLKNetworkRequestOperation *)self _statusCodeForAMSResult:v7 error:v6];

  [(WLKNetworkRequestOperation *)self setResponseStatusCode:v10];
  [(WLKNetworkRequestOperation *)self setAmsUrlResponse:v7];

  v11 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WLKNetworkRequestOperation_handleResult_error___block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(v11, block);
}

uint64_t __49__WLKNetworkRequestOperation_handleResult_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) processResponse];
  v2 = *(a1 + 32);

  return [v2 finishExecutionIfPossible];
}

void __50__WLKNetworkRequestOperation__startNetworkRequest__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v4 = [*(a1 + 32) copy];
    [WeakRetained setRequest:v4];

    [WeakRetained _executeRequest];
  }

  else
  {
    [WeakRetained _finishExecutionIfPossibleWithError:*(a1 + 40)];
  }
}

void __45__WLKNetworkRequestOperation__executeRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5)
  {
    if ([WeakRetained isCancelled])
    {
      v9 = WLKCancelledError();
      [v8 _finishExecutionIfPossibleWithError:v9];
    }

    else
    {
      objc_initWeak(&location, v8);
      v10 = *(*(a1 + 32) + 376);
      v11 = [v8 networkActivity];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __45__WLKNetworkRequestOperation__executeRequest__block_invoke_2;
      v21[3] = &unk_279E5EE58;
      objc_copyWeak(&v22, &location);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __45__WLKNetworkRequestOperation__executeRequest__block_invoke_3;
      v17[3] = &unk_279E5EE80;
      objc_copyWeak(&v20, &location);
      v18 = v5;
      v19 = v8;
      [v10 createDataTaskWithRequest:v18 activity:v11 dataTaskCreationCompletionHandler:v21 requestCompletionHandler:v17];

      v12 = [MEMORY[0x277CBEAA8] date];
      [v8 setStartDate:v12];

      v13 = WLKNetworkSignpostLogObject();
      v14 = [v8 signpostIdentifier];
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        v15 = [*(*(a1 + 32) + 296) URL];
        *buf = 138412290;
        v25 = v15;
        _os_signpost_emit_with_name_impl(&dword_272A0F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "NetworkRequest.URLRequest", "%@", buf, 0xCu);
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [WeakRetained _finishExecutionIfPossibleWithError:v6];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __45__WLKNetworkRequestOperation__executeRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setTask:v6];
    v5 = [v4 task];
    [v5 resume];
  }
}

void __45__WLKNetworkRequestOperation__executeRequest__block_invoke_3(id *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [WeakRetained startDate];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = [WeakRetained _statusCodeForAMSResult:v5 error:v6];
    if (v6)
    {
      v34 = [v6 description];
    }

    else
    {
      v34 = &stru_288206BC0;
    }

    v13 = [v5 response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v13 valueForHTTPHeaderField:@"x-apple-jingle-correlation-key"];
    }

    else
    {
      v33 = 0;
    }

    v14 = [v5 taskMetrics];
    v15 = [v14 transactionMetrics];
    v16 = [v15 lastObject];

    [WeakRetained setResourceFetchType:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [WeakRetained setResourceFetchType:{objc_msgSend(v16, "resourceFetchType")}];
    }

    v17 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [WeakRetained identifier];
      v28 = [a1[4] HTTPMethod];
      [a1[4] URL];
      v30 = v32 = v13;
      v18 = [v30 relativePath];
      v19 = [v5 taskMetrics];
      [v19 taskInterval];
      v20 = v31 = v16;
      [v20 duration];
      *buf = 134219778;
      v36 = v12;
      v37 = 2048;
      v38 = v11;
      v39 = 2112;
      v40 = v29;
      v41 = 2112;
      v42 = v33;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v18;
      v21 = a1;
      v22 = v18;
      v47 = 2112;
      v48 = v34;
      v49 = 2048;
      v50 = v23;
      _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Request status: %lu elapsed time: %.5f id: %@ ck:%@ url: %@ %@ %@ %f", buf, 0x52u);

      v16 = v31;
      v13 = v32;

      a1 = v21;
    }

    v24 = WLKNetworkSignpostLogObject();
    v25 = [a1[5] signpostIdentifier];
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v25;
      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_272A0F000, v24, OS_SIGNPOST_INTERVAL_END, v26, "NetworkRequest.URLRequest", &unk_272A8884E, buf, 2u);
      }
    }

    [WeakRetained setTask:0];
    [WeakRetained handleResult:v5 error:v6];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_finishExecutionIfPossibleWithError:(id)a3
{
  [(WLKNetworkRequestOperation *)self setError:a3];

  [(WLKNetworkRequestOperation *)self finishExecutionIfPossible];
}

- (int64_t)_statusCodeForAMSResult:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [a3 response];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 statusCode];
  }

  else
  {
    v8 = WLKHTTPStatusCodeForAMSError(v5);
  }

  v9 = v8;

  return v9;
}

- (void)finishExecutionIfPossible
{
  v3 = WLKNetworkSignpostLogObject();
  v4 = [(WLKNetworkRequestOperation *)self signpostIdentifier];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_END, v5, "NetworkRequest.Total", &unk_272A8884E, buf, 2u);
    }
  }

  v6.receiver = self;
  v6.super_class = WLKNetworkRequestOperation;
  [(WLKAsyncOperation *)&v6 finishExecutionIfPossible];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(WLKNetworkRequestOperation *)self identifier];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKNetworkRequestOperation - Request cancelled: %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = WLKNetworkRequestOperation;
  [(WLKAsyncOperation *)&v7 cancel];
  v5 = [(WLKNetworkRequestOperation *)self task];
  [v5 cancel];

  v6 = *MEMORY[0x277D85DE8];
}

@end