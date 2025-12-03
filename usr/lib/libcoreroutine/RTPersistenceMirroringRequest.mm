@interface RTPersistenceMirroringRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMirroringRequest:(id)request;
- (BOOL)isReady;
- (RTPersistenceMirroringRequest)initWithQueue:(id)queue requestType:(int64_t)type mirroringPolicy:(id)policy affectedStores:(id)stores options:(id)options completionHandler:(id)handler;
- (RTPersistenceMirroringRequestDelegate)delegate;
- (id)description;
- (id)requestTypeToString:(int64_t)string;
- (unint64_t)hash;
- (void)_completeRequestWithError:(id)error;
- (void)_createMirroringRequestWithRequestType:(int64_t)type affectedStores:(id)stores options:(id)options;
- (void)_dispatchAllHandlersWithError:(id)error;
- (void)_handleMirroringRequestResult:(id)result;
- (void)_prepareMirroringRequestForRetry:(id)retry;
- (void)completeRequestWithError:(id)error;
- (void)dealloc;
- (void)executeMirroringRequestWithContext:(id)context;
- (void)handleMirroringRequestResult:(id)result;
- (void)mergeRequest:(id)request;
@end

@implementation RTPersistenceMirroringRequest

- (RTPersistenceMirroringRequest)initWithQueue:(id)queue requestType:(int64_t)type mirroringPolicy:(id)policy affectedStores:(id)stores options:(id)options completionHandler:(id)handler
{
  queueCopy = queue;
  policyCopy = policy;
  storesCopy = stores;
  optionsCopy = options;
  handlerCopy = handler;
  if (!policyCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: mirroringPolicy";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_12;
  }

  if (![storesCopy count])
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: affectedStores.count >= 1";
    goto LABEL_15;
  }

  v34.receiver = self;
  v34.super_class = RTPersistenceMirroringRequest;
  v20 = [(RTPersistenceMirroringRequest *)&v34 init];
  if (v20)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v20->_identifier;
    v20->_identifier = uUID;

    objc_storeStrong(&v20->_queue, queue);
    v23 = objc_opt_new();
    completionHandlers = v20->_completionHandlers;
    v20->_completionHandlers = v23;

    v20->_requestType = type;
    v25 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    v20->_sid = os_signpost_id_generate(v25);

    [(RTPersistenceMirroringRequest *)v20 _createMirroringRequestWithRequestType:type affectedStores:storesCopy options:optionsCopy];
    if (handlerCopy && v20->_request)
    {
      v26 = v20->_completionHandlers;
      v27 = _Block_copy(handlerCopy);
      [(NSMutableArray *)v26 addObject:v27];
    }

    date = [MEMORY[0x277CBEAA8] date];
    enqueueDate = v20->_enqueueDate;
    v20->_enqueueDate = date;

    objc_storeStrong(&v20->_mirroringPolicy, policy);
  }

  self = v20;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)dealloc
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_completionHandlers count])
  {
    v6 = *MEMORY[0x277CCA450];
    v7[0] = @"Pending mirroring operation failed.";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:0 userInfo:v3];
    [(RTPersistenceMirroringRequest *)self _dispatchAllHandlersWithError:v4];
  }

  v5.receiver = self;
  v5.super_class = RTPersistenceMirroringRequest;
  [(RTPersistenceMirroringRequest *)&v5 dealloc];
}

- (void)_createMirroringRequestWithRequestType:(int64_t)type affectedStores:(id)stores options:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  storesCopy = stores;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __95__RTPersistenceMirroringRequest__createMirroringRequestWithRequestType_affectedStores_options___block_invoke;
  v19 = &unk_2788C7728;
  objc_copyWeak(&v20, &location);
  v10 = _Block_copy(&v16);
  switch(type)
  {
    case 2:
      v14 = objc_alloc(MEMORY[0x277CBE3E8]);
      v12 = [v14 initWithOptions:optionsCopy completionBlock:{v10, v16, v17, v18, v19}];
      goto LABEL_7;
    case 1:
      v13 = objc_alloc(MEMORY[0x277CBE3B8]);
      v12 = [v13 initWithOptions:optionsCopy completionBlock:{v10, v16, v17, v18, v19}];
      goto LABEL_7;
    case 0:
      v11 = objc_alloc(MEMORY[0x277CBE3C8]);
      v12 = [v11 initWithOptions:optionsCopy completionBlock:{v10, v16, v17, v18, v19}];
LABEL_7:
      request = self->_request;
      self->_request = v12;
      goto LABEL_10;
  }

  request = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(request, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    typeCopy = type;
    v24 = 2080;
    v25 = "[RTPersistenceMirroringRequest _createMirroringRequestWithRequestType:affectedStores:options:]";
    v26 = 1024;
    v27 = 113;
    _os_log_error_impl(&dword_2304B3000, request, OS_LOG_TYPE_ERROR, "unhandled mirroring request type, %ld (in %s:%d)", buf, 0x1Cu);
  }

LABEL_10:

  [(NSCloudKitMirroringRequest *)self->_request setAffectedStores:storesCopy];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __95__RTPersistenceMirroringRequest__createMirroringRequestWithRequestType_affectedStores_options___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleMirroringRequestResult:v5];
  }
}

- (void)_prepareMirroringRequestForRetry:(id)retry
{
  retryCopy = retry;
  requestType = [retryCopy requestType];
  request = [retryCopy request];
  affectedStores = [request affectedStores];
  request2 = [retryCopy request];

  options = [request2 options];
  [(RTPersistenceMirroringRequest *)self _createMirroringRequestWithRequestType:requestType affectedStores:affectedStores options:options];
}

- (void)handleMirroringRequestResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTPersistenceMirroringRequest_handleMirroringRequestResult___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = resultCopy;
  v6 = resultCopy;
  dispatch_async(queue, v7);
}

- (void)_handleMirroringRequestResult:(id)result
{
  v63 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uUIDString = [(NSUUID *)self->_identifier UUIDString];
      request = [resultCopy request];
      requestIdentifier = [request requestIdentifier];
      uUIDString2 = [requestIdentifier UUIDString];
      *buf = 138412802;
      *v57 = uUIDString;
      *&v57[8] = 2112;
      v58 = uUIDString2;
      v59 = 1024;
      madeChanges = [resultCopy madeChanges];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "request identifier, %@, CD request identifier, %@, made changes, %d", buf, 0x1Cu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      uUIDString3 = [(NSUUID *)self->_identifier UUIDString];
      request2 = [resultCopy request];
      requestIdentifier2 = [request2 requestIdentifier];
      success = [resultCopy success];
      error = [resultCopy error];
      *buf = 138413058;
      *v57 = uUIDString3;
      *&v57[8] = 2112;
      v58 = requestIdentifier2;
      v59 = 1024;
      madeChanges = success;
      v61 = 2112;
      v62 = error;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "request identifier, %@, CD request identifier, %@, success, %d, error, %@", buf, 0x26u);
    }
  }

  error2 = [resultCopy error];

  if (error2)
  {
    error3 = [resultCopy error];
    userInfo = [error3 userInfo];
    v19 = *MEMORY[0x277CCA7E8];
    v20 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v21 = CKCanRetryForError();
    error4 = [resultCopy error];
    code = [error4 code];

    if ((v21 & 1) != 0 || code == 134409)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v57 = v21;
          *&v57[4] = 1024;
          *&v57[6] = code == 134409;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "shouldRetryFromCKError, %d, mirroringDelegateRecoveredFromError, %d", buf, 0xEu);
        }
      }

      error5 = [resultCopy error];
      localizedDescription = [error5 localizedDescription];
      v38 = localizedDescription;
      if (localizedDescription)
      {
        error8 = localizedDescription;
      }

      else
      {
        error6 = [resultCopy error];
        error8 = [error6 description];
      }

      v40 = @"no description";
      v41 = *MEMORY[0x277CCA450];
      if (error8)
      {
        v40 = error8;
      }

      v55[0] = v40;
      v54[0] = v41;
      v54[1] = v19;
      error7 = [resultCopy error];
      v55[1] = error7;
      v54[2] = @"Retry-After";
      v43 = MEMORY[0x277CCABB0];
      CKRetryAfterSecondsForError();
      v44 = [v43 numberWithDouble:?];
      v55[2] = v44;
      domain = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];

      v45 = MEMORY[0x277CCA9B8];
      v46 = 0;
    }

    else
    {
      error8 = [resultCopy error];
      domain = [(__CFString *)error8 domain];
      v26 = *MEMORY[0x277CCA050];
      if (![domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        error14 = 0;
LABEL_33:

LABEL_34:
LABEL_35:

        goto LABEL_36;
      }

      error9 = [resultCopy error];
      code2 = [error9 code];

      if (code2 != 134410)
      {
        error14 = 0;
        goto LABEL_35;
      }

      error8 = [v20 domain];
      if (![(__CFString *)error8 isEqualToString:v26])
      {
        error14 = 0;
        goto LABEL_34;
      }

      code3 = [v20 code];

      if (code3 != 134408)
      {
        error14 = 0;
        goto LABEL_35;
      }

      v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "mirroring request failed to exceeding maximum memory threshold", buf, 2u);
      }

      error10 = [resultCopy error];
      localizedDescription2 = [error10 localizedDescription];
      v33 = localizedDescription2;
      if (localizedDescription2)
      {
        error8 = localizedDescription2;
      }

      else
      {
        error11 = [resultCopy error];
        error8 = [error11 description];
      }

      v49 = @"no description";
      v50 = *MEMORY[0x277CCA450];
      if (error8)
      {
        v49 = error8;
      }

      v52[1] = v19;
      v53[0] = v49;
      v52[0] = v50;
      error12 = [resultCopy error];
      v53[1] = error12;
      domain = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

      v45 = MEMORY[0x277CCA9B8];
      v46 = 8;
    }

    error14 = [v45 errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:v46 userInfo:domain];
    goto LABEL_33;
  }

  error14 = 0;
LABEL_36:
  error13 = [resultCopy error];

  if (error13 && !error14)
  {
    error14 = [resultCopy error];
  }

  [(RTPersistenceMirroringRequest *)self _completeRequestWithError:error14];
}

- (BOOL)isEqualToMirroringRequest:(id)request
{
  requestCopy = request;
  v7 = objc_opt_class();
  request = [requestCopy request];
  if (v7 == objc_opt_class())
  {
    affectedStores = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
    if (affectedStores || ([requestCopy request], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "affectedStores"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      affectedStores2 = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
      request2 = [requestCopy request];
      affectedStores3 = [request2 affectedStores];
      v9 = [affectedStores2 isEqual:affectedStores3];

      if (affectedStores)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTPersistenceMirroringRequest *)self isEqualToMirroringRequest:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  affectedStores = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
  v5 = [affectedStores hash];

  return v5 ^ v3;
}

- (void)mergeRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v30 = requestCopy;
    v7 = [(RTPersistenceMirroringRequest *)self isEqual:requestCopy];
    if (self != v30 && v7)
    {
      options = [(NSCloudKitMirroringRequest *)self->_request options];
      v9 = [options copy];

      request = [(RTPersistenceMirroringRequest *)v30 request];
      options2 = [request options];
      operationConfiguration = [options2 operationConfiguration];
      allowsCellularAccess = [operationConfiguration allowsCellularAccess];
      if (allowsCellularAccess)
      {
        allowsCellularAccess2 = 1;
      }

      else
      {
        options3 = [(NSCloudKitMirroringRequest *)self->_request options];
        operationConfiguration2 = [options3 operationConfiguration];
        allowsCellularAccess2 = [operationConfiguration2 allowsCellularAccess];
      }

      operationConfiguration3 = [v9 operationConfiguration];
      [operationConfiguration3 setAllowsCellularAccess:allowsCellularAccess2];

      if ((allowsCellularAccess & 1) == 0)
      {
      }

      completionHandlers = self->_completionHandlers;
      completionHandlers = [(RTPersistenceMirroringRequest *)v30 completionHandlers];
      [(NSMutableArray *)completionHandlers addObjectsFromArray:completionHandlers];

      completionHandlers2 = [(RTPersistenceMirroringRequest *)v30 completionHandlers];
      [completionHandlers2 removeAllObjects];

      requestType = self->_requestType;
      affectedStores = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
      [(RTPersistenceMirroringRequest *)self _createMirroringRequestWithRequestType:requestType affectedStores:affectedStores options:v9];

      mirroringPolicy = [(RTPersistenceMirroringRequest *)v30 mirroringPolicy];
      qualityOfService = [mirroringPolicy qualityOfService];
      mirroringPolicy2 = [(RTPersistenceMirroringRequest *)self mirroringPolicy];
      qualityOfService2 = [mirroringPolicy2 qualityOfService];

      if (qualityOfService > qualityOfService2)
      {
        mirroringPolicy3 = [(RTPersistenceMirroringRequest *)v30 mirroringPolicy];
        [(RTPersistenceMirroringRequest *)self setMirroringPolicy:mirroringPolicy3];
      }

      enqueueDate = self->_enqueueDate;
      enqueueDate = [(RTPersistenceMirroringRequest *)v30 enqueueDate];
      v28 = [(NSDate *)enqueueDate earlierDate:enqueueDate];
      v29 = self->_enqueueDate;
      self->_enqueueDate = v28;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)completeRequestWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTPersistenceMirroringRequest_completeRequestWithError___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)_dispatchAllHandlersWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_completionHandlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_completionHandlers removeAllObjects];
}

- (void)_completeRequestWithError:(id)error
{
  errorCopy = error;
  mirroringTransaction = self->_mirroringTransaction;
  self->_mirroringTransaction = 0;

  mirroringAssertion = self->_mirroringAssertion;
  self->_mirroringAssertion = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (errorCopy)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained mirroringRequest:self didFailWithError:errorCopy])
    {
      goto LABEL_11;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained mirroringRequestDidSucceed:self];
  }

  [(RTPersistenceMirroringRequest *)self _dispatchAllHandlersWithError:errorCopy];
  v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  v9 = v8;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_END, sid, "MirroringRequest", "", v13, 2u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_startDate];
  self->_duration = v12;

LABEL_11:
}

- (void)executeMirroringRequestWithContext:(id)context
{
  v46[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (self->_attemptCount >= RTPersistenceMirroringRequestRetryCountMax)
  {
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"The maximum number of retry attempts for this request have been exceeded.";
    WeakRetained = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:4 userInfo:WeakRetained];
    v32 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

      [(RTPersistenceMirroringRequest *)self completeRequestWithError:v31];
      goto LABEL_23;
    }

    *buf = 138412290;
    selfCopy = v31;
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "error executing request, %@", buf, 0xCu);
    goto LABEL_22;
  }

  if (!self->_startDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startDate = self->_startDate;
    self->_startDate = date;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  v9 = v8;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    requestIdentifier = [(NSCloudKitMirroringRequest *)self->_request requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    requestType = self->_requestType;
    *buf = 138412546;
    selfCopy = uUIDString;
    v43 = 2048;
    v44 = requestType;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, sid, "MirroringRequest", "id: %@, type:, %ld", buf, 0x16u);
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = NSStringFromSelector(a2);
  v18 = [v14 stringWithFormat:@"%@-%@", v16, v17];
  [v18 UTF8String];
  v19 = os_transaction_create();
  mirroringTransaction = self->_mirroringTransaction;
  self->_mirroringTransaction = v19;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = v34;
      v43 = 2112;
      v44 = v35;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v22 = [RTPowerAssertion alloc];
  v23 = MEMORY[0x277CCACA8];
  requestIdentifier2 = [(NSCloudKitMirroringRequest *)self->_request requestIdentifier];
  uUIDString2 = [requestIdentifier2 UUIDString];
  v26 = [v23 stringWithFormat:@"MirroringRequest-%@", uUIDString2];
  v27 = [(RTPowerAssertion *)v22 initWithIdentifier:v26 timeout:300.0];
  mirroringAssertion = self->_mirroringAssertion;
  self->_mirroringAssertion = v27;

  if (!contextCopy)
  {
    v39 = *MEMORY[0x277CCA450];
    v40 = @"Request requires managed object context.";
    WeakRetained = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:1 userInfo:WeakRetained];
    v32 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 138412290;
    selfCopy = v31;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "starting mirroring request, %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mirroringRequestDidBegin:self];
  }

  ++self->_attemptCount;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__RTPersistenceMirroringRequest_executeMirroringRequestWithContext___block_invoke;
  v36[3] = &unk_2788C4A70;
  v37 = contextCopy;
  selfCopy2 = self;
  [(RTPersistenceMirroringRequest *)v37 performBlockAndWait:v36];
  v31 = v37;
LABEL_23:
}

void __68__RTPersistenceMirroringRequest_executeMirroringRequestWithContext___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v7 = 0;
  v4 = [v2 executeRequest:v3 error:&v7];
  v5 = v7;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "error executing request, %@", buf, 0xCu);
    }

    [*(a1 + 40) completeRequestWithError:v5];
  }
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  affectedStores = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
  v5 = [affectedStores countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(affectedStores);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) URL];
        lastPathComponent = [v9 lastPathComponent];
        [v3 appendFormat:@"%@, ", lastPathComponent];
      }

      v6 = [affectedStores countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v11 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v13 = [(RTPersistenceMirroringRequest *)self requestTypeToString:self->_requestType];
  attemptCount = self->_attemptCount;
  duration = self->_duration;
  stringFromDate = [(NSDate *)self->_enqueueDate stringFromDate];
  mirroringPolicy = self->_mirroringPolicy;
  stringFromDate2 = [(NSDate *)self->_startDate stringFromDate];
  v19 = [v11 stringWithFormat:@"request id, %@, type, %@, affected stores, %@ attempt count, %lu, duration, %f, enqueue date, %@, mirroring policy, %@, state date, %@, handler count, %lu", uUIDString, v13, v3, attemptCount, *&duration, stringFromDate, mirroringPolicy, stringFromDate2, -[NSMutableArray count](self->_completionHandlers, "count")];

  return v19;
}

- (id)requestTypeToString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C7748[string];
  }
}

- (BOOL)isReady
{
  mirroringPolicy = self->_mirroringPolicy;
  if (mirroringPolicy)
  {
    LOBYTE(mirroringPolicy) = [(RTPersistenceMirroringPolicy *)mirroringPolicy mirroringOperationAllowed];
  }

  return mirroringPolicy;
}

- (RTPersistenceMirroringRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end