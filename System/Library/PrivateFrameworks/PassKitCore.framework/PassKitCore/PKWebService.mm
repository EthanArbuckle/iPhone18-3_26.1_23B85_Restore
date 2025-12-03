@interface PKWebService
+ (id)_sharedCookieStorage;
- (BOOL)_evaluateTrust:(__SecTrust *)trust;
- (BOOL)canBypassTrustValidation;
- (NSString)webServiceSessionMarker;
- (NSURLSessionConfiguration)sessionConfiguration;
- (PKTapToRadarDelegate)tapToRadarDelegate;
- (PKWebService)initWithTapToRadarDelegate:(id)delegate;
- (id)_accountStore;
- (id)_urlRequestTaggedWithDiagnosticReasonHeader:(id)header forTaskID:(unint64_t)d;
- (id)_urlRequestTaggedWithWebServiceSessionMarkerHeader:(id)header;
- (id)_urlRequestWithCustomHeaders:(id)headers;
- (id)dataTaskWithRequest:(id)request completionHandler:(id)handler;
- (id)forbiddenErrorWithResponse:(id)response;
- (id)urlRequestTaggedWithUniqueRequestIdentifier:(id)identifier;
- (id)urlSession;
- (unint64_t)nextTaskID;
- (unint64_t)webServiceTaskIdentifierForTaskIdentifier:(int64_t)identifier;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)_associateDiagnosticReasonsWithTaskID:(unint64_t)d;
- (void)_cleanUpDiagnosticReasonsForTaskID:(unint64_t)d;
- (void)addDiagnosticReason:(id)reason;
- (void)diagnosticSessionWithReason:(id)reason sessionHandler:(id)handler;
- (void)handleAuthenticationFailureWithCompletionHandler:(id)handler;
- (void)handleResponse:(id)response withError:(id)error data:(id)data task:(id)task completionHandler:(id)handler;
- (void)handleWillPerformHTTPRedirectionWithResponse:(id)response originalRequest:(id)request redirectHandler:(id)handler;
- (void)invalidate;
- (void)logRequest:(id)request;
- (void)logResponse:(id)response withData:(id)data;
- (void)performRequest:(id)request taskIdentifier:(unint64_t)identifier retries:(unint64_t)retries authHandling:(BOOL)handling cacheResponse:(BOOL)response completionHandler:(id)handler;
- (void)processRetryRequest:(id)request responseData:(id)data orginalRequest:(id)orginalRequest completion:(id)completion;
- (void)refreshSessionWithConfiguration:(id)configuration;
- (void)removeDiagnosticReason:(id)reason;
- (void)resetWebServiceSessionMarker;
- (void)setUrlSession:(id)session;
@end

@implementation PKWebService

- (void)resetWebServiceSessionMarker
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_webServiceSessionMarker;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  webServiceSessionMarker = self->_webServiceSessionMarker;
  self->_webServiceSessionMarker = uUIDString;

  v7 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = self->_webServiceSessionMarker;
      v17 = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v11;
      v12 = "%{public}@ Session Marker Reset - (Old : '%@' ==> New : '%@')";
      v13 = v7;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    }
  }

  else if (v8)
  {
    v15 = objc_opt_class();
    v10 = NSStringFromClass(v15);
    v16 = self->_webServiceSessionMarker;
    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v16;
    v12 = "%{public}@ Session Marker Initialized - ('%@')";
    v13 = v7;
    v14 = 22;
    goto LABEL_6;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (unint64_t)nextTaskID
{
  os_unfair_lock_lock(&self->_stateLock);
  taskIDCounter = self->_taskIDCounter;
  self->_taskIDCounter = taskIDCounter + 1;
  os_unfair_lock_unlock(&self->_stateLock);
  [(PKWebService *)self _associateDiagnosticReasonsWithTaskID:taskIDCounter];
  return taskIDCounter;
}

- (NSString)webServiceSessionMarker
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSString *)self->_webServiceSessionMarker copy];
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

void __26__PKWebService_urlSession__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    [v3 setTimeoutIntervalForResource:360.0];
    [v3 setTimeoutIntervalForRequest:60.0];
    v4 = +[PKWebService _sharedCookieStorage];
    [v3 setHTTPCookieStorage:v4];

    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 bundleIdentifier];

    v7 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:v6];
    [v3 set_appleIDContext:v7];
    v8 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v3 delegate:*(a1 + 32) delegateQueue:*(*(a1 + 32) + 32)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 72);
    *(v9 + 72) = v8;

    v2 = *(*(a1 + 32) + 72);
  }

  v11 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v11, v2);
}

- (id)urlSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__PKWebService_urlSession__block_invoke;
  v5[3] = &unk_1E79C8AB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sessionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)_sharedCookieStorage
{
  if (qword_1ED6D1A78 != -1)
  {
    dispatch_once(&qword_1ED6D1A78, &__block_literal_global_96);
  }

  v3 = _MergedGlobals_221;

  return v3;
}

- (PKWebService)initWithTapToRadarDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = PKWebService;
  v5 = [(PKWebService *)&v24 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tapToRadarDelegate, delegateCopy);
    v6->_taskIDCounter = 0;
    v6->_stateLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_create("com.apple.passd.urlsession", 0);
    sessionQueue = v6->_sessionQueue;
    v6->_sessionQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    delegateOperationQueue = v6->_delegateOperationQueue;
    v6->_delegateOperationQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    webServiceTasks = v6->_webServiceTasks;
    v6->_webServiceTasks = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasksMetadata = v6->_tasksMetadata;
    v6->_tasksMetadata = v13;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    diagnosticReasonsByTaskID = v6->_diagnosticReasonsByTaskID;
    v6->_diagnosticReasonsByTaskID = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    diagnosticReasons = v6->_diagnosticReasons;
    v6->_diagnosticReasons = array;

    v19 = dispatch_queue_create("com.apple.passkit.diagnosticReasonsQueue", 0);
    diagnosticReasonsQueue = v6->_diagnosticReasonsQueue;
    v6->_diagnosticReasonsQueue = v19;

    v21 = [MEMORY[0x1E695DFD8] setWithObjects:{@"cardSecurityCode", @"amount", @"merchantIdentifier", @"merchantName", @"cardholderName", @"expiration", @"firstName", @"lastName", @"addressLine1", @"addressLine2", @"street1", @"street2", @"email", @"city", @"postalCode", @"name", @"nameOptions", @"FPANSuffix", @"countryCode", @"SELDInfo", @"dateOfBirth", @"emailAddress", @"emails", @"phoneNumber", @"phoneNumbers", @"accountNumber", @"mailboxIdentifier", @"originURL", @"aprForPurchase", @"rewardsEarned", @"rewardsRedeemed", @"rewardsBalance", @"rewardsLifetime", @"statementBalance", @"rewardsYTD", @"cyclesPastDue", @"inGrace", @"pastDueAmount", @"unpostedInterest", @"requiresDebtCollectionNotices", @"creditLimit", @"availableCredit", @"currentBalance", @"adjustedBalance", @"installmentBalance", @"remainingStatementBalance", @"remainingMinimumPayment", @"remainingMinimumPaymentExcludedFromInterestCalculation", @"purchases", @"pendingPurchases", @"balanceTransfers", @"interestCharged", @"feesCharged", @"paymentsAndCredits", @"payments", @"credits", @"remainingStatementBalanceForInterestCalculation", @"availableBalance", @"interestYTD", @"totalBalance", @"minimumDue"}];
    sensitiveKeys = v6->_sensitiveKeys;
    v6->_sensitiveKeys = v21;

    [(PKWebService *)v6 resetWebServiceSessionMarker];
  }

  return v6;
}

- (void)handleResponse:(id)response withError:(id)error data:(id)data task:(id)task completionHandler:(id)handler
{
  v30[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  dataCopy = data;
  handlerCopy = handler;
  statusCode = [responseCopy statusCode];
  switch(statusCode)
  {
    case 403:
      v24 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Received Status Code 403.", v26, 2u);
      }

      v25 = [(PKWebServiceResponse *)PKWebServiceForbiddenResponse responseWithData:dataCopy];
      v20 = [(PKWebService *)self forbiddenErrorWithResponse:v25];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, dataCopy, responseCopy, v20);
      }

      break;
    case 503:
      v21 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Received Status Code 503.", v26, 2u);
      }

      v27[0] = *MEMORY[0x1E696A588];
      v22 = PKLocalizedPaymentString(&cfstr_RateLimitedErr.isa, 0);
      v28[0] = v22;
      v27[1] = *MEMORY[0x1E696A598];
      v23 = PKLocalizedPaymentString(&cfstr_RateLimitedErr_0.isa, 0);
      v28[1] = v23;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:4 userInfo:v19];

      goto LABEL_10;
    case 429:
      v16 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Received Status Code 429.", v26, 2u);
      }

      v29[0] = *MEMORY[0x1E696A588];
      v17 = PKLocalizedPaymentString(&cfstr_RateLimitedErr.isa, 0);
      v30[0] = v17;
      v29[1] = *MEMORY[0x1E696A598];
      v18 = PKLocalizedPaymentString(&cfstr_RateLimitedErr_0.isa, 0);
      v30[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:3 userInfo:v19];

LABEL_10:
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, dataCopy, responseCopy, v20);
      }

      break;
    default:
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, dataCopy, responseCopy, errorCopy);
      }

      v20 = errorCopy;
      break;
  }
}

- (void)processRetryRequest:(id)request responseData:(id)data orginalRequest:(id)orginalRequest completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v9 = [request copy];
    (*(completion + 2))(completionCopy, v9);
  }
}

- (BOOL)canBypassTrustValidation
{
  if ((PKBypassCertValidation() & 1) != 0 || (v3 = PKIgnoreSSLPinning()) != 0)
  {
    v4 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Allowing bypass of extended trust validation by preference on internal build", v6, 2u);
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)handleWillPerformHTTPRedirectionWithResponse:(id)response originalRequest:(id)request redirectHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }
}

- (void)handleAuthenticationFailureWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 2, 0);
  }
}

- (void)invalidate
{
  urlSession = [(PKWebService *)self urlSession];
  [urlSession invalidateAndCancel];
}

- (NSURLSessionConfiguration)sessionConfiguration
{
  urlSession = [(PKWebService *)self urlSession];
  configuration = [urlSession configuration];

  return configuration;
}

- (void)refreshSessionWithConfiguration:(id)configuration
{
  v9 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = configurationCopy;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Requested update to web service with configuration: %@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x1E695AC78] sessionWithConfiguration:configurationCopy delegate:self delegateQueue:self->_delegateOperationQueue];
  [(PKWebService *)self setUrlSession:v6];
}

- (void)performRequest:(id)request taskIdentifier:(unint64_t)identifier retries:(unint64_t)retries authHandling:(BOOL)handling cacheResponse:(BOOL)response completionHandler:(id)handler
{
  responseCopy = response;
  handlingCopy = handling;
  requestCopy = request;
  handlerCopy = handler;
  if (!requestCopy)
  {
    v28 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v37 = 0;
    v29 = "Error: Attempting to perform a nil NSURLRequest. Failing with error PKWebServiceErrorCodeServiceFailure.";
    v30 = &v37;
    goto LABEL_10;
  }

  v16 = [requestCopy URL];

  if (v16)
  {
    v17 = [(PKWebService *)self _urlRequestTaggedWithWebServiceSessionMarkerHeader:requestCopy];

    v18 = [(PKWebService *)self _urlRequestTaggedWithDiagnosticReasonHeader:v17 forTaskID:identifier];

    v19 = [(PKWebService *)self urlRequestTaggedWithUniqueRequestIdentifier:v18];

    requestCopy = [(PKWebService *)self _urlRequestWithCustomHeaders:v19];

    if (requestCopy)
    {
      [(PKWebService *)self logRequest:requestCopy];
      hTTPBody = [requestCopy HTTPBody];
      v21 = [hTTPBody copy];

      urlSession = [(PKWebService *)self urlSession];
      v23 = [urlSession dataTaskWithRequest:requestCopy];

      if (v23)
      {
        v24 = objc_alloc_init(PKWebServiceRequestMetadata);
        [(PKWebServiceRequestMetadata *)v24 setCacheResponse:responseCopy];
        [(PKWebServiceRequestMetadata *)v24 setRetries:retries];
        [(PKWebServiceRequestMetadata *)v24 setOriginalBody:v21];
        [(PKWebServiceRequestMetadata *)v24 setAuthHandling:handlingCopy];
        [(PKWebServiceRequestMetadata *)v24 setCompletion:handlerCopy];
        os_unfair_lock_lock(&self->_stateLock);
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v23, "taskIdentifier")}];
        webServiceTasks = self->_webServiceTasks;
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
        [(NSMutableDictionary *)webServiceTasks setObject:v27 forKey:v25];

        [(NSMutableDictionary *)self->_tasksMetadata setObject:v24 forKey:v25];
        os_unfair_lock_unlock(&self->_stateLock);
        [v23 resume];
      }

      else
      {
        v32 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 0;
          _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Received Unexpected Error - Could not start network request", v34, 2u);
        }

        v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:0 userInfo:0];
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v33);
      }
    }

    else
    {
      v31 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Received Unexpected Error - No request to create task", v35, 2u);
      }

      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:0 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
      requestCopy = 0;
    }

    goto LABEL_20;
  }

  v28 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v29 = "Error: Attempting to perform NSURLRequest with a nil URL. Failing with error PKWebServiceErrorCodeServiceFailure.";
    v30 = buf;
LABEL_10:
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 2u);
  }

LABEL_11:

  if (handlerCopy)
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
LABEL_20:
  }
}

- (unint64_t)webServiceTaskIdentifierForTaskIdentifier:(int64_t)identifier
{
  os_unfair_lock_lock(&self->_stateLock);
  webServiceTasks = self->_webServiceTasks;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v7 = [(NSMutableDictionary *)webServiceTasks objectForKey:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  os_unfair_lock_unlock(&self->_stateLock);
  return unsignedIntegerValue;
}

- (id)dataTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (requestCopy)
  {
    urlSession = [(PKWebService *)self urlSession];
    v9 = [urlSession dataTaskWithRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request is nil, completing with PKWebServiceErrorCodeServiceFailure", v13, 2u);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v11);

    v9 = 0;
  }

  return v9;
}

- (void)setUrlSession:(id)session
{
  sessionCopy = session;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__PKWebService_setUrlSession___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  dispatch_sync(sessionQueue, v7);
}

void __30__PKWebService_setUrlSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 72);
  if (v2 != v3)
  {
    [v3 finishTasksAndInvalidate];
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 72);

    objc_storeStrong(v5, v4);
  }
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

void __36__PKWebService__sharedCookieStorage__block_invoke_2()
{
  v0 = CFHTTPCookieStorageCreateFromFile();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_alloc(MEMORY[0x1E695AC00]) _initWithCFHTTPCookieStorage:v0];
    v3 = _MergedGlobals_221;
    _MergedGlobals_221 = v2;

    CFRelease(v1);
  }
}

- (id)forbiddenErrorWithResponse:(id)response
{
  responseCopy = response;
  localizedTitle = [responseCopy localizedTitle];
  localizedDescription = [responseCopy localizedDescription];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:localizedTitle forKeyedSubscript:*MEMORY[0x1E696A588]];
  [dictionary setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E696A598]];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", localizedTitle, localizedDescription];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v8 = MEMORY[0x1E696ABC0];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  v10 = [v8 errorWithDomain:@"PKWebServiceErrorDomain" code:2 userInfo:v9];

  return v10;
}

- (BOOL)_evaluateTrust:(__SecTrust *)trust
{
  v11 = *MEMORY[0x1E69E9840];
  if (!trust)
  {
    return 0;
  }

  error = 0;
  v4 = SecTrustEvaluateWithError(trust, &error);
  if (!v4)
  {
    if (error)
    {
      v5 = CFErrorCopyDescription(error);
    }

    else
    {
      v5 = 0;
    }

    v7 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Not trusted with error: %@.", buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (error)
  {
    CFRelease(error);
  }

  return v4 || [(PKWebService *)self canBypassTrustValidation];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(task, "taskIdentifier")}];
  os_unfair_lock_lock(&self->_stateLock);
  v8 = [(NSMutableDictionary *)self->_tasksMetadata objectForKey:v7];
  os_unfair_lock_unlock(&self->_stateLock);
  responseData = [v8 responseData];
  if (responseData)
  {
    v10 = responseData;
    v11 = [responseData mutableCopy];
    [v11 appendData:dataCopy];
    v12 = [v11 copy];
  }

  else
  {
    v12 = dataCopy;
  }

  [v8 setResponseData:v12];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v93[1] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
  os_unfair_lock_lock(&self->_stateLock);
  v10 = [(NSMutableDictionary *)self->_webServiceTasks objectForKey:v9];
  LODWORD(v11) = [v10 unsignedIntValue];

  v12 = [(NSMutableDictionary *)self->_tasksMetadata objectForKey:v9];
  [(NSMutableDictionary *)self->_tasksMetadata removeObjectForKey:v9];
  os_unfair_lock_unlock(&self->_stateLock);
  responseData = [v12 responseData];
  response = [taskCopy response];
  completion = [v12 completion];
  if (completion)
  {
    v11 = v11;
    objc_opt_class();
    v59 = responseData;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v58 = completion;
        v27 = response;
        v28 = v11;
        v29 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          localizedDescription = [errorCopy localizedDescription];
          v31 = [taskCopy description];
          *buf = 138412546;
          v85 = localizedDescription;
          v86 = 2114;
          v87 = v31;
          _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Error %@ returned from task: %{public}@", buf, 0x16u);

          responseData = v59;
        }

        v11 = v28;
        response = v27;
        completion = v58;
      }

      (completion)[2](completion, responseData, response, errorCopy);
      goto LABEL_44;
    }

    v51 = response;
    v52 = v11;
    v16 = response;
    [(PKWebService *)self logResponse:v16 withData:responseData];
    currentRequest = [taskCopy currentRequest];
    statusCode = [v16 statusCode];
    v18 = +[PKWebService _sharedCookieStorage];
    [v18 _saveCookies];

    v19 = v16;
    allHeaderFields = [v16 allHeaderFields];
    [allHeaderFields objectForKeyedSubscript:@"X-Wallet-TapToRadar-Request"];
    v57 = v55 = v19;
    if (v57)
    {
      v53 = errorCopy;
      v21 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v57;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Server requested a Tap-To-Radar prompt with reason: %@", buf, 0xCu);
      }

      v22 = objc_alloc_init(PKTapToRadarRequest);
      [(PKTapToRadarRequest *)v22 setReason:v57];
      [(PKTapToRadarRequest *)v22 setServerGenerated:1];
      v23 = [allHeaderFields objectForKeyedSubscript:@"X-Wallet-TapToRadar-Request-RelatedRadar"];
      if (v23)
      {
        [(PKTapToRadarRequest *)v22 setRelatedRadar:v23];
      }

      WeakRetained = objc_loadWeakRetained(&self->_tapToRadarDelegate);
      [WeakRetained displayTapToRadarAlertForRequest:v22 completion:0];

      errorCopy = v53;
      v19 = v55;
      responseData = v59;
    }

    v50 = allHeaderFields;
    retries = [v12 retries];
    authHandling = [v12 authHandling];
    cacheResponse = [v12 cacheResponse];
    originalBody = [v12 originalBody];
    if (statusCode == 504)
    {
      v37 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      response = v51;
      if (retries)
      {
        if (v38)
        {
          *buf = 134218240;
          v85 = 504;
          v86 = 2048;
          v87 = retries;
          _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Received Unexpected Error %ld (%tu retries remaining).", buf, 0x16u);
        }

        v39 = [currentRequest mutableCopy];
        [v39 setHTTPBody:originalBody];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke_340;
        v60[3] = &unk_1E79D27E8;
        v60[4] = self;
        v62 = v52;
        v63 = retries;
        v64 = authHandling;
        v65 = cacheResponse;
        v61 = completion;
        [(PKWebService *)self processRetryRequest:v39 responseData:responseData orginalRequest:currentRequest completion:v60];

        v11 = v52;
        v19 = v55;
        goto LABEL_43;
      }

      if (v38)
      {
        *buf = 134217984;
        v85 = 504;
        _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Received Unexpected Error %ld (giving up).", buf, 0xCu);
      }
    }

    else
    {
      response = v51;
      if (statusCode == 503)
      {
        allHeaderFields2 = [v19 allHeaderFields];
        v33 = [allHeaderFields2 objectForKeyedSubscript:@"Retry-After"];

        v46 = v33;
        if (!v33)
        {
          goto LABEL_33;
        }

        v34 = PKRetryAfterSecondsFromNow(v33);
        v35 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218754;
          v85 = 503;
          v86 = 2112;
          v87 = v46;
          v88 = 2048;
          v89 = retries;
          v90 = 2048;
          v91 = v34;
          _os_log_impl(&dword_1AD337000, v35, OS_LOG_TYPE_DEFAULT, "Received %ld (Retry-After: %@) (%tu retries remaining) (retry-after in %lu seconds).", buf, 0x2Au);
        }

        if (v34)
        {
          v36 = [currentRequest mutableCopy];
          [v36 setHTTPBody:originalBody];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke_339;
          v66[3] = &unk_1E79D2860;
          v66[4] = self;
          v68 = v34;
          v69 = v52;
          v70 = retries;
          v71 = authHandling;
          v72 = cacheResponse;
          v67 = completion;
          [(PKWebService *)self processRetryRequest:v36 responseData:responseData orginalRequest:currentRequest completion:v66];

          v19 = v55;
        }

        else
        {
LABEL_33:
          v40 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v85 = 503;
            _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Received Unexpected Error %ld without retry-after; failing.", buf, 0xCu);
          }

          v19 = v55;
          [(PKWebService *)self handleResponse:v55 withError:errorCopy data:responseData task:taskCopy completionHandler:completion];
        }

        goto LABEL_42;
      }

      if (statusCode == 401)
      {
        v25 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Received Status Code 401.", buf, 2u);
        }

        if ([v12 authHandling])
        {
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke;
          v73[3] = &unk_1E79D2810;
          v80 = retries;
          v73[4] = self;
          v74 = currentRequest;
          v75 = v12;
          v76 = responseData;
          v11 = v52;
          v81 = v52;
          v82 = authHandling;
          v83 = cacheResponse;
          v79 = completion;
          v77 = v19;
          v78 = errorCopy;
          [(PKWebService *)self handleAuthenticationFailureWithCompletionHandler:v73];

LABEL_43:
LABEL_44:
          os_unfair_lock_lock(&self->_stateLock);
          webServiceTasks = self->_webServiceTasks;
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
          [(NSMutableDictionary *)webServiceTasks removeObjectForKey:v45];

          os_unfair_lock_unlock(&self->_stateLock);
          [(PKWebService *)self _cleanUpDiagnosticReasonsForTaskID:v11];
          responseData = v59;
          goto LABEL_45;
        }

        v92 = *MEMORY[0x1E696A578];
        v41 = PKLocalizedPaymentString(&cfstr_AuthError.isa, 0);
        v93[0] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:&v92 count:1];

        v43 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:1 userInfo:v42];
        (completion)[2](completion, v59, v55, v43);

        v19 = v55;
LABEL_42:
        v11 = v52;
        goto LABEL_43;
      }
    }

    [(PKWebService *)self handleResponse:v19 withError:errorCopy data:responseData task:taskCopy completionHandler:completion];
    goto LABEL_42;
  }

  v26 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v85 = taskCopy;
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "No completion for task %@", buf, 0xCu);
  }

LABEL_45:
}

void __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 2)
  {
LABEL_11:
    v16 = PKLogFacilityTypeGetObject([*(a1 + 32) logFacilityType]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Credential Renewal Failed.", buf, 2u);
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    v15 = PKLogFacilityTypeGetObject([*(a1 + 32) logFacilityType]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Credential Renewal Rejected by User.", buf, 2u);
    }

    goto LABEL_11;
  }

  if (a2)
  {
LABEL_14:
    v25 = *MEMORY[0x1E696A578];
    v17 = PKLocalizedPaymentString(&cfstr_AuthError.isa, 0);
    v26[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:1 userInfo:v18];
    (*(*(a1 + 80) + 16))();

    goto LABEL_15;
  }

  v6 = *(a1 + 88);
  v7 = PKLogFacilityTypeGetObject([*(a1 + 32) logFacilityType]);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Credential Renewal succeeded, retrying request.", buf, 2u);
    }

    v9 = [*(a1 + 40) mutableCopy];
    v10 = [v5 authorizationHeader];
    [v9 setValue:v10 forHTTPHeaderField:@"Authorization"];

    v11 = [*(a1 + 48) originalBody];
    [v9 setHTTPBody:v11];

    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke_333;
    v20[3] = &unk_1E79D27E8;
    v20[4] = v13;
    v22 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    v23 = *(a1 + 104);
    v21 = *(a1 + 80);
    [v13 processRetryRequest:v9 responseData:v12 orginalRequest:v14 completion:v20];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Exceeded maximum retries (giving up).", buf, 2u);
    }

    (*(*(a1 + 80) + 16))();
  }

LABEL_15:
}

void __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke_339(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 1000000000 * *(a1 + 48));
  v5 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKWebService_URLSession_task_didCompleteWithError___block_invoke_2;
  v8[3] = &unk_1E79D2838;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v10 = v6;
  v7 = v3;
  dispatch_after(v4, v5, v8);
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  v9 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  responseCopy = response;
  v14 = [v9 numberWithUnsignedInteger:{objc_msgSend(task, "taskIdentifier")}];
  os_unfair_lock_lock(&self->_stateLock);
  v12 = [(NSMutableDictionary *)self->_tasksMetadata objectForKey:v14];
  os_unfair_lock_unlock(&self->_stateLock);
  if ([v12 cacheResponse])
  {
    v13 = responseCopy;
  }

  else
  {
    v13 = 0;
  }

  (handlerCopy)[2](handlerCopy, v13);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  [(PKWebService *)self logResponse:redirectionCopy withData:0];
  v15 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Performing redirection…", buf, 2u);
  }

  originalRequest = [taskCopy originalRequest];
  v17 = [originalRequest URL];

  v18 = [requestCopy URL];
  scheme = [v17 scheme];
  v44 = v18;
  if ([scheme isEqual:@"https"])
  {
    scheme2 = [v18 scheme];
    v21 = [scheme2 isEqual:scheme];

    if ((v21 & 1) == 0)
    {
      v40 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "ERROR: https request redirects to non https URL.", buf, 2u);
      }

      goto LABEL_10;
    }
  }

  v22 = [requestCopy mutableCopy];
  if (!v22)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_11;
  }

  v23 = v22;
  originalRequest2 = [taskCopy originalRequest];
  hTTPMethod = [originalRequest2 HTTPMethod];
  [v23 setHTTPMethod:hTTPMethod];

  [originalRequest2 valueForHTTPHeaderField:@"Authorization"];
  v26 = v43 = taskCopy;
  [v23 setValue:v26 forHTTPHeaderField:@"Authorization"];

  hTTPBody = [originalRequest2 HTTPBody];
  [v23 setHTTPBody:hTTPBody];

  v28 = [MEMORY[0x1E695AC60] propertyForKey:@"overlayRequest" inRequest:originalRequest2];
  v29 = MEMORY[0x1E696ACD0];
  v41 = v17;
  v30 = redirectionCopy;
  v31 = objc_opt_class();
  [v28 data];
  v42 = requestCopy;
  v33 = v32 = handlerCopy;
  v34 = [v29 unarchivedObjectOfClass:v31 fromData:v33 error:0];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PKWebService_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E79D28B0;
  v35 = v30;
  v46 = v35;
  v47 = v34;
  v48 = v23;
  selfCopy = self;
  v50 = v32;
  v36 = v23;
  v37 = v34;
  v38 = _Block_copy(aBlock);
  v39 = v35;
  redirectionCopy = v30;
  v17 = v41;
  [(PKWebService *)self handleWillPerformHTTPRedirectionWithResponse:v39 originalRequest:originalRequest2 redirectHandler:v38];

  handlerCopy = v32;
  requestCopy = v42;

  taskCopy = v43;
LABEL_11:
}

void __88__PKWebService_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) pk_valueForHTTPHeaderField:@"X-Redirect-Encrypted-Data"];
    v4 = *(a1 + 40);
    if (!v4 || ([v4 requiresConfigurationForRedirect] ? (v5 = v3 == 0) : (v5 = 1), v5))
    {
      [*(a1 + 56) logRequest:*(a1 + 48)];
      v6 = *(a1 + 64);
      v7 = [*(a1 + 48) copy];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
      v10 = v9;
      if (v9)
      {
        v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:0];
      }

      else
      {
        v11 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __88__PKWebService_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2;
        v15[3] = &unk_1E79D2888;
        v15[4] = v14;
        v16 = *(a1 + 64);
        [v12 _updateRequestForRedirect:v13 overrides:v11 webService:v14 withCompletion:v15];
      }
    }
  }

  else
  {
    v8 = *(*(a1 + 64) + 16);

    v8();
  }
}

void __88__PKWebService_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 logRequest:v4];
  v5 = *(a1 + 40);
  v6 = [v4 copy];

  (*(v5 + 16))(v5, v6);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  v12 = *MEMORY[0x1E69E9840];
  connectivityCopy = connectivity;
  v6 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentRequest = [connectivityCopy currentRequest];
    v8 = [currentRequest URL];
    absoluteString = [v8 absoluteString];
    v10 = 138412290;
    v11 = absoluteString;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Task is waiting for connectivity URL: %@", &v10, 0xCu);
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  urlSession = [(PKWebService *)self urlSession];

  if (urlSession == sessionCopy)
  {
    [(PKWebService *)self setUrlSession:0];
  }

  v7 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [sessionCopy configuration];
    identifier = [configuration identifier];
    v10 = 138412290;
    v11 = identifier;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Session did become invalid. Identifier: %@", &v10, 0xCu);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]])
  {
    if (-[PKWebService _evaluateTrust:](self, "_evaluateTrust:", [protectionSpace serverTrust]))
    {
      v9 = [MEMORY[0x1E695AC48] credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
      handlerCopy[2](handlerCopy, 0, v9);
    }

    else
    {
      handlerCopy[2](handlerCopy, 2, 0);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (id)_urlRequestTaggedWithWebServiceSessionMarkerHeader:(id)header
{
  v4 = [header mutableCopy];
  webServiceSessionMarker = [(PKWebService *)self webServiceSessionMarker];
  [v4 setValue:webServiceSessionMarker forHTTPHeaderField:@"X-Apple-Web-Service-Session"];

  v6 = [v4 copy];

  return v6;
}

- (id)urlRequestTaggedWithUniqueRequestIdentifier:(id)identifier
{
  v3 = [identifier mutableCopy];
  v4 = PKRequestIDHeaderValue();
  if (v4)
  {
    [v3 setValue:v4 forHTTPHeaderField:@"x-request-id"];
  }

  v5 = [v3 copy];

  return v5;
}

- (id)_urlRequestWithCustomHeaders:(id)headers
{
  v3 = [headers mutableCopy];
  v4 = PKGetCustomHeaders();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PKWebService__urlRequestWithCustomHeaders___block_invoke;
  v8[3] = &unk_1E79C8F58;
  v9 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (void)diagnosticSessionWithReason:(id)reason sessionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    reasonCopy = reason;
    [(PKWebService *)self addDiagnosticReason:reasonCopy];
    handlerCopy[2](handlerCopy, self);

    [(PKWebService *)self removeDiagnosticReason:reasonCopy];
  }
}

- (void)addDiagnosticReason:(id)reason
{
  reasonCopy = reason;
  diagnosticReasonsQueue = self->_diagnosticReasonsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PKWebService_addDiagnosticReason___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  dispatch_sync(diagnosticReasonsQueue, v7);
}

void __36__PKWebService_addDiagnosticReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 64);
    v4 = [v2 copy];
    [v3 addObject:v4];
  }
}

- (void)removeDiagnosticReason:(id)reason
{
  reasonCopy = reason;
  diagnosticReasonsQueue = self->_diagnosticReasonsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PKWebService_removeDiagnosticReason___block_invoke;
  v7[3] = &unk_1E79C4DD8;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  dispatch_sync(diagnosticReasonsQueue, v7);
}

uint64_t __39__PKWebService_removeDiagnosticReason___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(*(result + 40) + 64) removeObject:?];
  }

  return result;
}

- (void)_associateDiagnosticReasonsWithTaskID:(unint64_t)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  diagnosticReasonsQueue = self->_diagnosticReasonsQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKWebService__associateDiagnosticReasonsWithTaskID___block_invoke;
  v9[3] = &unk_1E79C8A88;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(diagnosticReasonsQueue, v9);
  os_unfair_lock_lock(&self->_stateLock);
  diagnosticReasonsByTaskID = self->_diagnosticReasonsByTaskID;
  v7 = v11[5];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  [(NSMutableDictionary *)diagnosticReasonsByTaskID setObject:v7 forKey:v8];

  os_unfair_lock_unlock(&self->_stateLock);
  _Block_object_dispose(&v10, 8);
}

void __54__PKWebService__associateDiagnosticReasonsWithTaskID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_cleanUpDiagnosticReasonsForTaskID:(unint64_t)d
{
  os_unfair_lock_lock(&self->_stateLock);
  diagnosticReasonsByTaskID = self->_diagnosticReasonsByTaskID;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  [(NSMutableDictionary *)diagnosticReasonsByTaskID removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)_urlRequestTaggedWithDiagnosticReasonHeader:(id)header forTaskID:(unint64_t)d
{
  headerCopy = header;
  os_unfair_lock_lock(&self->_stateLock);
  diagnosticReasonsByTaskID = self->_diagnosticReasonsByTaskID;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
  v9 = [(NSMutableDictionary *)diagnosticReasonsByTaskID objectForKey:v8];
  v10 = [v9 mutableCopy];

  os_unfair_lock_unlock(&self->_stateLock);
  if ([v10 count])
  {
    v11 = [headerCopy valueForHTTPHeaderField:@"X-Apple-Diagnostic-Reasons"];
    if (v11)
    {
      [v10 addObject:v11];
    }

    v12 = [headerCopy mutableCopy];
    v13 = [v10 componentsJoinedByString:{@", "}];
    [v12 setValue:v13 forHTTPHeaderField:@"X-Apple-Diagnostic-Reasons"];
    v14 = [v12 copy];
  }

  else
  {
    v14 = headerCopy;
  }

  return v14;
}

- (void)logRequest:(id)request
{
  v40 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    if (requestCopy)
    {
      v7 = objc_autoreleasePoolPush();
      hTTPBody = [requestCopy HTTPBody];
      v9 = [requestCopy URL];
      absoluteString = [v9 absoluteString];

      PKTimeProfileBegin(0, absoluteString);
      v11 = [[PKWebServiceLoggableRequestBody alloc] initWithBody:hTTPBody sensitiveKeys:self->_sensitiveKeys];
      v12 = [PKWebServiceLoggableHeaders alloc];
      allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
      v14 = [(PKWebServiceLoggableHeaders *)v12 initWithHeaders:allHTTPHeaderFields];

      v15 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        hTTPMethod = [requestCopy HTTPMethod];
        *buf = 138413058;
        v33 = hTTPMethod;
        v34 = 2112;
        v35 = absoluteString;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Performing request:\n%@ %@\n%@\n\n%@\n", buf, 0x2Au);
      }

      v17 = [MEMORY[0x1E695AC60] propertyForKey:@"encryptedCardDataKeys" inRequest:requestCopy];
      if (v17)
      {
        v25 = hTTPBody;
        v26 = v7;
        string = [MEMORY[0x1E696AD60] string];
        [string appendString:@"Encrypted Card Data Keys: "];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v28;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [string appendFormat:@"%@, ", *(*(&v27 + 1) + 8 * i)];
            }

            v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v21);
        }

        hTTPBody = v25;
        v7 = v26;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Request is nil", buf, 2u);
      }
    }
  }
}

- (void)logResponse:(id)response withData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  v8 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = [responseCopy URL];
    absoluteString = [v10 absoluteString];

    v12 = PKTimeProfileEnd(0, absoluteString, 0);
    v13 = [[PKWebServiceLoggableRequestBody alloc] initWithBody:dataCopy sensitiveKeys:self->_sensitiveKeys];
    v14 = [PKWebServiceLoggableHeaders alloc];
    allHeaderFields = [responseCopy allHeaderFields];
    v16 = [(PKWebServiceLoggableHeaders *)v14 initWithHeaders:allHeaderFields];

    v17 = PKLogFacilityTypeGetObject([(PKWebService *)self logFacilityType]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413314;
      v19 = absoluteString;
      v20 = 2048;
      statusCode = [responseCopy statusCode];
      v22 = 2114;
      v23 = v12;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Response:\n%@ %ld %{public}@\n%@\n\n%@\n", &v18, 0x34u);
    }
  }
}

- (PKTapToRadarDelegate)tapToRadarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tapToRadarDelegate);

  return WeakRetained;
}

@end