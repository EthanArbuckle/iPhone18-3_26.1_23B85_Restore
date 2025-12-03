@interface URLConnectionRequestOperation
- (BOOL)_shouldSendMachineDataHeadersForProperties:(id)properties;
- (BOOL)sendsResponseForHTTPFailures;
- (BOOL)shouldMescalSign;
- (NSURL)destinationFileURL;
- (SSAuthenticationContext)authenticationContext;
- (SSURLConnectionResponse)URLResponse;
- (SSURLRequestProperties)requestProperties;
- (URLConnectionRequestOperation)initWithRequestProperties:(id)properties;
- (id)_accountIdentifier;
- (id)_metricsPageEventWithResponse:(id)response performance:(id)performance;
- (id)_newStoreURLOperationWithProperties:(id)properties;
- (void)_addKBSyncDataToRequestProperties:(id)properties forAccountID:(id)d;
- (void)_importKeybagFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)operation:(id)operation didAuthenticateWithDSID:(id)d;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setDestinationFileURL:(id)l;
- (void)setSendsResponseForHTTPFailures:(BOOL)failures;
- (void)setShouldMescalSign:(BOOL)sign;
@end

@implementation URLConnectionRequestOperation

- (URLConnectionRequestOperation)initWithRequestProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = URLConnectionRequestOperation;
  v4 = [(URLConnectionRequestOperation *)&v6 init];
  if (v4)
  {
    v4->_properties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = URLConnectionRequestOperation;
  [(URLConnectionRequestOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(URLConnectionRequestOperation *)self lock];
  v3 = self->_authenticationContext;
  [(URLConnectionRequestOperation *)self unlock];
  return v3;
}

- (NSURL)destinationFileURL
{
  [(URLConnectionRequestOperation *)self lock];
  v3 = [(NSURL *)self->_destinationFileURL copy];
  [(URLConnectionRequestOperation *)self unlock];
  return v3;
}

- (SSURLRequestProperties)requestProperties
{
  v2 = self->_properties;

  return v2;
}

- (BOOL)sendsResponseForHTTPFailures
{
  [(URLConnectionRequestOperation *)self lock];
  sendsResponseForHTTPFailures = self->_sendsResponseForHTTPFailures;
  [(URLConnectionRequestOperation *)self unlock];
  return sendsResponseForHTTPFailures;
}

- (void)setAuthenticationContext:(id)context
{
  [(URLConnectionRequestOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(URLConnectionRequestOperation *)self unlock];
}

- (void)setDestinationFileURL:(id)l
{
  [(URLConnectionRequestOperation *)self lock];
  destinationFileURL = self->_destinationFileURL;
  if (destinationFileURL != l)
  {

    self->_destinationFileURL = [l copy];
  }

  [(URLConnectionRequestOperation *)self unlock];
}

- (void)setSendsResponseForHTTPFailures:(BOOL)failures
{
  [(URLConnectionRequestOperation *)self lock];
  self->_sendsResponseForHTTPFailures = failures;

  [(URLConnectionRequestOperation *)self unlock];
}

- (void)setShouldMescalSign:(BOOL)sign
{
  [(URLConnectionRequestOperation *)self lock];
  self->_shouldMescalSign = sign;

  [(URLConnectionRequestOperation *)self unlock];
}

- (BOOL)shouldMescalSign
{
  [(URLConnectionRequestOperation *)self lock];
  shouldMescalSign = self->_shouldMescalSign;
  [(URLConnectionRequestOperation *)self unlock];
  return shouldMescalSign;
}

- (SSURLConnectionResponse)URLResponse
{
  [(URLConnectionRequestOperation *)self lock];
  v3 = self->_response;
  [(URLConnectionRequestOperation *)self unlock];
  return v3;
}

- (void)run
{
  v20 = 0;
  destinationFileURL = [(URLConnectionRequestOperation *)self destinationFileURL];
  v4 = destinationFileURL;
  if (!destinationFileURL)
  {
    v7 = self->_properties;
    goto LABEL_6;
  }

  isFileURL = [(NSURL *)destinationFileURL isFileURL];
  v6 = self->_properties;
  v7 = v6;
  if (!isFileURL)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (([(SSURLRequestProperties *)v6 shouldDecodeResponse]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v18 = [(SSURLRequestProperties *)v7 mutableCopy];
    v8 = 1;
    [v18 setShouldDecodeResponse:1];

    v7 = v18;
  }

LABEL_7:
  if (([(SSURLRequestProperties *)v7 isITunesStoreRequest]& 1) != 0 || [(URLConnectionRequestOperation *)self shouldMescalSign])
  {
    v9 = [(URLConnectionRequestOperation *)self _newStoreURLOperationWithProperties:v7];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = objc_alloc_init(ISURLOperation);
  [v9 setDataProvider:{+[ISDataProvider provider](ISDataProvider, "provider")}];
  [v9 setRequestProperties:v7];
  if (v8)
  {
LABEL_10:
    path = [(NSURL *)v4 path];
    v11 = objc_alloc_init(NSFileManager);
    [v11 createDirectoryAtPath:-[NSString stringByDeletingLastPathComponent](path withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, 0}];

    v12 = +[ISHashedDownloadProvider provider];
    [v12 setLocalFilePath:path];
    [v9 setDataProvider:v12];
  }

LABEL_11:
  [v9 setDelegate:self];
  [v9 _setLoadsHTTPFailures:{-[URLConnectionRequestOperation sendsResponseForHTTPFailures](self, "sendsResponseForHTTPFailures")}];
  [v9 setTracksPerformanceMetrics:1];
  v13 = [(URLConnectionRequestOperation *)self runSubOperation:v9 returningError:&v20];
  response = [v9 response];
  if (v13)
  {
    v15 = response;
    v16 = [objc_msgSend(v9 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(SSURLRequestProperties *)v7 isITunesStoreRequest]&& [(SSURLRequestProperties *)v7 KBSyncType])
      {
        [(URLConnectionRequestOperation *)self _importKeybagFromDictionary:v16];
      }

      v16 = [NSPropertyListSerialization dataWithPropertyList:v16 format:100 options:0 error:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(SSURLRequestProperties *)v7 isITunesStoreRequest])
        {
          if ([(SSURLRequestProperties *)v7 KBSyncType])
          {
            v17 = [+[SSVURLProtocolConsumer consumer](SSVURLProtocolConsumer "consumer")];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(URLConnectionRequestOperation *)self _importKeybagFromDictionary:v17];
            }
          }
        }
      }

      else
      {
        v16 = 0;
      }
    }

    [(URLConnectionRequestOperation *)self lock];

    v19 = [[SSURLConnectionResponse alloc] initWithURLResponse:v15 bodyData:v16];
    self->_response = v19;
    -[SSURLConnectionResponse setMetricsPageEvent:](v19, "setMetricsPageEvent:", -[URLConnectionRequestOperation _metricsPageEventWithResponse:performance:](self, "_metricsPageEventWithResponse:performance:", v15, [v9 performanceMetrics]));
    [(URLConnectionRequestOperation *)self unlock];
  }

  [v9 setDelegate:0];
  [(URLConnectionRequestOperation *)self setError:v20];
  [(URLConnectionRequestOperation *)self setSuccess:v13];
}

- (void)operation:(id)operation didAuthenticateWithDSID:(id)d
{
  _requestProperties = [operation _requestProperties];

  [(URLConnectionRequestOperation *)self _addKBSyncDataToRequestProperties:_requestProperties forAccountID:d];
}

- (id)_accountIdentifier
{
  result = [(SSAuthenticationContext *)[(URLConnectionRequestOperation *)self authenticationContext] requiredUniqueIdentifier];
  if (!result)
  {
    v3 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];

    return [v3 uniqueIdentifier];
  }

  return result;
}

- (void)_addKBSyncDataToRequestProperties:(id)properties forAccountID:(id)d
{
  kBSyncType = [properties KBSyncType];
  if (d && kBSyncType)
  {
    if (kBSyncType == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 9;
    }

    v8 = sub_1000B18E8([d unsignedLongLongValue], v7);
    if ([(__CFData *)v8 length])
    {
      [(__CFData *)v8 bytes];
      [(__CFData *)v8 length];
      v9 = ISCopyEncodedBase64();
      if (v9)
      {
        v10 = v9;
        v11 = +[SSLogConfig sharedDaemonConfig];
        if (!v11)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = shouldLog | 2;
        }

        else
        {
          v13 = shouldLog;
        }

        if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v13 &= 2u;
        }

        if (v13)
        {
          v19 = 138413058;
          v20 = objc_opt_class();
          v21 = 2112;
          dCopy = d;
          v23 = 2048;
          v24 = v7;
          v25 = 2048;
          v26 = [v10 length];
          LODWORD(v18) = 42;
          v17 = &v19;
          v14 = _os_log_send_and_compose_impl();
          if (v14)
          {
            v15 = v14;
            v16 = [NSString stringWithCString:v14 encoding:4, &v19, v18];
            free(v15);
            v17 = v16;
            SSFileLog();
          }
        }

        [properties setValue:v10 forRequestParameter:{@"kbsync", v17}];
      }
    }
  }
}

- (void)_importKeybagFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"keybag"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {

    sub_1000B29AC(v3);
  }
}

- (id)_metricsPageEventWithResponse:(id)response performance:(id)performance
{
  v6 = objc_alloc_init(SSMetricsPageEvent);
  [v6 setPageURL:{objc_msgSend(objc_msgSend(response, "URL"), "absoluteString")}];
  [performance startTime];
  v8 = v7;
  [+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate timeIntervalSince1970];
  [v6 setRequestStartTime:?];
  [performance receivedResponseInterval];
  [[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
  [v6 setResponseStartTime:?];
  [performance finishInterval];
  [[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
  [v6 setResponseEndTime:?];
  [response allHeaderFields];
  [v6 setServerApplicationInstance:ISDictionaryValueForCaseInsensitiveString()];
  [v6 setServerTiming:ISDictionaryValueForCaseInsensitiveString()];

  return v6;
}

- (id)_newStoreURLOperationWithProperties:(id)properties
{
  v5 = objc_alloc_init(ISStoreURLOperation);
  shouldProcessProtocol = [properties shouldProcessProtocol];
  v7 = off_1003251E0;
  if (!shouldProcessProtocol)
  {
    v7 = ISDataProvider_ptr;
  }

  [v5 setDataProvider:{objc_msgSend(*v7, "provider")}];
  if ([properties shouldSendSecureToken])
  {
    [v5 setShouldSendXTokenHeader:1];
  }

  [v5 setAuthenticationContext:{-[URLConnectionRequestOperation authenticationContext](self, "authenticationContext")}];
  v8 = [properties mutableCopy];
  [(URLConnectionRequestOperation *)self _addKBSyncDataToRequestProperties:v8 forAccountID:[(URLConnectionRequestOperation *)self _accountIdentifier]];
  if ([(URLConnectionRequestOperation *)self _shouldSendMachineDataHeadersForProperties:v8])
  {
    machineDataStyle = 1;
LABEL_8:
    [v5 setMachineDataStyle:machineDataStyle];
    goto LABEL_9;
  }

  machineDataStyle = [v8 machineDataStyle];
  if (machineDataStyle)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v5 setRequestProperties:v8];

  [v5 _setShouldSetCookies:{objc_msgSend(properties, "shouldSetCookies")}];
  return v5;
}

- (BOOL)_shouldSendMachineDataHeadersForProperties:(id)properties
{
  uRLBagKey = [properties URLBagKey];
  if (!uRLBagKey)
  {
    v7 = [objc_msgSend(properties "URL")];
    v6 = 1;
    if ([v7 rangeOfString:@"buyProduct" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 1;
      if ([v7 rangeOfString:@"redeemCodeSrv" options:1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        return [v7 rangeOfString:@"giftBuySrv" options:1] != 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    return v6;
  }

  v5 = uRLBagKey;
  if ([uRLBagKey isEqualToString:@"buyProduct"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"redeemCodeSrv"))
  {
    return 1;
  }

  return [v5 isEqualToString:@"giftBuySrv"];
}

@end