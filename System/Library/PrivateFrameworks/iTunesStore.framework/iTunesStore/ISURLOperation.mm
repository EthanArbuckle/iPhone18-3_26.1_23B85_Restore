@interface ISURLOperation
+ (_CFURLCache)sharedCFURLCache;
+ (__CFURLStorageSession)_sharedCacheStorageSession;
+ (id)copyUserAgent;
- (BOOL)_isExternalURL:(id)l;
- (BOOL)_isPassThroughStatus:(int64_t)status;
- (BOOL)_processResponseData:(id)data error:(id *)error;
- (BOOL)_runRequestWithURL:(id)l dataConnectionServiceType:(__CFString *)type;
- (BOOL)_shouldFollowRedirectWithRequest:(id)request error:(id *)error;
- (BOOL)_validateContentLength:(int64_t)length error:(id *)error;
- (BOOL)handleRedirectFromDataProvider:(id)provider error:(id *)error;
- (BOOL)shouldDisableCellular;
- (BOOL)shouldFollowRedirectWithRequest:(id)request returningError:(id *)error;
- (BOOL)shouldRequireCellular;
- (BOOL)tracksPerformanceMetrics;
- (ISURLOperation)init;
- (ISURLOperation)initWithSessionManager:(id)manager;
- (ISURLRequestPerformance)performanceMetrics;
- (NSData)sourceAppAuditTokenData;
- (NSNumber)metricsLoadURLSamplingPercentage;
- (NSNumber)metricsLoadURLSamplingPercentageCachedResponses;
- (NSNumber)metricsLoadURLSessionDuration;
- (NSString)URLCacheID;
- (NSString)sourceAppBundleID;
- (NSURLCache)URLCache;
- (SSAuthenticationContext)authenticationContext;
- (SSHTTPArchive)HTTPArchive;
- (SSURLRequestProperties)requestProperties;
- (id)_accountIdentifier;
- (id)_copyAuthenticationContext;
- (id)_copyConnectionPropertiesWithDataConnectionServiceType:(__CFString *)type;
- (id)_copyQueryStringDictionaryForRedirect:(id)redirect;
- (id)_decodedDataForData:(id)data;
- (id)_errorWithDefaultStringsForError:(id)error;
- (id)_errorWithDomain:(id)domain code:(int64_t)code;
- (id)_handleRedirectRequest:(id)request response:(id)response;
- (id)_requestProperties;
- (id)_sanitizedDescriptionForObject:(id)object;
- (id)_sanitizedStringForString:(id)string;
- (id)_sanitizedURLForURL:(id)l;
- (id)_stringForCachePolicy:(unint64_t)policy;
- (id)newRequestWithURL:(id)l;
- (id)request;
- (int64_t)_defaultAuthChallengeDispositionForChallenge:(id)challenge;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithEvent:(id)event error:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCreatingHTTPArchive:(id)archive;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_handleFinishedLoading;
- (void)_handleReceivedData:(id)data;
- (void)_handleReceivedResponse:(id)response;
- (void)_logRequest:(id)request;
- (void)_logResponseBody:(id)body;
- (void)_performDefaultHandlingForAuthenticationChallenge:(id)challenge;
- (void)_retry;
- (void)_run;
- (void)_sendContentLengthToDelegate:(int64_t)delegate;
- (void)_sendOutputToDelegate:(id)delegate;
- (void)_sendRequestToDelegate:(id)delegate;
- (void)_sendResponseToDelegate:(id)delegate;
- (void)_setActiveURLRequest:(id)request;
- (void)_stopConnection;
- (void)_stopIfCancelled;
- (void)_updateProgress;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setRequest:(id)request;
- (void)setRequestProperties:(id)properties;
- (void)setTracksPerformanceMetrics:(BOOL)metrics;
@end

@implementation ISURLOperation

- (ISURLOperation)init
{
  mEMORY[0x277D69CA8] = [MEMORY[0x277D69CA8] sharedManager];
  v4 = [(ISURLOperation *)self initWithSessionManager:mEMORY[0x277D69CA8]];

  return v4;
}

- (ISURLOperation)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  __ISRecordSPIClassUsage(self);
  v14.receiver = self;
  v14.super_class = ISURLOperation;
  v6 = [(ISOperation *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.iTunesStore.ISURLOperation", 0);
    dataBufferAccessQueue = v6->_dataBufferAccessQueue;
    v6->_dataBufferAccessQueue = v7;

    v9 = SSGenerateLogCorrelationString();
    logKey = v6->_logKey;
    v6->_logKey = v9;

    v11 = objc_alloc_init(MEMORY[0x277D69BD0]);
    requestProperties = v6->_requestProperties;
    v6->_requestProperties = v11;

    v6->_shouldSetCookies = 1;
    objc_storeStrong(&v6->_urlSessionManager, manager);
    v6->_usesPrivateCookieStore = 1;
  }

  return v6;
}

- (void)dealloc
{
  [(ISDataProvider *)self->_dataProvider setParentOperation:0];
  v3.receiver = self;
  v3.super_class = ISURLOperation;
  [(ISURLOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(ISOperation *)self lock];
  v3 = self->_authenticationContext;
  [(ISOperation *)self unlock];

  return v3;
}

+ (id)copyUserAgent
{
  if (copyUserAgent_sUserAgentGuard != -1)
  {
    +[ISURLOperation copyUserAgent];
  }

  v3 = copyUserAgent_sUserAgent;

  return v3;
}

void __31__ISURLOperation_copyUserAgent__block_invoke()
{
  v2 = [MEMORY[0x277D69A80] currentDevice];
  v0 = [v2 userAgent];
  v1 = copyUserAgent_sUserAgent;
  copyUserAgent_sUserAgent = v0;
}

- (id)request
{
  [(ISOperation *)self lock];
  v3 = [[ISURLRequest alloc] initWithRequestProperties:self->_requestProperties];
  [(ISOperation *)self unlock];

  return v3;
}

- (SSURLRequestProperties)requestProperties
{
  [(ISOperation *)self lock];
  v3 = [(SSMutableURLRequestProperties *)self->_requestProperties copy];
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(ISOperation *)self lock];
  objc_storeStrong(&self->_authenticationContext, context);
  logUUID = [contextCopy logUUID];

  if (logUUID)
  {
    logUUID2 = [contextCopy logUUID];
    logKey = self->_logKey;
    self->_logKey = logUUID2;
  }

  [(ISOperation *)self unlock];
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  [(ISOperation *)self lock];
  requestProperties = [requestCopy requestProperties];

  v6 = [requestProperties mutableCopy];
  requestProperties = self->_requestProperties;
  self->_requestProperties = v6;

  [(ISOperation *)self unlock];
}

- (void)setRequestProperties:(id)properties
{
  propertiesCopy = properties;
  [(ISOperation *)self lock];
  if (self->_requestProperties != propertiesCopy)
  {
    v4 = [(SSMutableURLRequestProperties *)propertiesCopy mutableCopy];
    requestProperties = self->_requestProperties;
    self->_requestProperties = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)run
{
  v34 = *MEMORY[0x277D85DE8];
  _copyAuthenticationContext = [(ISURLOperation *)self _copyAuthenticationContext];
  dataProvider = [(ISURLOperation *)self dataProvider];
  copySerializationLocks = [(ISOperation *)self copySerializationLocks];
  v5 = copySerializationLocks;
  if (copySerializationLocks)
  {
    [copySerializationLocks makeObjectsPerformSelector:sel_lock];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = v11;
      serializationLockIdentifiers = [(ISOperation *)self serializationLockIdentifiers];
      v30 = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = serializationLockIdentifiers;
      LODWORD(v28) = 22;
      v27 = &v30;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v30, v28}];
        free(v14);
        v27 = v15;
        SSFileLog();
      }
    }

    else
    {
    }

    [(ISOperation *)self sendDidTakeSerializationLocks];
  }

  v16 = +[ISNetworkObserver sharedInstance];
  [v16 beginUsingNetwork];
  [dataProvider setAuthenticationContext:_copyAuthenticationContext];
  [dataProvider setParentOperation:self];
  [(ISURLOperation *)self _run];
  [dataProvider setParentOperation:0];
  if (-[ISURLOperation isCancelled](self, "isCancelled") && [dataProvider isStream])
  {
    [dataProvider streamCancelled];
  }

  [v16 endUsingNetwork];
  if (v5)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v21 = oSLogObject2;
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v22 = shouldLog2;
    }

    else
    {
      v22 = shouldLog2 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      serializationLockIdentifiers2 = [(ISOperation *)self serializationLockIdentifiers];
      v30 = 138412546;
      v31 = v23;
      v32 = 2112;
      v33 = serializationLockIdentifiers2;
      LODWORD(v28) = 22;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_30:

        [v5 makeObjectsPerformSelector:sel_unlock];
        goto LABEL_31;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, &v30, v28}];
      free(v25);
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleRedirectFromDataProvider:(id)provider error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  redirectURL = [provider redirectURL];
  schemeSwizzledURL = [redirectURL schemeSwizzledURL];

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = v12;
    _activeURL = [(ISURLOperation *)self _activeURL];
    v15 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
    v16 = [(ISURLOperation *)self _sanitizedURLForURL:schemeSwizzledURL];
    v28 = 138412802;
    v29 = v12;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    LODWORD(v27) = 32;
    v26 = &v28;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v28, v27}];
    free(v17);
    v26 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  redirectURLs = self->_redirectURLs;
  if (!redirectURLs)
  {
    v19 = objc_alloc_init(MEMORY[0x277CCA940]);
    v20 = self->_redirectURLs;
    self->_redirectURLs = v19;

    redirectURLs = self->_redirectURLs;
  }

  [(NSCountedSet *)redirectURLs addObject:schemeSwizzledURL, v26];
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  v22 = [(ISURLOperation *)self _copyQueryStringDictionaryForRedirect:schemeSwizzledURL];
  [_requestProperties setRequestParameters:v22];
  v23 = [(ISURLOperation *)self newRequestWithURL:schemeSwizzledURL];
  [(ISURLOperation *)self _setActiveURLRequest:v23];

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)newRequestWithURL:(id)l
{
  v104 = *MEMORY[0x277D85DE8];
  lCopy = l;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  scheme = [lCopy scheme];
  v7 = [scheme caseInsensitiveCompare:@"data"];

  selfCopy = self;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB70]);
    [_requestProperties timeoutInterval];
    v16 = [v15 initWithURL:lCopy cachePolicy:1 timeoutInterval:?];
    goto LABEL_43;
  }

  hTTPBody = [_requestProperties HTTPBody];
  hTTPBodyStream = [_requestProperties HTTPBodyStream];
  hTTPHeaders = [_requestProperties HTTPHeaders];
  hTTPMethod = [_requestProperties HTTPMethod];
  requestParameters = [_requestProperties requestParameters];
  if ([requestParameters count])
  {
    if (!(hTTPBody | hTTPBodyStream))
    {
      if ([hTTPMethod isEqualToString:@"POST"])
      {
        v12 = ISDictionaryValueForCaseInsensitiveString(hTTPHeaders, @"Content-Type");
        v13 = [v12 isEqualToString:@"application/json"];

        if (v13)
        {
          [MEMORY[0x277CCAAA0] dataWithJSONObject:requestParameters options:0 error:0];
        }

        else
        {
          [MEMORY[0x277CCAC58] dataWithPropertyList:requestParameters format:100 options:0 error:0];
        }
        v14 = ;
        hTTPBody = 0;
        if (v14)
        {
          v17 = requestParameters;
          requestParameters = 0;
          hTTPBody = v14;
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        hTTPBody = 0;
      }
    }

    if (requestParameters)
    {
      v18 = [lCopy urlBySettingQueryStringDictionary:requestParameters];
      v17 = lCopy;
      lCopy = v18;
      goto LABEL_14;
    }
  }

LABEL_15:
  [_requestProperties timeoutInterval];
  v19 = 10.0;
  if (v20 > 10.0)
  {
    [_requestProperties timeoutInterval];
    v19 = v21;
  }

  v16 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:lCopy cachePolicy:objc_msgSend(_requestProperties timeoutInterval:{"cachePolicy"), v19}];
  [v16 setHTTPShouldUsePipelining:1];
  [v16 setNetworkServiceType:{objc_msgSend(_requestProperties, "networkServiceType")}];
  if (objc_opt_respondsToSelector())
  {
    [v16 _CFURLRequest];
    CFURLRequestSetShouldStartSynchronously();
    if (([_requestProperties shouldDecodeResponse] & 1) == 0)
    {
      v22 = *MEMORY[0x277CBAF10];
      v23 = *MEMORY[0x277CBED28];
      _CFURLRequestSetProtocolProperty();
    }
  }

  _usesPrivateCookieStore = [(ISURLOperation *)self _usesPrivateCookieStore];
  [v16 setHTTPShouldHandleCookies:!_usesPrivateCookieStore];
  if (hTTPBody)
  {
    [v16 setHTTPBody:hTTPBody];
  }

  if (hTTPBodyStream)
  {
    [v16 setHTTPBodyStream:hTTPBodyStream];
  }

  v82 = hTTPBodyStream;
  if (hTTPMethod)
  {
    [v16 setHTTPMethod:hTTPMethod];
  }

  v80 = requestParameters;
  v81 = hTTPMethod;
  v84 = lCopy;
  if (_usesPrivateCookieStore)
  {
    _requestProperties2 = [(ISURLOperation *)self _requestProperties];
    [_requestProperties2 URLBagType];
    v26 = SSAccountScopeForURLBagType();

    mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
    _accountIdentifier = [(ISURLOperation *)selfCopy _accountIdentifier];
    v29 = [mEMORY[0x277D69CB8] cookieHeadersForURL:lCopy userIdentifier:_accountIdentifier scope:v26];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v92 objects:v103 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v93;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v93 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v92 + 1) + 8 * i);
          v36 = [v30 objectForKey:v35];
          v37 = [v36 copy];
          [v16 addValue:v37 forHTTPHeaderField:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v92 objects:v103 count:16];
      }

      while (v32);
    }
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v38 = hTTPHeaders;
  v39 = [v38 countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v89;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v89 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v88 + 1) + 8 * j);
        v44 = [v38 objectForKey:v43];
        v45 = [v44 copy];
        [v16 setValue:v45 forHTTPHeaderField:v43];
      }

      v40 = [v38 countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v40);
  }

  lCopy = v84;
  self = selfCopy;
LABEL_43:
  v46 = *MEMORY[0x277D6A130];
  copyUserAgent = [v16 valueForHTTPHeaderField:*MEMORY[0x277D6A130]];
  if (!copyUserAgent)
  {
    v49 = +[ISClient currentClient];
    userAgent = [v49 userAgent];

    if (userAgent)
    {
      goto LABEL_46;
    }

    copyUserAgent = [objc_opt_class() copyUserAgent];
    if (!copyUserAgent)
    {
      goto LABEL_49;
    }
  }

  userAgent = copyUserAgent;
LABEL_46:
  userAgentComponents = [_requestProperties userAgentComponents];
  v51 = [userAgentComponents mutableCopy];

  if ([v51 count])
  {
    [v51 insertObject:userAgent atIndex:0];
    v52 = [v51 componentsJoinedByString:@" "];

    userAgent = v52;
  }

  v53 = [userAgent copy];
  [v16 setValue:v53 forHTTPHeaderField:v46];

LABEL_49:
  if (MGGetBoolAnswer())
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v16 setValue:bundleIdentifier forHTTPHeaderField:@"X-Apple-Issuing-Process"];

    clientBundleIdentifier = [_requestProperties clientBundleIdentifier];
    v57 = [clientBundleIdentifier copy];
    [v16 setValue:v57 forHTTPHeaderField:@"X-Apple-Requesting-Process"];

    v58 = -[ISURLOperation _stringForCachePolicy:](self, "_stringForCachePolicy:", [_requestProperties cachePolicy]);
    v59 = [v58 copy];
    [v16 setValue:v59 forHTTPHeaderField:@"X-Apple-NSURLCachePolicy"];
  }

  currentAcceptLanguage = [MEMORY[0x277D69CD8] currentAcceptLanguage];
  v61 = [currentAcceptLanguage copy];
  [v16 setValue:v61 forHTTPHeaderField:@"Accept-Language"];

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:secondsFromGMT];
  stringValue = [v64 stringValue];
  [v16 setValue:stringValue forHTTPHeaderField:@"X-Apple-Tz"];

  dataProvider = [(ISURLOperation *)self dataProvider];
  if ([dataProvider isStream])
  {
    [dataProvider setup];
    streamedBytes = [dataProvider streamedBytes];
    if (streamedBytes >= 1)
    {
      v68 = streamedBytes;
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        shouldLog |= 2u;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        v85 = lCopy;
        v72 = objc_opt_class();
        v87 = v72;
        v73 = objc_opt_class();
        v96 = 138412802;
        v97 = v72;
        v98 = 2112;
        v99 = v73;
        v100 = 2048;
        v101 = v68;
        v74 = v73;
        LODWORD(v79) = 32;
        v75 = _os_log_send_and_compose_impl();

        lCopy = v85;
        if (!v75)
        {
LABEL_63:

          v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"bytes=%lld-", v68];
          [v16 setValue:v76 forHTTPHeaderField:@"Range"];

          goto LABEL_64;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v75 encoding:{4, &v96, v79}];
        free(v75);
        SSFileLog();
      }

      goto LABEL_63;
    }
  }

LABEL_64:

  v77 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)shouldFollowRedirectWithRequest:(id)request returningError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (NSNumber)metricsLoadURLSessionDuration
{
  delegate = [(ISOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ISOperation *)self delegate];
    metricsLoadURLSessionDuration = [delegate2 metricsLoadURLSessionDuration];
  }

  else
  {
    metricsLoadURLSessionDuration = 0;
  }

  return metricsLoadURLSessionDuration;
}

- (NSNumber)metricsLoadURLSamplingPercentage
{
  delegate = [(ISOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ISOperation *)self delegate];
    metricsLoadURLSamplingPercentage = [delegate2 metricsLoadURLSamplingPercentage];
  }

  else
  {
    metricsLoadURLSamplingPercentage = 0;
  }

  return metricsLoadURLSamplingPercentage;
}

- (NSNumber)metricsLoadURLSamplingPercentageCachedResponses
{
  delegate = [(ISOperation *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ISOperation *)self delegate];
    metricsLoadURLSamplingPercentageCachedResponses = [delegate2 metricsLoadURLSamplingPercentageCachedResponses];
  }

  else
  {
    metricsLoadURLSamplingPercentageCachedResponses = 0;
  }

  return metricsLoadURLSamplingPercentageCachedResponses;
}

- (BOOL)shouldDisableCellular
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  shouldDisableCellular = [_requestProperties shouldDisableCellular];

  return shouldDisableCellular;
}

- (BOOL)shouldRequireCellular
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  requiresCellularDataNetwork = [_requestProperties requiresCellularDataNetwork];

  return requiresCellularDataNetwork;
}

- (NSData)sourceAppAuditTokenData
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  clientAuditTokenData = [_requestProperties clientAuditTokenData];

  return clientAuditTokenData;
}

- (NSString)sourceAppBundleID
{
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  clientAuditBundleIdentifier = [_requestProperties clientAuditBundleIdentifier];

  return clientAuditBundleIdentifier;
}

- (NSURLCache)URLCache
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(ISOperation *)self delegate];
    uRLCache = [delegate2 URLCache];

    if (uRLCache)
    {
      delegate3 = [(ISOperation *)self delegate];
      uRLCache2 = [delegate3 URLCache];

      goto LABEL_8;
    }
  }

  else
  {
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ISURLOperation_URLCache__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  if (URLCache_onceToken != -1)
  {
    dispatch_once(&URLCache_onceToken, block);
  }

  uRLCache2 = URLCache_sURLCache;
LABEL_8:

  return uRLCache2;
}

uint64_t __26__ISURLOperation_URLCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [objc_opt_class() _sharedCacheStorageSession];
  if (result)
  {
    v4 = objc_alloc(MEMORY[0x277CCACD8]);
    v5 = *(a1 + 32);
    URLCache_sURLCache = [v4 _initWithExistingCFURLCache:{objc_msgSend(objc_opt_class(), "sharedCFURLCache")}];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (NSString)URLCacheID
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(ISOperation *)self delegate];
    uRLCacheID = [delegate2 URLCacheID];
    v6 = [uRLCacheID length];

    if (v6)
    {
      delegate3 = [(ISOperation *)self delegate];
      uRLCacheID2 = [delegate3 URLCacheID];

      goto LABEL_8;
    }
  }

  else
  {
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ISURLOperation_URLCacheID__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  if (URLCacheID_onceToken != -1)
  {
    dispatch_once(&URLCacheID_onceToken, block);
  }

  uRLCacheID2 = URLCacheID_sURLCacheID;
LABEL_8:

  return uRLCacheID2;
}

uint64_t __28__ISURLOperation_URLCacheID__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() _sharedCacheStorageSession];
  if (result)
  {
    URLCacheID_sURLCacheID = _CFURLStorageSessionCopyIdentifier();

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithEvent:(id)event error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if (([taskCopy isEqual:self->_urlSessionTask] & 1) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      urlSessionTask = self->_urlSessionTask;
      v32 = 138413058;
      v33 = v25;
      v34 = 2114;
      v35 = taskCopy;
      v36 = 2114;
      v37 = urlSessionTask;
      v38 = 2114;
      v39 = errorCopy;
      v27 = v25;
      LODWORD(v30) = 42;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_27:

        goto LABEL_29;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v32, v30}];
      free(v28);
      SSFileLog();
    }

    goto LABEL_27;
  }

  if (!errorCopy)
  {
    [(ISURLOperation *)self _handleFinishedLoading];
    goto LABEL_29;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v12 = shouldLog2 | 2;
  }

  else
  {
    v12 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = objc_opt_class();
  v31 = v15;
  v16 = [(ISURLOperation *)self _sanitizedDescriptionForObject:errorCopy];
  _activeURL = [(ISURLOperation *)self _activeURL];
  [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
  v32 = 138412802;
  v33 = v15;
  v34 = 2112;
  v35 = v16;
  v37 = v36 = 2112;
  LODWORD(v30) = 32;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v32, v30}];
    free(v18);
    SSFileLog();
LABEL_14:
  }

  v19 = ISErrorWithExternalError(errorCopy);
  v20 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v19];
  [(ISOperation *)self setError:v20];

  [(ISURLOperation *)self _stopConnection];
LABEL_29:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didFinishCreatingHTTPArchive:(id)archive
{
  archiveCopy = archive;
  [(ISOperation *)self lock];
  httpArchive = self->_httpArchive;
  self->_httpArchive = archiveCopy;

  [(ISOperation *)self unlock];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->super._delegate);
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      [(ISOperation *)self unlock];
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = objc_loadWeakRetained(&self->super._delegate);
  [(ISOperation *)self unlock];
  if (!v13 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:*MEMORY[0x277CCA700]])
    {
      v15 = [(ISURLOperation *)self _defaultAuthChallengeDispositionForChallenge:challengeCopy];
      credential = 0;
LABEL_48:

      goto LABEL_49;
    }

    _requestProperties = [(ISURLOperation *)self _requestProperties];
    if ([_requestProperties isITunesStoreRequest])
    {

LABEL_14:
      if (([MEMORY[0x277CEE468] QAMode] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEE468], "ignoreServerTrustEvaluation") & 1) != 0 || SSDebugShouldIgnoreExtendedValidation())
      {
        credential = [MEMORY[0x277CCACF0] credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
        v15 = 0;
      }

      else
      {
        credential = 0;
        v15 = 1;
      }

      goto LABEL_48;
    }

    v20 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

    if (v20)
    {
      goto LABEL_14;
    }

    v21 = objc_alloc_init(ISAuthenticationChallengeOperation);
    v43 = [[ISURLAuthenticationChallenge alloc] initWithAuthenticationChallenge:challengeCopy];
    v44 = v21;
    [(ISAuthenticationChallengeOperation *)v21 setChallenge:?];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v25 = shouldLog;
    }

    else
    {
      v25 = shouldLog & 2;
    }

    if (v25)
    {
      v46 = 138412290;
      v47 = objc_opt_class();
      v41 = v47;
      LODWORD(v40) = 12;
      v39 = &v46;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
        goto LABEL_29;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, &v46, v40}];
      free(v26);
      v39 = oSLogObject;
      SSFileLog();
    }

LABEL_29:
    v45 = 0;
    v27 = v44;
    v28 = [(ISOperation *)self runSubOperation:v44 returningError:&v45];
    v29 = v45;
    v30 = v29;
    if (v28)
    {
      credential = [(ISAuthenticationChallengeOperation *)v44 credential];
      v15 = 2 * (credential == 0);
LABEL_44:

      goto LABEL_48;
    }

    v42 = v29;
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v34 = objc_opt_class();
      v46 = 138412290;
      v47 = v34;
      v35 = v34;
      LODWORD(v40) = 12;
      v36 = _os_log_send_and_compose_impl();

      v27 = v44;
      if (!v36)
      {
LABEL_43:

        v30 = v42;
        v37 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v42];
        [(ISOperation *)self setError:v37];

        v15 = [(ISURLOperation *)self _defaultAuthChallengeDispositionForChallenge:challengeCopy];
        credential = 0;
        goto LABEL_44;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v36 encoding:{4, &v46, v40}];
      free(v36);
      SSFileLog();
    }

    goto LABEL_43;
  }

  v14 = [v13 operation:self dispositionForAuthenticationChallenge:challengeCopy];
  if (v14)
  {
    v15 = v14;
LABEL_46:
    credential = 0;
    goto LABEL_49;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_46;
  }

  credential = [v13 operation:self credentialForAuthenticationChallenge:challengeCopy];
  v15 = 0;
LABEL_49:
  handlerCopy[2](handlerCopy, v15, credential);

  v38 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(ISURLOperation *)self isUploadProgressRequested:session])
  {
    [(ISOperation *)self lock];
    progress = self->super._progress;
    if (!progress)
    {
      v12 = objc_alloc_init(MEMORY[0x277D69BE0]);
      v13 = self->super._progress;
      self->super._progress = v12;

      progress = self->super._progress;
    }

    v14 = [(SSOperationProgress *)progress operationType]!= 3 || [(SSOperationProgress *)self->super._progress maxValue]!= send;
    [(SSOperationProgress *)self->super._progress setCanPause:0];
    [(SSOperationProgress *)self->super._progress resetSnapshots];
    [(SSOperationProgress *)self->super._progress setMaxValue:send];
    [(SSOperationProgress *)self->super._progress setCurrentValue:sent];
    [(SSOperationProgress *)self->super._progress setOperationType:3];
    [(SSOperationProgress *)self->super._progress setUnits:1];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      *v24 = 138413058;
      *&v24[4] = objc_opt_class();
      *&v24[12] = 2048;
      *&v24[14] = data;
      *&v24[22] = 2048;
      sentCopy = sent;
      LOWORD(v26) = 2048;
      *(&v26 + 2) = send;
      v19 = *&v24[4];
      LODWORD(v23) = 42;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, v24, v23, *v24, *&v24[16], sentCopy, v26}];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    [(ISOperation *)self unlock];
    if (v14)
    {
      [(ISURLOperation *)self _updateProgress];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v47 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  streamCopy = stream;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v10 = objc_opt_respondsToSelector();

  v11 = 0x277D69000uLL;
  if ((v10 & 1) == 0 || (v12 = objc_loadWeakRetained(&self->super._delegate)) == 0)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v28 = shouldLog | 2;
    }

    else
    {
      v28 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = objc_opt_class();
      v32 = v31;
      v33 = objc_loadWeakRetained(&self->super._delegate);
      *v46 = 138412546;
      *&v46[4] = v31;
      *&v46[12] = 2112;
      *&v46[14] = objc_opt_class();
      v34 = *&v46[14];
      LODWORD(v45) = 22;
      v44 = v46;
      v35 = _os_log_send_and_compose_impl();

      v11 = 0x277D69000uLL;
      if (!v35)
      {
LABEL_29:

        v13 = 0;
        goto LABEL_30;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, v46, v45, *v46, *&v46[8], v47}];
      free(v35);
      v44 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_29;
  }

  v13 = v12;
  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v16 = shouldLog2 | 2;
  }

  else
  {
    v16 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v16;
  }

  else
  {
    v18 = v16 & 2;
  }

  if (v18)
  {
    v19 = objc_opt_class();
    v20 = v19;
    v21 = objc_loadWeakRetained(&self->super._delegate);
    *v46 = 138412546;
    *&v46[4] = v19;
    *&v46[12] = 2112;
    *&v46[14] = objc_opt_class();
    v22 = *&v46[14];
    LODWORD(v45) = 22;
    v44 = v46;
    v23 = _os_log_send_and_compose_impl();

    v11 = 0x277D69000;
    if (!v23)
    {
      goto LABEL_15;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, v46, v45, *v46, *&v46[16], v47}];
    free(v23);
    v44 = oSLogObject2;
    SSFileLog();
  }

LABEL_15:
  currentRequest = [taskCopy currentRequest];
  v25 = [v13 operation:self needNewBodyStream:currentRequest];

  if (!v25)
  {
LABEL_30:
    sharediTunesStoreConfig = [*(v11 + 2872) sharediTunesStoreConfig];
    if (!sharediTunesStoreConfig)
    {
      sharediTunesStoreConfig = [*(v11 + 2872) sharedConfig];
    }

    shouldLog3 = [sharediTunesStoreConfig shouldLog];
    if ([sharediTunesStoreConfig shouldLogToDisk])
    {
      v38 = shouldLog3 | 2;
    }

    else
    {
      v38 = shouldLog3;
    }

    oSLogObject3 = [sharediTunesStoreConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      *v46 = 138412290;
      *&v46[4] = v40;
      v41 = v40;
      LODWORD(v45) = 12;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
LABEL_41:

        [taskCopy cancel];
        v25 = 0;
        goto LABEL_42;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, v46, v45}];
      free(v42);
      SSFileLog();
    }

    goto LABEL_41;
  }

LABEL_42:
  streamCopy[2](streamCopy, v25);

  v43 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v82 = *MEMORY[0x277D85DE8];
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  if (redirectionCopy)
  {
    v13 = redirectionCopy;
    statusCode = [v13 statusCode];
    if ((SSIsInternalBuild() & 1) != 0 || SSIsSeedBuild())
    {
      allHeaderFields = [v13 allHeaderFields];
      v70 = [allHeaderFields objectForKey:*MEMORY[0x277D6A168]];
    }

    else
    {
      v70 = 0;
    }

    v67 = redirectionCopy;
    allHeaderFields2 = [v13 allHeaderFields];
    v69 = [allHeaderFields2 objectForKey:@"X-Apple-Application-Site"];

    v17 = 0x277D69000uLL;
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    v68 = v13;
    if (v22)
    {
      v23 = objc_opt_class();
      v24 = v23;
      logKey = [(ISURLOperation *)self logKey];
      v72 = 138544386;
      v73 = v23;
      v74 = 2114;
      v75 = logKey;
      v76 = 2048;
      v77 = statusCode;
      v78 = 2114;
      v79 = v70;
      v80 = 2114;
      v13 = v68;
      v81 = v69;
      LODWORD(v62) = 52;
      v61 = &v72;
      v26 = _os_log_send_and_compose_impl();

      v17 = 0x277D69000;
      if (v26)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithCString:v26 encoding:{4, &v72, v62}];
        free(v26);
        v61 = v27;
        SSFileLog();
      }
    }

    else
    {
    }

    if (!SSIsInternalBuild())
    {
LABEL_31:
      v71 = 0;
      v41 = [(ISURLOperation *)self _shouldFollowRedirectWithRequest:requestCopy error:&v71, v61];
      v42 = v71;
      if (v41)
      {
        if ([(ISURLOperation *)self _shouldSetCookies]&& [(ISURLOperation *)self _usesPrivateCookieStore])
        {
          _requestProperties = [(ISURLOperation *)self _requestProperties];
          [_requestProperties URLBagType];
          v44 = handlerCopy;
          v45 = SSAccountScopeForURLBagType();

          mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
          _accountIdentifier = [(ISURLOperation *)self _accountIdentifier];
          v48 = v45;
          handlerCopy = v44;
          [mEMORY[0x277D69CB8] setCookiesForHTTPResponse:v13 userIdentifier:_accountIdentifier scope:v48];
        }

        v49 = [(ISURLOperation *)self _handleRedirectRequest:requestCopy response:v13];
        goto LABEL_48;
      }

      sharediTunesStoreConfig = [*(v17 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig)
      {
        sharediTunesStoreConfig = [*(v17 + 2872) sharedConfig];
      }

      shouldLog2 = [sharediTunesStoreConfig shouldLog];
      if ([sharediTunesStoreConfig shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [sharediTunesStoreConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v53 = shouldLog2;
      }

      else
      {
        v53 = shouldLog2 & 2;
      }

      if (v53)
      {
        v54 = objc_opt_class();
        v66 = v54;
        [(ISURLOperation *)self logKey];
        v56 = v55 = handlerCopy;
        v57 = [(ISURLOperation *)self _sanitizedDescriptionForObject:v42];
        v72 = 138543874;
        v73 = v54;
        v74 = 2114;
        v75 = v56;
        v76 = 2112;
        v77 = v57;
        LODWORD(v62) = 32;
        v58 = _os_log_send_and_compose_impl();

        handlerCopy = v55;
        if (!v58)
        {
LABEL_47:

          v59 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v42];
          [(ISOperation *)self setError:v59];

          [(ISOperation *)self cancel];
          v49 = 0;
          v13 = v68;
LABEL_48:

          requestCopy = v49;
          redirectionCopy = v67;
          goto LABEL_49;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v58 encoding:{4, &v72, v62}];
        free(v58);
        SSFileLog();
      }

      goto LABEL_47;
    }

    allHeaderFields3 = [v13 allHeaderFields];
    v29 = [allHeaderFields3 description];

    sharediTunesStoreConfigOversize = [*(v17 + 2872) sharediTunesStoreConfigOversize];
    if (!sharediTunesStoreConfigOversize)
    {
      sharediTunesStoreConfigOversize = [*(v17 + 2872) sharedConfig];
    }

    shouldLog3 = [sharediTunesStoreConfigOversize shouldLog];
    if ([sharediTunesStoreConfigOversize shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [sharediTunesStoreConfigOversize OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = shouldLog3;
    }

    else
    {
      v33 = shouldLog3 & 2;
    }

    if (v33)
    {
      v34 = objc_opt_class();
      v63 = v34;
      [(ISURLOperation *)self logKey];
      v35 = v65 = requestCopy;
      v36 = [v65 URL];
      [(ISURLOperation *)self _sanitizedURLForURL:v36];
      v38 = v37 = v29;
      [(ISURLOperation *)self _sanitizedStringForString:v37];
      v39 = v64 = handlerCopy;
      v72 = 138544130;
      v73 = v34;
      v74 = 2114;
      v75 = v35;
      v76 = 2114;
      v77 = v38;
      v78 = 2114;
      v79 = v39;
      LODWORD(v62) = 42;
      v61 = &v72;
      v40 = _os_log_send_and_compose_impl();

      v17 = 0x277D69000uLL;
      handlerCopy = v64;

      v29 = v37;
      requestCopy = v65;
      v13 = v68;

      if (!v40)
      {
LABEL_30:

        goto LABEL_31;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v40 encoding:{4, &v72, v62}];
      free(v40);
      v61 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_49:
  handlerCopy[2](handlerCopy, requestCopy);

  v60 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  [(ISURLOperation *)self _handleReceivedData:data];
  dataProvider = [(ISURLOperation *)self dataProvider];
  isStream = [dataProvider isStream];

  if (isStream)
  {
    dataProvider2 = [(ISURLOperation *)self dataProvider];
    isStreamComplete = [dataProvider2 isStreamComplete];

    if (isStreamComplete)
    {
      [taskCopy cancel];
      v13 = MEMORY[0x277D69CA8];
      _timingData = [taskCopy _timingData];
      v15 = [v13 eventFromTimingData:_timingData delegate:self session:sessionCopy task:taskCopy error:0];

      [(ISURLOperation *)self URLSession:sessionCopy task:taskCopy didCompleteWithEvent:v15 error:0];
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  [(ISURLOperation *)self _handleReceivedResponse:response];
  handlerCopy[2](handlerCopy, 1);
}

+ (_CFURLCache)sharedCFURLCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ISURLOperation_sharedCFURLCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCFURLCache_sOnce != -1)
  {
    dispatch_once(&sharedCFURLCache_sOnce, block);
  }

  return sharedCFURLCache__shared;
}

uint64_t __34__ISURLOperation_sharedCFURLCache__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _sharedCacheStorageSession])
  {
    v1 = *MEMORY[0x277CBECE8];
    result = _CFURLStorageSessionCopyCache();
    if (!result)
    {
      return result;
    }

    v3 = result;
    CFURLCacheSetDiskCapacity();
    result = CFURLCacheSetMemoryCapacity();
  }

  else
  {
    result = CFURLCacheCopySharedURLCache();
    v3 = result;
  }

  sharedCFURLCache__shared = v3;
  return result;
}

- (SSHTTPArchive)HTTPArchive
{
  [(ISOperation *)self lock];
  v3 = self->_httpArchive;
  [(ISOperation *)self unlock];

  return v3;
}

- (ISURLRequestPerformance)performanceMetrics
{
  [(ISOperation *)self lock];
  v3 = self->_performanceMetrics;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setTracksPerformanceMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  [(ISOperation *)self lock];
  performanceMetrics = self->_performanceMetrics;
  if (metricsCopy)
  {
    if (performanceMetrics)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(ISURLRequestPerformance);
    performanceMetrics = self->_performanceMetrics;
  }

  else
  {
    v6 = 0;
  }

  self->_performanceMetrics = v6;

LABEL_6:

  [(ISOperation *)self unlock];
}

- (BOOL)tracksPerformanceMetrics
{
  [(ISOperation *)self lock];
  v3 = self->_performanceMetrics != 0;
  [(ISOperation *)self unlock];
  return v3;
}

- (id)_accountIdentifier
{
  v68 = *MEMORY[0x277D85DE8];
  logKey = [(ISURLOperation *)self logKey];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_class();
  v10 = v9;
  requestProperties = [(ISURLOperation *)self requestProperties];
  v12 = [requestProperties URL];
  *v66 = 138543874;
  *&v66[4] = v9;
  *&v66[12] = 2114;
  *&v66[14] = logKey;
  *&v66[22] = 2114;
  v67 = v12;
  LODWORD(v65) = 32;
  v64 = v66;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, v66, v65}];
    free(v13);
    v64 = oSLogObject;
    SSFileLog();
LABEL_12:
  }

  _accountDSIDOverride = [(ISURLOperation *)self _accountDSIDOverride];
  if (_accountDSIDOverride)
  {
    v15 = _accountDSIDOverride;
    _accountDSIDOverride2 = [(ISURLOperation *)self _accountDSIDOverride];
    v17 = [_accountDSIDOverride2 isEqualToNumber:&unk_2884CA8C0];

    if ((v17 & 1) == 0)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38]2)
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        v40 = shouldLog2 | 2;
      }

      else
      {
        v40 = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v40;
      }

      else
      {
        v42 = v40 & 2;
      }

      if (v42)
      {
        v43 = objc_opt_class();
        v44 = v43;
        _accountDSIDOverride3 = [(ISURLOperation *)self _accountDSIDOverride];
        stringValue = [_accountDSIDOverride3 stringValue];
        v47 = SSHashIfNeeded();
        *v66 = 138543874;
        *&v66[4] = v43;
        *&v66[12] = 2114;
        *&v66[14] = logKey;
        *&v66[22] = 2114;
        v67 = v47;
        LODWORD(v65) = 32;
        v48 = _os_log_send_and_compose_impl();

        if (!v48)
        {
LABEL_52:

          _accountDSIDOverride4 = [(ISURLOperation *)self _accountDSIDOverride];
          goto LABEL_83;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v48 encoding:{4, v66, v65}];
        free(v48);
        SSFileLog();
      }

      goto LABEL_52;
    }
  }

  authenticatedAccountDSID = [(ISOperation *)self authenticatedAccountDSID];
  uniqueIdentifier = authenticatedAccountDSID;
  if (authenticatedAccountDSID && [authenticatedAccountDSID unsignedLongLongValue])
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v22 = shouldLog3 | 2;
    }

    else
    {
      v22 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (!v24)
    {
      goto LABEL_80;
    }

    goto LABEL_26;
  }

  authenticationContext = [(ISURLOperation *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

  if (requiredUniqueIdentifier && [requiredUniqueIdentifier unsignedLongLongValue])
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v33 = shouldLog4;
    }

    else
    {
      v33 = shouldLog4 & 2;
    }

    if (!v33)
    {
      uniqueIdentifier = requiredUniqueIdentifier;
      goto LABEL_80;
    }

    v34 = objc_opt_class();
    v35 = v34;
    stringValue2 = [requiredUniqueIdentifier stringValue];
    v37 = SSHashIfNeeded();
    *v66 = 138543874;
    *&v66[4] = v34;
    *&v66[12] = 2114;
    *&v66[14] = logKey;
    *&v66[22] = 2114;
    v67 = v37;
    LODWORD(v65) = 32;
    v29 = _os_log_send_and_compose_impl();

    uniqueIdentifier = requiredUniqueIdentifier;
    if (!v29)
    {
LABEL_81:

      uniqueIdentifier = uniqueIdentifier;
      _accountDSIDOverride4 = uniqueIdentifier;
      goto LABEL_82;
    }

LABEL_39:
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, v66, v65, *v66, *&v66[16], v67}];
    free(v29);
    SSFileLog();
LABEL_80:

    goto LABEL_81;
  }

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [_requestProperties URLBagType];
  v51 = SSAccountScopeForURLBagType();

  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  v53 = defaultStore;
  if (v51 == 1)
  {
    activeSandboxAccount = [defaultStore activeSandboxAccount];
    uniqueIdentifier = [activeSandboxAccount uniqueIdentifier];

    if (uniqueIdentifier && [uniqueIdentifier unsignedLongLongValue])
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog5 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v56 = shouldLog5 | 2;
      }

      else
      {
        v56 = shouldLog5;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
      }

      else
      {
        v57 = v56 & 2;
      }

      if (!v57)
      {
        goto LABEL_80;
      }

      goto LABEL_26;
    }
  }

  else
  {
    activeAccount = [defaultStore activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    if (uniqueIdentifier && [uniqueIdentifier unsignedLongLongValue])
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog6 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        v60 = shouldLog6 | 2;
      }

      else
      {
        v60 = shouldLog6;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 2;
      }

      if (!v61)
      {
        goto LABEL_80;
      }

LABEL_26:
      v25 = objc_opt_class();
      v26 = v25;
      stringValue3 = [uniqueIdentifier stringValue];
      v28 = SSHashIfNeeded();
      *v66 = 138543874;
      *&v66[4] = v25;
      *&v66[12] = 2114;
      *&v66[14] = logKey;
      *&v66[22] = 2114;
      v67 = v28;
      LODWORD(v65) = 32;
      v29 = _os_log_send_and_compose_impl();

      if (!v29)
      {
        goto LABEL_81;
      }

      goto LABEL_39;
    }
  }

  _accountDSIDOverride4 = 0;
LABEL_82:

LABEL_83:
  v62 = *MEMORY[0x277D85DE8];

  return _accountDSIDOverride4;
}

- (id)_copyAuthenticationContext
{
  authenticationContext = [(ISURLOperation *)self authenticationContext];
  v3 = [authenticationContext mutableCopy];

  return v3;
}

- (BOOL)_processResponseData:(id)data error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (id)_requestProperties
{
  [(ISOperation *)self lock];
  v3 = self->_requestProperties;
  [(ISOperation *)self unlock];

  return v3;
}

- (id)_sanitizedDescriptionForObject:(id)object
{
  v4 = [object description];
  v5 = [(ISURLOperation *)self _sanitizedStringForString:v4];

  return v5;
}

- (id)_sanitizedStringForString:(id)string
{
  stringCopy = string;
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = objc_opt_respondsToSelector();

  v7 = stringCopy;
  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->super._delegate);
    v7 = [v8 operation:self sanitizedStringForString:stringCopy];
  }

  [(ISOperation *)self unlock];

  return v7;
}

- (id)_sanitizedURLForURL:(id)l
{
  lCopy = l;
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = objc_opt_respondsToSelector();

  v7 = lCopy;
  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->super._delegate);
    absoluteString = [lCopy absoluteString];
    v7 = [v8 operation:self sanitizedStringForString:absoluteString];
  }

  [(ISOperation *)self unlock];

  return v7;
}

- (void)_handleFinishedLoading
{
  v87 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ISURLRequestPerformance *)self->_performanceMetrics setFinishTime:?];
    v4 = self->_performanceMetrics;
  }

  else
  {
    v4 = 0;
    Current = 0.0;
  }

  [(ISOperation *)self unlock];
  if (([(ISURLOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_71;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (v4)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = v11;
      logKey = [(ISURLOperation *)self logKey];
      [(ISURLRequestPerformance *)v4 finishInterval];
      v15 = v14;
      _activeURL = [(ISURLOperation *)self _activeURL];
      v17 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
      *v84 = 138544386;
      *&v84[4] = v11;
      *&v84[12] = 2114;
      *&v84[14] = logKey;
      *&v84[22] = 2048;
      v85 = *&Current;
      *v86 = 2048;
      *&v86[2] = v15;
      *&v86[10] = 2112;
      *&v86[12] = v17;
      LODWORD(v62) = 52;
      v61 = v84;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v21 = shouldLog2 | 2;
  }

  else
  {
    v21 = shouldLog2;
  }

  oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 & 2;
  }

  if (!v22)
  {
LABEL_28:

    goto LABEL_29;
  }

  v23 = objc_opt_class();
  v24 = v23;
  logKey2 = [(ISURLOperation *)self logKey];
  _activeURL2 = [(ISURLOperation *)self _activeURL];
  v27 = [(ISURLOperation *)self _sanitizedURLForURL:_activeURL2];
  *v84 = 138543874;
  *&v84[4] = v23;
  *&v84[12] = 2114;
  *&v84[14] = logKey2;
  *&v84[22] = 2112;
  v85 = v27;
  LODWORD(v62) = 32;
  v61 = v84;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
LABEL_16:
    v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, v84, v62}];
    free(v18);
    v61 = v19;
    SSFileLog();
  }

LABEL_29:

  dataProvider = [(ISURLOperation *)self dataProvider];
  *v84 = 0;
  *&v84[8] = v84;
  *&v84[16] = 0x3032000000;
  v85 = __Block_byref_object_copy__2;
  *v86 = __Block_byref_object_dispose__2;
  *&v86[8] = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__2;
  v78 = __Block_byref_object_dispose__2;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  dataBufferAccessQueue = self->_dataBufferAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ISURLOperation__handleFinishedLoading__block_invoke;
  block[3] = &unk_27A6709B8;
  v67 = v84;
  v30 = dataProvider;
  v65 = v30;
  selfCopy = self;
  v68 = &v70;
  v69 = &v74;
  dispatch_sync(dataBufferAccessQueue, block);
  v31 = *(v71 + 24);
  if ((v31 & 1) == 0)
  {
    if ([v30 errorHandlerResponseType] == 2)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
      shouldLogToDisk = [mEMORY[0x277D69B38]3 shouldLogToDisk];
      oSLogObject2 = [mEMORY[0x277D69B38]3 OSLogObject];
      v50 = oSLogObject2;
      if (shouldLogToDisk)
      {
        shouldLog3 |= 2u;
      }

      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v51 = shouldLog3;
      }

      else
      {
        v51 = shouldLog3 & 2;
      }

      if (v51)
      {
        v52 = objc_opt_class();
        v53 = [(ISURLOperation *)self _sanitizedDescriptionForObject:*(*&v84[8] + 40)];
        v80 = 138412546;
        v81 = v52;
        v82 = 2112;
        v83 = v53;
        LODWORD(v62) = 22;
        v61 = &v80;
        v54 = _os_log_send_and_compose_impl();

        if (!v54)
        {
          goto LABEL_56;
        }

        v50 = [MEMORY[0x277CCACA8] stringWithCString:v54 encoding:{4, &v80, v62}];
        free(v54);
        v61 = v50;
        SSFileLog();
      }

      goto LABEL_56;
    }

    if (SSDebugShouldLogResponseBodies())
    {
      response = [(ISURLOperation *)self response];
      [(ISURLOperation *)self _logResponseBody:response];
    }

    [(ISOperation *)self setError:*(*&v84[8] + 40), v61];
    goto LABEL_68;
  }

  redirectURL = [v30 redirectURL];
  v33 = redirectURL == 0;

  if (v33)
  {
    if (v30)
    {
      output = [v30 output];
      [(ISURLOperation *)self _sendOutputToDelegate:output];
    }

    else
    {
      [(ISURLOperation *)self _sendOutputToDelegate:v75[5]];
    }

    if (SSDebugShouldLogResponseBodies() && ([v30 isStream] & 1) == 0)
    {
      response2 = [(ISURLOperation *)self response];
      [(ISURLOperation *)self _logResponseBody:response2];
    }

    [(ISOperation *)self setSuccess:1, v61];
LABEL_68:
    v55 = 0;
    goto LABEL_69;
  }

  redirectURLs = self->_redirectURLs;
  redirectURL2 = [v30 redirectURL];
  LODWORD(redirectURLs) = [(NSCountedSet *)redirectURLs countForObject:redirectURL2]> 4;

  if (redirectURLs)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    shouldLogToDisk2 = [mEMORY[0x277D69B38]4 shouldLogToDisk];
    oSLogObject3 = [mEMORY[0x277D69B38]4 OSLogObject];
    v40 = oSLogObject3;
    if (shouldLogToDisk2)
    {
      shouldLog4 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v41 = shouldLog4;
    }

    else
    {
      v41 = shouldLog4 & 2;
    }

    if (v41)
    {
      v42 = objc_opt_class();
      redirectURL3 = [v30 redirectURL];
      v44 = [(ISURLOperation *)self _sanitizedURLForURL:redirectURL3];
      v80 = 138412546;
      v81 = v42;
      v82 = 2112;
      v83 = v44;
      LODWORD(v62) = 22;
      v61 = &v80;
      v45 = _os_log_send_and_compose_impl();

      if (!v45)
      {
LABEL_43:

        mEMORY[0x277D69B38]3 = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:109];
        [(ISOperation *)self setError:mEMORY[0x277D69B38]3];
LABEL_56:

        v55 = v31 ^ 1;
        goto LABEL_69;
      }

      v40 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:{4, &v80, v62}];
      free(v45);
      v61 = v40;
      SSFileLog();
    }

    goto LABEL_43;
  }

  v58 = *&v84[8];
  obj = *(*&v84[8] + 40);
  v55 = [(ISURLOperation *)self handleRedirectFromDataProvider:v30 error:&obj];
  objc_storeStrong((v58 + 40), obj);
  [(ISOperation *)self setError:*(*&v84[8] + 40)];
LABEL_69:

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(v84, 8);
  if ((v55 & 1) == 0)
  {
LABEL_71:
    [(ISOperation *)self stopRunLoop];
    goto LABEL_72;
  }

  [(ISURLOperation *)self _retry];
LABEL_72:

  v60 = *MEMORY[0x277D85DE8];
}

void __40__ISURLOperation__handleFinishedLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) closeStream];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 40) error];

    if (!v5)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      if (([v9 isStream] & 1) == 0)
      {
        v10 = *(a1 + 40);
        v11 = v10[43];
        v12 = *(*(a1 + 48) + 8);
        obj = *(v12 + 40);
        v13 = [v10 _processResponseData:v11 error:&obj];
        objc_storeStrong((v12 + 40), obj);
        *(*(*(a1 + 56) + 8) + 24) = v13;
        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          [*(a1 + 40) lock];
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 248));
          v15 = objc_opt_respondsToSelector();

          v16 = *(a1 + 40);
          if (v15)
          {
            v17 = objc_loadWeakRetained(v16 + 31);
            [*(a1 + 40) unlock];
            if (v17)
            {
              v18 = *(a1 + 40);
              v19 = *(v18 + 344);
              v20 = *(*(a1 + 48) + 8);
              v31 = *(v20 + 40);
              v21 = [v17 operation:v18 processData:v19 error:&v31];
              objc_storeStrong((v20 + 40), v31);
              *(*(*(a1 + 56) + 8) + 24) = v21;
            }
          }

          else
          {
            [v16 unlock];
          }

          if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            v22 = [*(a1 + 40) _decodedDataForData:*(*(a1 + 40) + 344)];
            v23 = *(*(a1 + 64) + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            v25 = *(a1 + 32);
            v26 = [*(a1 + 40) response];
            [v25 setResponse:v26];

            v27 = *(a1 + 32);
            v28 = *(*(*(a1 + 64) + 8) + 40);
            v29 = *(*(a1 + 48) + 8);
            v30 = *(v29 + 40);
            LOBYTE(v26) = [v27 parseData:v28 returningError:&v30];
            objc_storeStrong((v29 + 40), v30);
            *(*(*(a1 + 56) + 8) + 24) = v26;
          }
        }
      }
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = [*(*(a1 + 40) + 344) copy];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)_handleReceivedData:(id)data
{
  dataCopy = data;
  if (([(ISURLOperation *)self isCancelled]& 1) == 0)
  {
    dataProvider = [(ISURLOperation *)self dataProvider];
    if ([dataProvider isStream])
    {
      v10 = 0;
      v6 = [dataProvider parseData:dataCopy returningError:&v10];
      v7 = v10;
      if ((v6 & 1) == 0)
      {
        v8 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v7];
        [(ISOperation *)self setError:v8];

        [(ISURLOperation *)self _stopConnection];
      }
    }

    else
    {
      dataBufferAccessQueue = self->_dataBufferAccessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__ISURLOperation__handleReceivedData___block_invoke;
      block[3] = &unk_27A670868;
      v12 = dataCopy;
      selfCopy = self;
      dispatch_sync(dataBufferAccessQueue, block);
      v7 = v12;
    }
  }
}

uint64_t __38__ISURLOperation__handleReceivedData___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(*(result + 40) + 344) appendData:?];
  }

  return result;
}

- (void)_handleReceivedResponse:(id)response
{
  v107 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(ISOperation *)self lock];
  [(ISURLRequestPerformance *)self->_performanceMetrics setReceivedResponseTime:CFAbsoluteTimeGetCurrent()];
  [(ISURLRequestPerformance *)self->_performanceMetrics setURLResponse:responseCopy];
  v7 = self->_performanceMetrics;
  [(ISOperation *)self unlock];
  if (!v6)
  {
    statusCode = 200;
    goto LABEL_52;
  }

  statusCode = [v6 statusCode];
  if ((SSIsInternalBuild() & 1) != 0 || SSIsSeedBuild())
  {
    itunes_allHeaderFields = [responseCopy itunes_allHeaderFields];
    v92 = [itunes_allHeaderFields objectForKey:*MEMORY[0x277D6A168]];
  }

  else
  {
    v92 = 0;
  }

  allHeaderFields = [v6 allHeaderFields];
  v91 = [allHeaderFields objectForKey:@"X-Apple-Application-Site"];

  v11 = 0x277D69000uLL;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  v89 = v7;
  if (v7)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = shouldLog;
    }

    else
    {
      v16 = shouldLog & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = v17;
      [(ISURLOperation *)self logKey];
      v20 = v19 = statusCode;
      [(ISURLRequestPerformance *)v89 receivedResponseInterval];
      v97 = 138544642;
      v98 = v17;
      v99 = 2114;
      *v100 = v20;
      *&v100[8] = 2048;
      *&v100[10] = v21;
      v101 = 2048;
      v102 = v19;
      v103 = 2114;
      v104 = v92;
      v105 = 2114;
      v106 = v91;
      LODWORD(v82) = 62;
      v80 = &v97;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v97, v82}];
        free(v22);
        v80 = v23;
        SSFileLog();
      }

      statusCode = v19;
LABEL_32:
      v11 = 0x277D69000;
      goto LABEL_34;
    }
  }

  else
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v25 = objc_opt_class();
      v26 = v25;
      logKey = [(ISURLOperation *)self logKey];
      v28 = statusCode;
      v29 = logKey;
      v97 = 138544386;
      v98 = v25;
      v99 = 2114;
      *v100 = logKey;
      *&v100[8] = 2048;
      v30 = v28;
      *&v100[10] = v28;
      v101 = 2114;
      v102 = v92;
      v103 = 2114;
      v104 = v91;
      LODWORD(v82) = 52;
      v80 = &v97;
      v31 = _os_log_send_and_compose_impl();

      if (v31)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v97, v82}];
        free(v31);
        v80 = v32;
        SSFileLog();
      }

      statusCode = v30;
      goto LABEL_32;
    }
  }

LABEL_34:
  if (!SSIsInternalBuild())
  {
    goto LABEL_48;
  }

  v85 = statusCode;
  allHeaderFields2 = [v6 allHeaderFields];
  v34 = [allHeaderFields2 description];

  sharediTunesStoreConfig = [*(v11 + 2872) sharediTunesStoreConfig];
  if (!sharediTunesStoreConfig)
  {
    sharediTunesStoreConfig = [*(v11 + 2872) sharedConfig];
  }

  shouldLog3 = [sharediTunesStoreConfig shouldLog];
  if ([sharediTunesStoreConfig shouldLogToDisk])
  {
    v37 = shouldLog3 | 2;
  }

  else
  {
    v37 = shouldLog3;
  }

  oSLogObject2 = [sharediTunesStoreConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 & 2;
  }

  if (!v39)
  {
    goto LABEL_46;
  }

  v40 = objc_opt_class();
  v83 = v40;
  [(ISURLOperation *)self logKey];
  v41 = v84 = v34;
  v42 = [responseCopy URL];
  v43 = [(ISURLOperation *)self _sanitizedURLForURL:v42];
  [(ISURLOperation *)self _sanitizedStringForString:v84];
  v44 = v86 = v6;
  v97 = 138544130;
  v98 = v40;
  v99 = 2114;
  *v100 = v41;
  *&v100[8] = 2112;
  *&v100[10] = v43;
  v101 = 2112;
  v102 = v44;
  LODWORD(v82) = 42;
  v80 = &v97;
  v45 = _os_log_send_and_compose_impl();

  v6 = v86;
  v34 = v84;

  if (v45)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:{4, &v97, v82}];
    free(v45);
    v80 = oSLogObject2;
    SSFileLog();
LABEL_46:
  }

  statusCode = v85;
LABEL_48:
  v7 = v89;
  if ([(ISURLOperation *)self _shouldSetCookies]&& [(ISURLOperation *)self _usesPrivateCookieStore])
  {
    _requestProperties = [(ISURLOperation *)self _requestProperties];
    [_requestProperties URLBagType];
    v47 = SSAccountScopeForURLBagType();

    mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
    [(ISURLOperation *)self _accountIdentifier];
    v50 = v49 = v6;
    [mEMORY[0x277D69CB8] setCookiesForHTTPResponse:v49 userIdentifier:v50 scope:v47];

    v6 = v49;
  }

LABEL_52:
  [(ISURLOperation *)self setResponse:responseCopy];
  dataBufferAccessQueue = self->_dataBufferAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ISURLOperation__handleReceivedResponse___block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_sync(dataBufferAccessQueue, block);
  [(ISURLOperation *)self handleResponse:responseCopy];
  [(ISURLOperation *)self _sendResponseToDelegate:responseCopy];
  if (![(ISURLOperation *)self _isPassThroughStatus:statusCode]&& statusCode != 416 && (statusCode - 1000) >= 0xFFFFFFFFFFFFFDA8 && ![(ISURLOperation *)self _loadsHTTPFailures])
  {
    dataProvider = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:109];
    v56 = *MEMORY[0x277D6A118];
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
    v58 = SSErrorBySettingUserInfoValue();
    [(ISOperation *)self setError:v58];

    [(ISURLOperation *)self _stopConnection];
LABEL_95:

    goto LABEL_96;
  }

  if (([(ISURLOperation *)self isCancelled]& 1) == 0)
  {
    itunes_maxExpectedContentLength = [responseCopy itunes_maxExpectedContentLength];
    dataProvider = [(ISURLOperation *)self dataProvider];
    [dataProvider setContentLength:itunes_maxExpectedContentLength];
    mIMEType = [responseCopy MIMEType];
    [dataProvider setContentType:mIMEType];

    [dataProvider setup];
    if (statusCode == 416)
    {
      itunes_maxExpectedContentLength = [dataProvider streamedBytes];
LABEL_59:
      v55 = 1;
      goto LABEL_78;
    }

    if ([dataProvider isStream] && itunes_maxExpectedContentLength > 0 && objc_msgSend(dataProvider, "streamedBytes") == itunes_maxExpectedContentLength)
    {
      goto LABEL_59;
    }

    v55 = 0;
    if ([dataProvider streamedBytes] < 1 || statusCode == 206)
    {
LABEL_78:
      [(ISURLOperation *)self _sendContentLengthToDelegate:itunes_maxExpectedContentLength, v80];
      [(SSOperationProgress *)self->super._progress setCanPause:1];
      [(SSOperationProgress *)self->super._progress resetSnapshots];
      [(SSOperationProgress *)self->super._progress setMaxValue:itunes_maxExpectedContentLength];
      [(SSOperationProgress *)self->super._progress setOperationType:2];
      [(SSOperationProgress *)self->super._progress setUnits:1];
      [(ISURLOperation *)self _updateProgress];
      if (!v55)
      {
        v95 = 0;
        v77 = [(ISURLOperation *)self _validateContentLength:itunes_maxExpectedContentLength error:&v95];
        v76 = v95;
        if (v77)
        {
LABEL_94:

          goto LABEL_95;
        }

        v78 = [(ISURLOperation *)self _errorWithDefaultStringsForError:v76];
        [(ISOperation *)self setError:v78];

LABEL_93:
        [(ISURLOperation *)self _stopConnection];
        goto LABEL_94;
      }

      v88 = v6;
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38]3)
      {
        mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog4 = [mEMORY[0x277D69B38]3 shouldLog];
      if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v70 = shouldLog4;
      }

      else
      {
        v70 = shouldLog4 & 2;
      }

      if (v70)
      {
        v71 = objc_opt_class();
        v94 = v71;
        [responseCopy URL];
        v73 = v72 = v7;
        v74 = [(ISURLOperation *)self _sanitizedURLForURL:v73];
        v97 = 138412546;
        v98 = v71;
        v99 = 2112;
        *v100 = v74;
        LODWORD(v82) = 22;
        v81 = &v97;
        v75 = _os_log_send_and_compose_impl();

        v7 = v72;
        if (!v75)
        {
LABEL_90:

          [(ISOperation *)self setSuccess:1];
          v76 = 0;
          v6 = v88;
          goto LABEL_93;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v75 encoding:{4, &v97, v82}];
        free(v75);
        v81 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_90;
    }

    v87 = v6;
    v90 = v7;
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog5 = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v62 = shouldLog5;
    }

    else
    {
      v62 = shouldLog5 & 2;
    }

    if (v62)
    {
      v63 = objc_opt_class();
      v93 = v63;
      v64 = [responseCopy URL];
      v65 = [(ISURLOperation *)self _sanitizedURLForURL:v64];
      v97 = 138412802;
      v98 = v63;
      v99 = 1024;
      *v100 = 206;
      *&v100[4] = 2112;
      *&v100[6] = v65;
      LODWORD(v82) = 28;
      v80 = &v97;
      v66 = _os_log_send_and_compose_impl();

      if (!v66)
      {
LABEL_77:

        [dataProvider resetStream];
        v55 = 0;
        v6 = v87;
        v7 = v90;
        goto LABEL_78;
      }

      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v66 encoding:{4, &v97, v82}];
      free(v66);
      v80 = oSLogObject4;
      SSFileLog();
    }

    goto LABEL_77;
  }

LABEL_96:

  v79 = *MEMORY[0x277D85DE8];
}

uint64_t __42__ISURLOperation__handleReceivedResponse___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 344);
  *(v3 + 344) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_handleRedirectRequest:(id)request response:(id)response
{
  v41[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  v8 = self->_activeURLRequest;
  v9 = [requestCopy mutableCopy];
  _usesPrivateCookieStore = [(ISURLOperation *)self _usesPrivateCookieStore];
  [v9 setHTTPShouldHandleCookies:!_usesPrivateCookieStore];
  hTTPBody = [(NSURLRequest *)v8 HTTPBody];
  if (hTTPBody)
  {
    [v9 setHTTPBody:hTTPBody];
  }

  v35 = responseCopy;
  hTTPMethod = [(NSURLRequest *)v8 HTTPMethod];

  if (hTTPMethod)
  {
    [v9 setHTTPMethod:hTTPMethod];
  }

  v34 = v8;
  allHTTPHeaderFields = [(NSURLRequest *)v8 allHTTPHeaderFields];
  v41[0] = @"Content-Type";
  v14 = 0;
  v41[1] = *MEMORY[0x277D6A150];
  v41[2] = @"X-Apple-Client-Address";
  do
  {
    v15 = hTTPMethod;
    v16 = v41[v14];
    hTTPMethod = ISDictionaryValueForCaseInsensitiveString(allHTTPHeaderFields, v16);

    if (hTTPMethod)
    {
      [v9 setValue:hTTPMethod forHTTPHeaderField:v16];
    }

    ++v14;
  }

  while (v14 != 3);
  if (_usesPrivateCookieStore)
  {
    _requestProperties = [(ISURLOperation *)self _requestProperties];
    [_requestProperties URLBagType];
    v18 = SSAccountScopeForURLBagType();

    mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
    v33 = requestCopy;
    v20 = [requestCopy URL];
    _accountIdentifier = [(ISURLOperation *)self _accountIdentifier];
    v22 = [mEMORY[0x277D69CB8] cookieHeadersForURL:v20 userIdentifier:_accountIdentifier scope:v18];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v36 + 1) + 8 * i);
          v29 = [v23 objectForKey:v28];
          [v9 setValue:v29 forHTTPHeaderField:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v25);
    }

    requestCopy = v33;
  }

  [(ISURLOperation *)self _willSendRequest:v9];
  [(ISURLOperation *)self _setActiveURLRequest:v9];
  [(ISURLOperation *)self setResponse:v35];
  for (j = 2; j != -1; --j)
  {
  }

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_copyConnectionPropertiesWithDataConnectionServiceType:(__CFString *)type
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:0x40000];
  v7 = *MEMORY[0x277CBAF00];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v9 = [v5 initWithObjectsAndKeys:{v6, v7, v8, *MEMORY[0x277CBAEF0], 0}];

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  shouldDisableCellular = [_requestProperties shouldDisableCellular];
  v12 = MEMORY[0x277CBED28];
  if (shouldDisableCellular)
  {
    v13 = MEMORY[0x277CBAE40];
    v14 = MEMORY[0x277CBED28];
  }

  else
  {
    if (![_requestProperties shouldDisableCellularFallback])
    {
      if (([_requestProperties isLargeDownload] & 1) == 0)
      {
        if (!type)
        {
          v15 = 0;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_9:
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      goto LABEL_10;
    }

    v13 = MEMORY[0x277CBADB0];
    v14 = MEMORY[0x277CBED10];
  }

  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{*v14, *v13, 0}];
  if (([_requestProperties isLargeDownload] & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v15 setObject:*v12 forKey:*MEMORY[0x277CBAC90]];
LABEL_11:
  if (type)
  {
    if (v15)
    {
LABEL_16:
      [v15 setObject:type forKey:*MEMORY[0x277CBADD0]];
      [v15 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBADD8]];
      goto LABEL_17;
    }

LABEL_15:
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_16;
  }

LABEL_17:
  clientAuditBundleIdentifier = [_requestProperties clientAuditBundleIdentifier];
  clientAuditTokenData = [_requestProperties clientAuditTokenData];
  v18 = clientAuditTokenData;
  if (clientAuditBundleIdentifier || [clientAuditTokenData length] == 32)
  {
    if (v15)
    {
      v19 = [v15 mutableCopy];
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    }

    v20 = v19;
    if (clientAuditBundleIdentifier)
    {
      v21 = *MEMORY[0x277CBAE78];
      v22 = clientAuditBundleIdentifier;
    }

    else
    {
      v21 = *MEMORY[0x277CBAE70];
      v22 = v18;
    }

    [v19 setObject:v22 forKey:v21];
  }

  else
  {
    v20 = v15;
  }

  v23 = objc_alloc(MEMORY[0x277CBEAC0]);
  v24 = [v23 initWithObjectsAndKeys:{v9, *MEMORY[0x277CBAF08], v20, *MEMORY[0x277CBAEF8], 0}];

  return v24;
}

- (id)_copyQueryStringDictionaryForRedirect:(id)redirect
{
  v20 = *MEMORY[0x277D85DE8];
  redirectCopy = redirect;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  requestParameters = [_requestProperties requestParameters];
  v7 = [requestParameters mutableCopy];

  if ([v7 count])
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [redirectCopy copyQueryStringDictionaryWithUnescapedValues:0];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 removeObjectForKey:{*(*(&v15 + 1) + 8 * v12++), v15}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_decodedDataForData:(id)data
{
  dataCopy = data;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  shouldDecodeResponse = [_requestProperties shouldDecodeResponse];

  v7 = dataCopy;
  if ((shouldDecodeResponse & 1) == 0)
  {
    response = [(ISURLOperation *)self response];
    v9 = [response _iTunesStore_valueForHTTPHeader:@"Content-Encoding"];
    v10 = v9;
    v7 = dataCopy;
    if (v9)
    {
      v7 = dataCopy;
      if (![v9 caseInsensitiveCompare:@"gzip"])
      {
        v11 = ISCopyDecompressedGZipDataForData();
        v12 = v11;
        v7 = dataCopy;
        if (v11)
        {
          v7 = v11;
        }
      }
    }
  }

  return v7;
}

- (int64_t)_defaultAuthChallengeDispositionForChallenge:(id)challenge
{
  v28 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  sender = [challengeCopy sender];
  v6 = objc_opt_respondsToSelector();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if ((v6 & 1) == 0)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      v20 = v19;
      [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
      v24 = 138412546;
      v25 = v19;
      v27 = v26 = 2112;
      LODWORD(v23) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_25;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v24, v23}];
      free(v15);
      SSFileLog();
    }

    v15 = 0;
    goto LABEL_25;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v10 = shouldLog2 | 2;
  }

  else
  {
    v10 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  v13 = v12;
  [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
  v24 = 138412546;
  v25 = v12;
  v27 = v26 = 2112;
  LODWORD(v23) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v24, v23}];
    free(v14);
    SSFileLog();
LABEL_12:
  }

  v15 = 1;
LABEL_25:

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_errorWithDefaultStringsForError:(id)error
{
  errorCopy = error;
  v5 = *MEMORY[0x277D6A110];
  v6 = SSError();
  localizedDescription = [v6 localizedDescription];
  localizedDescription2 = [errorCopy localizedDescription];
  v9 = [localizedDescription isEqualToString:localizedDescription2];

  if (v9)
  {
    domain = [errorCopy domain];
    v11 = -[ISURLOperation _errorWithDomain:code:](self, "_errorWithDomain:code:", domain, [errorCopy code]);

    v12 = *MEMORY[0x277CCA450];
    localizedDescription3 = [v11 localizedDescription];
    v14 = SSErrorBySettingUserInfoValue();

    v6 = v11;
  }

  else
  {
    v14 = errorCopy;
  }

  return v14;
}

- (id)_errorWithDomain:(id)domain code:(int64_t)code
{
  domainCopy = domain;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  if ([_requestProperties isITunesStoreRequest])
  {
    host = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [host localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2884BCFD0 table:0];
LABEL_5:
    v13 = SSError();
    goto LABEL_6;
  }

  _activeURL = [(ISURLOperation *)self _activeURL];
  host = [_activeURL host];

  if ([host length])
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CANNOT_CONNECT_TO_HOST_%@" value:&stru_2884BCFD0 table:0];
    v8 = [v10 initWithFormat:v12, host];

    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v8 localizedStringForKey:@"CANNOT_CONNECT" value:&stru_2884BCFD0 table:0];
  v13 = SSError();

LABEL_6:

  return v13;
}

- (BOOL)_isExternalURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [[ISURLResolverOperation alloc] initWithURL:lCopy];
  [(ISOperation *)self runSubOperation:v5 returningError:0];
  if ([(ISOperation *)v5 success])
  {
    [(ISURLResolverOperation *)v5 resolvedAddresses];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v22 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = *MEMORY[0x277CBECE8];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = SCNetworkReachabilityCreateWithAddress(v10, [*(*(&v19 + 1) + 8 * i) bytes]);
          if (v12)
          {
            v13 = v12;
            flags = 0;
            SCNetworkReachabilityGetFlags(v12, &flags);
            v14 = flags;
            CFRelease(v13);
            if ((v14 & 0x10000) != 0)
            {
              v15 = 0;
              goto LABEL_14;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_14:
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_isPassThroughStatus:(int64_t)status
{
  passThroughErrors = [(ISURLOperation *)self passThroughErrors];

  if (!passThroughErrors)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  passThroughErrors2 = [(ISURLOperation *)self passThroughErrors];
  v8 = [passThroughErrors2 containsObject:v6];

  return v8;
}

- (void)_logRequest:(id)request
{
  v49 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ((SSDebugShouldLogOutgoingHeaders() & 1) != 0 || SSDebugShouldLogResponseBodies())
  {
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    if (SSIsInternalBuild() && [allHTTPHeaderFields count])
    {
      v6 = [allHTTPHeaderFields description];
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfigOversize];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v9 = shouldLog | 2;
      }

      else
      {
        v9 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 2;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v35 = v12;
        [(ISURLOperation *)self logKey];
        v39 = allHTTPHeaderFields;
        v14 = v13 = self;
        [requestCopy URL];
        v15 = v37 = v6;
        v16 = [(ISURLOperation *)v13 _sanitizedURLForURL:v15];
        v17 = [(ISURLOperation *)v13 _sanitizedStringForString:v37];
        v41 = 138544130;
        v42 = v12;
        v43 = 2114;
        v44 = v14;
        v45 = 2112;
        v46 = v16;
        v47 = 2112;
        v48 = v17;
        LODWORD(v34) = 42;
        v33 = &v41;
        v18 = _os_log_send_and_compose_impl();

        v6 = v37;
        self = v13;
        allHTTPHeaderFields = v39;

        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v41, v34}];
          free(v18);
          v33 = v19;
          SSFileLog();
        }
      }

      else
      {
      }
    }

    if (!SSDebugShouldLogResponseBodies())
    {
      goto LABEL_33;
    }

    hTTPBody = [requestCopy HTTPBody];
    if (![hTTPBody length])
    {
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:hTTPBody encoding:4];
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfigOversize];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v25 = shouldLog2;
    }

    else
    {
      v25 = shouldLog2 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v36 = v26;
      v27 = [requestCopy URL];
      [(ISURLOperation *)self _sanitizedURLForURL:v27];
      v38 = hTTPBody;
      v29 = v28 = v21;
      [(ISURLOperation *)self _sanitizedStringForString:v28];
      v30 = v40 = allHTTPHeaderFields;
      v41 = 138412802;
      v42 = v26;
      v43 = 2112;
      v44 = v29;
      v45 = 2112;
      v46 = v30;
      LODWORD(v34) = 32;
      v31 = _os_log_send_and_compose_impl();

      allHTTPHeaderFields = v40;
      v21 = v28;
      hTTPBody = v38;

      if (!v31)
      {
LABEL_31:

        goto LABEL_32;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v41, v34}];
      free(v31);
      SSFileLog();
    }

    goto LABEL_31;
  }

LABEL_34:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_logResponseBody:(id)body
{
  v35 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  mIMEType = [bodyCopy MIMEType];
  if ([mIMEType rangeOfString:@"text" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(mIMEType, "rangeOfString:options:", @"plist", 1) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(mIMEType, "rangeOfString:options:", @"json", 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2;
    v27 = __Block_byref_object_dispose__2;
    v28 = 0;
    dataBufferAccessQueue = self->_dataBufferAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__ISURLOperation__logResponseBody___block_invoke;
    block[3] = &unk_27A6708C0;
    block[4] = self;
    block[5] = &v23;
    dispatch_sync(dataBufferAccessQueue, block);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v7 initWithData:v24[5] encoding:4];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfigOversize];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = shouldLog;
    }

    else
    {
      v13 = shouldLog & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [bodyCopy URL];
      v16 = [(ISURLOperation *)self _sanitizedURLForURL:v15];
      v17 = [(ISURLOperation *)self _sanitizedStringForString:v21];
      v29 = 138412802;
      v30 = v14;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      LODWORD(v20) = 32;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_15:

        _Block_object_dispose(&v23, 8);
        goto LABEL_16;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v29, v20}];
      free(v18);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __35__ISURLOperation__logResponseBody___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 344) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_performDefaultHandlingForAuthenticationChallenge:(id)challenge
{
  v27 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  sender = [challengeCopy sender];
  v6 = objc_opt_respondsToSelector();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if ((v6 & 1) == 0)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v19 = v18;
      [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
      v23 = 138412546;
      v24 = v18;
      v26 = v25 = 2112;
      LODWORD(v22) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_25:

        [sender continueWithoutCredentialForAuthenticationChallenge:challengeCopy];
        goto LABEL_26;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v23, v22}];
      free(v20);
      SSFileLog();
    }

    goto LABEL_25;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v10 = shouldLog2 | 2;
  }

  else
  {
    v10 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  v13 = v12;
  [(ISURLOperation *)self _sanitizedDescriptionForObject:challengeCopy];
  v23 = 138412546;
  v24 = v12;
  v26 = v25 = 2112;
  LODWORD(v22) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v23, v22}];
    free(v14);
    SSFileLog();
LABEL_12:
  }

  [sender performDefaultHandlingForAuthenticationChallenge:challengeCopy];
LABEL_26:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_retry
{
  v37 = *MEMORY[0x277D85DE8];
  [(NSURLSessionTask *)self->_urlSessionTask cancel];
  urlSessionTask = self->_urlSessionTask;
  self->_urlSessionTask = 0;

  v4 = [(NSURLRequest *)self->_activeURLRequest mutableCopy];
  if (v4)
  {
    [(ISURLOperation *)self _setActiveURLRequest:v4];
    [(ISURLOperation *)self _sendRequestToDelegate:v4];
    v5 = [(SSURLSessionManager *)self->_urlSessionManager dataTaskWithRequest:v4 delegate:self];
    v6 = self->_urlSessionTask;
    self->_urlSessionTask = v5;

    [(NSURLSessionTask *)self->_urlSessionTask resume];
  }

  v7 = self->_urlSessionTask;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (!v7)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v24 = v23;
      logKey = [(ISURLOperation *)self logKey];
      _activeURL = [(ISURLOperation *)self _activeURL];
      [(ISURLOperation *)self _sanitizedURLForURL:_activeURL];
      v31 = 138543874;
      v32 = v23;
      v33 = 2114;
      v34 = logKey;
      v36 = v35 = 2112;
      LODWORD(v30) = 32;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
LABEL_29:

        v28 = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:109];
        [(ISOperation *)self setError:v28];

        [(ISOperation *)self stopRunLoop];
        goto LABEL_30;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:{4, &v31, v30}];
      free(v27);
      SSFileLog();
    }

    goto LABEL_29;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = objc_opt_class();
  v15 = v14;
  logKey2 = [(ISURLOperation *)self logKey];
  _activeURL2 = [(ISURLOperation *)self _activeURL];
  [(ISURLOperation *)self _sanitizedURLForURL:_activeURL2];
  v31 = 138543874;
  v32 = v14;
  v33 = 2114;
  v34 = logKey2;
  v36 = v35 = 2112;
  LODWORD(v30) = 32;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v31, v30}];
    free(v18);
    SSFileLog();
LABEL_15:
  }

  [(ISURLOperation *)self _logRequest:v4];
LABEL_30:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_run
{
  v37 = *MEMORY[0x277D85DE8];
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  [(ISOperation *)self lock];
  if (self->_performanceMetrics)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ISURLRequestPerformance *)self->_performanceMetrics setStartTime:?];
    [(ISOperation *)self unlock];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      v23 = v10;
      logKey = [(ISURLOperation *)self logKey];
      v12 = [_requestProperties URL];
      v13 = [(ISURLOperation *)self _sanitizedURLForURL:v12];
      v29 = 138544130;
      v30 = v10;
      v31 = 2114;
      v32 = logKey;
      v33 = 2048;
      v34 = Current;
      v35 = 2112;
      v36 = v13;
      LODWORD(v22) = 42;
      v21 = &v29;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_14:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v29, v22}];
      free(v14);
      v21 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

  [(ISOperation *)self unlock];
LABEL_16:
  [_requestProperties URLs];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v27 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
LABEL_18:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v15);
      }

      if ([(ISURLOperation *)self _runRequestWithURL:*(*(&v24 + 1) + 8 * v19) dataConnectionServiceType:0])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_runRequestWithURL:(id)l dataConnectionServiceType:(__CFString *)type
{
  v160 = *MEMORY[0x277D85DE8];
  lCopy = l;
  _requestProperties = [(ISURLOperation *)self _requestProperties];
  allowedRetryCount = [_requestProperties allowedRetryCount];
  self->_networkRetryCount = 0;
  v143 = *MEMORY[0x277D6A110];
  mode = *MEMORY[0x277CBF058];
  v5 = 0x277D69000uLL;
  v144 = *MEMORY[0x277CCA738];
  selfCopy = self;
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(ISURLOperation *)self newRequestWithURL:lCopy];
    if (!v7)
    {
      selfCopy3 = self;
      v23 = v143;
      v24 = 109;
LABEL_61:
      v130 = [(ISURLOperation *)selfCopy3 _errorWithDomain:v23 code:v24, v130];
      [(ISOperation *)self setError:v130];

      goto LABEL_64;
    }

    if ([_requestProperties requiresExternal] && !-[ISURLOperation _isExternalURL:](self, "_isExternalURL:", lCopy))
    {
      sharediTunesStoreConfig = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig)
      {
        sharediTunesStoreConfig = [*(v5 + 2872) sharedConfig];
      }

      shouldLog = [sharediTunesStoreConfig shouldLog];
      if ([sharediTunesStoreConfig shouldLogToDisk])
      {
        v49 = shouldLog | 2;
      }

      else
      {
        v49 = shouldLog;
      }

      oSLogObject = [sharediTunesStoreConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v49;
      }

      else
      {
        v51 = v49 & 2;
      }

      if (v51)
      {
        v52 = objc_opt_class();
        v152 = 138412290;
        v153 = v52;
        v53 = v52;
        LODWORD(v132) = 12;
        v130 = &v152;
        v54 = _os_log_send_and_compose_impl();

        if (!v54)
        {
LABEL_60:

          selfCopy3 = self;
          v23 = v143;
          v24 = 107;
          goto LABEL_61;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v54 encoding:{4, &v152, v132}];
        free(v54);
        v130 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_60;
    }

    if (![_requestProperties requiresHTTPS] || (objc_msgSend(v7, "URL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "scheme"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "caseInsensitiveCompare:", @"https"), v9, v8, !v10))
    {
      [(ISURLOperation *)self _setActiveURLRequest:v7];
      [(ISURLOperation *)self _sendRequestToDelegate:v7];
      sharedConfig = [*(v5 + 2872) sharedConfig];
      if (!sharedConfig)
      {
        sharedConfig = [*(v5 + 2872) sharedConfig];
      }

      v139 = v6;
      shouldLog2 = [sharedConfig shouldLog];
      if ([sharedConfig shouldLogToDisk])
      {
        v27 = shouldLog2 | 2;
      }

      else
      {
        v27 = shouldLog2;
      }

      oSLogObject2 = [sharedConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v27;
      }

      else
      {
        v29 = v27 & 2;
      }

      if (v29)
      {
        v30 = objc_opt_class();
        v31 = v30;
        logKey = [(ISURLOperation *)self logKey];
        [v7 URL];
        v34 = v33 = v7;
        v152 = 138543874;
        v153 = v30;
        v154 = 2114;
        v155 = logKey;
        v156 = 2112;
        v157 = v34;
        LODWORD(v132) = 32;
        v130 = &v152;
        v35 = _os_log_send_and_compose_impl();

        v7 = v33;
        if (!v35)
        {
          goto LABEL_33;
        }

        oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, &v152, v132}];
        free(v35);
        v130 = oSLogObject2;
        SSFileLog();
      }

LABEL_33:
      v36 = [(SSURLSessionManager *)self->_urlSessionManager dataTaskWithRequest:v7 delegate:self];
      urlSessionTask = self->_urlSessionTask;
      self->_urlSessionTask = v36;

      if (!self->_urlSessionTask)
      {
        v56 = [(ISURLOperation *)self _errorWithDomain:v143 code:109];
        [(ISOperation *)self setError:v56];

LABEL_63:
        v6 = v139;
        goto LABEL_64;
      }

      sharediTunesStoreConfig2 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig2)
      {
        sharediTunesStoreConfig2 = [*(v5 + 2872) sharedConfig];
      }

      shouldLog3 = [sharediTunesStoreConfig2 shouldLog];
      if ([sharediTunesStoreConfig2 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [sharediTunesStoreConfig2 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v41 = shouldLog3;
      }

      else
      {
        v41 = shouldLog3 & 2;
      }

      if (v41)
      {
        v42 = objc_opt_class();
        v137 = v42;
        hTTPMethod = [v7 HTTPMethod];
        networkServiceType = [v7 networkServiceType];
        v44 = [v7 URL];
        v45 = [(ISURLOperation *)self _sanitizedURLForURL:v44];
        v152 = 138413058;
        v153 = v42;
        v154 = 2112;
        v155 = hTTPMethod;
        v156 = 2048;
        v157 = networkServiceType;
        v158 = 2112;
        v159 = v45;
        LODWORD(v132) = 42;
        v131 = &v152;
        v46 = _os_log_send_and_compose_impl();

        if (!v46)
        {
LABEL_45:

          [(ISURLOperation *)self _logRequest:v7];
          [(ISURLOperation *)self performSelector:sel__stopIfCancelled withObject:0 afterDelay:0.0];
          [(NSURLSessionTask *)self->_urlSessionTask resume];
          [(ISOperation *)self runRunLoopUntilStopped];
          if ([(ISURLOperation *)self isCancelled])
          {
            [(NSURLSessionTask *)self->_urlSessionTask cancel];
            CFRunLoopRunInMode(mode, 0.0, 1u);
          }

          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopIfCancelled object:{0, v131}];
          v5 = 0x277D69000;
          goto LABEL_63;
        }

        oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:{4, &v152, v132}];
        free(v46);
        v131 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_45;
    }

    sharediTunesStoreConfig3 = [*(v5 + 2872) sharediTunesStoreConfig];
    if (!sharediTunesStoreConfig3)
    {
      sharediTunesStoreConfig3 = [*(v5 + 2872) sharedConfig];
    }

    shouldLog4 = [sharediTunesStoreConfig3 shouldLog];
    if ([sharediTunesStoreConfig3 shouldLogToDisk])
    {
      v13 = shouldLog4 | 2;
    }

    else
    {
      v13 = shouldLog4;
    }

    oSLogObject4 = [sharediTunesStoreConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    v135 = v7;
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = objc_opt_class();
    v17 = v16;
    v18 = [v7 URL];
    scheme = [v18 scheme];
    v152 = 138412546;
    v153 = v16;
    v154 = 2112;
    v155 = scheme;
    LODWORD(v132) = 22;
    v130 = &v152;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      oSLogObject4 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v152, v132}];
      free(v20);
      v130 = oSLogObject4;
      SSFileLog();
LABEL_18:
    }

    v21 = [(ISURLOperation *)self _errorWithDomain:v143 code:128];
    [(ISOperation *)self setError:v21];

    v7 = v135;
LABEL_64:
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateProgress object:{0, v130}];
    [(ISURLOperation *)self _setActiveURLRequest:0];
    dataBufferAccessQueue = self->_dataBufferAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ISURLOperation__runRequestWithURL_dataConnectionServiceType___block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    dispatch_sync(dataBufferAccessQueue, block);
    [(NSURLSessionTask *)self->_urlSessionTask cancel];
    v58 = self->_urlSessionTask;
    self->_urlSessionTask = 0;

    redirectURLs = self->_redirectURLs;
    self->_redirectURLs = 0;

    if ([(ISOperation *)self success]|| ([(ISURLOperation *)self isCancelled]& 1) != 0)
    {
      goto LABEL_122;
    }

    error = [(ISOperation *)self error];
    v61 = +[ISNetworkObserver sharedInstance];
    domain = [error domain];
    v63 = [domain isEqualToString:v144];

    if (!v63)
    {
      goto LABEL_82;
    }

    if (![v61 networkType])
    {
      sharediTunesStoreConfig4 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig4)
      {
        sharediTunesStoreConfig4 = [*(v5 + 2872) sharedConfig];
      }

      shouldLog5 = [sharediTunesStoreConfig4 shouldLog];
      if ([sharediTunesStoreConfig4 shouldLogToDisk])
      {
        shouldLog5 |= 2u;
      }

      oSLogObject5 = [sharediTunesStoreConfig4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog5 &= 2u;
      }

      if (shouldLog5)
      {
        v106 = objc_opt_class();
        v146 = v106;
        [_requestProperties URL];
        v148 = v61;
        v108 = v107 = v7;
        v109 = [(ISURLOperation *)self _sanitizedURLForURL:v108];
        v152 = 138412546;
        v153 = v106;
        v154 = 2112;
        v155 = v109;
        LODWORD(v132) = 22;
        v130 = &v152;
        v110 = _os_log_send_and_compose_impl();

        v7 = v107;
        v61 = v148;

        if (v110)
        {
          oSLogObject5 = [MEMORY[0x277CCACA8] stringWithCString:v110 encoding:{4, &v152, v132}];
          free(v110);
          v130 = oSLogObject5;
          SSFileLog();
          goto LABEL_117;
        }
      }

      else
      {
LABEL_117:
      }

      sharedConfig2 = [(ISURLOperation *)self _errorWithDomain:v143 code:110];
      v111 = *MEMORY[0x277CCA7E8];
      oSLogObject8 = SSErrorBySettingUserInfoValue();
      [(ISOperation *)self setError:oSLogObject8];
      v5 = 0x277D69000uLL;
      goto LABEL_119;
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v61 lastNetworkTypeChangeTime];
    if (Current - v65 < 5.0)
    {
      sharediTunesStoreConfig5 = [*(v5 + 2872) sharediTunesStoreConfig];
      if (!sharediTunesStoreConfig5)
      {
        sharediTunesStoreConfig5 = [*(v5 + 2872) sharedConfig];
      }

      shouldLog6 = [sharediTunesStoreConfig5 shouldLog];
      if ([sharediTunesStoreConfig5 shouldLogToDisk])
      {
        v68 = shouldLog6 | 2;
      }

      else
      {
        v68 = shouldLog6;
      }

      oSLogObject6 = [sharediTunesStoreConfig5 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v68;
      }

      else
      {
        v70 = v68 & 2;
      }

      if (v70)
      {
        v71 = objc_opt_class();
        v140 = v71;
        [_requestProperties URL];
        v72 = error;
        v74 = v73 = v7;
        [(ISURLOperation *)selfCopy _sanitizedURLForURL:v74];
        v75 = v61;
        v77 = v76 = v6;
        v152 = 138412546;
        v153 = v71;
        v154 = 2112;
        v155 = v77;
        LODWORD(v132) = 22;
        v130 = &v152;
        v78 = _os_log_send_and_compose_impl();

        v7 = v73;
        error = v72;
        self = selfCopy;

        v6 = v76;
        v61 = v75;

        v5 = 0x277D69000;
        if (!v78)
        {
LABEL_81:

          self->_networkRetryCount = 0;
          goto LABEL_97;
        }

        oSLogObject6 = [MEMORY[0x277CCACA8] stringWithCString:v78 encoding:{4, &v152, v132}];
        free(v78);
        v130 = oSLogObject6;
        SSFileLog();
      }

      goto LABEL_81;
    }

LABEL_82:
    if (!ISErrorIndicatesSlowNetwork(error))
    {
      goto LABEL_121;
    }

    networkRetryCount = self->_networkRetryCount;
    self->_networkRetryCount = networkRetryCount + 1;
    sharediTunesStoreConfig6 = [*(v5 + 2872) sharediTunesStoreConfig];
    sharedConfig2 = sharediTunesStoreConfig6;
    if (networkRetryCount >= allowedRetryCount)
    {
      break;
    }

    if (!sharediTunesStoreConfig6)
    {
      sharedConfig2 = [*(v5 + 2872) sharedConfig];
    }

    shouldLog7 = [sharedConfig2 shouldLog];
    if ([sharedConfig2 shouldLogToDisk])
    {
      v83 = shouldLog7 | 2;
    }

    else
    {
      v83 = shouldLog7;
    }

    oSLogObject7 = [sharedConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 2;
    }

    if (!v85)
    {
      goto LABEL_95;
    }

    v86 = objc_opt_class();
    v87 = v6;
    v88 = v61;
    v89 = self->_networkRetryCount;
    v138 = v86;
    [_requestProperties URL];
    v141 = error;
    v91 = v90 = v87;
    [(ISURLOperation *)selfCopy _sanitizedURLForURL:v91];
    v93 = v92 = v7;
    v152 = 138412802;
    v153 = v86;
    v154 = 2048;
    v155 = v89;
    v61 = v88;
    v156 = 2112;
    v157 = v93;
    LODWORD(v132) = 32;
    v130 = &v152;
    v94 = _os_log_send_and_compose_impl();

    v6 = v90;
    error = v141;
    self = selfCopy;

    v7 = v92;
    v5 = 0x277D69000;

    if (v94)
    {
      oSLogObject7 = [MEMORY[0x277CCACA8] stringWithCString:v94 encoding:{4, &v152, v132}];
      free(v94);
      v130 = oSLogObject7;
      SSFileLog();
LABEL_95:
    }

LABEL_97:
    [MEMORY[0x277CCACC8] sleepForTimeInterval:{5.0, v130}];
    if (([(ISURLOperation *)self isCancelled]& 1) != 0)
    {
      goto LABEL_121;
    }

    [(ISOperation *)self setError:0];

    objc_autoreleasePoolPop(v6);
  }

  if (!sharediTunesStoreConfig6)
  {
    sharedConfig2 = [*(v5 + 2872) sharedConfig];
  }

  shouldLog8 = [sharedConfig2 shouldLog];
  if ([sharedConfig2 shouldLogToDisk])
  {
    shouldLog8 |= 2u;
  }

  oSLogObject8 = [sharedConfig2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog8 &= 2u;
  }

  if (!shouldLog8)
  {
    goto LABEL_119;
  }

  v147 = v61;
  v136 = v7;
  v97 = v6;
  v98 = objc_opt_class();
  v99 = v98;
  v100 = [_requestProperties URL];
  v101 = [(ISURLOperation *)self _sanitizedURLForURL:v100];
  v152 = 138412546;
  v153 = v98;
  v154 = 2112;
  v155 = v101;
  LODWORD(v132) = 22;
  v130 = &v152;
  v102 = _os_log_send_and_compose_impl();

  if (v102)
  {
    oSLogObject8 = [MEMORY[0x277CCACA8] stringWithCString:v102 encoding:{4, &v152, v132}];
    free(v102);
    v130 = oSLogObject8;
    SSFileLog();
    v5 = 0x277D69000;
    v6 = v97;
    v7 = v136;
    v61 = v147;
LABEL_119:

    goto LABEL_120;
  }

  v5 = 0x277D69000;
  v6 = v97;
  v7 = v136;
  v61 = v147;
LABEL_120:

LABEL_121:
LABEL_122:

  objc_autoreleasePoolPop(v6);
  error2 = [(ISOperation *)self error];
  if (error2)
  {

    goto LABEL_133;
  }

  if ([(ISOperation *)self success])
  {
    sharedConfig3 = [*(v5 + 2872) sharedConfig];
    v114 = v5;
    sharedConfig4 = sharedConfig3;
    if (!sharedConfig3)
    {
      sharedConfig4 = [*(v114 + 2872) sharedConfig];
    }

    shouldLog9 = [sharedConfig4 shouldLog];
    if ([sharedConfig4 shouldLogToDisk])
    {
      shouldLog9 |= 2u;
    }

    oSLogObject9 = [sharedConfig4 OSLogObject];
    if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog9 &= 2u;
    }

    if (shouldLog9)
    {
      v118 = objc_opt_class();
      v119 = v118;
      logKey2 = [(ISURLOperation *)self logKey];
      v152 = 138543618;
      v153 = v118;
      v154 = 2114;
      v155 = logKey2;
      LODWORD(v132) = 22;
      v121 = _os_log_send_and_compose_impl();
      goto LABEL_141;
    }

LABEL_143:
  }

  else
  {
LABEL_133:
    sharedConfig5 = [*(v5 + 2872) sharedConfig];
    v123 = v5;
    sharedConfig4 = sharedConfig5;
    if (!sharedConfig5)
    {
      sharedConfig4 = [*(v123 + 2872) sharedConfig];
    }

    shouldLog10 = [sharedConfig4 shouldLog];
    if ([sharedConfig4 shouldLogToDisk])
    {
      shouldLog10 |= 2u;
    }

    oSLogObject9 = [sharedConfig4 OSLogObject];
    if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
    {
      shouldLog10 &= 2u;
    }

    if (!shouldLog10)
    {
      goto LABEL_143;
    }

    v125 = objc_opt_class();
    v119 = v125;
    logKey2 = [(ISURLOperation *)self logKey];
    error3 = [(ISOperation *)self error];
    v152 = 138543874;
    v153 = v125;
    v154 = 2114;
    v155 = logKey2;
    v156 = 2114;
    v157 = error3;
    LODWORD(v132) = 32;
    v121 = _os_log_send_and_compose_impl();

LABEL_141:
    if (v121)
    {
      oSLogObject9 = [MEMORY[0x277CCACA8] stringWithCString:v121 encoding:{4, &v152, v132}];
      free(v121);
      SSFileLog();
      goto LABEL_143;
    }
  }

  success = [(ISOperation *)self success];
  v128 = *MEMORY[0x277D85DE8];
  return success;
}

void __63__ISURLOperation__runRequestWithURL_dataConnectionServiceType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 344);
  *(v1 + 344) = 0;
}

- (void)_sendContentLengthToDelegate:(int64_t)delegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:delegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__ISURLOperation__sendContentLengthToDelegate___block_invoke;
    v8[3] = &unk_27A670890;
    v9 = delegate;
    selfCopy = self;
    v11 = v6;
    v7 = v6;
    [(ISOperation *)self delegateDispatch:v8];
  }
}

- (void)_sendOutputToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__ISURLOperation__sendOutputToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (void)_sendRequestToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__ISURLOperation__sendRequestToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }

  [(ISURLOperation *)self _willSendRequest:delegateCopy];
}

- (void)_sendResponseToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__ISURLOperation__sendResponseToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (void)_setActiveURLRequest:(id)request
{
  if (self->_activeURLRequest != request)
  {
    v4 = [request copy];
    activeURLRequest = self->_activeURLRequest;
    self->_activeURLRequest = v4;

    MEMORY[0x2821F96F8]();
  }
}

+ (__CFURLStorageSession)_sharedCacheStorageSession
{
  if (_sharedCacheStorageSession_sOnce != -1)
  {
    +[ISURLOperation _sharedCacheStorageSession];
  }

  return _sharedCacheStorageSession_storageSession;
}

void __44__ISURLOperation__sharedCacheStorageSession__block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  if (MGGetSInt32Answer() != 4)
  {
    v1 = MEMORY[0x277CCACA8];
    v8[0] = CPSharedResourcesDirectory();
    v8[1] = @"Library";
    v8[2] = @"Caches";
    v8[3] = @"sharedCaches";
    v8[4] = @"com.apple.iTunesStore.NSURLCache";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
    v3 = [v1 pathWithComponents:v2];

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

    if (SSFileIsLocalWritable())
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v6 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CBACE0], *MEMORY[0x277CBED28]);
      CFDictionarySetValue(Mutable, @"kCFURLStorageSessionEnableVaryHeaderSupport", v6);
      _sharedCacheStorageSession_storageSession = _CFURLStorageSessionCreate();
      CFRelease(Mutable);
    }
  }

  objc_autoreleasePoolPop(v0);
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFollowRedirectWithRequest:(id)request error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy URL];
  scheme = [v7 scheme];

  _requestProperties = [(ISURLOperation *)self _requestProperties];
  if ([_requestProperties requiresHTTPS])
  {
    v10 = [scheme caseInsensitiveCompare:@"https"];

    if (v10)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v25 = 138412546;
        v26 = objc_opt_class();
        v27 = 2112;
        v28 = scheme;
        v15 = v26;
        LODWORD(v23) = 22;
        v16 = _os_log_send_and_compose_impl();

        if (!v16)
        {
LABEL_14:

          v17 = [(ISURLOperation *)self _errorWithDomain:*MEMORY[0x277D6A110] code:128];
          goto LABEL_18;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v25, v23}];
        free(v16);
        SSFileLog();
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v24 = 0;
  v18 = [(ISURLOperation *)self shouldFollowRedirectWithRequest:requestCopy returningError:&v24];
  v17 = v24;
  if (v18)
  {
    v19 = 1;
    goto LABEL_21;
  }

LABEL_18:
  if (*error)
  {
    v20 = v17;
    v19 = 0;
    *error = v17;
  }

  else
  {
    v19 = 0;
  }

LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_stopConnection
{
  dataProvider = [(ISURLOperation *)self dataProvider];
  isStream = [dataProvider isStream];

  if (isStream)
  {
    error = [(ISOperation *)self error];

    dataProvider2 = [(ISURLOperation *)self dataProvider];
    v7 = dataProvider2;
    if (error)
    {
      error2 = [(ISOperation *)self error];
      [v7 streamDidFailWithError:error2];
    }

    else
    {
      closeStream = [dataProvider2 closeStream];
    }
  }

  [(NSURLSessionTask *)self->_urlSessionTask cancel];

  [(ISOperation *)self stopRunLoop];
}

- (void)_stopIfCancelled
{
  if ([(ISURLOperation *)self isCancelled])
  {

    [(ISOperation *)self stopRunLoop];
  }
}

- (id)_stringForCachePolicy:(unint64_t)policy
{
  if (policy > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A670A00[policy];
  }
}

- (void)_updateProgress
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  progress = self->super._progress;
  if (progress)
  {
    if ([(SSOperationProgress *)progress operationType]== 2)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      dataProvider = [(ISURLOperation *)self dataProvider];
      if ([dataProvider isStream])
      {
        streamedBytes = [dataProvider streamedBytes];
        v10[3] = streamedBytes;
      }

      else
      {
        dataBufferAccessQueue = self->_dataBufferAccessQueue;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __33__ISURLOperation__updateProgress__block_invoke;
        v8[3] = &unk_27A6709E0;
        v8[4] = self;
        v8[5] = &v9;
        dispatch_sync(dataBufferAccessQueue, v8);
        streamedBytes = v10[3];
      }

      [(SSOperationProgress *)self->super._progress setCurrentValue:streamedBytes];

      _Block_object_dispose(&v9, 8);
    }

    [(SSOperationProgress *)self->super._progress snapshot];
    [(ISOperation *)self sendProgressToDelegate];
    [(ISURLOperation *)self performSelector:a2 withObject:0 afterDelay:*MEMORY[0x277D6A700]];
  }
}

void *__33__ISURLOperation__updateProgress__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 344);
  if (result)
  {
    result = [result length];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)_validateContentLength:(int64_t)length error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dataProvider = [(ISURLOperation *)self dataProvider];
  v7 = dataProvider;
  if (dataProvider && [dataProvider isStream])
  {
    v22 = 0;
    v8 = [v7 canStreamContentLength:length error:&v22];
    v9 = v22;
    if ((v8 & 1) == 0)
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38] shouldLog];
      if ([mEMORY[0x277D69B38] shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v14 = objc_opt_class();
        v23 = 138412546;
        v24 = v14;
        v25 = 2048;
        lengthCopy = length;
        v15 = v14;
        LODWORD(v21) = 22;
        v16 = _os_log_send_and_compose_impl();

        if (!v16)
        {
          goto LABEL_15;
        }

        oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v23, v21}];
        free(v16);
        SSFileLog();
      }

LABEL_15:
      v17 = 0;
      if (!error)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = 1;
  if (error)
  {
LABEL_19:
    v18 = v9;
    *error = v9;
  }

LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end