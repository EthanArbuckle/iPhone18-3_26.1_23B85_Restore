@interface RadioGetGenreTreeNodesRequest
- (RadioGetGenreTreeNodesRequest)initWithParentNodeID:(unint64_t)a3;
- (id)_genreTreeByApplyingResponse:(id)a3;
- (void)startWithCachedCompletionHandler:(id)a3 networkCompletionHandler:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation RadioGetGenreTreeNodesRequest

- (id)_genreTreeByApplyingResponse:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 radio_decompressedBodyData];
  if ([v4 length])
  {
    v15 = 0;
    v16 = 0;
    v5 = [v4 propertyListForRadioResponseReturningError:&v16 unparsedResponseDictionary:&v15];
    v6 = v16;
    v7 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_opt_class() responseContentKey];
      v9 = [v5 objectForKey:v8];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = 0;
      }

      v10 = [objc_alloc(MEMORY[0x277D69B70]) initWithStorePlatformData:v7];
      metricsConfiguration = self->_metricsConfiguration;
      self->_metricsConfiguration = v10;
      v12 = 1;
    }

    else
    {
      metricsConfiguration = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(metricsConfiguration, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v6;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_261792000, metricsConfiguration, OS_LOG_TYPE_ERROR, "Error: Unable to deserialize genre tree response (%@), data: %@", buf, 0x16u);
      }

      v9 = 0;
      v12 = 3;
    }

    [(RadioRequest *)self setStatus:v12];
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RadioRequest *)self requestContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke;
  v8[3] = &unk_279AEABD8;
  v9 = v5;
  v10 = v4;
  v8[4] = self;
  v6 = v5;
  v7 = v4;
  [(RadioRequest *)self _loadRadioStoreBagWithCompletionHandler:v8];
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 radioConfigurationDictionary];
  v5 = [v3 baseURL];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() requestBagKey];
  v8 = [v4 objectForKey:v7];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || v5)
  {
    v51 = @"parent-id";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 32) + 72)];
    v52[0] = v12;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];

    v13 = [v4 objectForKey:@"max-protocol-version"];
    v14 = [v13 intValue];

    if (v8 && v14 >= 4)
    {
      v15 = [MEMORY[0x277CCACA8] queryStringForRadioRequestParameters:v11 protocolVersion:4 error:0];
      v16 = MEMORY[0x277CBEBC0];
      v17 = [v8 stringByAppendingString:v15];
      v18 = [v16 URLWithString:v17];

      v19 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v18 absoluteString];
        *buf = 138412290;
        v50 = v20;
        _os_log_impl(&dword_261792000, v19, OS_LOG_TYPE_INFO, "[RadioGetGenreTreeNodesRequest] Request URL: %@", buf, 0xCu);
      }

      v21 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v18];
      [v21 setHTTPMethod:@"GET"];
    }

    else
    {
      v22 = *(a1 + 32);
      v23 = [objc_opt_class() fallbackRequestPath];
      v15 = [v5 URLByAppendingPathComponent:v23];

      v24 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v15 absoluteString];
        *buf = 138412290;
        v50 = v25;
        _os_log_impl(&dword_261792000, v24, OS_LOG_TYPE_INFO, "[RadioGetGenreTreeNodesRequest] Request URL: %@", buf, 0xCu);
      }

      v21 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v15];
      v18 = [MEMORY[0x277CBEA90] dataForRadioRequestParameters:v11 isAsynchronousBackgroundRequest:objc_msgSend(*(a1 + 32) error:{"isAsynchronousBackgroundRequest"), 0}];
      [v21 setHTTPBody:v18];
    }

    v26 = *(a1 + 32);
    v27 = [objc_opt_class() defaultURLCache];
    v28 = [v27 cachedConnectionResponseForRequestProperties:v21];

    if (v28 && ([v28 ssv_isExpiredResponse] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_genreTreeByApplyingResponse:", v28), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      v31 = [v28 metricsPageEvent];
      v32 = [v31 mutableCopy];
      v33 = *(a1 + 32);
      v34 = *(v33 + 96);
      *(v33 + 96) = v32;

      [*(*(a1 + 32) + 96) setCachedResponse:1];
      [*(a1 + 32) setCachedResponse:1];
      v35 = *(a1 + 48);
      if (v35)
      {
        (*(v35 + 16))(v35, v30, 0);
      }

      v36 = [MEMORY[0x277CCAB98] defaultCenter];
      [v36 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
    }

    else
    {
      v37 = +[RadioNetworkObserver sharedNetworkObserver];
      [v37 beginUsingNetwork];

      v38 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v21 storeBag:v3];
      v39 = *(a1 + 32);
      v40 = *(v39 + 80);
      *(v39 + 80) = v38;

      v41 = *(a1 + 32);
      v42 = *(v41 + 80);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_20;
      v44[3] = &unk_279AEAAE8;
      v44[4] = v41;
      v45 = v21;
      v46 = *(a1 + 48);
      [v42 startWithConnectionResponseBlock:v44];
    }
  }

  else
  {
    [*(a1 + 32) setStatus:5];
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279AEACF0;
    v10 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v48 = v10;
    dispatch_async(v9, block);

    v11 = v48;
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RadioNetworkObserver sharedNetworkObserver];
  [v7 endUsingNetwork];

  if (v5)
  {
    v8 = [v5 statusCode];
  }

  else
  {
    v9 = [v6 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277D6A118]];
    v8 = [v10 integerValue];
  }

  v11 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v38 = v8;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioGetGenreTreeNodesRequest] Status code: %lli", buf, 0xCu);
  }

  if ((v8 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v12 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_ERROR, "Error: Unable to get genre tree (%@)", buf, 0xCu);
    }

    if (!v6)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D6A110];
      v35 = *MEMORY[0x277D6A118];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v36 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v6 = [v13 errorWithDomain:v14 code:109 userInfo:v16];
    }

    if (v8 <= 399)
    {
      v17 = 1;
      if (v8 == 200 || v8 == 204)
      {
        goto LABEL_22;
      }
    }

    else
    {
      switch(v8)
      {
        case 404:
          goto LABEL_15;
        case 401:
          v17 = 2;
          goto LABEL_22;
        case 400:
LABEL_15:
          v17 = 4;
LABEL_22:
          [*(a1 + 32) setStatus:v17];
          v18 = 0;
          goto LABEL_23;
      }
    }

    v17 = 3;
    goto LABEL_22;
  }

  v18 = [*(a1 + 32) _genreTreeByApplyingResponse:v5];
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = [objc_opt_class() defaultURLCache];
    [v20 storeConnectionResponse:v5 forRequestProperties:*(a1 + 40)];
  }

LABEL_23:
  v21 = [v5 metricsPageEvent];
  v22 = [v21 mutableCopy];
  v23 = *(a1 + 32);
  v24 = *(v23 + 96);
  *(v23 + 96) = v22;

  v25 = dispatch_get_global_queue(0, 0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_22;
  v30[3] = &unk_279AEAB88;
  v26 = *(a1 + 48);
  v31 = v18;
  v32 = v6;
  v33 = *(a1 + 32);
  v34 = v26;
  v27 = v6;
  v28 = v18;
  dispatch_async(v25, v30);

  v29 = *MEMORY[0x277D85DE8];
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_22(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:a1[6]];
}

- (void)startWithCachedCompletionHandler:(id)a3 networkCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__RadioGetGenreTreeNodesRequest_startWithCachedCompletionHandler_networkCompletionHandler___block_invoke;
  v10[3] = &unk_279AEAAC0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(RadioGetGenreTreeNodesRequest *)self startWithCompletionHandler:v10];
}

void __91__RadioGetGenreTreeNodesRequest_startWithCachedCompletionHandler_networkCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (RadioGetGenreTreeNodesRequest)initWithParentNodeID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RadioGetGenreTreeNodesRequest;
  result = [(RadioRequest *)&v5 init];
  if (result)
  {
    result->_parentNodeID = a3;
  }

  return result;
}

@end