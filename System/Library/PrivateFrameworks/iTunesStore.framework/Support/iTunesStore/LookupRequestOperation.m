@interface LookupRequestOperation
- (BOOL)_performJSSignLookupWithURLBag:(id)a3 error:(id *)a4;
- (BOOL)_performLocationLookup:(id *)a3;
- (BOOL)_performPlatformLookup:(id *)a3;
- (BOOL)shouldSuppressCookies;
- (LookupRequestOperation)initWithLookupProperties:(id)a3;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSAuthenticationContext)authenticationContext;
- (SSLookupProperties)lookupProperties;
- (SSLookupResponse)lookupResponse;
- (id)_URLBagContext;
- (id)_authenticationContext;
- (id)_newLookupResponseWithResultsFromOperation:(id)a3;
- (id)_newStoreURLOperationWithBagKey:(id)a3;
- (int64_t)personalizationStyle;
- (void)_setAccountID:(id)a3;
- (void)_setLookupResponse:(id)a3;
- (void)dealloc;
- (void)operation:(id)a3 willSendRequest:(id)a4;
- (void)run;
- (void)setAuthenticationContext:(id)a3;
- (void)setClientIdentifierHeader:(id)a3;
- (void)setPersonalizationStyle:(int64_t)a3;
- (void)setShouldSuppressCookies:(BOOL)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation LookupRequestOperation

- (LookupRequestOperation)initWithLookupProperties:(id)a3
{
  v6.receiver = self;
  v6.super_class = LookupRequestOperation;
  v4 = [(LookupRequestOperation *)&v6 init];
  if (v4)
  {
    v4->_properties = [a3 copy];
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

- (void)setAuthenticationContext:(id)a3
{
  [(LookupRequestOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != a3)
  {

    self->_authenticationContext = [a3 copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)a3
{
  [(LookupRequestOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != a3)
  {

    self->_clientIdentifierHeader = [a3 copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (void)setPersonalizationStyle:(int64_t)a3
{
  [(LookupRequestOperation *)self lock];
  self->_personalizationStyle = a3;

  [(LookupRequestOperation *)self unlock];
}

- (void)setShouldSuppressCookies:(BOOL)a3
{
  [(LookupRequestOperation *)self lock];
  self->_shouldSuppressCookies = a3;

  [(LookupRequestOperation *)self unlock];
}

- (BOOL)shouldSuppressCookies
{
  [(LookupRequestOperation *)self lock];
  shouldSuppressCookies = self->_shouldSuppressCookies;
  [(LookupRequestOperation *)self unlock];
  return shouldSuppressCookies;
}

- (void)setUserAgent:(id)a3
{
  [(LookupRequestOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != a3)
  {

    self->_userAgent = [a3 copy];
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

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
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

- (void)operation:(id)a3 willSendRequest:(id)a4
{
  v7 = objc_alloc_init(NSDateFormatter);
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v7 setLocale:v5];
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v6 = [v7 stringFromDate:{+[NSDate date](NSDate, "date")}];
  if (v6)
  {
    [a4 setValue:v6 forHTTPHeaderField:@"X-Request-TimeStamp"];
  }
}

- (id)_authenticationContext
{
  v3 = [(LookupRequestOperation *)self authenticationContext];
  v4 = [(SSAuthenticationContext *)v3 HTTPHeaders];
  v5 = SSHTTPHeaderUserAgent;
  if ([v4 objectForKey:SSHTTPHeaderUserAgent])
  {
    return v3;
  }

  v7 = [(LookupRequestOperation *)self userAgent];
  if (!v7)
  {
    return v3;
  }

  v8 = v7;
  v9 = [(SSAuthenticationContext *)v3 mutableCopy];
  [v9 setValue:v8 forHTTPHeaderField:v5];

  return v9;
}

- (id)_newLookupResponseWithResultsFromOperation:(id)a3
{
  v4 = [[SSLookupResponse alloc] initWithResponseDictionary:{objc_msgSend(objc_msgSend(a3, "dataProvider"), "output")}];
  v5 = [a3 response];
  if (v5)
  {
    [v5 itunes_expirationInterval];
    if (v6 >= 0.0)
    {
      [v4 setExpirationDate:{+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:")}];
    }
  }

  return v4;
}

- (id)_newStoreURLOperationWithBagKey:(id)a3
{
  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setAuthenticationContext:{-[LookupRequestOperation authenticationContext](self, "authenticationContext")}];
  [v5 setCanSendGUIDParameter:0];
  [v5 setDataProvider:{+[ISJSONDataProvider provider](ISJSONDataProvider, "provider")}];
  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setClientIdentifier:{-[LookupRequestOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v6 setURLBagKey:a3];
  v7 = [(SSLookupProperties *)self->_properties timeoutInterval];
  if (v7)
  {
    v8 = v7;
    [v6 setAllowedRetryCount:0];
    [v8 doubleValue];
    [v6 setTimeoutInterval:?];
  }

  else
  {
    [v6 setAllowedRetryCount:2];
  }

  v9 = [(LookupRequestOperation *)self userAgent];
  if (!v9)
  {
    if (a3 != @"nearby-apps")
    {
      goto LABEL_7;
    }

    v9 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  }

  [v6 setValue:v9 forHTTPHeaderField:SSHTTPHeaderUserAgent];
LABEL_7:
  v10 = [(SSLookupProperties *)self->_properties copyRequestParameters];
  [v6 setRequestParameters:v10];

  [v5 setRequestProperties:v6];
  return v5;
}

- (BOOL)_performJSSignLookupWithURLBag:(id)a3 error:(id *)a4
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
  v7 = [[SSVPlatformContext alloc] initWithBagDictionary:{objc_msgSend(a3, "URLBagDictionary")}];
  if ([v7 unpersonalizedLookupURLString])
  {
    v8 = [[SSVPlatformRequestOperation alloc] initWithPlatformContext:v7];
    [v8 setKeyProfile:{-[SSLookupProperties keyProfile](self->_properties, "keyProfile")}];
    [v8 setStoreFrontSuffix:{objc_msgSend(a3, "valueForKey:", @"storefront-header-suffix"}];
    [v8 _setUserAgent:{-[LookupRequestOperation userAgent](self, "userAgent")}];
    if ([(LookupRequestOperation *)self personalizationStyle]== 2)
    {
      [v8 setShouldSuppressUserInfo:1];
    }

    [v8 setShouldSuppressCookies:{-[LookupRequestOperation shouldSuppressCookies](self, "shouldSuppressCookies")}];
    v9 = [(SSLookupProperties *)self->_properties copyRequestParameters];
    [v9 removeObjectForKey:SSLookupParameterKeyProfile];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001AABC8;
    v15[3] = &unk_10032B0A0;
    v15[4] = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v15];

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
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v12 = *(v11 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12 & 1;
}

- (BOOL)_performLocationLookup:(id *)a3
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

  v6 = [v5 shouldLog];
  v7 = [v5 shouldLogToDisk];
  v8 = [v5 OSLogObject];
  if (v7)
  {
    v6 |= 2u;
  }

  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
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

  v13 = [(LookupRequestOperation *)self _URLBagContext];
  v14 = [-[LookupRequestOperation loadedURLBagWithContext:returningError:](self loadedURLBagWithContext:v13 returningError:{v24 + 5), "valueForKey:", @"nearby-apps"}];
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
  if (a3 && (v30[3] & 1) == 0)
  {
    *a3 = v24[5];
    v18 = *(v17 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v18 & 1;
}

- (BOOL)_performPlatformLookup:(id *)a3
{
  v54 = 0;
  v5 = [(LookupRequestOperation *)self _newStoreURLOperationWithBagKey:@"storeplatform-lookup-url"];
  [v5 setDelegate:self];
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
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

      v16 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
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

        v25 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v26 = v25 | 2;
        }

        else
        {
          v26 = v25;
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

        v33 = [v32 shouldLog];
        if ([v32 shouldLogToDisk])
        {
          v34 = v33 | 2;
        }

        else
        {
          v34 = v33;
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

        v40 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v41 = v40 | 2;
        }

        else
        {
          v41 = v40;
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

  if (a3)
  {
    v46 = v12;
  }

  else
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    *a3 = v54;
  }

  return v12;
}

- (void)_setAccountID:(id)a3
{
  v5 = [(LookupRequestOperation *)self authenticationContext];
  if (([a3 isEqual:{-[SSAuthenticationContext requiredUniqueIdentifier](v5, "requiredUniqueIdentifier")}] & 1) == 0)
  {
    v6 = [(SSAuthenticationContext *)v5 mutableCopy];
    if (!v6)
    {
      v6 = objc_alloc_init(SSMutableAuthenticationContext);
    }

    v7 = v6;
    [v6 setRequiredUniqueIdentifier:a3];
    [(LookupRequestOperation *)self setAuthenticationContext:v7];
  }
}

- (void)_setLookupResponse:(id)a3
{
  [(LookupRequestOperation *)self lock];
  response = self->_response;
  if (response != a3)
  {

    self->_response = a3;
  }

  [(LookupRequestOperation *)self unlock];
}

- (id)_URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:0];
  v4 = [(LookupRequestOperation *)self userAgent];
  [(SSURLBagContext *)v3 setValue:v4 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  return v3;
}

@end