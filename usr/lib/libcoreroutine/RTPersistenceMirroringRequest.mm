@interface RTPersistenceMirroringRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMirroringRequest:(id)a3;
- (BOOL)isReady;
- (RTPersistenceMirroringRequest)initWithQueue:(id)a3 requestType:(int64_t)a4 mirroringPolicy:(id)a5 affectedStores:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (RTPersistenceMirroringRequestDelegate)delegate;
- (id)description;
- (id)requestTypeToString:(int64_t)a3;
- (unint64_t)hash;
- (void)_completeRequestWithError:(id)a3;
- (void)_createMirroringRequestWithRequestType:(int64_t)a3 affectedStores:(id)a4 options:(id)a5;
- (void)_dispatchAllHandlersWithError:(id)a3;
- (void)_handleMirroringRequestResult:(id)a3;
- (void)_prepareMirroringRequestForRetry:(id)a3;
- (void)completeRequestWithError:(id)a3;
- (void)dealloc;
- (void)executeMirroringRequestWithContext:(id)a3;
- (void)handleMirroringRequestResult:(id)a3;
- (void)mergeRequest:(id)a3;
@end

@implementation RTPersistenceMirroringRequest

- (RTPersistenceMirroringRequest)initWithQueue:(id)a3 requestType:(int64_t)a4 mirroringPolicy:(id)a5 affectedStores:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v16)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      v30 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: mirroringPolicy";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_12;
  }

  if (![v17 count])
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
    v21 = [MEMORY[0x277CCAD78] UUID];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    objc_storeStrong(&v20->_queue, a3);
    v23 = objc_opt_new();
    completionHandlers = v20->_completionHandlers;
    v20->_completionHandlers = v23;

    v20->_requestType = a4;
    v25 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    v20->_sid = os_signpost_id_generate(v25);

    [(RTPersistenceMirroringRequest *)v20 _createMirroringRequestWithRequestType:a4 affectedStores:v17 options:v18];
    if (v19 && v20->_request)
    {
      v26 = v20->_completionHandlers;
      v27 = _Block_copy(v19);
      [(NSMutableArray *)v26 addObject:v27];
    }

    v28 = [MEMORY[0x277CBEAA8] date];
    enqueueDate = v20->_enqueueDate;
    v20->_enqueueDate = v28;

    objc_storeStrong(&v20->_mirroringPolicy, a5);
  }

  self = v20;
  v30 = self;
LABEL_13:

  return v30;
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

- (void)_createMirroringRequestWithRequestType:(int64_t)a3 affectedStores:(id)a4 options:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __95__RTPersistenceMirroringRequest__createMirroringRequestWithRequestType_affectedStores_options___block_invoke;
  v19 = &unk_2788C7728;
  objc_copyWeak(&v20, &location);
  v10 = _Block_copy(&v16);
  switch(a3)
  {
    case 2:
      v14 = objc_alloc(MEMORY[0x277CBE3E8]);
      v12 = [v14 initWithOptions:v9 completionBlock:{v10, v16, v17, v18, v19}];
      goto LABEL_7;
    case 1:
      v13 = objc_alloc(MEMORY[0x277CBE3B8]);
      v12 = [v13 initWithOptions:v9 completionBlock:{v10, v16, v17, v18, v19}];
      goto LABEL_7;
    case 0:
      v11 = objc_alloc(MEMORY[0x277CBE3C8]);
      v12 = [v11 initWithOptions:v9 completionBlock:{v10, v16, v17, v18, v19}];
LABEL_7:
      request = self->_request;
      self->_request = v12;
      goto LABEL_10;
  }

  request = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(request, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v23 = a3;
    v24 = 2080;
    v25 = "[RTPersistenceMirroringRequest _createMirroringRequestWithRequestType:affectedStores:options:]";
    v26 = 1024;
    v27 = 113;
    _os_log_error_impl(&dword_2304B3000, request, OS_LOG_TYPE_ERROR, "unhandled mirroring request type, %ld (in %s:%d)", buf, 0x1Cu);
  }

LABEL_10:

  [(NSCloudKitMirroringRequest *)self->_request setAffectedStores:v8];
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

- (void)_prepareMirroringRequestForRetry:(id)a3
{
  v4 = a3;
  v5 = [v4 requestType];
  v9 = [v4 request];
  v6 = [v9 affectedStores];
  v7 = [v4 request];

  v8 = [v7 options];
  [(RTPersistenceMirroringRequest *)self _createMirroringRequestWithRequestType:v5 affectedStores:v6 options:v8];
}

- (void)handleMirroringRequestResult:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTPersistenceMirroringRequest_handleMirroringRequestResult___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleMirroringRequestResult:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(NSUUID *)self->_identifier UUIDString];
      v7 = [v4 request];
      v8 = [v7 requestIdentifier];
      v9 = [v8 UUIDString];
      *buf = 138412802;
      *v57 = v6;
      *&v57[8] = 2112;
      v58 = v9;
      v59 = 1024;
      v60 = [v4 madeChanges];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "request identifier, %@, CD request identifier, %@, made changes, %d", buf, 0x1Cu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(NSUUID *)self->_identifier UUIDString];
      v12 = [v4 request];
      v13 = [v12 requestIdentifier];
      v14 = [v4 success];
      v15 = [v4 error];
      *buf = 138413058;
      *v57 = v11;
      *&v57[8] = 2112;
      v58 = v13;
      v59 = 1024;
      v60 = v14;
      v61 = 2112;
      v62 = v15;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "request identifier, %@, CD request identifier, %@, success, %d, error, %@", buf, 0x26u);
    }
  }

  v16 = [v4 error];

  if (v16)
  {
    v17 = [v4 error];
    v18 = [v17 userInfo];
    v19 = *MEMORY[0x277CCA7E8];
    v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v21 = CKCanRetryForError();
    v22 = [v4 error];
    v23 = [v22 code];

    if ((v21 & 1) != 0 || v23 == 134409)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v57 = v21;
          *&v57[4] = 1024;
          *&v57[6] = v23 == 134409;
          _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "shouldRetryFromCKError, %d, mirroringDelegateRecoveredFromError, %d", buf, 0xEu);
        }
      }

      v36 = [v4 error];
      v37 = [v36 localizedDescription];
      v38 = v37;
      if (v37)
      {
        v24 = v37;
      }

      else
      {
        v39 = [v4 error];
        v24 = [v39 description];
      }

      v40 = @"no description";
      v41 = *MEMORY[0x277CCA450];
      if (v24)
      {
        v40 = v24;
      }

      v55[0] = v40;
      v54[0] = v41;
      v54[1] = v19;
      v42 = [v4 error];
      v55[1] = v42;
      v54[2] = @"Retry-After";
      v43 = MEMORY[0x277CCABB0];
      CKRetryAfterSecondsForError();
      v44 = [v43 numberWithDouble:?];
      v55[2] = v44;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:3];

      v45 = MEMORY[0x277CCA9B8];
      v46 = 0;
    }

    else
    {
      v24 = [v4 error];
      v25 = [(__CFString *)v24 domain];
      v26 = *MEMORY[0x277CCA050];
      if (![v25 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v34 = 0;
LABEL_33:

LABEL_34:
LABEL_35:

        goto LABEL_36;
      }

      v27 = [v4 error];
      v28 = [v27 code];

      if (v28 != 134410)
      {
        v34 = 0;
        goto LABEL_35;
      }

      v24 = [v20 domain];
      if (![(__CFString *)v24 isEqualToString:v26])
      {
        v34 = 0;
        goto LABEL_34;
      }

      v29 = [v20 code];

      if (v29 != 134408)
      {
        v34 = 0;
        goto LABEL_35;
      }

      v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "mirroring request failed to exceeding maximum memory threshold", buf, 2u);
      }

      v31 = [v4 error];
      v32 = [v31 localizedDescription];
      v33 = v32;
      if (v32)
      {
        v24 = v32;
      }

      else
      {
        v48 = [v4 error];
        v24 = [v48 description];
      }

      v49 = @"no description";
      v50 = *MEMORY[0x277CCA450];
      if (v24)
      {
        v49 = v24;
      }

      v52[1] = v19;
      v53[0] = v49;
      v52[0] = v50;
      v51 = [v4 error];
      v53[1] = v51;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

      v45 = MEMORY[0x277CCA9B8];
      v46 = 8;
    }

    v34 = [v45 errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:v46 userInfo:v25];
    goto LABEL_33;
  }

  v34 = 0;
LABEL_36:
  v47 = [v4 error];

  if (v47 && !v34)
  {
    v34 = [v4 error];
  }

  [(RTPersistenceMirroringRequest *)self _completeRequestWithError:v34];
}

- (BOOL)isEqualToMirroringRequest:(id)a3
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 request];
  if (v7 == objc_opt_class())
  {
    v10 = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
    if (v10 || ([v6 request], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "affectedStores"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
      v12 = [v6 request];
      v13 = [v12 affectedStores];
      v9 = [v11 isEqual:v13];

      if (v10)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTPersistenceMirroringRequest *)self isEqualToMirroringRequest:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (void)mergeRequest:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v30 = v6;
    v7 = [(RTPersistenceMirroringRequest *)self isEqual:v6];
    if (self != v30 && v7)
    {
      v8 = [(NSCloudKitMirroringRequest *)self->_request options];
      v9 = [v8 copy];

      v10 = [(RTPersistenceMirroringRequest *)v30 request];
      v11 = [v10 options];
      v12 = [v11 operationConfiguration];
      v13 = [v12 allowsCellularAccess];
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v3 = [(NSCloudKitMirroringRequest *)self->_request options];
        v4 = [v3 operationConfiguration];
        v14 = [v4 allowsCellularAccess];
      }

      v15 = [v9 operationConfiguration];
      [v15 setAllowsCellularAccess:v14];

      if ((v13 & 1) == 0)
      {
      }

      completionHandlers = self->_completionHandlers;
      v17 = [(RTPersistenceMirroringRequest *)v30 completionHandlers];
      [(NSMutableArray *)completionHandlers addObjectsFromArray:v17];

      v18 = [(RTPersistenceMirroringRequest *)v30 completionHandlers];
      [v18 removeAllObjects];

      requestType = self->_requestType;
      v20 = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
      [(RTPersistenceMirroringRequest *)self _createMirroringRequestWithRequestType:requestType affectedStores:v20 options:v9];

      v21 = [(RTPersistenceMirroringRequest *)v30 mirroringPolicy];
      v22 = [v21 qualityOfService];
      v23 = [(RTPersistenceMirroringRequest *)self mirroringPolicy];
      v24 = [v23 qualityOfService];

      if (v22 > v24)
      {
        v25 = [(RTPersistenceMirroringRequest *)v30 mirroringPolicy];
        [(RTPersistenceMirroringRequest *)self setMirroringPolicy:v25];
      }

      enqueueDate = self->_enqueueDate;
      v27 = [(RTPersistenceMirroringRequest *)v30 enqueueDate];
      v28 = [(NSDate *)enqueueDate earlierDate:v27];
      v29 = self->_enqueueDate;
      self->_enqueueDate = v28;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)completeRequestWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTPersistenceMirroringRequest_completeRequestWithError___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_dispatchAllHandlersWithError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)_completeRequestWithError:(id)a3
{
  v4 = a3;
  mirroringTransaction = self->_mirroringTransaction;
  self->_mirroringTransaction = 0;

  mirroringAssertion = self->_mirroringAssertion;
  self->_mirroringAssertion = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v4)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained mirroringRequest:self didFailWithError:v4])
    {
      goto LABEL_11;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained mirroringRequestDidSucceed:self];
  }

  [(RTPersistenceMirroringRequest *)self _dispatchAllHandlersWithError:v4];
  v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  v9 = v8;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_END, sid, "MirroringRequest", "", v13, 2u);
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:self->_startDate];
  self->_duration = v12;

LABEL_11:
}

- (void)executeMirroringRequestWithContext:(id)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
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
    v42 = v31;
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "error executing request, %@", buf, 0xCu);
    goto LABEL_22;
  }

  if (!self->_startDate)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    startDate = self->_startDate;
    self->_startDate = v6;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  v9 = v8;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [(NSCloudKitMirroringRequest *)self->_request requestIdentifier];
    v12 = [v11 UUIDString];
    requestType = self->_requestType;
    *buf = 138412546;
    v42 = v12;
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
      v42 = v34;
      v43 = 2112;
      v44 = v35;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v22 = [RTPowerAssertion alloc];
  v23 = MEMORY[0x277CCACA8];
  v24 = [(NSCloudKitMirroringRequest *)self->_request requestIdentifier];
  v25 = [v24 UUIDString];
  v26 = [v23 stringWithFormat:@"MirroringRequest-%@", v25];
  v27 = [(RTPowerAssertion *)v22 initWithIdentifier:v26 timeout:300.0];
  mirroringAssertion = self->_mirroringAssertion;
  self->_mirroringAssertion = v27;

  if (!v5)
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
    v42 = v31;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = self;
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
  v37 = v5;
  v38 = self;
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
  v4 = [(NSCloudKitMirroringRequest *)self->_request affectedStores];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) URL];
        v10 = [v9 lastPathComponent];
        [v3 appendFormat:@"%@, ", v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [(NSUUID *)self->_identifier UUIDString];
  v13 = [(RTPersistenceMirroringRequest *)self requestTypeToString:self->_requestType];
  attemptCount = self->_attemptCount;
  duration = self->_duration;
  v16 = [(NSDate *)self->_enqueueDate stringFromDate];
  mirroringPolicy = self->_mirroringPolicy;
  v18 = [(NSDate *)self->_startDate stringFromDate];
  v19 = [v11 stringWithFormat:@"request id, %@, type, %@, affected stores, %@ attempt count, %lu, duration, %f, enqueue date, %@, mirroring policy, %@, state date, %@, handler count, %lu", v12, v13, v3, attemptCount, *&duration, v16, mirroringPolicy, v18, -[NSMutableArray count](self->_completionHandlers, "count")];

  return v19;
}

- (id)requestTypeToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C7748[a3];
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