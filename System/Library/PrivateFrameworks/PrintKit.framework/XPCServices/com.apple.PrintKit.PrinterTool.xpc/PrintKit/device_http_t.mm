@interface device_http_t
+ (void)deviceHTTPForSessionURL:(id)a3 completionHandler:(id)a4;
- (BOOL)trustChallengeWithTrust:(id)a3;
- (device_http_t)initWithSessionURL:(id)a3 displayNameForCertTrust:(id)a4;
- (id)description;
- (id)finishStreamedIPPRequest;
- (id)makeConnection;
- (id)sendSingleIPPRequest:(const Real_IPP_Message *)a3;
- (id)startStreamedIPPRequest:(const Real_IPP_Message *)a3 compression:(id)a4;
- (int64_t)writeIPPDocumentPayload:(const char *)a3 length:(unint64_t)a4;
- (void)_setupCredentials;
- (void)_updateInitialMessageIfDefaultCredential:(Real_IPP_Message *)a3;
- (void)clearCredential;
- (void)dealloc;
- (void)passwordChallenge:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)passwordChallengeContinue:(id)a3 completionHandler:(id)a4;
- (void)sendSingleIPPRequest:(const Real_IPP_Message *)a3 completionHandler:(id)a4;
- (void)storeCredentialBasedOnTransactionResult:(id)a3;
@end

@implementation device_http_t

- (device_http_t)initWithSessionURL:(id)a3 displayNameForCertTrust:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = device_http_t;
  v8 = [(device_http_t *)&v14 init];
  if (v8)
  {
    v9 = [v6 session];
    session = v8->_session;
    v8->_session = v9;

    v11 = [v6 url];
    printerURL = v8->_printerURL;
    v8->_printerURL = v11;

    objc_storeStrong(&v8->_printerDisplayName, a4);
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
  v3 = [(NSURL *)self->_printerURL user];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSURL *)self->_printerURL password];

    if (v5)
    {
      v6 = [(NSURL *)self->_printerURL user];
      v7 = [(NSURL *)self->_printerURL password];
      v8 = [NSURLCredential credentialWithUser:v6 password:v7 persistence:2];
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
  v3 = [(NSURL *)self->_printerURL scheme];
  v4 = v3;
  if (self->_forceEncryption && [(__CFString *)v3 isEqualToString:@"ipp"])
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
    v15 = self;
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

- (BOOL)trustChallengeWithTrust:(id)a3
{
  v4 = a3;
  v5 = [(device_http_t *)self serverCertificateCheckForDeviceHTTP];

  if (v5)
  {
    v6 = [(device_http_t *)self serverCertificateCheckForDeviceHTTP];
    LOBYTE(v7) = (v6)[2](v6, self, v4);
  }

  else
  {
    v8 = [(NSURL *)self->_printerURL host];
    printerDisplayName = self->_printerDisplayName;
    if (printerDisplayName)
    {
      v7 = PKUserAllowsCertTrust(v4, v8, printerDisplayName);
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

      v16 = v4;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v12;
      v21 = 2080;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "trust: %{public}@ for %{public}@ / %{public}@: %s", &v15, 0x2Au);
    }
  }

  return v7;
}

- (void)passwordChallenge:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(device_http_t *)self performAuthenticationForDeviceHTTP];

  if (v11)
  {
    v12 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Invoking external auth handler", buf, 0xCu);
    }

    v13 = [(device_http_t *)self performAuthenticationForDeviceHTTP];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100047D20;
    v14[3] = &unk_1000A34A8;
    v14[4] = self;
    v15 = v8;
    v16 = v10;
    (v13)[2](v13, self, v9, v15, v14);
  }

  else
  {
    [(device_http_t *)self passwordChallengeContinue:v8 completionHandler:v10];
  }
}

- (void)passwordChallengeContinue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 previousFailureCount] || !self->_defaultCredential)
  {
    v8 = [v6 proposedCredential];
    v9 = [v8 user];

    if (v9)
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
      v23 = v7;
      PKPromptAuthInfo(printerDisplayName, v9, v21, v22);

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);

      goto LABEL_28;
    }

    v10 = v6;
    v11 = [v10 protectionSpace];
    v12 = [v11 authenticationMethod];
    if ([v12 isEqualToString:NSURLAuthenticationMethodHTTPBasic])
    {
    }

    else
    {
      v13 = [v12 isEqualToString:NSURLAuthenticationMethodHTTPDigest];

      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = [v10 _createCFAuthChallenge];
    if (v14)
    {
      v15 = CFURLAuthChallengeGetFailureResponse();
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v9 = 0;
LABEL_25:
        CFRelease(v14);

        goto LABEL_26;
      }

      v16 = [v15 valueForHTTPHeaderField:@"Www-Authenticate"];
      v17 = v16;
      if (!v16)
      {
        v9 = 0;
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
          v9 = 0;
          goto LABEL_23;
        }

        v19 = v18;
        v9 = 0;
        if (!sub_100049288([v18 UTF8String], "default", location) || !LOBYTE(location[0]))
        {
          goto LABEL_23;
        }
      }

      v9 = [NSString stringWithUTF8String:location];
LABEL_23:

      goto LABEL_24;
    }

LABEL_15:
    v9 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v7[2](v7);
LABEL_28:
}

- (void)storeCredentialBasedOnTransactionResult:(id)a3
{
  v6 = a3;
  v4 = self->_credentialFromPrompt;
  if (v4)
  {
    v5 = [v6 ippStatus];
    if (v5 - 4096 < 2)
    {
LABEL_5:

      v4 = 0;
      PKStoreAuthInfo(self->_printerURL, 0);
      goto LABEL_7;
    }

    if (v5)
    {
      if (v5 != 1183)
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

- (void)_updateInitialMessageIfDefaultCredential:(Real_IPP_Message *)a3
{
  defaultCredential = self->_defaultCredential;
  if (defaultCredential && [(NSURLCredential *)defaultCredential hasPassword])
  {
    v6 = [(NSURLCredential *)self->_defaultCredential user];
    if (v6)
    {
      sub_100007DBC(a3, v6);
    }
  }
}

- (id)sendSingleIPPRequest:(const Real_IPP_Message *)a3
{
  v5 = [(device_http_t *)self makeConnection];
  sub_100049498(v12, a3);
  [(device_http_t *)self _updateInitialMessageIfDefaultCredential:v12];
  v6 = sub_1000486EC(v12);
  v7 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Sending message sync: %{public}@", buf, 0x16u);
  }

  v8 = [v5 sendSingleIPPRequest:v12];
  v9 = [v8 description];
  v10 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = self;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Received response sync: %{public}@", buf, 0x16u);
  }

  [(device_http_t *)self storeCredentialBasedOnTransactionResult:v8];
  sub_10000B548(v12);

  return v8;
}

- (void)sendSingleIPPRequest:(const Real_IPP_Message *)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(device_http_t *)self makeConnection];
  sub_100049498(v13, a3);
  [(device_http_t *)self _updateInitialMessageIfDefaultCredential:v13];
  v8 = sub_1000486EC(v13);
  v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Sending message async: %{public}@", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004897C;
  v11[3] = &unk_1000A34F8;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  [v7 sendSingleIPPRequest:v13 completionHandler:v11];

  sub_10000B548(v13);
}

- (id)startStreamedIPPRequest:(const Real_IPP_Message *)a3 compression:(id)a4
{
  v6 = a4;
  if (self->_streamedPrinterEndpoint)
  {
    __assert_rtn("[device_http_t startStreamedIPPRequest:compression:]", "device_http.mm", 499, "_streamedPrinterEndpoint == nil");
  }

  v7 = [(device_http_t *)self makeConnection];
  v8 = v7;
  if (v6)
  {
    [v7 setDocumentCompression:v6];
  }

  sub_100049498(v17, a3);
  [(device_http_t *)self _updateInitialMessageIfDefaultCredential:v17];
  v9 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000486EC(v17);
    *buf = 134218242;
    v19 = self;
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
      v19 = self;
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
      v19 = self;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "device_http<%p>: Couldn't start streaming request, %{public}@", buf, 0x16u);
    }
  }

  [(device_http_t *)self storeCredentialBasedOnTransactionResult:v11];
  sub_10000B548(v17);

  return v11;
}

- (int64_t)writeIPPDocumentPayload:(const char *)a3 length:(unint64_t)a4
{
  streamedPrinterEndpoint = self->_streamedPrinterEndpoint;
  if (!streamedPrinterEndpoint)
  {
    v6 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      v12 = self;
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
      v12 = self;
      v7 = "device_http<%p>: already saw write error, can't write";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, &v11, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = a4;
  if ([(platform_http_t *)streamedPrinterEndpoint writeIPPDocumentPayload:a3 length:?]== a4)
  {
    return v8;
  }

  v10 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 134218240;
    v12 = self;
    v13 = 2048;
    v14 = v8;
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
    v4 = [(platform_http_t *)streamedPrinterEndpoint finishStreamedIPPRequest];
    v5 = self->_streamedPrinterEndpoint;
    self->_streamedPrinterEndpoint = 0;

    v6 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = self;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device_http<%p>: completed stream request - %{public}@", &v9, 0x16u);
    }

    [(device_http_t *)self storeCredentialBasedOnTransactionResult:v4];
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "device_http<%p>: completed stream request - error ocurred", &v9, 0xCu);
    }

    v4 = [[http_ipp_response_t alloc] initWithTransportStatus:1];
    [(device_http_t *)self storeCredentialBasedOnTransactionResult:v4];
  }

  return v4;
}

+ (void)deviceHTTPForSessionURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [[device_http_t alloc] initWithSessionURL:v7 displayNameForCertTrust:0];
  v5[2](v5, v6);
}

@end