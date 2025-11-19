@interface RCURLFetchOperation
- (BOOL)validateOperation;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)_reportNetworkEventsForTask:(id)a3 response:(id)a4 error:(id)a5;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)resetForRetry;
- (void)setRelativePriority:(int64_t)a3;
- (void)validateOperation;
@end

@implementation RCURLFetchOperation

- (void)setRelativePriority:(int64_t)a3
{
  v5 = [(RCURLFetchOperation *)self requestTask];
  [v5 setRelativePriority:a3];

  v6.receiver = self;
  v6.super_class = RCURLFetchOperation;
  [(RCOperation *)&v6 setRelativePriority:a3];
}

- (BOOL)validateOperation
{
  v2 = [(RCURLFetchOperation *)self URL];

  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCURLFetchOperation validateOperation];
  }

  return v2 != 0;
}

- (void)performOperation
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB70]);
  v4 = [(RCURLFetchOperation *)self URL];
  v5 = [v3 initWithURL:v4];

  v6 = [(RCURLFetchOperation *)self HTTPMethod];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"GET";
  }

  [v5 setHTTPMethod:v8];

  v9 = [(RCURLFetchOperation *)self HTTPBody];
  [v5 setHTTPBody:v9];

  v10 = [(RCURLFetchOperation *)self URL];
  v11 = [v10 absoluteString];
  [(RCURLFetchOperation *)self setUrlString:v11];

  v12 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
  v13 = [v12 taskIdentifier];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v16 UUIDString];
  }

  [v5 addValue:v15 forHTTPHeaderField:@"X-Request-ID"];
  [(RCURLFetchOperation *)self setRequestUUID:v15];
  v17 = RCSharedLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(RCOperation *)self shortOperationDescription];
    v19 = [(RCURLFetchOperation *)self urlString];
    v20 = [(RCURLFetchOperation *)self requestUUID];
    *buf = 138543874;
    v77 = v18;
    v78 = 2112;
    v79 = v19;
    v80 = 2112;
    v81 = v20;
    _os_log_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform operation to fetch config from URL: %@ with X-Request-ID: %@", buf, 0x20u);
  }

  [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
  if (v21 > 0.0)
  {
    [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
    if (v22 != 1.79769313e308)
    {
      [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
      [v5 setTimeoutInterval:?];
      v23 = RCSharedLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(RCOperation *)self shortOperationDescription];
        [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
        *buf = 138543618;
        v77 = v24;
        v78 = 2048;
        v79 = v25;
        _os_log_impl(&dword_2179FC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ applying URLRequestTimeoutDuration: %.1f", buf, 0x16u);
      }
    }
  }

  [v5 setCachePolicy:1];
  v65 = [MEMORY[0x277CBEB38] dictionary];
  v26 = [(RCURLFetchOperation *)self additionalRequestHTTPHeaders];
  v27 = v26 == 0;

  if (!v27)
  {
    v28 = [(RCURLFetchOperation *)self additionalRequestHTTPHeaders];
    [v65 addEntriesFromDictionary:v28];
  }

  [v5 setAllHTTPHeaderFields:v65];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__5;
  v74 = __Block_byref_object_dispose__5;
  v75 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__RCURLFetchOperation_performOperation__block_invoke;
  aBlock[3] = &unk_278230048;
  v69 = &v70;
  aBlock[4] = self;
  v63 = v15;
  v68 = v63;
  v64 = _Block_copy(aBlock);
  v29 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];

  if (v29)
  {
    v30 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
    v66 = 0;
    v31 = [RCURLSession backgroundSessionForFetchConfig:v30 delegateReference:&v66];
    v32 = v66;
    v33 = [v31 downloadTaskWithRequest:v5];
    v34 = v71[5];
    v71[5] = v33;

    v35 = [(RCURLFetchOperation *)self requestUUID];
    [v71[5] setTaskDescription:v35];

    v36 = [v30 earliestBeginDate];
    [v71[5] setEarliestBeginDate:v36];

    v37 = [(RCURLFetchOperation *)self requestUUID];
    [v32 observeCompletionOfTaskWithIdentifier:v37 completion:v64];
  }

  else
  {
    v38 = +[RCURLSession sharedForegroundSession];
    v39 = [v38 dataTaskWithRequest:v5 completionHandler:v64];
    v40 = v71[5];
    v71[5] = v39;

    v30 = [(RCURLFetchOperation *)self requestUUID];
    [v71[5] setTaskDescription:v30];
  }

  [(RCURLFetchOperation *)self setRequestTask:v71[5]];
  v41 = [(RCOperation *)self relativePriority];
  [v71[5] setRelativePriority:v41];
  [(RCOperation *)self associateChildOperation:v71[5]];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(RCURLFetchOperation *)self setTaskStartTime:?];
  if (v29)
  {
    v42 = RCSharedLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [(RCOperation *)self shortOperationDescription];
      v61 = [(RCURLFetchOperation *)self loggingKey];
      v43 = [(RCURLFetchOperation *)self requestUUID];
      v44 = [(RCURLFetchOperation *)self urlString];
      v45 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
      v46 = [v45 earliestBeginDate];
      v47 = [v46 rc_stringForLogging];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = @"<nil>";
      }

      v50 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
      [v50 timeout];
      *buf = 138544642;
      v77 = v62;
      v78 = 2112;
      v79 = v61;
      v80 = 2112;
      v81 = v43;
      v82 = 2112;
      v83 = v44;
      v84 = 2114;
      v85 = v49;
      v86 = 2048;
      v87 = v51;
      _os_log_impl(&dword_2179FC000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ will send background request for configuration: %@ with UUID: %@, URL: %@, earliestBeginDate: %{public}@, timeout: %.2f.", buf, 0x3Eu);
    }
  }

  else
  {
    v42 = RCSharedLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [(RCOperation *)self shortOperationDescription];
      v53 = [(RCURLFetchOperation *)self loggingKey];
      v54 = [(RCURLFetchOperation *)self requestUUID];
      v55 = [(RCURLFetchOperation *)self urlString];
      *buf = 138544130;
      v77 = v52;
      v78 = 2112;
      v79 = v53;
      v80 = 2112;
      v81 = v54;
      v82 = 2112;
      v83 = v55;
      _os_log_impl(&dword_2179FC000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ will send foreground request for configuration: %@ with UUID: %@, URL: %@", buf, 0x2Au);
    }
  }

  v56 = RCSharedLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [v71[5] longOperationDescription];
    *buf = 138543362;
    v77 = v57;
    _os_log_impl(&dword_2179FC000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
  }

  v58 = [(RCURLFetchOperation *)self networkActivity];

  if (v58)
  {
    [v71[5] setDelegate:self];
    v59 = [(RCURLFetchOperation *)self networkActivity];
    [v59 attachActivityToTask:v71[5]];
  }

  [v71[5] resume];

  _Block_object_dispose(&v70, 8);
  v60 = *MEMORY[0x277D85DE8];
}

void __39__RCURLFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = RCSharedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(*(a1 + 48) + 8) + 40) shortOperationDescription];
    *buf = 138543362;
    v38 = v11;
    _os_log_impl(&dword_2179FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ finished", buf, 0xCu);
  }

  [*(a1 + 32) _reportNetworkEventsForTask:*(*(*(a1 + 48) + 8) + 40) response:v8 error:v9];
  v12 = objc_opt_class();
  v13 = RCDynamicCast(v12, v8);
  v14 = v13;
  if (v13 && ([v13 statusCode] < 200 || objc_msgSend(v14, "statusCode") >= 300) && objc_msgSend(v14, "statusCode") != 304)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [*(a1 + 32) urlString];
    [v15 setObject:v16 forKeyedSubscript:@"RCErrorHTTPURL"];

    [v15 setObject:*(a1 + 40) forKeyedSubscript:@"RCErrorHTTPRequestUUID"];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "statusCode")}];
    [v15 setObject:v17 forKeyedSubscript:@"RCErrorHTTPStatusCode"];

    v18 = [v14 allHeaderFields];

    if (v18)
    {
      v19 = [v14 allHeaderFields];
      [v15 setObject:v19 forKeyedSubscript:@"RCErrorHTTPResponseHeaders"];
    }

    if ([v14 statusCode] >= 500 && objc_msgSend(v14, "statusCode") <= 598)
    {
      v20 = [v14 allHeaderFields];
      v21 = [v20 objectForKeyedSubscript:@"Retry-After"];

      if (v21)
      {
        v22 = [v21 integerValue];
        if (v22)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
          if (v23)
          {
            v24 = v23;
            [v15 setObject:v23 forKeyedSubscript:@"RCErrorRetryAfter"];
            [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NSErrorRCAdditionsShouldRetry"];
          }
        }
      }
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL request failed with status code %lu", objc_msgSend(v14, "statusCode")];
    v27 = [v25 rc_errorWithCode:3 description:v26 additionalUserInfo:v15];

    v9 = v27;
  }

  v28 = [v14 allHeaderFields];
  v29 = [v28 objectForKeyedSubscript:@"Cache-Control"];
  v30 = [v29 rc_numberFollowingString:@"max-age="];

  if (!v30 || ([v30 doubleValue], v31 == 0.0))
  {
    v32 = RCSharedLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [*(a1 + 32) shortOperationDescription];
      v34 = [*(a1 + 32) urlString];
      *buf = 138543618;
      v38 = v33;
      v39 = 2112;
      v40 = v34;
      _os_log_impl(&dword_2179FC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ max-age missing from Cache-Control header for URL: %@", buf, 0x16u);
    }

    v30 = 0;
  }

  [*(a1 + 32) setMaxAge:v30];
  if (!v9)
  {
    [*(a1 + 32) setResponseData:v7];
  }

  [*(a1 + 32) setHttpResponse:v14];
  [*(a1 + 32) setResponseSize:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "countOfBytesReceived")}];
  v35 = [v8 MIMEType];
  [*(a1 + 32) setResponseMIMEType:v35];

  [*(a1 + 32) setError:v9];
  [*(a1 + 32) finishedPerformingOperationWithError:v9];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(RCURLFetchOperation *)self setRequestTask:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(RCURLFetchOperation *)self taskStartTime];
  if (v4)
  {
    if ([v4 rc_isCancellationError])
    {
      v8 = RCSharedLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v9 = [(RCOperation *)self shortOperationDescription];
      v10 = [(RCURLFetchOperation *)self loggingKey];
      *buf = 138543618;
      v59 = v9;
      v60 = 2112;
      v61 = v10;
      _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled configuration request %@", buf, 0x16u);

      goto LABEL_5;
    }

    v15 = [v4 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"RCErrorHTTPStatusCode"];

    v8 = RCSharedLog();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v17)
      {
        v9 = [(RCOperation *)self shortOperationDescription];
        v18 = [(RCURLFetchOperation *)self loggingKey];
        v19 = [v4 userInfo];
        v20 = [v19 objectForKeyedSubscript:@"RCErrorHTTPStatusCode"];
        *buf = 138543874;
        v59 = v9;
        v60 = 2114;
        v61 = v18;
        v62 = 2114;
        v63 = v20;
        _os_log_error_impl(&dword_2179FC000, v8, OS_LOG_TYPE_ERROR, "%{public}@ failed to request configuration %{public}@ with response status code: %{public}@", buf, 0x20u);

LABEL_5:
      }
    }

    else if (v17)
    {
      [(RCURLFetchOperation *)self operationWillFinishWithError:v4, v8];
    }
  }

  else
  {
    v11 = v7;
    v8 = RCSharedLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(RCOperation *)self shortOperationDescription];
      v13 = [(RCURLFetchOperation *)self loggingKey];
      v14 = [MEMORY[0x277CCA8E8] stringFromByteCount:-[RCURLFetchOperation responseSize](self countStyle:{"responseSize"), 0}];
      *buf = 138544130;
      v59 = v12;
      v60 = 2114;
      v61 = v13;
      v62 = 2112;
      v63 = v14;
      v64 = 2048;
      v65 = v6 - v11;
      _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully received configuration %{public}@ with size: %@, total time: %f", buf, 0x2Au);
    }
  }

LABEL_13:

  v21 = [(RCURLFetchOperation *)self completionQueue];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = RCDispatchQueueForQualityOfService([(RCURLFetchOperation *)self qualityOfService]);
  }

  v24 = v23;

  v25 = [(RCURLFetchOperation *)self configurationDictionaryCompletionHandler];

  if (v25)
  {
    v26 = [(RCURLFetchOperation *)self responseData];
    v27 = [v26 rc_gzipInflate];

    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = [(RCURLFetchOperation *)self responseData];
    }

    v30 = v28;
    v57 = 0;
    v31 = [MEMORY[0x277CBEAC0] rc_dictionaryFromData:v28 error:&v57];
    v32 = v57;
    [(RCURLFetchOperation *)self setResponseData:0];
    if (v32)
    {
      v50 = v31;
      v33 = RCSharedLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(RCURLFetchOperation *)self operationWillFinishWithError:v32, v33];
      }

      v34 = objc_opt_class();
      v35 = [v32 userInfo];
      v36 = [v35 objectForKey:@"NSJSONSerializationErrorIndex"];
      v37 = RCDynamicCast(v34, v36);

      if (v37)
      {
        v38 = [v37 unsignedIntegerValue];
        v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v30 encoding:4];
        if ([v39 length])
        {
          v40 = [v39 length];
          v41 = v40 - 1;
          v42 = v38 - 200;
          if (v38 < 0xC8)
          {
            v42 = 0;
          }

          if (v42 >= v41)
          {
            v43 = v40 - 1;
          }

          else
          {
            v43 = v42;
          }

          if (v38 + 200 < v41)
          {
            v41 = v38 + 200;
          }

          v48 = v41;
          [v39 substringWithRange:{v43, v41 - v43}];
          v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v44 = RCSharedLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v47 = [(RCOperation *)self shortOperationDescription];
            *buf = 138544130;
            v59 = v47;
            v60 = 2048;
            v61 = v43;
            v62 = 2048;
            v63 = v48;
            v64 = 2114;
            v65 = v49;
            _os_log_error_impl(&dword_2179FC000, v44, OS_LOG_TYPE_ERROR, "%{public}@ JSON parsing failure response substring startIndex=%lu endIndex=%lu excerpt='%{public}@'", buf, 0x2Au);
          }
        }
      }

      v31 = v50;
    }

    v45 = [(RCURLFetchOperation *)self configurationDictionaryCompletionHandler];

    if (v45)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke;
      v53[3] = &unk_278230070;
      v53[4] = self;
      v54 = v31;
      v55 = v32;
      v56 = v4;
      dispatch_async(v24, v53);
    }
  }

  else
  {
    v29 = [(RCURLFetchOperation *)self configurationCompletionHandler];

    if (v29)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke_2;
      block[3] = &unk_27822F130;
      block[4] = self;
      v52 = v4;
      dispatch_async(v24, block);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) configurationDictionaryCompletionHandler];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) maxAge];
  v5 = [*(a1 + 32) httpResponse];
  v6[2](v6, v3, v2, v4, v5, *(a1 + 56));
}

void __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) configurationCompletionHandler];
  v2 = [*(a1 + 32) responseData];
  v3 = [*(a1 + 32) maxAge];
  v4 = [*(a1 + 32) httpResponse];
  v5[2](v5, v2, v3, v4, *(a1 + 40));
}

- (void)resetForRetry
{
  [(RCURLFetchOperation *)self setTaskStartTime:0.0];
  [(RCURLFetchOperation *)self setResponseData:0];
  [(RCURLFetchOperation *)self setHttpResponse:0];
  [(RCURLFetchOperation *)self setResponseSize:0];
  [(RCURLFetchOperation *)self setError:0];

  [(RCURLFetchOperation *)self setMaxAge:0];
}

- (void)_reportNetworkEventsForTask:(id)a3 response:(id)a4 error:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke;
    v44[3] = &unk_27822FE40;
    v44[4] = self;
    v45 = v8;
    v46 = v10;
    __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke(v44);
  }

  else
  {
    v35 = self;
    v11 = objc_opt_class();
    v12 = RCDynamicCast(v11, v9);

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = RCDynamicCast(v13, v9);
      if ([v14 statusCode] >= 200 && objc_msgSend(v14, "statusCode") < 300 || objc_msgSend(v14, "statusCode") == 304)
      {
        v34 = v14;
        v32 = v9;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v15 = [v8 _incompleteTaskMetrics];
        v16 = [v15 transactionMetrics];

        obj = v16;
        v17 = [v16 countByEnumeratingWithState:&v37 objects:v47 count:16];
        v18 = v35;
        if (v17)
        {
          v19 = v17;
          v20 = *v38;
          v33 = v8;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v38 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v37 + 1) + 8 * i);
              if ([v22 resourceFetchType] != 3)
              {
                v23 = [(RCURLFetchOperation *)v18 networkEventHandler];

                if (v23)
                {
                  v24 = [(RCURLFetchOperation *)v18 networkEventHandler];
                  v25 = [RCNetworkEvent alloc];
                  v26 = [v8 originalRequest];
                  v27 = [v22 fetchStartDate];
                  v28 = [(RCOperation *)v18 operationID];
                  v29 = [(RCURLFetchOperation *)v18 requestUUID];
                  v30 = [(RCNetworkEvent *)v25 initWithResultType:0 request:v26 startDate:v27 operationID:v28 requestID:v29 response:v34 metrics:v22 error:0];
                  (v24)[2](v24, v30);

                  v18 = v35;
                  v8 = v33;
                }
              }
            }

            v19 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v19);
        }

        v10 = 0;
        v9 = v32;
        v14 = v34;
      }

      else
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke_3;
        v41[3] = &unk_27822FE40;
        v41[4] = v35;
        v42 = v8;
        v43 = v14;
        __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke_3(v41);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkEventHandler];

  if (v2)
  {
    v11 = [*(a1 + 32) networkEventHandler];
    v3 = [RCNetworkEvent alloc];
    v4 = [*(a1 + 40) originalRequest];
    v5 = [*(a1 + 40) _incompleteTaskMetrics];
    v6 = [v5 taskInterval];
    v7 = [v6 startDate];
    v8 = [*(a1 + 32) operationID];
    v9 = [*(a1 + 32) requestUUID];
    v10 = [(RCNetworkEvent *)v3 initWithResultType:2 request:v4 startDate:v7 operationID:v8 requestID:v9 response:0 metrics:0 error:*(a1 + 48)];
    v11[2](v11, v10);
  }
}

void __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) networkEventHandler];

  if (v2)
  {
    v10 = [*(a1 + 32) networkEventHandler];
    v3 = [RCNetworkEvent alloc];
    v4 = [*(a1 + 40) originalRequest];
    v5 = [*(a1 + 40) _incompleteCurrentTaskTransactionMetrics];
    v6 = [v5 fetchStartDate];
    v7 = [*(a1 + 32) operationID];
    v8 = [*(a1 + 32) requestUUID];
    v9 = [(RCNetworkEvent *)v3 initWithResultType:1 request:v4 startDate:v6 operationID:v7 requestID:v8 response:*(a1 + 48) metrics:0 error:0];
    v10[2](v10, v9);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(RCURLFetchOperation *)self networkActivity];

  if (v7)
  {
    v8 = [v6 error];

    v9 = [(RCURLFetchOperation *)self networkActivity];
    v10 = v9;
    if (v8)
    {
      [v9 completeActivityWithSuccess:0];

      v11 = RCSharedLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(RCURLFetchOperation *)self networkActivity];
        v15 = 67109120;
        v16 = [v12 label];
        v13 = "Did finish network activity with success=NO (label=%d)";
LABEL_7:
        _os_log_impl(&dword_2179FC000, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 8u);
      }
    }

    else
    {
      [v9 completeActivityWithSuccess:1];

      v11 = RCSharedLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(RCURLFetchOperation *)self networkActivity];
        v15 = 67109120;
        v16 = [v12 label];
        v13 = "Did finish network activity with success=YES (label=%d)";
        goto LABEL_7;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(RCURLFetchOperation *)self networkActivity];

  if (v6)
  {
    v7 = [(RCURLFetchOperation *)self networkActivity];
    [v7 attachActivityToTask:v5];

    v8 = RCSharedLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 originalRequest];
      v10 = [v9 URL];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2179FC000, v8, OS_LOG_TYPE_DEFAULT, "Did assign network activity to task (%{public}@)", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"the fetch operation must have valid URL"];
  v2 = 136315906;
  v3 = "[RCURLFetchOperation validateOperation]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCURLFetchOperation.m";
  v6 = 1024;
  v7 = 71;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 shortOperationDescription];
  v7 = [a1 loggingKey];
  v8 = [a2 localizedDescription];
  v10 = 138543874;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to request configuration %{public}@ with error: %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 shortOperationDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "%{public}@ operationWillFinishWithError - JSON parsing failed with error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end