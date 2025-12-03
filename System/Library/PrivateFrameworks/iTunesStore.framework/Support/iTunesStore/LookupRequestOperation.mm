@interface LookupRequestOperation
- (BOOL)_performJSSignLookupWithURLBag:(id)bag error:(id *)error;
- (BOOL)_performLocationLookup:(id *)lookup;
- (BOOL)_performPlatformLookup:(id *)lookup;
- (BOOL)shouldSuppressCookies;
- (LookupRequestOperation)initWithLookupProperties:(id)properties;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSAuthenticationContext)authenticationContext;
- (SSLookupProperties)lookupProperties;
- (SSLookupResponse)lookupResponse;
- (id)_URLBagContext;
- (id)_authenticationContext;
- (id)_newLookupResponseWithResultsFromOperation:(id)operation;
- (id)_newStoreURLOperationWithBagKey:(id)key;
- (int64_t)personalizationStyle;
- (void)_setAccountID:(id)d;
- (void)_setLookupResponse:(id)response;
- (void)dealloc;
- (void)operation:(id)operation willSendRequest:(id)request;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setClientIdentifierHeader:(id)header;
- (void)setPersonalizationStyle:(int64_t)style;
- (void)setShouldSuppressCookies:(BOOL)cookies;
- (void)setUserAgent:(id)agent;
@end

@implementation LookupRequestOperation

- (LookupRequestOperation)initWithLookupProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = LookupRequestOperation;
  v4 = [(LookupRequestOperation *)&v6 init];
  if (v4)
  {
    v4->_properties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LookupRequestOperation;
  [(LookupRequestOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_authenticationContext;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (SSLookupProperties)lookupProperties
{
  v2 = [(SSLookupProperties *)self->_properties copy];

  return v2;
}

- (SSLookupResponse)lookupResponse
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_response;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (int64_t)personalizationStyle
{
  [(LookupRequestOperation *)self lock];
  personalizationStyle = self->_personalizationStyle;
  [(LookupRequestOperation *)self unlock];
  return personalizationStyle;
}

- (void)setAuthenticationContext:(id)context
{
  [(LookupRequestOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  [(LookupRequestOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (void)setPersonalizationStyle:(int64_t)style
{
  [(LookupRequestOperation *)self lock];
  self->_personalizationStyle = style;

  [(LookupRequestOperation *)self unlock];
}

- (void)setShouldSuppressCookies:(BOOL)cookies
{
  [(LookupRequestOperation *)self lock];
  self->_shouldSuppressCookies = cookies;

  [(LookupRequestOperation *)self unlock];
}

- (BOOL)shouldSuppressCookies
{
  [(LookupRequestOperation *)self lock];
  shouldSuppressCookies = self->_shouldSuppressCookies;
  [(LookupRequestOperation *)self unlock];
  return shouldSuppressCookies;
}

- (void)setUserAgent:(id)agent
{
  [(LookupRequestOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (NSString)userAgent
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_userAgent;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (void)run
{
  v16 = 0;
  v3 = [(LookupRequestOperation *)self loadedURLBagWithContext:[(LookupRequestOperation *)self _URLBagContext] returningError:&v16];
  if (v3)
  {
    v4 = v3;
    if ([(SSLookupProperties *)self->_properties location])
    {
      v5 = [(LookupRequestOperation *)self _performLocationLookup:&v16];
    }

    else if ([(LookupRequestOperation *)self personalizationStyle]== 2)
    {
      v5 = [(LookupRequestOperation *)self _performJSSignLookupWithURLBag:v4 error:&v16];
    }

    else
    {
      v5 = [(LookupRequestOperation *)self _performPlatformLookup:&v16];
    }

    v13 = v5;
  }

  else
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v9 = objc_opt_class();
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v16;
      LODWORD(v15) = 22;
      v14 = &v17;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v17, v15];
        free(v11);
        v14 = v12;
        SSFileLog();
      }
    }

    v13 = 0;
  }

  [(LookupRequestOperation *)self setError:v16, v14];
  [(LookupRequestOperation *)self setSuccess:v13];
}

- (void)operation:(id)operation willSendRequest:(id)request
{
  v7 = objc_alloc_init(NSDateFormatter);
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v7 setLocale:v5];
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v6 = [v7 stringFromDate:{+[NSDate date](NSDate, "date")}];
  if (v6)
  {
    [request setValue:v6 forHTTPHeaderField:@"X-Request-TimeStamp"];
  }
}

- (id)_authenticationContext
{
  authenticationContext = [(LookupRequestOperation *)self authenticationContext];
  hTTPHeaders = [(SSAuthenticationContext *)authenticationContext HTTPHeaders];
  v5 = SSHTTPHeaderUserAgent;
  if ([hTTPHeaders objectForKey:SSHTTPHeaderUserAgent])
  {
    return authenticationContext;
  }

  userAgent = [(LookupRequestOperation *)self userAgent];
  if (!userAgent)
  {
    return authenticationContext;
  }

  v8 = userAgent;
  v9 = [(SSAuthenticationContext *)authenticationContext mutableCopy];
  [v9 setValue:v8 forHTTPHeaderField:v5];

  return v9;
}

- (id)_newLookupResponseWithResultsFromOperation:(id)operation
{
  v4 = [[SSLookupResponse alloc] initWithResponseDictionary:{objc_msgSend(objc_msgSend(operation, "dataProvider"), "output")}];
  response = [operation response];
  if (response)
  {
    [response itunes_expirationInterval];
    if (v6 >= 0.0)
    {
      [v4 setExpirationDate:{+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:")}];
    }
  }

  return v4;
}

- (id)_newStoreURLOperationWithBagKey:(id)key
{
  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setAuthenticationContext:{-[LookupRequestOperation authenticationContext](self, "authenticationContext")}];
  [v5 setCanSendGUIDParameter:0];
  [v5 setDataProvider:{+[ISJSONDataProvider provider](ISJSONDataProvider, "provider")}];
  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setClientIdentifier:{-[LookupRequestOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v6 setURLBagKey:key];
  timeoutInterval = [(SSLookupProperties *)self->_properties timeoutInterval];
  if (timeoutInterval)
  {
    v8 = timeoutInterval;
    [v6 setAllowedRetryCount:0];
    [v8 doubleValue];
    [v6 setTimeoutInterval:?];
  }

  else
  {
    [v6 setAllowedRetryCount:2];
  }

  userAgent = [(LookupRequestOperation *)self userAgent];
  if (!userAgent)
  {
    if (key != @"nearby-apps")
    {
      goto LABEL_7;
    }

    userAgent = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  }

  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
LABEL_7:
  copyRequestParameters = [(SSLookupProperties *)self->_properties copyRequestParameters];
  [v6 setRequestParameters:copyRequestParameters];

  [v5 setRequestProperties:v6];
  return v5;
}

- (BOOL)_performJSSignLookupWithURLBag:(id)bag error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_1001AABAC;
  v20 = sub_1001AABBC;
  v21 = 0;
  v7 = [[SSVPlatformContext alloc] initWithBagDictionary:{objc_msgSend(bag, "URLBagDictionary")}];
  if ([v7 unpersonalizedLookupURLString])
  {
    v8 = [[SSVPlatformRequestOperation alloc] initWithPlatformContext:v7];
    [v8 setKeyProfile:{-[SSLookupProperties keyProfile](self->_properties, "keyProfile")}];
    [v8 setStoreFrontSuffix:{objc_msgSend(bag, "valueForKey:", @"storefront-header-suffix"}];
    [v8 _setUserAgent:{-[LookupRequestOperation userAgent](self, "userAgent")}];
    if ([(LookupRequestOperation *)self personalizationStyle]== 2)
    {
      [v8 setShouldSuppressUserInfo:1];
    }

    [v8 setShouldSuppressCookies:{-[LookupRequestOperation shouldSuppressCookies](self, "shouldSuppressCookies")}];
    copyRequestParameters = [(SSLookupProperties *)self->_properties copyRequestParameters];
    [copyRequestParameters removeObjectForKey:SSLookupParameterKeyProfile];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001AABC8;
    v15[3] = &unk_10032B0A0;
    v15[4] = v8;
    [copyRequestParameters enumerateKeysAndObjectsUsingBlock:v15];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001AACA4;
    v14[3] = &unk_10032B0C8;
    v14[4] = self;
    v14[5] = &v16;
    v14[6] = &v22;
    [v8 setResponseBlock:v14];
    [v8 main];
    v10 = v17[5];
  }

  else
  {
    v17[5] = SSError();
  }

  v11 = v23;
  v12 = *(v23 + 24);
  if (error && (v23[3] & 1) == 0)
  {
    *error = v17[5];
    v12 = *(v11 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12 & 1;
}

- (BOOL)_performLocationLookup:(id *)lookup
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_1001AABAC;
  v27 = sub_1001AABBC;
  v28 = 0;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  shouldLogToDisk = [v5 shouldLogToDisk];
  oSLogObject = [v5 OSLogObject];
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    shouldLog &= 2u;
  }

  if (shouldLog)
  {
    v9 = objc_opt_class();
    v33 = 138412290;
    v34 = v9;
    LODWORD(v21) = 12;
    v20 = &v33;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, &v33, v21];
      free(v11);
      v20 = v12;
      SSFileLog();
    }
  }

  _URLBagContext = [(LookupRequestOperation *)self _URLBagContext];
  v14 = [-[LookupRequestOperation loadedURLBagWithContext:returningError:](self loadedURLBagWithContext:_URLBagContext returningError:{v24 + 5), "valueForKey:", @"nearby-apps"}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [[SSVLoadNearbyAppsOperation alloc] initWithBaseURL:v14 location:{-[SSLookupProperties location](self->_properties, "location")}];
    [v15 setPointOfInterestIdentifier:{-[SSLookupProperties valueForRequestParameter:](self->_properties, "valueForRequestParameter:", SSLookupParameterPointOfInterestIdentifier)}];
    [v15 setPointOfInterestProviderIdentifier:{-[SSLookupProperties valueForRequestParameter:](self->_properties, "valueForRequestParameter:", SSLookupParameterPointOfInterestProviderIdentifier)}];
    [v15 setPointOfInterestProviderURL:{-[SSLookupProperties valueForRequestParameter:](self->_properties, "valueForRequestParameter:", SSLookupParameterPointOfInterestProviderURLString)}];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001AB090;
    v22[3] = &unk_10032B0C8;
    v22[4] = self;
    v22[5] = &v23;
    v22[6] = &v29;
    [v15 setResponseBlock:v22];
    [v15 main];
    v16 = v24[5];
  }

  v17 = v30;
  v18 = *(v30 + 24);
  if (lookup && (v30[3] & 1) == 0)
  {
    *lookup = v24[5];
    v18 = *(v17 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v18 & 1;
}

- (BOOL)_performPlatformLookup:(id *)lookup
{
  v54 = 0;
  v5 = [(LookupRequestOperation *)self _newStoreURLOperationWithBagKey:@"storeplatform-lookup-url"];
  [v5 setDelegate:self];
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v55 = 138412290;
    v56 = objc_opt_class();
    LODWORD(v51) = 12;
    v48 = &v55;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, &v55, v51];
      free(v10);
      v48 = v11;
      SSFileLog();
    }
  }

  v12 = [(LookupRequestOperation *)self runSubOperation:v5 returningError:&v54, v48];
  if (v12)
  {
    v13 = [(LookupRequestOperation *)self _newLookupResponseWithResultsFromOperation:v5];
    [(LookupRequestOperation *)self _setLookupResponse:v13];
    v14 = [v13 valueForProperty:SSLookupPropertyIsAuthenticated];
    if (-[LookupRequestOperation personalizationStyle](self, "personalizationStyle") == 1 && (objc_opt_respondsToSelector() & 1) != 0 && ([v14 BOOLValue] & 1) == 0)
    {
      v15 = +[SSLogConfig sharedDaemonConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = shouldLog2 | 2;
      }

      else
      {
        v17 = shouldLog2;
      }

      if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v55 = 138412290;
        v56 = v18;
        LODWORD(v51) = 12;
        v49 = &v55;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          v21 = [NSString stringWithCString:v19 encoding:4, &v55, v51];
          free(v20);
          v49 = v21;
          SSFileLog();
        }
      }

      v53 = 0;
      v52 = 0;
      v22 = [(LookupRequestOperation *)self copyAccountID:&v53 credentialSource:0 byAuthenticatingWithContext:[(LookupRequestOperation *)self _authenticationContext] returningError:&v52];
      v23 = +[SSLogConfig sharedDaemonConfig];
      v24 = v23;
      if (v22)
      {
        if (!v23)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v26 = shouldLog3 | 2;
        }

        else
        {
          v26 = shouldLog3;
        }

        if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v26 &= 2u;
        }

        if (v26)
        {
          v27 = objc_opt_class();
          v55 = 138412546;
          v56 = v27;
          v57 = 2112;
          v58 = v53;
          LODWORD(v51) = 22;
          v49 = &v55;
          v28 = _os_log_send_and_compose_impl();
          if (v28)
          {
            v29 = v28;
            v30 = [NSString stringWithCString:v28 encoding:4, &v55, v51];
            free(v29);
            v49 = v30;
            SSFileLog();
          }
        }

        [(LookupRequestOperation *)self _setAccountID:v53, v49];
        v31 = [(LookupRequestOperation *)self _newStoreURLOperationWithBagKey:@"storeplatform-lookup-url"];
        [v31 setDelegate:self];
        v32 = +[SSLogConfig sharedDaemonConfig];
        if (!v32)
        {
          v32 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v32 shouldLog];
        if ([v32 shouldLogToDisk])
        {
          v34 = shouldLog4 | 2;
        }

        else
        {
          v34 = shouldLog4;
        }

        if (!os_log_type_enabled([v32 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v34 &= 2u;
        }

        if (v34)
        {
          v35 = objc_opt_class();
          v55 = 138412290;
          v56 = v35;
          LODWORD(v51) = 12;
          v50 = &v55;
          v36 = _os_log_send_and_compose_impl();
          if (v36)
          {
            v37 = v36;
            v38 = [NSString stringWithCString:v36 encoding:4, &v55, v51];
            free(v37);
            v50 = v38;
            SSFileLog();
          }
        }

        if ([(LookupRequestOperation *)self runSubOperation:v31 returningError:0, v50])
        {
          v39 = [(LookupRequestOperation *)self _newLookupResponseWithResultsFromOperation:v31];
          [(LookupRequestOperation *)self _setLookupResponse:v39];
        }

        [v31 setDelegate:0];
      }

      else
      {
        if (!v23)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v41 = shouldLog5 | 2;
        }

        else
        {
          v41 = shouldLog5;
        }

        if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v41 &= 2u;
        }

        if (v41)
        {
          v42 = objc_opt_class();
          v55 = 138412546;
          v56 = v42;
          v57 = 2112;
          v58 = v52;
          LODWORD(v51) = 22;
          v49 = &v55;
          v43 = _os_log_send_and_compose_impl();
          if (v43)
          {
            v44 = v43;
            v45 = [NSString stringWithCString:v43 encoding:4, &v55, v51];
            free(v44);
            v49 = v45;
            SSFileLog();
          }
        }
      }
    }
  }

  [v5 setDelegate:{0, v49}];

  if (lookup)
  {
    v46 = v12;
  }

  else
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    *lookup = v54;
  }

  return v12;
}

- (void)_setAccountID:(id)d
{
  authenticationContext = [(LookupRequestOperation *)self authenticationContext];
  if (([d isEqual:{-[SSAuthenticationContext requiredUniqueIdentifier](authenticationContext, "requiredUniqueIdentifier")}] & 1) == 0)
  {
    v6 = [(SSAuthenticationContext *)authenticationContext mutableCopy];
    if (!v6)
    {
      v6 = objc_alloc_init(SSMutableAuthenticationContext);
    }

    v7 = v6;
    [v6 setRequiredUniqueIdentifier:d];
    [(LookupRequestOperation *)self setAuthenticationContext:v7];
  }
}

- (void)_setLookupResponse:(id)response
{
  [(LookupRequestOperation *)self lock];
  response = self->_response;
  if (response != response)
  {

    self->_response = response;
  }

  [(LookupRequestOperation *)self unlock];
}

- (id)_URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:0];
  userAgent = [(LookupRequestOperation *)self userAgent];
  [(SSURLBagContext *)v3 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  return v3;
}

@end