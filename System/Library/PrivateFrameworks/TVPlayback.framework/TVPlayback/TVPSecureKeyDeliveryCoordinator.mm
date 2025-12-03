@interface TVPSecureKeyDeliveryCoordinator
+ (BOOL)isSecureKeyDeliveryRequest:(id)request;
+ (void)initialize;
- (TVPSecureKeyDeliveryCoordinator)init;
- (TVPSecureKeyDeliveryCoordinator)initWithSecureKeyLoader:(id)loader;
- (TVPSecureKeyDeliveryCoordinatorDelegate)delegate;
- (void)_finishLoadingWithError:(id)error forRequest:(id)request;
- (void)_loadSecureKeyRequest:(id)request sendStartReportingEvent:(BOOL)event;
- (void)loadSecureKeyRequest:(id)request;
- (void)secureKeyLoader:(id)loader didFailWithError:(id)error forRequest:(id)request;
- (void)secureKeyLoader:(id)loader didLoadCertificateData:(id)data forRequest:(id)request;
- (void)secureKeyLoader:(id)loader didLoadContentIdentifierData:(id)data forRequest:(id)request;
- (void)secureKeyLoader:(id)loader didLoadKeyResponseData:(id)data renewalDate:(id)date forRequest:(id)request;
- (void)secureKeyLoader:(id)loader didReceiveUpdatedRentalExpirationDate:(id)date;
- (void)secureKeyLoader:(id)loader didReceiveUpdatedRentalExpirationDate:(id)date playbackStartDate:(id)startDate;
- (void)secureKeyLoader:(id)loader didReceiveUpdatedRentalPlaybackStartDate:(id)date;
- (void)sendStopRequest;
- (void)setEventCollection:(id)collection;
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

+ (BOOL)isSecureKeyDeliveryRequest:(id)request
{
  v3 = [request URL];
  scheme = [v3 scheme];

  LOBYTE(v3) = [scheme isEqualToString:@"skd"];
  return v3;
}

- (TVPSecureKeyDeliveryCoordinator)initWithSecureKeyLoader:(id)loader
{
  loaderCopy = loader;
  if (!loaderCopy)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Argument passed to -initWithSecureKeyLoader: must be non-nil." userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = loaderCopy;
  v12.receiver = self;
  v12.super_class = TVPSecureKeyDeliveryCoordinator;
  v7 = [(TVPSecureKeyDeliveryCoordinator *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requestsAwaitingCertFetch = v7->_requestsAwaitingCertFetch;
    v7->_requestsAwaitingCertFetch = v8;

    objc_storeStrong(&v7->_secureKeyLoader, loader);
    [(TVPSecureKeyLoader *)v7->_secureKeyLoader setDelegate:v7];
  }

  return v7;
}

- (void)loadSecureKeyRequest:(id)request
{
  requestCopy = request;
  eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  [requestCopy setEventCollection:eventCollection];

  date = [MEMORY[0x277CBEAA8] date];
  [requestCopy setRequestStartDate:date];

  [(TVPSecureKeyDeliveryCoordinator *)self _loadSecureKeyRequest:requestCopy sendStartReportingEvent:1];
}

- (void)sendStopRequest
{
  secureKeyLoader = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
  [secureKeyLoader sendStopRequest];
}

- (void)setEventCollection:(id)collection
{
  objc_storeStrong(&self->_eventCollection, collection);
  collectionCopy = collection;
  secureKeyLoader = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
  [secureKeyLoader setEventCollection:collectionCopy];
}

- (void)secureKeyLoader:(id)loader didLoadCertificateData:(id)data forRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  dataCopy = data;
  requestCopy = request;
  [(TVPSecureKeyDeliveryCoordinator *)self setCertFetchInProgress:0];
  v10 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134218240;
    requestID = [requestCopy requestID];
    v41 = 2048;
    v42 = [dataCopy length];
    _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Cert fetch complete for request %lu.  Cert length is %lu", buf, 0x16u);
  }

  v31 = requestCopy;
  if ([dataCopy length])
  {
    [(TVPSecureKeyDeliveryCoordinator *)self setCertificateData:dataCopy];
  }

  requestsAwaitingCertFetch = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
  v13 = [requestsAwaitingCertFetch copy];

  requestsAwaitingCertFetch2 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
  [requestsAwaitingCertFetch2 removeAllObjects];

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
        eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
        v21 = TVPPlaybackReportingEventFPSCertFetch;
        v22 = MEMORY[0x277CCACA8];
        reportingID = [v19 reportingID];
        v24 = [v22 stringWithFormat:@"%@%@", v21, reportingID];
        [eventCollection addEndEventWithName:v21 identifier:v24];

        v25 = sDeliveryCoordinatorLogObject;
        if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          requestID2 = [v19 requestID];
          *buf = 134217984;
          requestID = requestID2;
          _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "After cert fetch completion, continuing request %lu", buf, 0xCu);
        }

        if (![dataCopy length])
        {
          v29 = TVPSKDErrorWithCode(-345003);
          [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader:loaderCopy didFailWithError:v29 forRequest:v19];

          goto LABEL_17;
        }

        [v19 setCertificateData:dataCopy];
        secureKeyLoader = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
        [secureKeyLoader startLoadingContentIdentifierDataForRequest:v19];
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

- (void)secureKeyLoader:(id)loader didLoadContentIdentifierData:(id)data forRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  dataCopy = data;
  requestCopy = request;
  if ([dataCopy length])
  {
    [requestCopy setContentIdentifierData:dataCopy];
    objc_initWeak(&location, self);
    v11 = sDeliveryCoordinatorLogObject;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      requestID = [requestCopy requestID];
      *buf = 134217984;
      v26 = requestID;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Loading key request data for id %lu", buf, 0xCu);
    }

    eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v14 = TVPPlaybackReportingEventFPSRequestDataGeneration;
    v15 = MEMORY[0x277CCACA8];
    reportingID = [requestCopy reportingID];
    v17 = [v15 stringWithFormat:@"%@%@", v14, reportingID];
    [eventCollection addStartEventWithName:v14 identifier:v17];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__TVPSecureKeyDeliveryCoordinator_secureKeyLoader_didLoadContentIdentifierData_forRequest___block_invoke;
    v20[3] = &unk_279D7D0C0;
    objc_copyWeak(&v23, &location);
    v21 = requestCopy;
    v22 = loaderCopy;
    [v21 loadKeyRequestDataAsynchronouslyWithCompletion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = TVPSKDErrorWithCode(-345006);
    [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader:loaderCopy didFailWithError:v18 forRequest:requestCopy];
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

- (void)secureKeyLoader:(id)loader didLoadKeyResponseData:(id)data renewalDate:(id)date forRequest:(id)request
{
  v47 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  dataCopy = data;
  dateCopy = date;
  requestCopy = request;
  v14 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    *buf = 134217984;
    requestID = [requestCopy requestID];
    _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "FPS key fetch complete for id %lu", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [requestCopy setRequestEndDate:date];

  if ([dataCopy length])
  {
    v43 = dateCopy;
    eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v18 = TVPPlaybackReportingEventFPSServerKeyFetch;
    v19 = MEMORY[0x277CCACA8];
    reportingID = [requestCopy reportingID];
    v21 = [v19 stringWithFormat:@"%@%@", v18, reportingID];
    requestCompletionTime = [requestCopy requestCompletionTime];
    [eventCollection addEndEventWithName:v18 identifier:v21 timestamp:requestCompletionTime];

    delegate = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [delegate secureKeyDeliveryCoordinatorWillSucceed:self];

    delegate2 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate3 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
      [delegate3 secureKeyDeliveryCoordinatorWillSucceed:self forKeyRequest:requestCopy];
    }

    eventCollection2 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v27 = TVPPlaybackReportingEventFPSOverallFetch;
    v28 = MEMORY[0x277CCACA8];
    reportingID2 = [requestCopy reportingID];
    v30 = [v28 stringWithFormat:@"%@%@", v27, reportingID2];
    requestCompletionTime2 = [requestCopy requestCompletionTime];
    [eventCollection2 addEndEventWithName:v27 identifier:v30 timestamp:requestCompletionTime2];

    if ([requestCopy retrievesOfflineKeys])
    {
      v32 = sDeliveryCoordinatorLogObject;
      if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        requestID2 = [requestCopy requestID];
        *buf = 134217984;
        requestID = requestID2;
        _os_log_impl(&dword_26CEDD000, v33, OS_LOG_TYPE_DEFAULT, "Converting key response data to offline key data for id %lu", buf, 0xCu);
      }

      v44 = 0;
      v35 = [requestCopy offlineKeyDataForResponseData:dataCopy error:&v44];
      v36 = v44;

      if ([v35 length])
      {
        delegate4 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
        v38 = objc_opt_respondsToSelector();

        if (v38)
        {
          delegate5 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
          [delegate5 secureKeyDeliveryCoordinator:self didReceiveOfflineKeyData:v35 forKeyRequest:requestCopy];
        }

        dateCopy = v43;
        [requestCopy finishLoadingWithResponseData:v35 renewalDate:v43 keyType:2];
      }

      else
      {
        v41 = sDeliveryCoordinatorLogObject;
        if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_ERROR))
        {
          [TVPSecureKeyDeliveryCoordinator secureKeyLoader:v36 didLoadKeyResponseData:v41 renewalDate:? forRequest:?];
        }

        [(TVPSecureKeyDeliveryCoordinator *)self _finishLoadingWithError:v36 forRequest:requestCopy];
        dateCopy = v43;
      }
    }

    else
    {
      dateCopy = v43;
      [requestCopy finishLoadingWithResponseData:dataCopy renewalDate:v43 keyType:1];
      v35 = dataCopy;
    }
  }

  else
  {
    v40 = TVPSKDErrorWithCode(-345009);
    [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader:loaderCopy didFailWithError:v40 forRequest:requestCopy];

    v35 = dataCopy;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)secureKeyLoader:(id)loader didReceiveUpdatedRentalExpirationDate:(id)date
{
  dateCopy = date;
  delegate = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  [delegate secureKeyDeliveryCoordinator:self didReceiveUpdatedRentalExpirationDate:dateCopy];
}

- (void)secureKeyLoader:(id)loader didReceiveUpdatedRentalPlaybackStartDate:(id)date
{
  dateCopy = date;
  delegate = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [delegate2 secureKeyDeliveryCoordinator:self didReceiveUpdatedRentalPlaybackStartDate:dateCopy];
  }
}

- (void)secureKeyLoader:(id)loader didReceiveUpdatedRentalExpirationDate:(id)date playbackStartDate:(id)startDate
{
  dateCopy = date;
  startDateCopy = startDate;
  delegate = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [delegate2 secureKeyDeliveryCoordinator:self didReceiveUpdatedRentalExpirationDate:dateCopy playbackStartDate:startDateCopy];
  }
}

- (void)secureKeyLoader:(id)loader didFailWithError:(id)error forRequest:(id)request
{
  v52 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  errorCopy = error;
  requestCopy = request;
  v11 = sDeliveryCoordinatorLogObject;
  if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_ERROR))
  {
    [TVPSecureKeyDeliveryCoordinator secureKeyLoader:errorCopy didFailWithError:v11 forRequest:?];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [requestCopy setRequestEndDate:date];

  if ([(TVPSecureKeyDeliveryCoordinator *)self certFetchInProgress])
  {
    v34 = requestCopy;
    v35 = loaderCopy;
    requestsAwaitingCertFetch = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
    v14 = [requestsAwaitingCertFetch copy];

    [(TVPSecureKeyDeliveryCoordinator *)self setCertFetchInProgress:0];
    requestsAwaitingCertFetch2 = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
    [requestsAwaitingCertFetch2 removeAllObjects];

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
      v39 = errorCopy;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          if (errorCopy)
          {
            v49 = v37;
            v50 = errorCopy;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          }

          else
          {
            v20 = 0;
          }

          v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345001 userInfo:v20];
          eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
          v23 = TVPPlaybackReportingEventFPSCertFetch;
          v24 = MEMORY[0x277CCACA8];
          reportingID = [v19 reportingID];
          v26 = [v24 stringWithFormat:@"%@%@", v23, reportingID];
          [eventCollection addEndEventWithName:v23 identifier:v26];

          v27 = sDeliveryCoordinatorLogObject;
          if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
            requestID = [v19 requestID];
            *buf = 134217984;
            v48 = requestID;
            _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "After cert fetch failure, failing request %lu", buf, 0xCu);
          }

          [(TVPSecureKeyDeliveryCoordinator *)self _finishLoadingWithError:v21 forRequest:v19];

          errorCopy = v39;
        }

        v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v17);
    }

    requestCopy = v34;
    loaderCopy = v35;
  }

  else
  {
    IsFatalSKDError = TVPErrorIsFatalSKDError(errorCopy);
    [requestCopy setRetryCount:{objc_msgSend(requestCopy, "retryCount") + 1}];
    if ((IsFatalSKDError & 1) != 0 || [requestCopy retryCount] > 1)
    {
      [(TVPSecureKeyDeliveryCoordinator *)self _finishLoadingWithError:errorCopy forRequest:requestCopy];
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
      v41 = requestCopy;
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

- (void)_loadSecureKeyRequest:(id)request sendStartReportingEvent:(BOOL)event
{
  eventCopy = event;
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (eventCopy)
  {
    eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v8 = TVPPlaybackReportingEventFPSOverallFetch;
    v9 = MEMORY[0x277CCACA8];
    reportingID = [requestCopy reportingID];
    v11 = [v9 stringWithFormat:@"%@%@", v8, reportingID];
    [eventCollection addStartEventWithName:v8 identifier:v11];
  }

  eventCollection2 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  v13 = TVPPlaybackReportingEventFPSCertFetch;
  v14 = MEMORY[0x277CCACA8];
  reportingID2 = [requestCopy reportingID];
  v16 = [v14 stringWithFormat:@"%@%@", v13, reportingID2];
  [eventCollection2 addStartEventWithName:v13 identifier:v16];

  certificateData = [(TVPSecureKeyDeliveryCoordinator *)self certificateData];

  if (certificateData)
  {
    v18 = sDeliveryCoordinatorLogObject;
    if (os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      *buf = 134217984;
      requestID = [requestCopy requestID];
      _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Using cached cert data for request %lu", buf, 0xCu);
    }

    eventCollection3 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
    v21 = TVPPlaybackReportingEventFPSCertFetch;
    v22 = MEMORY[0x277CCACA8];
    reportingID3 = [requestCopy reportingID];
    v24 = [v22 stringWithFormat:@"%@%@", v21, reportingID3];
    [eventCollection3 addEndEventWithName:v21 identifier:v24];

    certificateData2 = [(TVPSecureKeyDeliveryCoordinator *)self certificateData];
    [requestCopy setCertificateData:certificateData2];

    secureKeyLoader = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
    [secureKeyLoader startLoadingContentIdentifierDataForRequest:requestCopy];
    goto LABEL_13;
  }

  requestsAwaitingCertFetch = [(TVPSecureKeyDeliveryCoordinator *)self requestsAwaitingCertFetch];
  [requestsAwaitingCertFetch addObject:requestCopy];

  certFetchInProgress = [(TVPSecureKeyDeliveryCoordinator *)self certFetchInProgress];
  v29 = sDeliveryCoordinatorLogObject;
  v30 = os_log_type_enabled(sDeliveryCoordinatorLogObject, OS_LOG_TYPE_DEFAULT);
  if (!certFetchInProgress)
  {
    if (v30)
    {
      v31 = v29;
      *buf = 134217984;
      requestID = [requestCopy requestID];
      _os_log_impl(&dword_26CEDD000, v31, OS_LOG_TYPE_DEFAULT, "No cached cert data exists in coordinator for request %lu.  Starting cert fetch", buf, 0xCu);
    }

    [(TVPSecureKeyDeliveryCoordinator *)self setCertFetchInProgress:1];
    secureKeyLoader = [(TVPSecureKeyDeliveryCoordinator *)self secureKeyLoader];
    [secureKeyLoader startLoadingCertificateDataForRequest:requestCopy];
    goto LABEL_13;
  }

  if (v30)
  {
    secureKeyLoader = v29;
    *buf = 134217984;
    requestID = [requestCopy requestID];
    _os_log_impl(&dword_26CEDD000, secureKeyLoader, OS_LOG_TYPE_DEFAULT, "No cached cert data exists in coordinator for request %lu.  Waiting for cert fetch already in progress to complete", buf, 0xCu);
LABEL_13:
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_finishLoadingWithError:(id)error forRequest:(id)request
{
  errorCopy = error;
  requestCopy = request;
  delegate = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  [delegate secureKeyDeliveryCoordinator:self willFailWithError:errorCopy];

  delegate2 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate3 = [(TVPSecureKeyDeliveryCoordinator *)self delegate];
    [delegate3 secureKeyDeliveryCoordinator:self willFailWithError:errorCopy forKeyRequest:requestCopy];
  }

  eventCollection = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  v12 = TVPPlaybackReportingEventFPSOverallFetch;
  v13 = MEMORY[0x277CCACA8];
  reportingID = [requestCopy reportingID];
  v15 = [v13 stringWithFormat:@"%@%@", v12, reportingID];
  [eventCollection addEndEventWithName:v12 identifier:v15];

  eventCollection2 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  [eventCollection2 addSingleShotEventWithName:TVPPlaybackReportingEventError value:errorCopy];

  eventCollection3 = [(TVPSecureKeyDeliveryCoordinator *)self eventCollection];
  [eventCollection3 addSingleShotEventWithName:TVPPlaybackReportingEventErrorEvent value:TVPPlaybackReportingEventFPSOverallFetch];

  [requestCopy finishLoadingWithError:errorCopy];
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