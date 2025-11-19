@interface TVPSecureKeyDeliveryCoordinator
+ (BOOL)isSecureKeyDeliveryRequest:(id)a3;
+ (void)initialize;
- (TVPSecureKeyDeliveryCoordinator)init;
- (TVPSecureKeyDeliveryCoordinator)initWithSecureKeyLoader:(id)a3;
- (TVPSecureKeyDeliveryCoordinatorDelegate)delegate;
- (void)_finishLoadingWithError:(id)a3 forRequest:(id)a4;
- (void)_loadSecureKeyRequest:(id)a3 sendStartReportingEvent:(BOOL)a4;
- (void)loadSecureKeyRequest:(id)a3;
- (void)secureKeyLoader:(id)a3 didFailWithError:(id)a4 forRequest:(id)a5;
- (void)secureKeyLoader:(id)a3 didLoadCertificateData:(id)a4 forRequest:(id)a5;
- (void)secureKeyLoader:(id)a3 didLoadContentIdentifierData:(id)a4 forRequest:(id)a5;
- (void)secureKeyLoader:(id)a3 didLoadKeyResponseData:(id)a4 renewalDate:(id)a5 forRequest:(id)a6;
- (void)secureKeyLoader:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4;
- (void)secureKeyLoader:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4 playbackStartDate:(id)a5;
- (void)secureKeyLoader:(id)a3 didReceiveUpdatedRentalPlaybackStartDate:(id)a4;
- (void)sendStopRequest;
- (void)setEventCollection:(id)a3;
@end

@implementation TVPSecureKeyDeliveryCoordinator

+ (void)initialize
{
  if (initialize_onceToken_7 != -1)
  {
    +[TVPSecureKeyDeliveryCoordinator initialize];
  }
}

uint64_t __45__TVPSecureKeyDeliveryCoordinator_initialize__block_invoke()
{
  sDeliveryCoordinatorLogObject = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isSecureKeyDeliveryRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 scheme];

  LOBYTE(v3) = [v4 isEqualToString:@"skd"];
  return v3;
}

- (TVPSecureKeyDeliveryCoordinator)initWithSecureKeyLoader:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Argument passed to -initWithSecureKeyLoader: must be non-nil." userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = v5;
  v12.receiver = self;
  v12.super_class = TVPSecureKeyDeliveryCoordinator;
  v7 = [(TVPSecureKeyDeliveryCoordinator *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestsAwaitingCertFetch = v7->_requestsAwaitingCertFetch;
    v7->_requestsAwaitingCertFetch = v8;

    objc_storeStrong(&v7->_secureKeyLoader, a3);
    [(TVPSecureKeyLoader *)v7->_secureKeyLoader setDelegate:v7];
  }

  return v7;
}

- (void)loadSecureKeyRequest:(id)a3
{
  v6 = a3;
  v4 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  [v6 setEventCollection:v4];

  v5 = [MEMORY[0x277CBEAA8] date];
  [v6 setRequestStartDate:v5];

  [(TVPSecureKeyDeliveryCoordinator *)self _loadSecureKeyRequest:v6 sendStartReportingEvent:1];
}

- (void)sendStopRequest
{
  v2 = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
  [v2 sendStopRequest];
}

- (void)setEventCollection:(id)a3
{
  objc_storeStrong(&self->_eventCollection, a3);
  v5 = a3;
  v6 = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
  [v6 setEventCollection:v5];
}

- (void)secureKeyLoader:(id)a3 didLoadCertificateData:(id)a4 forRequest:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v8 = a4;
  v9 = a5;
  [(TVPSecureKeyDeliveryCoordinator *)self setCertFetchInProgress:0];
  v10 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134218240;
    v40 = [v9 requestID];
    v41 = 2048;
    v42 = [v8 length];
    _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Cert fetch complete for request %lu.  Cert length is %lu", buf, 0x16u);
  }

  v31 = v9;
  if ([v8 length])
  {
    [(TVPSecureKeyDeliveryCoordinator *)self setCertificateData:v8];
  }

  v12 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
  v13 = [v12 copy];

  v14 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
  [v14 removeAllObjects];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
        v21 = TVPPlaybackReportingEventFPSCertFetch;
        v22 = MEMORY[0x277CCACA8];
        v23 = [v19 reportingID];
        v24 = [v22 stringWithFormat:@"%@%@", v21, v23];
        [v20 addEndEventWithName:v21 identifier:v24];

        v25 = sDeliveryCoordinatorLogObject;
        if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [v19 requestID];
          *buf = 134217984;
          v40 = v27;
          _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "After cert fetch completion, continuing request %lu", buf, 0xCu);
        }

        if (![v8 length])
        {
          v29 = TVPSKDErrorWithCode(-345003);
          [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader:v32 didFailWithError:v29 forRequest:v19];

          goto LABEL_17;
        }

        [v19 setCertificateData:v8];
        v28 = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
        [v28 startLoadingContentIdentifierDataForRequest:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)secureKeyLoader:(id)a3 didLoadContentIdentifierData:(id)a4 forRequest:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    [v10 setContentIdentifierData:v9];
    objc_initWeak(&location, self);
    v11 = sDeliveryCoordinatorLogObject;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 requestID];
      *buf = 134217984;
      v26 = v12;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Loading key request data for id %lu", buf, 0xCu);
    }

    v13 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v14 = TVPPlaybackReportingEventFPSRequestDataGeneration;
    v15 = MEMORY[0x277CCACA8];
    v16 = [v10 reportingID];
    v17 = [v15 stringWithFormat:@"%@%@", v14, v16];
    [v13 addStartEventWithName:v14 identifier:v17];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__TVPSecureKeyDeliveryCoordinator_secureKeyLoader_didLoadContentIdentifierData_forRequest___block_invoke;
    v20[3] = &unk_279D7D0C0;
    objc_copyWeak(&v23, &location);
    v21 = v10;
    v22 = v8;
    [v21 loadKeyRequestDataAsynchronouslyWithCompletion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = TVPSKDErrorWithCode(-345006);
    [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader:v8 didFailWithError:v18 forRequest:v10];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __91__TVPSecureKeyDeliveryCoordinator_secureKeyLoader_didLoadContentIdentifierData_forRequest___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained eventCollection];
  v6 = TVPPlaybackReportingEventFPSRequestDataGeneration;
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 32) reportingID];
  v9 = [v7 stringWithFormat:@"%@%@", v6, v8];
  [v5 addEndEventWithName:v6 identifier:v9];

  v10 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = v10;
    *buf = 134217984;
    v28 = [v11 requestID];
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Done loading key request data for id %lu", buf, 0xCu);
  }

  v13 = [*(a1 + 32) keyRequestData];

  if (v13)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 eventCollection];
    v16 = TVPPlaybackReportingEventFPSServerKeyFetch;
    v17 = MEMORY[0x277CCACA8];
    v18 = [*(a1 + 32) reportingID];
    v19 = [v17 stringWithFormat:@"%@%@", v16, v18];
    [v15 addStartEventWithName:v16 identifier:v19];

    v20 = sDeliveryCoordinatorLogObject;
    if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [v21 requestID];
      *buf = 134217984;
      v28 = v23;
      _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Fetching FPS key for id %lu", buf, 0xCu);
    }

    v24 = objc_loadWeakRetained((a1 + 48));
    v25 = [v24 secureKeyLoader];
    [v25 startLoadingKeyResponseDataForRequest:*(a1 + 32)];
  }

  else
  {
    if (!v3)
    {
      v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345007 userInfo:0];
    }

    v24 = objc_loadWeakRetained((a1 + 48));
    [v24 secureKeyLoader:*(a1 + 40) didFailWithError:v3 forRequest:*(a1 + 32)];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)secureKeyLoader:(id)a3 didLoadKeyResponseData:(id)a4 renewalDate:(id)a5 forRequest:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 134217984;
    v46 = [v13 requestID];
    _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "FPS key fetch complete for id %lu", buf, 0xCu);
  }

  v16 = [MEMORY[0x277CBEAA8] date];
  [v13 setRequestEndDate:v16];

  if ([v11 length])
  {
    v43 = v12;
    v17 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v18 = TVPPlaybackReportingEventFPSServerKeyFetch;
    v19 = MEMORY[0x277CCACA8];
    v20 = [v13 reportingID];
    v21 = [v19 stringWithFormat:@"%@%@", v18, v20];
    v22 = [v13 requestCompletionTime];
    [v17 addEndEventWithName:v18 identifier:v21 timestamp:v22];

    v23 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [v23 secureKeyDeliveryCoordinatorWillSucceed:self];

    v24 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    if (v18)
    {
      v25 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
      [v25 secureKeyDeliveryCoordinatorWillSucceed:self forKeyRequest:v13];
    }

    v26 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v27 = TVPPlaybackReportingEventFPSOverallFetch;
    v28 = MEMORY[0x277CCACA8];
    v29 = [v13 reportingID];
    v30 = [v28 stringWithFormat:@"%@%@", v27, v29];
    v31 = [v13 requestCompletionTime];
    [v26 addEndEventWithName:v27 identifier:v30 timestamp:v31];

    if ([v13 retrievesOfflineKeys])
    {
      v32 = sDeliveryCoordinatorLogObject;
      if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        v34 = [v13 requestID];
        *buf = 134217984;
        v46 = v34;
        _os_log_impl(&dword_26CEDD000, v33, OS_LOG_TYPE_DEFAULT, "Converting key response data to offline key data for id %lu", buf, 0xCu);
      }

      v44 = 0;
      v35 = [v13 offlineKeyDataForResponseData:v11 error:&v44];
      v36 = v44;

      if ([v35 length])
      {
        v37 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
        v38 = objc_opt_respondsToSelector();

        if (v38)
        {
          v39 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
          [v39 secureKeyDeliveryCoordinator:self didReceiveOfflineKeyData:v35 forKeyRequest:v13];
        }

        v12 = v43;
        [v13 finishLoadingWithResponseData:v35 renewalDate:v43 keyType:2];
      }

      else
      {
        v41 = sDeliveryCoordinatorLogObject;
        if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_ERROR))
        {
          [TVPSecureKeyDeliveryCoordinator secureKeyLoader:v36 didLoadKeyResponseData:v41 renewalDate:? forRequest:?];
        }

        [(TVPSecureKeyDeliveryCoordinator *)self _finishLoadingWithError:v36 forRequest:v13];
        v12 = v43;
      }
    }

    else
    {
      v12 = v43;
      [v13 finishLoadingWithResponseData:v11 renewalDate:v43 keyType:1];
      v35 = v11;
    }
  }

  else
  {
    v40 = TVPSKDErrorWithCode(-345009);
    [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader:v10 didFailWithError:v40 forRequest:v13];

    v35 = v11;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)secureKeyLoader:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4
{
  v5 = a4;
  v6 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  [v6 secureKeyDeliveryCoordinator:self didReceiveUpdatedRentalExpirationDate:v5];
}

- (void)secureKeyLoader:(id)a3 didReceiveUpdatedRentalPlaybackStartDate:(id)a4
{
  v8 = a4;
  v5 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [v7 secureKeyDeliveryCoordinator:self didReceiveUpdatedRentalPlaybackStartDate:v8];
  }
}

- (void)secureKeyLoader:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4 playbackStartDate:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [v10 secureKeyDeliveryCoordinator:self didReceiveUpdatedRentalExpirationDate:v11 playbackStartDate:v7];
  }
}

- (void)secureKeyLoader:(id)a3 didFailWithError:(id)a4 forRequest:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_ERROR))
  {
    [TVPSecureKeyDeliveryCoordinator secureKeyLoader:v9 didFailWithError:v11 forRequest:?];
  }

  v12 = [MEMORY[0x277CBEAA8] date];
  [v10 setRequestEndDate:v12];

  if ([(TVPSecureKeyDeliveryCoordinator *)self certFetchInProgress])
  {
    v34 = v10;
    v35 = v8;
    v13 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
    v14 = [v13 copy];

    [(TVPSecureKeyDeliveryCoordinator *)self setCertFetchInProgress:0];
    v15 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
    [v15 removeAllObjects];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v38 = *v44;
      v37 = *MEMORY[0x277CCA7E8];
      v39 = v9;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          if (v9)
          {
            v49 = v37;
            v50 = v9;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          }

          else
          {
            v20 = 0;
          }

          v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345001 userInfo:v20];
          v22 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
          v23 = TVPPlaybackReportingEventFPSCertFetch;
          v24 = MEMORY[0x277CCACA8];
          v25 = [v19 reportingID];
          v26 = [v24 stringWithFormat:@"%@%@", v23, v25];
          [v22 addEndEventWithName:v23 identifier:v26];

          v27 = sDeliveryCoordinatorLogObject;
          if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
            v29 = [v19 requestID];
            *buf = 134217984;
            v48 = v29;
            _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "After cert fetch failure, failing request %lu", buf, 0xCu);
          }

          [(TVPSecureKeyDeliveryCoordinator *)self _finishLoadingWithError:v21 forRequest:v19];

          v9 = v39;
        }

        v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v17);
    }

    v10 = v34;
    v8 = v35;
  }

  else
  {
    IsFatalSKDError = TVPErrorIsFatalSKDError(v9);
    [v10 setRetryCount:{objc_msgSend(v10, "retryCount") + 1}];
    if ((IsFatalSKDError & 1) != 0 || [v10 retryCount] > 1)
    {
      [(TVPSecureKeyDeliveryCoordinator *)self _finishLoadingWithError:v9 forRequest:v10];
    }

    else
    {
      v31 = sDeliveryCoordinatorLogObject;
      if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_ERROR))
      {
        [TVPSecureKeyDeliveryCoordinator secureKeyLoader:v31 didFailWithError:? forRequest:?];
      }

      objc_initWeak(buf, self);
      v32 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__TVPSecureKeyDeliveryCoordinator_secureKeyLoader_didFailWithError_forRequest___block_invoke;
      block[3] = &unk_279D7BA58;
      objc_copyWeak(&v42, buf);
      v41 = v10;
      dispatch_after(v32, MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v42);
      objc_destroyWeak(buf);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __79__TVPSecureKeyDeliveryCoordinator_secureKeyLoader_didFailWithError_forRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      [v4 _loadSecureKeyRequest:*(a1 + 32) sendStartReportingEvent:0];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (TVPSecureKeyDeliveryCoordinator)init
{
  [(TVPSecureKeyDeliveryCoordinator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)_loadSecureKeyRequest:(id)a3 sendStartReportingEvent:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    v7 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v8 = TVPPlaybackReportingEventFPSOverallFetch;
    v9 = MEMORY[0x277CCACA8];
    v10 = [v6 reportingID];
    v11 = [v9 stringWithFormat:@"%@%@", v8, v10];
    [v7 addStartEventWithName:v8 identifier:v11];
  }

  v12 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  v13 = TVPPlaybackReportingEventFPSCertFetch;
  v14 = MEMORY[0x277CCACA8];
  v15 = [v6 reportingID];
  v16 = [v14 stringWithFormat:@"%@%@", v13, v15];
  [v12 addStartEventWithName:v13 identifier:v16];

  v17 = [(TVPSecureKeyDeliveryCoordinator *)self certificateData];

  if (v17)
  {
    v18 = sDeliveryCoordinatorLogObject;
    if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      *buf = 134217984;
      v34 = [v6 requestID];
      _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Using cached cert data for request %lu", buf, 0xCu);
    }

    v20 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v21 = TVPPlaybackReportingEventFPSCertFetch;
    v22 = MEMORY[0x277CCACA8];
    v23 = [v6 reportingID];
    v24 = [v22 stringWithFormat:@"%@%@", v21, v23];
    [v20 addEndEventWithName:v21 identifier:v24];

    v25 = [(TVPSecureKeyDeliveryCoordinator *)self certificateData];
    [v6 setCertificateData:v25];

    v26 = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
    [v26 startLoadingContentIdentifierDataForRequest:v6];
    goto LABEL_13;
  }

  v27 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
  [v27 addObject:v6];

  v28 = [(TVPSecureKeyDeliveryCoordinator *)self certFetchInProgress];
  v29 = sDeliveryCoordinatorLogObject;
  v30 = os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT);
  if (!v28)
  {
    if (v30)
    {
      v31 = v29;
      *buf = 134217984;
      v34 = [v6 requestID];
      _os_log_impl(&dword_26CEDD000, v31, OS_LOG_TYPE_DEFAULT, "No cached cert data exists in coordinator for request %lu.  Starting cert fetch", buf, 0xCu);
    }

    [(TVPSecureKeyDeliveryCoordinator *)self setCertFetchInProgress:1];
    v26 = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
    [v26 startLoadingCertificateDataForRequest:v6];
    goto LABEL_13;
  }

  if (v30)
  {
    v26 = v29;
    *buf = 134217984;
    v34 = [v6 requestID];
    _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "No cached cert data exists in coordinator for request %lu.  Waiting for cert fetch already in progress to complete", buf, 0xCu);
LABEL_13:
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_finishLoadingWithError:(id)a3 forRequest:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  [v7 secureKeyDeliveryCoordinator:self willFailWithError:v18];

  v8 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [v10 secureKeyDeliveryCoordinator:self willFailWithError:v18 forKeyRequest:v6];
  }

  v11 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  v12 = TVPPlaybackReportingEventFPSOverallFetch;
  v13 = MEMORY[0x277CCACA8];
  v14 = [v6 reportingID];
  v15 = [v13 stringWithFormat:@"%@%@", v12, v14];
  [v11 addEndEventWithName:v12 identifier:v15];

  v16 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  [v16 addSingleShotEventWithName:TVPPlaybackReportingEventError value:v18];

  v17 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  [v17 addSingleShotEventWithName:TVPPlaybackReportingEventErrorEvent value:TVPPlaybackReportingEventFPSOverallFetch];

  [v6 finishLoadingWithError:v18];
}

- (TVPSecureKeyDeliveryCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)secureKeyLoader:(uint64_t)a1 didLoadKeyResponseData:(NSObject *)a2 renewalDate:forRequest:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "Error converting to offline key data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)secureKeyLoader:(uint64_t)a1 didFailWithError:(NSObject *)a2 forRequest:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "Secure Key Delivery failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end