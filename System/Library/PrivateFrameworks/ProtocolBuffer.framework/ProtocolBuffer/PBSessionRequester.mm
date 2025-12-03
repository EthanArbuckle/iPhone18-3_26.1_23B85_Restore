@interface PBSessionRequester
- (BOOL)readResponsePreamble:(id)preamble;
- (PBSessionRequester)initWithURL:(id)l delegate:(id)delegate queue:(id)queue;
- (PBSessionRequesterDelegate)delegate;
- (id)_cancelNoNotify;
- (id)requestPreamble;
- (id)responseForInternalRequest:(id)request;
- (id)responseForRequest:(id)request;
- (id)tryReadResponseData:(id)data forRequest:(id)request forResponseClass:(Class)class;
- (uint64_t)_cleanup;
- (uint64_t)_newSessionWithDelegate:(void *)delegate delegateQueue:(void *)queue connectionProperties:;
- (uint64_t)_tryParseData;
- (unint64_t)requestResponseTime;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_failWithError:(uint64_t)error;
- (void)_failWithErrorDomain:(uint64_t)domain errorCode:(void *)code userInfo:;
- (void)_serializePayload:(uint64_t)payload;
- (void)_start;
- (void)addInternalRequest:(id)request;
- (void)addRequest:(id)request;
- (void)cancel;
- (void)cancelWithErrorCode:(void *)code description:;
- (void)dealloc;
- (void)pause;
- (void)resume;
- (void)setHttpRequestHeader:(id)header forKey:(id)key;
- (void)setHttpRequestHeaders:(id)headers;
- (void)setNeedsCancel;
- (void)startWithConnectionProperties:(id)properties;
- (void)writeRequest:(id)request into:(id)into;
@end

@implementation PBSessionRequester

- (PBSessionRequesterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startWithConnectionProperties:(id)properties
{
  objc_storeStrong(&self->_connectionProperties, properties);

  [(PBSessionRequester *)self _start];
}

- (void)_start
{
  if (self)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __28__PBSessionRequester__start__block_invoke;
    v3[3] = &unk_1E833D5E0;
    v3[4] = self;
    v2 = MEMORY[0x1CCA88BB0](v3);
    [(PBSessionRequester *)self _serializePayload:v2];
  }
}

void __28__PBSessionRequester__start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = *(a1 + 32);

    [(PBSessionRequester *)v5 _failWithError:a3];
    return;
  }

  v7 = a2;
  if (!v3)
  {
    goto LABEL_41;
  }

  v8 = *(v3 + 40);
  if (v8)
  {
    [v8 cancel];
    v9 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v10 = *(v3 + 32);
  if (v10)
  {
    [v10 invalidateAndCancel];
    v11 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  v12 = *(v3 + 56);
  if (v12)
  {
    *(v3 + 56) = 0;
  }

  v13 = *(v3 + 128);
  if (v13 && (*(v3 + 248) & 0x400) == 0)
  {
    *(v3 + 128) = 0;
  }

  v14 = *(v3 + 144);
  if (v14)
  {
    *(v3 + 144) = 0;
  }

  v15 = *(v3 + 64);
  if (v15)
  {
    *(v3 + 64) = 0;
  }

  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 248) &= ~0x10u;
  v16 = objc_autoreleasePoolPush();
  *(v3 + 80) = [v7 length];
  *(v3 + 248) |= 2u;
  *(v3 + 96) = mach_absolute_time();
  if (!*(v3 + 8))
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PBRequesterErrorDomain" code:6004 userInfo:0];
    v39 = v3;
    objc_autoreleasePoolPop(v16);
LABEL_41:
    v40 = 0;
    goto LABEL_47;
  }

  v46 = v16;
  v47 = v7;
  v17 = [v3 newMutableURLRequestWithURL:?];
  if ([*(v3 + 200) count])
  {
    [v17 setCachePolicy:1];
  }

  v18 = *(v3 + 168);
  if (v18 == -1.0)
  {
    v18 = 60.0;
  }

  [v17 setTimeoutInterval:v18];
  [v17 setHTTPMethod:@"POST"];
  [v17 setHTTPShouldHandleCookies:*(v3 + 216)];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v19 = [v3 httpRequestHeaders];
  v20 = [v19 allKeys];

  v21 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v49;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v48 + 1) + 8 * i);
        v26 = [v3 httpRequestHeaders];
        v27 = [v26 objectForKeyedSubscript:v25];
        [v17 setValue:v27 forHTTPHeaderField:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v22);
  }

  v7 = v47;
  [v17 setHTTPBody:v47];
  v28 = [v3 newSessionWithDelegate:v3 delegateQueue:*(v3 + 48) connectionProperties:*(v3 + 208)];
  v29 = *(v3 + 32);
  *(v3 + 32) = v28;

  v30 = [v3 newSessionTaskOnSession:*(v3 + 32) withURLRequest:v17];
  v31 = *(v3 + 40);
  *(v3 + 40) = v30;

  if (*(v3 + 224))
  {
    [*(v3 + 40) set_APSRelayTopic:?];
  }

  if (!*(v3 + 232) || !*(v3 + 240))
  {
    [*(v3 + 40) set_nw_activity:0];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9414000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "pbSessionRequester, activity, nil", buf, 2u);
    }

    goto LABEL_46;
  }

  v32 = nw_activity_create();
  v33 = *(v3 + 40);
  if (v32)
  {
    [v33 set_nw_activity:v32];
    nw_activity_activate();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v34 = *(v3 + 232);
      v35 = *(v3 + 240);
      *buf = 67109376;
      v53 = v34;
      v54 = 1024;
      v55 = v35;
      v36 = MEMORY[0x1E69E9C10];
      v37 = "pbSessionRequester, activity, activate, %d, %d";
      v38 = OS_LOG_TYPE_INFO;
LABEL_44:
      _os_log_impl(&dword_1C9414000, v36, v38, v37, buf, 0xEu);
    }
  }

  else
  {
    [v33 set_nw_activity:0];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(v3 + 232);
      v42 = *(v3 + 240);
      *buf = 67109376;
      v53 = v41;
      v54 = 1024;
      v55 = v42;
      v36 = MEMORY[0x1E69E9C10];
      v37 = "pbSessionRequester, activity, createnil, %d, %d";
      v38 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_44;
    }
  }

LABEL_46:
  [*(v3 + 40) resume];

  objc_autoreleasePoolPop(v46);
  v3 = 0;
  v40 = 1;
LABEL_47:

  v43 = v3;
  v44 = v43;
  if ((v40 & 1) == 0 && v43)
  {
    [(PBSessionRequester *)*(a1 + 32) _failWithError:v43];
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_serializePayload:(uint64_t)payload
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (payload)
  {
    v4 = objc_alloc_init(PBDataWriter);
    requestPreamble = [payload requestPreamble];
    if (requestPreamble)
    {
      [(PBDataWriter *)v4 writeData:requestPreamble];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = *(payload + 136);
    v7 = [v6 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        v10 = 0;
        do
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [payload writeRequest:*(*(&v42 + 1) + 8 * v10++) into:v4];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v8);
    }

    v11 = *(payload + 120);
    if ((*(payload + 248) & 0x400) != 0)
    {
      v12 = [*(payload + 128) count];
      v13 = [v11 subarrayWithRange:{v12, objc_msgSend(*(payload + 120), "count") - v12}];

      v11 = v13;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        v18 = 0;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [payload writeRequest:*(*(&v38 + 1) + 8 * v18++) into:v4];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v16);
    }

    logRequestToFile = [payload logRequestToFile];

    if (logRequestToFile)
    {
      immutableData = [(PBDataWriter *)v4 immutableData];
      logRequestToFile2 = [payload logRequestToFile];
      [immutableData writeToFile:logRequestToFile2 atomically:0];

      v22 = [*(payload + 120) count];
      v23 = *(payload + 120);
      if (v22 == 1)
      {
        v24 = [v23 objectAtIndex:0];
        logRequestToFile3 = [payload logRequestToFile];
        v26 = [logRequestToFile3 stringByAppendingString:@".txt"];

        v27 = MEMORY[0x1E696AEC0];
        v28 = [payload URL];
        formattedText = [v24 formattedText];
        v30 = [v27 stringWithFormat:@"URL: %@\n\n%@", v28, formattedText, v38];

        [v30 writeToFile:v26 atomically:0 encoding:4 error:0];
      }

      else if ([v23 count])
      {
        v31 = 0;
        do
        {
          v32 = [*(payload + 120) objectAtIndex:v31];
          logRequestToFile4 = [payload logRequestToFile];
          v34 = [logRequestToFile4 stringByAppendingFormat:@".part_%d.txt", v31];

          formattedText2 = [v32 formattedText];
          [formattedText2 writeToFile:v34 atomically:0 encoding:4 error:0];

          ++v31;
        }

        while (v31 < [*(payload + 120) count]);
      }
    }

    [(PBDataWriter *)v4 immutableData];

    if ([objc_opt_class() usesEncodedMessages])
    {
      immutableData2 = [(PBDataWriter *)v4 immutableData];
      [payload encodeRequestData:immutableData2 startRequestCallback:v3];
    }

    else
    {
      immutableData2 = [(PBDataWriter *)v4 immutableData];
      v3[2](v3, immutableData2, 0);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_failWithError:(uint64_t)error
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (error && (*(error + 192) & 1) == 0)
  {
    *(error + 192) = 1;
    v5 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      code = [v5 code];
      currentTask = [error currentTask];
      v8 = [currentTask description];
      *buf = 134349314;
      v19 = code;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1C9414000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pbSessionRequester, didFailWithError, %{public}ld, %{public}@", buf, 0x16u);
    }

    if ((*(error + 248) & 0x100) != 0)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __37__PBSessionRequester__failWithError___block_invoke;
      v15 = &unk_1E833D608;
      errorCopy = error;
      v17 = v5;
      [*(error + 24) addOperationWithBlock:&v12];
    }

    _nw_activity = [*(error + 40) _nw_activity];

    if (_nw_activity)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9414000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pbSessionRequester, activity, failure", buf, 2u);
      }

      _nw_activity2 = [*(error + 40) _nw_activity];
      nw_activity_complete_with_reason();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __37__PBSessionRequester__failWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requester:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (uint64_t)_newSessionWithDelegate:(void *)delegate delegateQueue:(void *)queue connectionProperties:
{
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = MEMORY[0x1E696AF80];
    queueCopy = queue;
    delegateCopy = delegate;
    v9 = a2;
    ephemeralSessionConfiguration = [v6 ephemeralSessionConfiguration];
    if (ephemeralSessionConfiguration)
    {
      v11 = [queueCopy objectForKeyedSubscript:*MEMORY[0x1E695AEB0]];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = delegateCopy;
        v12 = v11;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          v16 = *MEMORY[0x1E695AE88];
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v24 + 1) + 8 * i);
              if ([v18 isEqualToString:v16])
              {
                v19 = [v12 objectForKeyedSubscript:v18];
                [ephemeralSessionConfiguration set_sourceApplicationAuditTokenData:v19];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v14);
        }

        delegateCopy = v23;
      }
    }

    v20 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration delegate:v9 delegateQueue:delegateCopy];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (unint64_t)requestResponseTime
{
  if (requestResponseTime_onceToken != -1)
  {
    dispatch_once(&requestResponseTime_onceToken, &__block_literal_global_499);
  }

  return (self->_timeResponseReceived - self->_timeRequestSent) * requestResponseTime_sTimebaseInfo / (1000000 * *algn_1EC3A42B4);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = *MEMORY[0x1E696A940];
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = authenticationMethod;
  if (v7 != authenticationMethod)
  {

LABEL_3:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_6;
  }

  v11 = [(NSArray *)self->_clientCertificates count];

  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = [(NSArray *)self->_clientCertificates objectAtIndexedSubscript:0];

  v13 = [(NSArray *)self->_clientCertificates subarrayWithRange:1, [(NSArray *)self->_clientCertificates count]- 1];
  v14 = [MEMORY[0x1E696AF30] credentialWithIdentity:v12 certificates:v13 persistence:1];
  (handlerCopy)[2](handlerCopy, 0, v14);

LABEL_6:
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  if (self && (*&self->_flags & 4) != 0)
  {
    [(PBSessionRequester *)self cancel];
    handlerCopy[2](handlerCopy, 0);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v14 = connectionCopy;
  v27 = v14;
  delegate = [(PBSessionRequester *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(PBSessionRequester *)self delegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__PBSessionRequester_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke;
    v18[3] = &unk_1E833D680;
    v18[4] = self;
    v20 = handlerCopy;
    v19 = v14;
    v21 = &v22;
    [delegate2 requesterWillSendRequestForEstablishedConnection:self callback:v18];
  }

  else
  {
    handlerCopy[2](handlerCopy, v23[5]);
  }

  _Block_object_dispose(&v22, 8);
}

void __97__PBSessionRequester_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__PBSessionRequester_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke_2;
  v9[3] = &unk_1E833D680;
  v2 = (a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  *&v7 = v3;
  *(&v7 + 1) = v6;
  *&v8 = v5;
  *(&v8 + 1) = *v2;
  v10 = v7;
  v11 = v8;
  [v4 addOperationWithBlock:v9];
}

void __97__PBSessionRequester_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 40) || (*(v2 + 248) & 4) != 0)
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __97__PBSessionRequester_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke_3;
    v9[3] = &unk_1E833D658;
    v9[4] = v2;
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v10 = v3;
    v11 = v4;
    v5 = MEMORY[0x1CCA88BB0](v9);
    [(PBSessionRequester *)*(a1 + 32) _serializePayload:v5];
    v6 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }
}

void __97__PBSessionRequester_URLSession_task__willSendRequestForEstablishedConnection_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    [(PBSessionRequester *)*(a1 + 32) _failWithError:a3];
  }

  else
  {
    v5 = [*(a1 + 40) mutableCopy];
    [v5 setHTTPBody:v8];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = errorCopy;
  if (self && (*&self->_flags & 4) != 0)
  {
    [(PBSessionRequester *)self cancel];
  }

  else if (self->_session == sessionCopy && self->_currentTask == taskCopy && (*&self->_flags & 1) == 0)
  {
    if (errorCopy)
    {
      [(PBSessionRequester *)self _failWithError:errorCopy];
LABEL_28:
      [(PBSessionRequester *)self _cleanup];
      goto LABEL_9;
    }

    self->_downloadPayloadSize = [(NSMutableData *)self->_data length];
    self->_timeResponseReceived = mach_absolute_time();
    if ([objc_opt_class() usesEncodedMessages])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [(PBSessionRequester *)self decodeResponseData:self->_data];
      if (v13)
      {
        logResponseToFile = [(PBSessionRequester *)self logResponseToFile];

        if (logResponseToFile)
        {
          logResponseToFile2 = [(PBSessionRequester *)self logResponseToFile];
          [v13 writeToFile:logResponseToFile2 atomically:0];
        }

        v16 = [[PBDataReader alloc] initWithData:v13];
        dataReader = self->_dataReader;
        self->_dataReader = v16;

        if (![(PBSessionRequester *)self readResponsePreamble:self->_dataReader])
        {
          goto LABEL_19;
        }

        if ([(PBDataReader *)self->_dataReader hasError])
        {
          goto LABEL_19;
        }

        *&self->_flags |= 0x10u;
        self->_lastGoodDataOffset = [(PBDataReader *)self->_dataReader offset];
          ;
        }

        if (!self->_didNotifyRequestCompleted)
        {
LABEL_19:

          objc_autoreleasePoolPop(v12);
LABEL_22:
          if ((*&self->_flags & 0x10) != 0 && (v21 = [(NSMutableArray *)self->_responses count], v21 == [(NSMutableArray *)self->_requests count]))
          {
            logResponseToFile3 = [(PBSessionRequester *)self logResponseToFile];

            if (logResponseToFile3)
            {
              v23 = [(NSMutableArray *)self->_responses count];
              responses = self->_responses;
              if (v23 == 1)
              {
                v25 = [(NSMutableArray *)responses objectAtIndex:0];
                logResponseToFile4 = [(PBSessionRequester *)self logResponseToFile];
                v27 = [logResponseToFile4 stringByAppendingString:@".txt"];

                formattedText = [v25 formattedText];
                [formattedText writeToFile:v27 atomically:0 encoding:4 error:0];
              }

              else if ([(NSMutableArray *)responses count])
              {
                v29 = 0;
                do
                {
                  v30 = [(NSMutableArray *)self->_responses objectAtIndex:v29];
                  logResponseToFile5 = [(PBSessionRequester *)self logResponseToFile];
                  v32 = [logResponseToFile5 stringByAppendingFormat:@".part_%d.txt", v29];

                  formattedText2 = [v30 formattedText];
                  [formattedText2 writeToFile:v32 atomically:0 encoding:4 error:0];

                  ++v29;
                }

                while (v29 < [(NSMutableArray *)self->_responses count]);
              }
            }

            [(PBDataReader *)self->_dataReader data];

            if (!self->_didNotifyRequestCompleted)
            {
              self->_didNotifyRequestCompleted = 1;
              if ((*&self->_flags & 0x40) != 0)
              {
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v37[2] = __59__PBSessionRequester_URLSession_task_didCompleteWithError___block_invoke;
                v37[3] = &unk_1E833D5B8;
                v37[4] = self;
                [(NSOperationQueue *)self->_delegateQueue addOperationWithBlock:v37];
              }

              _nw_activity = [(NSURLSessionTask *)self->_currentTask _nw_activity];

              if (_nw_activity)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C9414000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "pbSessionRequester, activity, success", buf, 2u);
                }

                _nw_activity2 = [(NSURLSessionTask *)self->_currentTask _nw_activity];
                nw_activity_complete_with_reason();
              }
            }
          }

          else
          {
            [(PBSessionRequester *)self _failWithErrorDomain:6001 errorCode:0 userInfo:?];
          }

          goto LABEL_28;
        }
      }

      else
      {
        [(PBSessionRequester *)self cancelWithErrorCode:@"Decryption failed." description:?];
      }

      [(PBSessionRequester *)self _cleanup];

      objc_autoreleasePoolPop(v12);
      goto LABEL_9;
    }

    logResponseToFile6 = [(PBSessionRequester *)self logResponseToFile];

    if (logResponseToFile6)
    {
      data = self->_data;
      logResponseToFile7 = [(PBSessionRequester *)self logResponseToFile];
      [(NSMutableData *)data writeToFile:logResponseToFile7 atomically:0];
    }

    goto LABEL_22;
  }

LABEL_9:
}

- (uint64_t)_cleanup
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    *(result + 40) = 0;

    [*(v1 + 32) invalidateAndCancel];
    v3 = *(v1 + 32);
    *(v1 + 32) = 0;

    v4 = *(v1 + 56);
    *(v1 + 56) = 0;

    v5 = *(v1 + 64);
    *(v1 + 64) = 0;

    result = [v1 setHttpResponseHeaders:0];
    *(v1 + 248) &= 0xF9F1u;
  }

  return result;
}

- (void)cancelWithErrorCode:(void *)code description:
{
  codeCopy = code;
  if (self)
  {
    v7 = codeCopy;
    if ([codeCopy length])
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E695E620]];
    }

    else
    {
      v6 = 0;
    }

    [(PBSessionRequester *)self _failWithErrorDomain:a2 errorCode:v6 userInfo:?];
    [(PBSessionRequester *)self _cancelNoNotify];
    *(self + 248) &= 0xFFF9u;

    codeCopy = v7;
  }
}

- (uint64_t)_tryParseData
{
  if (!self)
  {
    return 0;
  }

  if (!*(self + 64))
  {
    return 0;
  }

  v2 = [*(self + 144) count];
  v3 = [*(self + 136) count];
  v4 = [*(self + 120) count];
  if (v4 == [*(self + 128) count])
  {
    return 0;
  }

  [*(self + 64) seekToOffset:*(self + 72)];
  v6 = 128;
  if (v2 >= v3)
  {
    v7 = 120;
  }

  else
  {
    v6 = 144;
    v7 = 136;
  }

  v8 = [*(self + v7) objectAtIndex:{objc_msgSend(*(self + v6), "count")}];
  responseClass = [v8 responseClass];
  if (([responseClass isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request (%@) provided an invalid response class (needs to be a subclass of PBCodable): %@", v8, objc_msgSend(v8, "responseClass")];
    v12 = [v10 exceptionWithName:@"InvalidResponseClass" reason:v11 userInfo:0];
    [v12 raise];
  }

  v13 = [self tryReadResponseData:*(self + 64) forRequest:v8 forResponseClass:responseClass];
  if (v13 && ([*(self + 64) hasError] & 1) == 0)
  {
    v14 = objc_alloc_init(responseClass);
    v15 = [[PBDataReader alloc] initWithData:v13];
    v5 = [v14 readFrom:v15];
    if (v5)
    {
      if (v2 >= v3)
      {
        v19 = *(self + 128);
        if (!v19)
        {
          v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(self + 120), "count")}];
          v21 = *(self + 128);
          *(self + 128) = v20;

          v19 = *(self + 128);
        }

        [v19 addObject:v14];
        *(self + 72) = [*(self + 64) offset];
        if ((*(self + 248) & 0x20) != 0)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __35__PBSessionRequester__tryParseData__block_invoke;
          v23[3] = &unk_1E833D630;
          v23[4] = self;
          v24 = v14;
          v25 = v8;
          [*(self + 24) addOperationWithBlock:v23];
        }
      }

      else
      {
        v16 = *(self + 144);
        if (!v16)
        {
          v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(self + 136), "count")}];
          v18 = *(self + 144);
          *(self + 144) = v17;

          v16 = *(self + 144);
        }

        [v16 addObject:v14];
        *(self + 72) = [*(self + 64) offset];
        [self handleResponse:v14 forInternalRequest:v8];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_failWithErrorDomain:(uint64_t)domain errorCode:(void *)code userInfo:
{
  if (self)
  {
    v7 = MEMORY[0x1E696ABC0];
    codeCopy = code;
    v9 = a2;
    v10 = [[v7 alloc] initWithDomain:v9 code:domain userInfo:codeCopy];

    [(PBSessionRequester *)self _failWithError:v10];
  }
}

void __59__PBSessionRequester_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requesterDidFinish:*(a1 + 32)];
}

void __35__PBSessionRequester__tryParseData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requester:*(a1 + 32) didReceiveResponse:*(a1 + 40) forRequest:*(a1 + 48)];
}

- (id)_cancelNoNotify
{
  if (result)
  {
    v1 = result;
    [result[5] cancel];
    [(PBSessionRequester *)v1 _cleanup];
    if ([*(v1 + 128) count])
    {
      [*(v1 + 128) removeAllObjects];
    }

    result = *(v1 + 144);
    if (result)
    {

      return [result removeAllObjects];
    }
  }

  return result;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  if (self && (*&self->_flags & 4) != 0)
  {
    [(PBSessionRequester *)self cancel];
  }

  else if (self->_session == sessionCopy && self->_currentTask == taskCopy && (*&self->_flags & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    usesEncodedMessages = [objc_opt_class() usesEncodedMessages];
    data = self->_data;
    if (usesEncodedMessages)
    {
      if (data)
      {
        [(NSMutableData *)data appendData:dataCopy];
      }

      else
      {
        v13 = [dataCopy mutableCopy];
        v14 = self->_data;
        self->_data = v13;
      }
    }

    else
    {
      if (data)
      {
        [(NSMutableData *)data appendData:dataCopy];
        [(PBDataReader *)self->_dataReader updateData:self->_data];
      }

      else
      {
        v15 = [dataCopy mutableCopy];
        v16 = self->_data;
        self->_data = v15;

        v17 = [[PBDataReader alloc] initWithData:self->_data];
        dataReader = self->_dataReader;
        self->_dataReader = v17;
      }

      if ((*&self->_flags & 0x10) == 0)
      {
        [(PBDataReader *)self->_dataReader seekToOffset:self->_lastGoodDataOffset];
        if ([(PBSessionRequester *)self readResponsePreamble:self->_dataReader])
        {
          if (![(PBDataReader *)self->_dataReader hasError])
          {
            self->_lastGoodDataOffset = [(PBDataReader *)self->_dataReader offset];
            *&self->_flags |= 0x10u;
          }
        }
      }

      if ((*&self->_flags & 0x10) != 0)
      {
          ;
        }
      }
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (*&self->_session != __PAIR128__(task, session))
  {
    v12 = *(handlerCopy + 2);
LABEL_3:
    v12();
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [responseCopy allHeaderFields];
    [(PBSessionRequester *)self setHttpResponseHeaders:allHeaderFields];

    statusCode = [responseCopy statusCode];
    v15 = statusCode;
    if ((statusCode - 400) > 0xFFFFFFFFFFFFFED3)
    {
      flags = self->_flags;
      if ((flags & 8) == 0)
      {
        self->_responseStatusCode = statusCode;
        *&self->_flags = flags | 8;
      }

      v12 = v11[2];
      goto LABEL_3;
    }

    (v11[2])(v11, 0);
    v16 = *MEMORY[0x1E69E9848];
    v17 = [responseCopy URL];
    absoluteString = [v17 absoluteString];
    fprintf(v16, "%s:%d server (%s) returned error: %zd\n", "/Library/Caches/com.apple.xbs/Sources/ProtocolBuffer/Runtime/PBSessionRequester.m", 795, [absoluteString UTF8String], objc_msgSend(responseCopy, "statusCode"));

    v19 = objc_alloc(MEMORY[0x1E695DF20]);
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    v21 = [v19 initWithObjectsAndKeys:{v20, @"PBHTTPStatusCode", 0}];

    [(PBSessionRequester *)self _failWithErrorDomain:-1011 errorCode:v21 userInfo:?];
    [(PBSessionRequester *)&self->super.isa _cancelNoNotify];
    *&self->_flags &= 0xFFF9u;
  }

  else
  {
    (v11[2])(v11, 0);
    [(PBSessionRequester *)self _failWithErrorDomain:-1011 errorCode:0 userInfo:?];
    [(PBSessionRequester *)&self->super.isa _cancelNoNotify];
    *&self->_flags &= 0xFFF9u;
  }

LABEL_4:
}

- (id)tryReadResponseData:(id)data forRequest:(id)request forResponseClass:(Class)class
{
  dataCopy = data;
  requestCopy = request;
  readBigEndianFixed32 = [dataCopy readBigEndianFixed32];
  if (([dataCopy hasError] & 1) == 0)
  {
    if (readBigEndianFixed32 == [requestCopy requestTypeCode])
    {
      readProtoBuffer = [dataCopy readProtoBuffer];
      goto LABEL_6;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect requestTypeCode: %i (expected %i).", readBigEndianFixed32, objc_msgSend(requestCopy, "requestTypeCode")];
    [(PBSessionRequester *)self cancelWithErrorCode:v11 description:?];
  }

  readProtoBuffer = 0;
LABEL_6:

  return readProtoBuffer;
}

- (BOOL)readResponsePreamble:(id)preamble
{
  preambleCopy = preamble;
  readBigEndianFixed16 = [preambleCopy readBigEndianFixed16];
  hasError = [preambleCopy hasError];

  if ((hasError & 1) == 0)
  {
    if (readBigEndianFixed16 == 1)
    {
      return 1;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incorrect protocol version: %i (expected %i).", readBigEndianFixed16, 1];
    [(PBSessionRequester *)self cancelWithErrorCode:v8 description:?];
  }

  return 0;
}

- (void)resume
{
  if ((*&self->_flags & 0x200) != 0)
  {
    *&self->_flags = *&self->_flags & 0xF9FF | 0x400;
    [(PBSessionRequester *)self start];
    *&self->_flags &= ~0x400u;
  }
}

- (void)pause
{
  if ((*&self->_flags & 0x206) == 2)
  {
    v3 = [(NSMutableArray *)self->_responses count];
    if (v3 == [(NSMutableArray *)self->_requests count])
    {
      *&self->_flags |= 0x200u;
      [(NSURLSessionTask *)self->_currentTask cancel];
      currentTask = self->_currentTask;
      self->_currentTask = 0;

      [(NSURLSession *)self->_session invalidateAndCancel];
      session = self->_session;
      self->_session = 0;

      [(NSMutableArray *)self->_internalResponses removeAllObjects];
      data = self->_data;
      self->_data = 0;

      dataReader = self->_dataReader;
      self->_dataReader = 0;

      [(PBSessionRequester *)self setHttpResponseHeaders:0];
      *&self->_flags &= ~8u;
    }
  }
}

- (void)cancel
{
  currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
  sessionDelegateQ = self->_sessionDelegateQ;

  if (currentQueue == sessionDelegateQ)
  {
    [(PBSessionRequester *)&self->super.isa _cancelNoNotify];
    if (!self->_didNotifyRequestCompleted)
    {
      self->_didNotifyRequestCompleted = 1;
      if ((*&self->_flags & 0x80) != 0)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __28__PBSessionRequester_cancel__block_invoke_2;
        v9[3] = &unk_1E833D5B8;
        v9[4] = self;
        [(NSOperationQueue *)self->_delegateQueue addOperationWithBlock:v9];
      }

      _nw_activity = [(NSURLSessionTask *)self->_currentTask _nw_activity];

      if (_nw_activity)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_1C9414000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "pbSessionRequester, activity, cancelled", v8, 2u);
        }

        _nw_activity2 = [(NSURLSessionTask *)self->_currentTask _nw_activity];
        nw_activity_complete_with_reason();
      }
    }
  }

  else
  {
    v5 = self->_sessionDelegateQ;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __28__PBSessionRequester_cancel__block_invoke;
    v10[3] = &unk_1E833D5B8;
    v10[4] = self;
    [(NSOperationQueue *)v5 addOperationWithBlock:v10];
  }
}

void __28__PBSessionRequester_cancel__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requesterDidCancel:*(a1 + 32)];
}

- (void)writeRequest:(id)request into:(id)into
{
  intoCopy = into;
  requestCopy = request;
  [intoCopy writeBigEndianFixed32:{objc_msgSend(requestCopy, "requestTypeCode")}];
  v8 = objc_alloc_init(PBDataWriter);
  [requestCopy writeTo:v8];

  immutableData = [(PBDataWriter *)v8 immutableData];
  [intoCopy writeProtoBuffer:immutableData];
}

- (id)requestPreamble
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PBSessionRequester_requestPreamble__block_invoke;
  block[3] = &unk_1E833D5B8;
  block[4] = self;
  if (requestPreamble__once == -1)
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_9;
  }

  dispatch_once(&requestPreamble__once, block);
  if (!self)
  {
    goto LABEL_14;
  }

LABEL_3:
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count] && (objc_msgSend(preferredLanguages, "objectAtIndex:", 0), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    currentLocale2 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

    if ([currentLocale2 length])
    {
      localeIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v5, currentLocale2];
    }

    else
    {
      localeIdentifier = v5;
    }
  }

  else
  {
    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale2 localeIdentifier];
    v5 = 0;
  }

  v9 = localeIdentifier;
LABEL_9:
  v10 = objc_alloc_init(PBDataWriter);
  [(PBDataWriter *)v10 writeBigEndianFixed16:1];
  [(PBDataWriter *)v10 writeBigEndianShortThenString:v9];
  [(PBDataWriter *)v10 writeBigEndianShortThenString:requestPreamble_applicationID];
  [(PBDataWriter *)v10 writeBigEndianShortThenString:requestPreamble_osVersion];
  immutableData = [(PBDataWriter *)v10 immutableData];

  return immutableData;
}

void __37__PBSessionRequester_requestPreamble__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  v4 = requestPreamble_applicationID;
  requestPreamble_applicationID = v3;

  if (*(a1 + 32))
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v6 = [v5 objectForKey:@"ProductVersion"];
    v7 = [v5 objectForKey:@"ProductBuildVersion"];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = requestPreamble_osVersion;
  requestPreamble_osVersion = v8;
}

- (void)setHttpRequestHeader:(id)header forKey:(id)key
{
  headerCopy = header;
  keyCopy = key;
  if (headerCopy && keyCopy)
  {
    httpRequestHeaders = self->_httpRequestHeaders;
    if (!httpRequestHeaders)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_httpRequestHeaders;
      self->_httpRequestHeaders = v8;

      httpRequestHeaders = self->_httpRequestHeaders;
    }

    [(NSMutableDictionary *)httpRequestHeaders setObject:headerCopy forKey:keyCopy];
  }
}

- (void)setHttpRequestHeaders:(id)headers
{
  if (self->_httpRequestHeaders != headers)
  {
    v5 = [headers mutableCopy];
    httpRequestHeaders = self->_httpRequestHeaders;
    self->_httpRequestHeaders = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)responseForInternalRequest:(id)request
{
  requestCopy = request;
  if (![(NSMutableArray *)self->_internalRequests count]|| (v5 = [(NSMutableArray *)self->_internalRequests indexOfObject:requestCopy], v5 == 0x7FFFFFFFFFFFFFFFLL) || (v6 = v5, v5 >= [(NSMutableArray *)self->_internalResponses count]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_internalResponses objectAtIndex:v6];
  }

  return v7;
}

- (void)addInternalRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    internalRequests = self->_internalRequests;
    v8 = requestCopy;
    if (!internalRequests)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_internalRequests;
      self->_internalRequests = v6;

      internalRequests = self->_internalRequests;
    }

    [(NSMutableArray *)internalRequests addObject:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)responseForRequest:(id)request
{
  requestCopy = request;
  if (![(NSMutableArray *)self->_requests count]|| (v5 = [(NSMutableArray *)self->_requests indexOfObject:requestCopy], v5 == 0x7FFFFFFFFFFFFFFFLL) || (v6 = v5, v5 >= [(NSMutableArray *)self->_responses count]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_responses objectAtIndex:v6];
  }

  return v7;
}

- (void)addRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    requests = self->_requests;
    v8 = requestCopy;
    if (!requests)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_requests;
      self->_requests = v6;

      requests = self->_requests;
    }

    [(NSMutableArray *)requests addObject:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setNeedsCancel
{
  if (self)
  {
    *&self->_flags |= 4u;
  }
}

- (void)dealloc
{
  [(NSURLSessionTask *)self->_currentTask cancel];
  [(NSURLSession *)self->_session invalidateAndCancel];
  v3.receiver = self;
  v3.super_class = PBSessionRequester;
  [(PBSessionRequester *)&v3 dealloc];
}

- (PBSessionRequester)initWithURL:(id)l delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  delegateCopy = delegate;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = PBSessionRequester;
  v12 = [(PBSessionRequester *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, l);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_delegateQueue, queue);
    v14 = objc_loadWeakRetained(&v13->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = 32;
    }

    else
    {
      v15 = 0;
    }

    *&v13->_flags = *&v13->_flags & 0xFFDF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 64;
    }

    else
    {
      v16 = 0;
    }

    *&v13->_flags = *&v13->_flags & 0xFFBF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 128;
    }

    else
    {
      v17 = 0;
    }

    *&v13->_flags = *&v13->_flags & 0xFF7F | v17;
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    *&v13->_flags = *&v13->_flags & 0xFEFF | v19;

    v13->_timeoutSeconds = -1.0;
    v20 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    sessionDelegateQ = v13->_sessionDelegateQ;
    v13->_sessionDelegateQ = v20;

    [(NSOperationQueue *)v13->_sessionDelegateQ setMaxConcurrentOperationCount:1];
  }

  return v13;
}

@end