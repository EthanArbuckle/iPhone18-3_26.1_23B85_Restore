@interface CloudServiceAPITokenOperation
- (NSString)clientToken;
- (NSString)requestingBundleID;
- (NSString)requestingBundleVersion;
- (SSAuthenticationContext)authenticationContext;
- (id)responseBlock;
- (void)run;
- (void)setAuthenticationContext:(id)a3;
- (void)setClientToken:(id)a3;
- (void)setRequestingBundleID:(id)a3;
- (void)setRequestingBundleVersion:(id)a3;
- (void)setResponseBlock:(id)a3;
@end

@implementation CloudServiceAPITokenOperation

- (NSString)clientToken
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(NSString *)self->_clientToken copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setClientToken:(id)a3
{
  v4 = a3;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [v4 copy];

  clientToken = self->_clientToken;
  self->_clientToken = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (NSString)requestingBundleID
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(NSString *)self->_requestingBundleID copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setRequestingBundleID:(id)a3
{
  v4 = a3;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [v4 copy];

  requestingBundleID = self->_requestingBundleID;
  self->_requestingBundleID = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (NSString)requestingBundleVersion
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(NSString *)self->_requestingBundleVersion copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setRequestingBundleVersion:(id)a3
{
  v4 = a3;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [v4 copy];

  requestingBundleVersion = self->_requestingBundleVersion;
  self->_requestingBundleVersion = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (SSAuthenticationContext)authenticationContext
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)a3
{
  v4 = a3;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [v4 copy];

  authenticationContext = self->_authenticationContext;
  self->_authenticationContext = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (void)setResponseBlock:(id)a3
{
  v6 = a3;
  [(CloudServiceAPITokenOperation *)self lock];
  if (self->_responseBlock != v6)
  {
    v4 = [v6 copy];
    responseBlock = self->_responseBlock;
    self->_responseBlock = v4;
  }

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (id)responseBlock
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [self->_responseBlock copy];
  [(CloudServiceAPITokenOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)run
{
  v74 = 0;
  v3 = [(CloudServiceAPITokenOperation *)self copyAccountID:&v74 credentialSource:0 byAuthenticatingWithContext:self->_authenticationContext returningError:0];
  v4 = v74;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8 = objc_alloc_init(ISStoreURLOperation);
    v9 = +[DaemonProtocolDataProvider provider];
    [v8 setDataProvider:v9];

    v71 = [(CloudServiceAPITokenOperation *)self authenticationContext];
    [v8 setAuthenticationContext:?];
    v10 = objc_alloc_init(SSMutableURLRequestProperties);
    v85[0] = SSHTTPHeaderXAppleRequestingBundleID;
    v11 = [(NSString *)self->_requestingBundleID copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_10033CC30;
    }

    v86[0] = v13;
    v85[1] = SSHTTPHeaderXAppleRequestingBundleVersion;
    v14 = [(NSString *)self->_requestingBundleVersion copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_10033CC30;
    }

    v86[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
    [v10 setHTTPHeaders:v17];

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = [(NSString *)self->_clientToken copy];
    if ([v19 length])
    {
      [v18 setObject:v19 forKey:@"assertion"];
    }

    v69 = v19;
    v20 = +[SSDevice currentDevice];
    v21 = [v20 uniqueDeviceIdentifier];

    if ([v21 length])
    {
      [v18 setObject:v21 forKey:@"guid"];
    }

    if (!self->_requestingBundleID || (-[objc_class standardDefaults](off_1003834E0(), "standardDefaults"), v22 = objc_claimAutoreleasedReturnValue(), [v22 mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "objectForKey:", self->_requestingBundleID), v24 = objc_claimAutoreleasedReturnValue(), v23, v22, (v25 = v24) == 0))
    {
      v25 = +[NSDate date];
    }

    v67 = v25;
    [v25 timeIntervalSince1970];
    v27 = [NSString stringWithFormat:@"%lld", llround(v26 * 1000.0)];
    [v18 setObject:v27 forKey:@"tcc-acceptance-date"];

    v28 = [NSJSONSerialization dataWithJSONObject:v18 options:1 error:0];
    [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v66 = v28;
    [v10 setHTTPBody:v28];
    [v10 setHTTPMethod:@"POST"];
    [v10 setURLBagKey:@"createMusicToken"];
    [v8 setRequestProperties:v10];
    v73 = 0;
    LODWORD(v28) = [(CloudServiceAPITokenOperation *)self runSubOperation:v8 returningError:&v73];
    v29 = v73;
    v70 = v18;
    v68 = v21;
    v72 = v29;
    if (!v28)
    {
      if (v29)
      {
        v41 = [v29 userInfo];
        v42 = [v41 objectForKeyedSubscript:SSErrorHTTPStatusCodeKey];

        if (objc_opt_respondsToSelector())
        {
          v43 = [v42 integerValue];
          v44 = v43 == 403;
          if (v43 == 403)
          {
            v45 = 107;
          }

          else
          {
            v45 = 109;
          }
        }

        else
        {
          v44 = 0;
          v45 = 109;
        }

        v81 = NSUnderlyingErrorKey;
        v82 = v72;
        v48 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      }

      else
      {
        v48 = 0;
        v44 = 0;
        v45 = 109;
      }

      v49 = [NSError errorWithDomain:SSErrorDomain code:v45 userInfo:v48];
      v7 = [[SSVCloudServiceAPITokenResponse alloc] initWithToken:0 error:v49];

      if (!v44)
      {
        goto LABEL_58;
      }

      goto LABEL_45;
    }

    v30 = [v8 response];
    v31 = [v8 dataProvider];
    v32 = [v31 output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v32 = 0;
    }

    v33 = [v30 statusCode];
    v65 = v5;
    if (v33 == 403)
    {
      v34 = [v32 objectForKey:@"error_description"];
      v35 = v34;
      v36 = &stru_10033CC30;
      if (v34)
      {
        v36 = v34;
      }

      v37 = v36;

      v38 = SSErrorDomain;
      v83 = NSLocalizedDescriptionKey;
      v84 = v37;
      v39 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v40 = [NSError errorWithDomain:v38 code:107 userInfo:v39];
    }

    else
    {
      if ([v30 statusCode] == 200)
      {
        v46 = [v32 objectForKey:@"music_token"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v46;
          v40 = 0;
        }

        else
        {
          v40 = [NSError errorWithDomain:SSErrorDomain code:100 userInfo:0];
          v47 = 0;
        }

LABEL_44:
        v7 = [[SSVCloudServiceAPITokenResponse alloc] initWithToken:v47 error:v40];

        v5 = v65;
        if (v33 != 403)
        {
LABEL_58:

          goto LABEL_59;
        }

LABEL_45:
        v50 = TCCAccessSetForBundleId();
        v51 = +[SSLogConfig sharedDaemonConfig];
        if (!v51)
        {
          v51 = +[SSLogConfig sharedConfig];
        }

        v52 = [v51 shouldLog];
        if ([v51 shouldLogToDisk])
        {
          v52 |= 2u;
        }

        v53 = [v51 OSLogObject];
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v52 &= 2u;
        }

        if (v52)
        {
          v54 = objc_opt_class();
          requestingBundleID = self->_requestingBundleID;
          v56 = @"succeeded";
          v75 = 138543874;
          v76 = v54;
          v77 = 2114;
          if (!v50)
          {
            v56 = @"failed";
          }

          v78 = requestingBundleID;
          v79 = 2114;
          v80 = v56;
          v57 = v54;
          LODWORD(v64) = 32;
          v63 = &v75;
          v58 = _os_log_send_and_compose_impl();

          if (!v58)
          {
            goto LABEL_57;
          }

          v53 = [NSString stringWithCString:v58 encoding:4, &v75, v64];
          free(v58);
          v63 = v53;
          SSFileLog();
        }

LABEL_57:
        goto LABEL_58;
      }

      v40 = [NSError errorWithDomain:SSErrorDomain code:109 userInfo:0];
    }

    v47 = 0;
    goto LABEL_44;
  }

  v8 = [NSError errorWithDomain:SSErrorDomain code:114 userInfo:0];
  v7 = [[SSVCloudServiceAPITokenResponse alloc] initWithToken:0 error:v8];
LABEL_59:

  [(CloudServiceAPITokenOperation *)self lock];
  v59 = objc_retainBlock(self->_responseBlock);
  responseBlock = self->_responseBlock;
  self->_responseBlock = 0;

  [(CloudServiceAPITokenOperation *)self unlock];
  v59[2](v59, v7);
  v61 = [v7 error];
  [(CloudServiceAPITokenOperation *)self setError:v61];

  v62 = [v7 error];
  [(CloudServiceAPITokenOperation *)self setSuccess:v62 != 0, v63];
}

@end