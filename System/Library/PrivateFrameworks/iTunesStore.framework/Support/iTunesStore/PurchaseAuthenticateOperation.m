@interface PurchaseAuthenticateOperation
- (NSString)clientIdentifierHeader;
- (PurchaseAuthenticateOperation)initWithPurchases:(id)a3;
- (id)_clientIdentifierForPurchases:(id)a3;
- (id)_userAgentForPurchases:(id)a3;
- (id)authenticationBlock;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationBlock:(id)a3;
- (void)setClientIdentifierHeader:(id)a3;
@end

@implementation PurchaseAuthenticateOperation

- (PurchaseAuthenticateOperation)initWithPurchases:(id)a3
{
  v11.receiver = self;
  v11.super_class = PurchaseAuthenticateOperation;
  v4 = [(PurchaseAuthenticateOperation *)&v11 init];
  if (v4)
  {
    v5 = [a3 objectAtIndex:0];
    v6 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:{objc_msgSend(v5, "accountIdentifier")}];
    v4->_authenticationContext = v6;
    [(SSMutableAuthenticationContext *)v6 setPromptStyle:1];
    [(SSMutableAuthenticationContext *)v4->_authenticationContext setPreferredITunesStoreClient:[(PurchaseAuthenticateOperation *)v4 _clientIdentifierForPurchases:a3]];
    v7 = [(SSMutableAuthenticationContext *)v4->_authenticationContext HTTPHeaders];
    v8 = SSHTTPHeaderUserAgent;
    if (![v7 objectForKey:SSHTTPHeaderUserAgent])
    {
      [(SSMutableAuthenticationContext *)v4->_authenticationContext setValue:[(PurchaseAuthenticateOperation *)v4 _userAgentForPurchases:a3] forHTTPHeaderField:v8];
    }

    if ([a3 count] == 1 && objc_msgSend(v5, "buyParameters"))
    {
      v9 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v5, "buyParameters"), @"product", 0}];
      [(SSMutableAuthenticationContext *)v4->_authenticationContext setSignupRequestParameters:v9];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PurchaseAuthenticateOperation;
  [(PurchaseAuthenticateOperation *)&v3 dealloc];
}

- (id)authenticationBlock
{
  [(PurchaseAuthenticateOperation *)self lock];
  v3 = self->_authenticationBlock;
  [(PurchaseAuthenticateOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(PurchaseAuthenticateOperation *)self lock];
  v3 = [(SSMutableAuthenticationContext *)self->_authenticationContext clientIdentifierHeader];
  [(PurchaseAuthenticateOperation *)self unlock];
  return v3;
}

- (void)setAuthenticationBlock:(id)a3
{
  [(PurchaseAuthenticateOperation *)self lock];
  authenticationBlock = self->_authenticationBlock;
  if (authenticationBlock != a3)
  {

    self->_authenticationBlock = [a3 copy];
  }

  [(PurchaseAuthenticateOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)a3
{
  [(PurchaseAuthenticateOperation *)self lock];
  [(SSMutableAuthenticationContext *)self->_authenticationContext setClientIdentifierHeader:a3];

  [(PurchaseAuthenticateOperation *)self unlock];
}

- (void)run
{
  v13 = 0;
  v14 = 0;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v15 = 138412290;
    v16 = objc_opt_class();
    LODWORD(v12) = 12;
    v11 = &v15;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [NSString stringWithCString:v6 encoding:4, &v15, v12];
      free(v7);
      v11 = v8;
      SSFileLog();
    }
  }

  v9 = [(PurchaseAuthenticateOperation *)self copyAccountID:&v14 credentialSource:0 byAuthenticatingWithContext:self->_authenticationContext returningError:&v13, v11];
  v10 = [(PurchaseAuthenticateOperation *)self authenticationBlock];
  if (v10)
  {
    v10[2](v10, v14, v13);
  }

  [(PurchaseAuthenticateOperation *)self setError:v13];
  [(PurchaseAuthenticateOperation *)self setSuccess:v9];
}

- (id)_clientIdentifierForPurchases:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  v8 = SSDownloadPropertyKind;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(a3);
      }

      [*(*(&v12 + 1) + 8 * i) valueForDownloadProperty:v8];
      v10 = SSClientIdentifierForDownloadKind();
      if (v6)
      {
        if (v10 && ![v10 isEqualToString:v6])
        {
          return 0;
        }
      }

      else
      {
        v6 = v10;
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
  return v6;
}

- (id)_userAgentForPurchases:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  v8 = SSHTTPHeaderUserAgent;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v10 = [objc_msgSend(objc_msgSend(*(*(&v12 + 1) + 8 * i) "requestProperties")];
      if (v6)
      {
        if (v10 && ![v10 isEqualToString:v6])
        {
          return 0;
        }
      }

      else
      {
        v6 = v10;
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
  return v6;
}

@end