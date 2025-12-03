@interface device_http_t
+ (void)deviceHTTPForSessionURL:(id)l completionHandler:(id)handler;
- (BOOL)trustChallengeWithTrust:(id)trust;
- (device_http_t)initWithSessionURL:(id)l displayNameForCertTrust:(id)trust;
- (id)description;
- (id)finishStreamedIPPRequest;
- (id)makeConnection;
- (id)sendSingleIPPRequest:(const Real_IPP_Message *)request;
- (id)startStreamedIPPRequest:(const Real_IPP_Message *)request compression:(id)compression;
- (int64_t)writeIPPDocumentPayload:(const char *)payload length:(unint64_t)length;
- (void)_setupCredentials;
- (void)_updateInitialMessageIfDefaultCredential:(Real_IPP_Message *)credential;
- (void)clearCredential;
- (void)dealloc;
- (void)passwordChallenge:(id)challenge request:(id)request completionHandler:(id)handler;
- (void)passwordChallengeContinue:(id)continue completionHandler:(id)handler;
- (void)sendSingleIPPRequest:(const Real_IPP_Message *)request completionHandler:(id)handler;
- (void)storeCredentialBasedOnTransactionResult:(id)result;
@end

@implementation device_http_t

- (device_http_t)initWithSessionURL:(id)l displayNameForCertTrust:(id)trust
{
  lCopy = l;
  trustCopy = trust;
  v14.receiver = self;
  v14.super_class = device_http_t;
  v8 = [(device_http_t *)&v14 init];
  if (v8)
  {
    session = [lCopy session];
    session = v8->_session;
    v8->_session = session;

    v11 = [lCopy url];
    printerURL = v8->_printerURL;
    v8->_printerURL = v11;

    objc_storeStrong(&v8->_printerDisplayName, trust);
    [(device_http_t *)v8 _setupCredentials];
  }

  return v8;
}

- (void)dealloc
{
  streamedPrinterEndpoint = self->_streamedPrinterEndpoint;
  self->_streamedPrinterEndpoint = 0;

  v4.receiver = self;
  v4.super_class = device_http_t;
  [(device_http_t *)&v4 dealloc];
}

- (void)_setupCredentials
{
  user = [(NSURL *)self->_printerURL user];
  if (user)
  {
    v4 = user;
    password = [(NSURL *)self->_printerURL password];

    if (password)
    {
      user2 = [(NSURL *)self->_printerURL user];
      password2 = [(NSURL *)self->_printerURL password];
      v8 = [NSURLCredential credentialWithUser:user2 password:password2 persistence:2];
      defaultCredential = self->_defaultCredential;
      self->_defaultCredential = v8;
    }
  }

  if (self->_defaultCredential || (printerDisplayName = self->_printerDisplayName) != 0 && (PKGetAuthInfo(printerDisplayName, self->_printerURL), v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_defaultCredential, self->_defaultCredential = v11, v12, self->_defaultCredential))
  {
    self->_forceEncryption = 1;
  }
}

- (id)makeConnection
{
  scheme = [(NSURL *)self->_printerURL scheme];
  v4 = scheme;
  if (self->_forceEncryption && [(__CFString *)scheme isEqualToString:@"ipp"])
  {

    v4 = @"ipps";
  }

  v5 = PKURLByReplacingScheme(v4, self->_printerURL);
  v6 = [(IPPSession *)self->_session httpWithURL:v5];
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100047768;
  v11[3] = &unk_1000A3458;
  objc_copyWeak(&v12, &location);
  [v6 setPass_callback:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004784C;
  v9[3] = &unk_1000A3480;
  objc_copyWeak(&v10, &location);
  [v6 setTrust_callback:v9];
  v7 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Created connection object: %{public}@ to %{public}@", buf, 0x20u);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)trustChallengeWithTrust:(id)trust
{
  trustCopy = trust;
  serverCertificateCheckForDeviceHTTP = [(device_http_t *)self serverCertificateCheckForDeviceHTTP];

  if (serverCertificateCheckForDeviceHTTP)
  {
    serverCertificateCheckForDeviceHTTP2 = [(device_http_t *)self serverCertificateCheckForDeviceHTTP];
    LOBYTE(v7) = (serverCertificateCheckForDeviceHTTP2)[2](serverCertificateCheckForDeviceHTTP2, self, trustCopy);
  }

  else
  {
    host = [(NSURL *)self->_printerURL host];
    printerDisplayName = self->_printerDisplayName;
    if (printerDisplayName)
    {
      v7 = PKUserAllowsCertTrust(trustCopy, host, printerDisplayName);
    }

    else
    {
      v10 = _PKLogCategory(PKLogCategoryNetwork[0]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "trust: no name specified for device, but allowing this trust", &v15, 2u);
      }

      v7 = 1;
    }

    v11 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_printerDisplayName;
      v13 = "false";
      v15 = 138544130;
      if (v7)
      {
        v13 = "true";
      }

      v16 = trustCopy;
      v17 = 2114;
      v18 = host;
      v19 = 2114;
      v20 = v12;
      v21 = 2080;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "trust: %{public}@ for %{public}@ / %{public}@: %s", &v15, 0x2Au);
    }
  }

  return v7;
}

- (void)passwordChallenge:(id)challenge request:(id)request completionHandler:(id)handler
{
  challengeCopy = challenge;
  requestCopy = request;
  handlerCopy = handler;
  performAuthenticationForDeviceHTTP = [(device_http_t *)self performAuthenticationForDeviceHTTP];

  if (performAuthenticationForDeviceHTTP)
  {
    v12 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Invoking external auth handler", buf, 0xCu);
    }

    performAuthenticationForDeviceHTTP2 = [(device_http_t *)self performAuthenticationForDeviceHTTP];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100047D20;
    v14[3] = &unk_1000A34A8;
    v14[4] = self;
    v15 = challengeCopy;
    v16 = handlerCopy;
    (performAuthenticationForDeviceHTTP2)[2](performAuthenticationForDeviceHTTP2, self, requestCopy, v15, v14);
  }

  else
  {
    [(device_http_t *)self passwordChallengeContinue:challengeCopy completionHandler:handlerCopy];
  }
}

- (void)passwordChallengeContinue:(id)continue completionHandler:(id)handler
{
  continueCopy = continue;
  handlerCopy = handler;
  if ([continueCopy previousFailureCount] || !self->_defaultCredential)
  {
    proposedCredential = [continueCopy proposedCredential];
    user = [proposedCredential user];

    if (user)
    {
LABEL_27:
      objc_initWeak(location, self);
      printerDisplayName = self->_printerDisplayName;
      v21 = self->_credentialFromPrompt == 0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10004825C;
      v22[3] = &unk_1000A34D0;
      objc_copyWeak(&v24, location);
      v23 = handlerCopy;
      PKPromptAuthInfo(printerDisplayName, user, v21, v22);

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);

      goto LABEL_28;
    }

    v10 = continueCopy;
    protectionSpace = [v10 protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];
    if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodHTTPBasic])
    {
    }

    else
    {
      v13 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodHTTPDigest];

      if (!v13)
      {
        goto LABEL_15;
      }
    }

    _createCFAuthChallenge = [v10 _createCFAuthChallenge];
    if (_createCFAuthChallenge)
    {
      v15 = CFURLAuthChallengeGetFailureResponse();
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        user = 0;
LABEL_25:
        CFRelease(_createCFAuthChallenge);

        goto LABEL_26;
      }

      v16 = [v15 valueForHTTPHeaderField:@"Www-Authenticate"];
      v17 = v16;
      if (!v16)
      {
        user = 0;
LABEL_24:

        goto LABEL_25;
      }

      v18 = v16;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *location = 0u;
      v26 = 0u;
      if (!sub_100049288([v18 UTF8String], "username", location) || !LOBYTE(location[0]))
      {
        if (![v18 hasPrefix:@"Basic"])
        {
          user = 0;
          goto LABEL_23;
        }

        v19 = v18;
        user = 0;
        if (!sub_100049288([v18 UTF8String], "default", location) || !LOBYTE(location[0]))
        {
          goto LABEL_23;
        }
      }

      user = [NSString stringWithUTF8String:location];
LABEL_23:

      goto LABEL_24;
    }

LABEL_15:
    user = 0;
LABEL_26:

    goto LABEL_27;
  }

  handlerCopy[2](handlerCopy);
LABEL_28:
}

- (void)storeCredentialBasedOnTransactionResult:(id)result
{
  resultCopy = result;
  v4 = self->_credentialFromPrompt;
  if (v4)
  {
    ippStatus = [resultCopy ippStatus];
    if (ippStatus - 4096 < 2)
    {
LABEL_5:

      v4 = 0;
      PKStoreAuthInfo(self->_printerURL, 0);
      goto LABEL_7;
    }

    if (ippStatus)
    {
      if (ippStatus != 1183)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    PKStoreAuthInfo(self->_printerURL, v4);
  }

LABEL_7:
}

- (id)description
{
  v2 = " (streaming)";
  if (!self->_streamedPrinterEndpoint)
  {
    v2 = "";
  }

  if (self->_streamedPrinterEndpointConnectionLostForWriting)
  {
    v3 = " (no longer  writable)";
  }

  else
  {
    v3 = " (writable)";
  }

  return [NSString stringWithFormat:@"device_http<%p> { %@%s%s}", self, self->_printerURL, v2, v3];
}

- (void)clearCredential
{
  defaultCredential = self->_defaultCredential;
  self->_defaultCredential = 0;
}

- (void)_updateInitialMessageIfDefaultCredential:(Real_IPP_Message *)credential
{
  defaultCredential = self->_defaultCredential;
  if (defaultCredential && [(NSURLCredential *)defaultCredential hasPassword])
  {
    user = [(NSURLCredential *)self->_defaultCredential user];
    if (user)
    {
      sub_100007DBC(credential, user);
    }
  }
}

- (id)sendSingleIPPRequest:(const Real_IPP_Message *)request
{
  makeConnection = [(device_http_t *)self makeConnection];
  sub_100049498(v12, request);
  [(device_http_t *)self _updateInitialMessageIfDefaultCredential:v12];
  v6 = sub_1000486EC(v12);
  v7 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Sending message sync: %{public}@", buf, 0x16u);
  }

  v8 = [makeConnection sendSingleIPPRequest:v12];
  v9 = [v8 description];
  v10 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Received response sync: %{public}@", buf, 0x16u);
  }

  [(device_http_t *)self storeCredentialBasedOnTransactionResult:v8];
  sub_10000B548(v12);

  return v8;
}

- (void)sendSingleIPPRequest:(const Real_IPP_Message *)request completionHandler:(id)handler
{
  handlerCopy = handler;
  makeConnection = [(device_http_t *)self makeConnection];
  sub_100049498(v13, request);
  [(device_http_t *)self _updateInitialMessageIfDefaultCredential:v13];
  v8 = sub_1000486EC(v13);
  v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Sending message async: %{public}@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004897C;
  v11[3] = &unk_1000A34F8;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  [makeConnection sendSingleIPPRequest:v13 completionHandler:v11];

  sub_10000B548(v13);
}

- (id)startStreamedIPPRequest:(const Real_IPP_Message *)request compression:(id)compression
{
  compressionCopy = compression;
  if (self->_streamedPrinterEndpoint)
  {
    __assert_rtn("[device_http_t startStreamedIPPRequest:compression:]", "device_http.mm", 499, "_streamedPrinterEndpoint == nil");
  }

  makeConnection = [(device_http_t *)self makeConnection];
  v8 = makeConnection;
  if (compressionCopy)
  {
    [makeConnection setDocumentCompression:compressionCopy];
  }

  sub_100049498(v17, request);
  [(device_http_t *)self _updateInitialMessageIfDefaultCredential:v17];
  v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000486EC(v17);
    *buf = 134218242;
    selfCopy3 = self;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Starting streamed request for %{public}@", buf, 0x16u);
  }

  v11 = [v8 startStreamedIPPRequest:v17];
  if ([v11 transportStatus] == 2)
  {
    v12 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Continuing streaming request", buf, 0xCu);
    }

    v13 = v8;
    p_super = &self->_streamedPrinterEndpoint->super;
    self->_streamedPrinterEndpoint = v13;
  }

  else
  {
    p_super = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v15 = [v11 description];
      *buf = 134218242;
      selfCopy3 = self;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "device_http<%p>: Couldn't start streaming request, %{public}@", buf, 0x16u);
    }
  }

  [(device_http_t *)self storeCredentialBasedOnTransactionResult:v11];
  sub_10000B548(v17);

  return v11;
}

- (int64_t)writeIPPDocumentPayload:(const char *)payload length:(unint64_t)length
{
  streamedPrinterEndpoint = self->_streamedPrinterEndpoint;
  if (!streamedPrinterEndpoint)
  {
    v6 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      selfCopy3 = self;
      v7 = "device_http<%p>: endpoint is nil, can't write";
      goto LABEL_7;
    }

LABEL_8:

    return -1;
  }

  if (self->_streamedPrinterEndpointConnectionLostForWriting)
  {
    v6 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      selfCopy3 = self;
      v7 = "device_http<%p>: already saw write error, can't write";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &v11, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  lengthCopy = length;
  if ([(platform_http_t *)streamedPrinterEndpoint writeIPPDocumentPayload:payload length:?]== length)
  {
    return lengthCopy;
  }

  v10 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 134218240;
    selfCopy3 = self;
    v13 = 2048;
    v14 = lengthCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "device_http<%p>: unable to write %ld bytes", &v11, 0x16u);
  }

  self->_streamedPrinterEndpointConnectionLostForWriting = 1;
  return -1;
}

- (id)finishStreamedIPPRequest
{
  streamedPrinterEndpoint = self->_streamedPrinterEndpoint;
  if (streamedPrinterEndpoint)
  {
    finishStreamedIPPRequest = [(platform_http_t *)streamedPrinterEndpoint finishStreamedIPPRequest];
    v5 = self->_streamedPrinterEndpoint;
    self->_streamedPrinterEndpoint = 0;

    v6 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      selfCopy2 = self;
      v11 = 2114;
      v12 = finishStreamedIPPRequest;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device_http<%p>: completed stream request - %{public}@", &v9, 0x16u);
    }

    [(device_http_t *)self storeCredentialBasedOnTransactionResult:finishStreamedIPPRequest];
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "device_http<%p>: completed stream request - error ocurred", &v9, 0xCu);
    }

    finishStreamedIPPRequest = [[http_ipp_response_t alloc] initWithTransportStatus:1];
    [(device_http_t *)self storeCredentialBasedOnTransactionResult:finishStreamedIPPRequest];
  }

  return finishStreamedIPPRequest;
}

+ (void)deviceHTTPForSessionURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v6 = [[device_http_t alloc] initWithSessionURL:lCopy displayNameForCertTrust:0];
  handlerCopy[2](handlerCopy, v6);
}

@end