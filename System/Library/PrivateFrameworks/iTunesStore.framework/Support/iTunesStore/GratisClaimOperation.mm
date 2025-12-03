@interface GratisClaimOperation
- (BOOL)suppressesErrorDialogs;
- (GratisClaimOperation)initWithPurchase:(id)purchase;
- (GratisClaimOperation)initWithRequestBody:(id)body;
- (NSData)clientAuditTokenData;
- (NSDictionary)rawOutput;
- (NSString)authenticationReasonDescription;
- (SSURLConnectionResponse)URLResponse;
- (id)_accountID;
- (id)_authenticationContext;
- (id)_bodyData;
- (id)_newDefaultRequestProperties;
- (id)_newRetryRequestPropertiesWithURL:(id)l;
- (void)dealloc;
- (void)operation:(id)operation didAuthenticateWithDSID:(id)d;
- (void)run;
- (void)setAuthenticationReasonDescription:(id)description;
- (void)setClientAuditTokenData:(id)data;
- (void)setSuppressesErrorDialogs:(BOOL)dialogs;
@end

@implementation GratisClaimOperation

- (GratisClaimOperation)initWithPurchase:(id)purchase
{
  v10.receiver = self;
  v10.super_class = GratisClaimOperation;
  v4 = [(GratisClaimOperation *)&v10 init];
  if (v4)
  {
    v4->_accountID = [purchase accountIdentifier];
    v4->_defaultRequestProperties = [purchase requestProperties];
    v4->_suppressesErrorDialogs = [objc_msgSend(purchase valueForDownloadProperty:{SSDownloadPropertyShouldSuppressErrorDialogs), "BOOLValue"}];
    v5 = [[SSVGratisRequestBody alloc] initWithRequestStyle:1];
    v4->_requestBody = v5;
    [(SSVGratisRequestBody *)v5 setAccountIdentifier:v4->_accountID];
    gratisIdentifiers = [purchase gratisIdentifiers];
    if ([gratisIdentifiers count])
    {
      [gratisIdentifiers objectAtIndex:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      requestBody = v4->_requestBody;
      if (isKindOfClass)
      {
        [(SSVGratisRequestBody *)requestBody setItemIdentifiers:gratisIdentifiers];
      }

      else
      {
        [(SSVGratisRequestBody *)requestBody setBundleIdentifiers:gratisIdentifiers];
      }
    }
  }

  return v4;
}

- (GratisClaimOperation)initWithRequestBody:(id)body
{
  v6.receiver = self;
  v6.super_class = GratisClaimOperation;
  v4 = [(GratisClaimOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = [objc_msgSend(body "accountIdentifier")];
    v4->_requestBody = [body copy];
    v4->_suppressesErrorDialogs = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GratisClaimOperation;
  [(GratisClaimOperation *)&v3 dealloc];
}

- (NSString)authenticationReasonDescription
{
  [(GratisClaimOperation *)self lock];
  v3 = self->_authenticationReasonDescription;
  [(GratisClaimOperation *)self unlock];

  return v3;
}

- (NSData)clientAuditTokenData
{
  [(GratisClaimOperation *)self lock];
  v3 = self->_clientAuditTokenData;
  [(GratisClaimOperation *)self unlock];

  return v3;
}

- (NSDictionary)rawOutput
{
  [(GratisClaimOperation *)self lock];
  v3 = self->_rawOutput;
  [(GratisClaimOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationReasonDescription:(id)description
{
  [(GratisClaimOperation *)self lock];
  authenticationReasonDescription = self->_authenticationReasonDescription;
  if (authenticationReasonDescription != description)
  {

    self->_authenticationReasonDescription = [description copy];
  }

  [(GratisClaimOperation *)self unlock];
}

- (void)setClientAuditTokenData:(id)data
{
  [(GratisClaimOperation *)self lock];
  clientAuditTokenData = self->_clientAuditTokenData;
  if (clientAuditTokenData != data)
  {

    self->_clientAuditTokenData = data;
  }

  [(GratisClaimOperation *)self unlock];
}

- (void)setSuppressesErrorDialogs:(BOOL)dialogs
{
  [(GratisClaimOperation *)self lock];
  self->_suppressesErrorDialogs = dialogs;

  [(GratisClaimOperation *)self unlock];
}

- (BOOL)suppressesErrorDialogs
{
  [(GratisClaimOperation *)self lock];
  suppressesErrorDialogs = self->_suppressesErrorDialogs;
  [(GratisClaimOperation *)self unlock];
  return suppressesErrorDialogs;
}

- (SSURLConnectionResponse)URLResponse
{
  [(GratisClaimOperation *)self lock];
  v3 = self->_urlResponse;
  [(GratisClaimOperation *)self unlock];

  return v3;
}

- (void)run
{
  _newDefaultRequestProperties = [(GratisClaimOperation *)self _newDefaultRequestProperties];
  v4 = &CFDictionaryGetValue_ptr;
  p_cache = &OBJC_METACLASS___AMSPurchaseShim.cache;
  v6 = &CFDictionaryGetValue_ptr;
  do
  {
    context = objc_autoreleasePoolPush();
    v7 = objc_alloc_init(v4[304]);
    [v7 setDelegate:self];
    [v7 setShouldSendXTokenHeader:1];
    _authenticationContext = [(GratisClaimOperation *)self _authenticationContext];
    [v7 setAuthenticationContext:_authenticationContext];
    provider = [p_cache + 123 provider];
    [provider setAuthenticationContext:_authenticationContext];
    [v7 setDataProvider:provider];
    [v7 setRequestProperties:_newDefaultRequestProperties];
    sharedDaemonConfig = [v6[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v6[412] sharedConfig];
    }

    shouldLog = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled([sharedDaemonConfig OSLogObject], OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v12 = objc_opt_class();
      requestBody = self->_requestBody;
      *v33 = 138412546;
      *&v33[4] = v12;
      v34 = 2112;
      v35 = requestBody;
      LODWORD(v30) = 22;
      v29 = v33;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4, v33, v30];
        free(v15);
        v29 = v16;
        SSFileLog();
      }
    }

    *v33 = 0;
    v17 = [(GratisClaimOperation *)self runSubOperation:v7 returningError:v33, v29];
    redirectedClaimURL = [provider redirectedClaimURL];
    if (redirectedClaimURL)
    {

      _newDefaultRequestProperties = [(GratisClaimOperation *)self _newRetryRequestPropertiesWithURL:redirectedClaimURL];
    }

    else
    {
      [(GratisClaimOperation *)self lock];
      output = [provider output];
      if (output)
      {
        v20 = output;
        v31 = [NSPropertyListSerialization dataWithPropertyList:output format:100 options:0 error:0];
        self->_rawOutput = v20;
        v21 = _newDefaultRequestProperties;
        v22 = v6;
        v23 = p_cache;
        v24 = v4;
        v25 = [SSURLConnectionResponse alloc];
        response = [v7 response];
        v27 = v25;
        v4 = v24;
        p_cache = v23;
        v6 = v22;
        _newDefaultRequestProperties = v21;
        self->_urlResponse = [v27 initWithURLResponse:response bodyData:v31];
        v28 = [v20 objectForKey:@"duAnonymousPings"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [PurchaseOperation reportAnonymousPings:v28];
        }
      }

      [(GratisClaimOperation *)self unlock];
      [(GratisClaimOperation *)self setError:*v33];
      [(GratisClaimOperation *)self setSuccess:v17];
    }

    [v7 setDelegate:0];

    objc_autoreleasePoolPop(context);
  }

  while (redirectedClaimURL);
}

- (void)operation:(id)operation didAuthenticateWithDSID:(id)d
{
  [(GratisClaimOperation *)self lock];

  self->_accountID = [d copy];
  [(GratisClaimOperation *)self unlock];
  _authenticationContext = [(GratisClaimOperation *)self _authenticationContext];
  [objc_msgSend(operation "dataProvider")];
  [operation setAuthenticationContext:_authenticationContext];
  _requestProperties = [operation _requestProperties];
  _bodyData = [(GratisClaimOperation *)self _bodyData];

  [_requestProperties setHTTPBody:_bodyData];
}

- (id)_accountID
{
  [(GratisClaimOperation *)self lock];
  v3 = self->_accountID;
  [(GratisClaimOperation *)self unlock];
  if (v3)
  {
    return v3;
  }

  accountIdentifier = [(SSVGratisRequestBody *)self->_requestBody accountIdentifier];
  if (accountIdentifier)
  {
    return accountIdentifier;
  }

  v6 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];

  return [v6 uniqueIdentifier];
}

- (id)_authenticationContext
{
  v3 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:{-[GratisClaimOperation _accountID](self, "_accountID")}];
  if ([(GratisClaimOperation *)self suppressesErrorDialogs])
  {
    [v3 setPromptStyle:1000];
    [v3 setShouldSuppressDialogs:1];
  }

  [v3 setReasonDescription:{-[GratisClaimOperation authenticationReasonDescription](self, "authenticationReasonDescription")}];
  hTTPHeaders = [(SSURLRequestProperties *)self->_defaultRequestProperties HTTPHeaders];
  [v3 setValue:objc_msgSend(hTTPHeaders forHTTPHeaderField:{"objectForKey:", SSHTTPHeaderUserAgent), SSHTTPHeaderUserAgent}];

  return v3;
}

- (id)_bodyData
{
  v3 = [(SSVGratisRequestBody *)self->_requestBody copy];
  _accountID = [(GratisClaimOperation *)self _accountID];
  [v3 setAccountIdentifier:_accountID];
  if (_accountID)
  {
    v5 = sub_1000B18E8([_accountID unsignedLongLongValue], 1);
    v6 = [(__CFData *)v5 base64EncodedStringWithOptions:0];
    if (v6)
    {
      [v3 setValue:v6 forBodyParameter:@"kbsync"];
    }
  }

  propertyListBodyData = [v3 propertyListBodyData];

  return propertyListBodyData;
}

- (id)_newDefaultRequestProperties
{
  v3 = [(SSURLRequestProperties *)self->_defaultRequestProperties mutableCopy];
  if (!v3)
  {
    v3 = objc_alloc_init(SSMutableURLRequestProperties);
  }

  [v3 setAllowedRetryCount:0];
  [v3 setClientAuditTokenData:{-[GratisClaimOperation clientAuditTokenData](self, "clientAuditTokenData")}];
  [v3 setITunesStoreRequest:1];
  [v3 setHTTPBody:{-[GratisClaimOperation _bodyData](self, "_bodyData")}];
  [v3 setHTTPMethod:@"POST"];
  [v3 setURLBagKey:@"up-to-date-claim"];
  [v3 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v4 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  if (v4)
  {
    [v3 setValue:v4 forHTTPHeaderField:SSHTTPHeaderXAppleTADevice];
  }

  return v3;
}

- (id)_newRetryRequestPropertiesWithURL:(id)l
{
  v4 = [[SSMutableURLRequestProperties alloc] initWithURL:l];
  [v4 setAllowedRetryCount:0];
  [v4 setHTTPHeaders:{-[SSURLRequestProperties HTTPHeaders](self->_defaultRequestProperties, "HTTPHeaders")}];
  [v4 setITunesStoreRequest:1];
  return v4;
}

@end