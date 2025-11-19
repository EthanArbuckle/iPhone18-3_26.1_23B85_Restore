@interface GratisClaimOperation
- (BOOL)suppressesErrorDialogs;
- (GratisClaimOperation)initWithPurchase:(id)a3;
- (GratisClaimOperation)initWithRequestBody:(id)a3;
- (NSData)clientAuditTokenData;
- (NSDictionary)rawOutput;
- (NSString)authenticationReasonDescription;
- (SSURLConnectionResponse)URLResponse;
- (id)_accountID;
- (id)_authenticationContext;
- (id)_bodyData;
- (id)_newDefaultRequestProperties;
- (id)_newRetryRequestPropertiesWithURL:(id)a3;
- (void)dealloc;
- (void)operation:(id)a3 didAuthenticateWithDSID:(id)a4;
- (void)run;
- (void)setAuthenticationReasonDescription:(id)a3;
- (void)setClientAuditTokenData:(id)a3;
- (void)setSuppressesErrorDialogs:(BOOL)a3;
@end

@implementation GratisClaimOperation

- (GratisClaimOperation)initWithPurchase:(id)a3
{
  v10.receiver = self;
  v10.super_class = GratisClaimOperation;
  v4 = [(GratisClaimOperation *)&v10 init];
  if (v4)
  {
    v4->_accountID = [a3 accountIdentifier];
    v4->_defaultRequestProperties = [a3 requestProperties];
    v4->_suppressesErrorDialogs = [objc_msgSend(a3 valueForDownloadProperty:{SSDownloadPropertyShouldSuppressErrorDialogs), "BOOLValue"}];
    v5 = [[SSVGratisRequestBody alloc] initWithRequestStyle:1];
    v4->_requestBody = v5;
    [(SSVGratisRequestBody *)v5 setAccountIdentifier:v4->_accountID];
    v6 = [a3 gratisIdentifiers];
    if ([v6 count])
    {
      [v6 objectAtIndex:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      requestBody = v4->_requestBody;
      if (isKindOfClass)
      {
        [(SSVGratisRequestBody *)requestBody setItemIdentifiers:v6];
      }

      else
      {
        [(SSVGratisRequestBody *)requestBody setBundleIdentifiers:v6];
      }
    }
  }

  return v4;
}

- (GratisClaimOperation)initWithRequestBody:(id)a3
{
  v6.receiver = self;
  v6.super_class = GratisClaimOperation;
  v4 = [(GratisClaimOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = [objc_msgSend(a3 "accountIdentifier")];
    v4->_requestBody = [a3 copy];
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

- (void)setAuthenticationReasonDescription:(id)a3
{
  [(GratisClaimOperation *)self lock];
  authenticationReasonDescription = self->_authenticationReasonDescription;
  if (authenticationReasonDescription != a3)
  {

    self->_authenticationReasonDescription = [a3 copy];
  }

  [(GratisClaimOperation *)self unlock];
}

- (void)setClientAuditTokenData:(id)a3
{
  [(GratisClaimOperation *)self lock];
  clientAuditTokenData = self->_clientAuditTokenData;
  if (clientAuditTokenData != a3)
  {

    self->_clientAuditTokenData = a3;
  }

  [(GratisClaimOperation *)self unlock];
}

- (void)setSuppressesErrorDialogs:(BOOL)a3
{
  [(GratisClaimOperation *)self lock];
  self->_suppressesErrorDialogs = a3;

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
  v3 = [(GratisClaimOperation *)self _newDefaultRequestProperties];
  v4 = &CFDictionaryGetValue_ptr;
  p_cache = &OBJC_METACLASS___AMSPurchaseShim.cache;
  v6 = &CFDictionaryGetValue_ptr;
  do
  {
    context = objc_autoreleasePoolPush();
    v7 = objc_alloc_init(v4[304]);
    [v7 setDelegate:self];
    [v7 setShouldSendXTokenHeader:1];
    v8 = [(GratisClaimOperation *)self _authenticationContext];
    [v7 setAuthenticationContext:v8];
    v9 = [p_cache + 123 provider];
    [v9 setAuthenticationContext:v8];
    [v7 setDataProvider:v9];
    [v7 setRequestProperties:v3];
    v10 = [v6[412] sharedDaemonConfig];
    if (!v10)
    {
      v10 = [v6[412] sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v11 |= 2u;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v11 &= 2u;
    }

    if (v11)
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
    v18 = [v9 redirectedClaimURL];
    if (v18)
    {

      v3 = [(GratisClaimOperation *)self _newRetryRequestPropertiesWithURL:v18];
    }

    else
    {
      [(GratisClaimOperation *)self lock];
      v19 = [v9 output];
      if (v19)
      {
        v20 = v19;
        v31 = [NSPropertyListSerialization dataWithPropertyList:v19 format:100 options:0 error:0];
        self->_rawOutput = v20;
        v21 = v3;
        v22 = v6;
        v23 = p_cache;
        v24 = v4;
        v25 = [SSURLConnectionResponse alloc];
        v26 = [v7 response];
        v27 = v25;
        v4 = v24;
        p_cache = v23;
        v6 = v22;
        v3 = v21;
        self->_urlResponse = [v27 initWithURLResponse:v26 bodyData:v31];
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

  while (v18);
}

- (void)operation:(id)a3 didAuthenticateWithDSID:(id)a4
{
  [(GratisClaimOperation *)self lock];

  self->_accountID = [a4 copy];
  [(GratisClaimOperation *)self unlock];
  v7 = [(GratisClaimOperation *)self _authenticationContext];
  [objc_msgSend(a3 "dataProvider")];
  [a3 setAuthenticationContext:v7];
  v8 = [a3 _requestProperties];
  v9 = [(GratisClaimOperation *)self _bodyData];

  [v8 setHTTPBody:v9];
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

  v4 = [(SSVGratisRequestBody *)self->_requestBody accountIdentifier];
  if (v4)
  {
    return v4;
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
  v4 = [(SSURLRequestProperties *)self->_defaultRequestProperties HTTPHeaders];
  [v3 setValue:objc_msgSend(v4 forHTTPHeaderField:{"objectForKey:", SSHTTPHeaderUserAgent), SSHTTPHeaderUserAgent}];

  return v3;
}

- (id)_bodyData
{
  v3 = [(SSVGratisRequestBody *)self->_requestBody copy];
  v4 = [(GratisClaimOperation *)self _accountID];
  [v3 setAccountIdentifier:v4];
  if (v4)
  {
    v5 = sub_1000B18E8([v4 unsignedLongLongValue], 1);
    v6 = [(__CFData *)v5 base64EncodedStringWithOptions:0];
    if (v6)
    {
      [v3 setValue:v6 forBodyParameter:@"kbsync"];
    }
  }

  v7 = [v3 propertyListBodyData];

  return v7;
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

- (id)_newRetryRequestPropertiesWithURL:(id)a3
{
  v4 = [[SSMutableURLRequestProperties alloc] initWithURL:a3];
  [v4 setAllowedRetryCount:0];
  [v4 setHTTPHeaders:{-[SSURLRequestProperties HTTPHeaders](self->_defaultRequestProperties, "HTTPHeaders")}];
  [v4 setITunesStoreRequest:1];
  return v4;
}

@end