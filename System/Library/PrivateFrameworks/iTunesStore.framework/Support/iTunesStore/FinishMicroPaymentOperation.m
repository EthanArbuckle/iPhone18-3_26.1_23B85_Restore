@interface FinishMicroPaymentOperation
- (BOOL)_parseResponse:(id)a3 returningError:(id *)a4;
- (NSNumber)userDSID;
- (NSString)transactionIdentifier;
- (StoreKitClientIdentity)clientIdentity;
- (void)dealloc;
- (void)run;
- (void)setClientIdentity:(id)a3;
- (void)setTransactionIdentifier:(id)a3;
- (void)setUserDSID:(id)a3;
@end

@implementation FinishMicroPaymentOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FinishMicroPaymentOperation;
  [(FinishMicroPaymentOperation *)&v3 dealloc];
}

- (StoreKitClientIdentity)clientIdentity
{
  [(FinishMicroPaymentOperation *)self lock];
  v3 = self->_clientIdentity;
  [(FinishMicroPaymentOperation *)self unlock];
  return v3;
}

- (void)setClientIdentity:(id)a3
{
  [(FinishMicroPaymentOperation *)self lock];
  clientIdentity = self->_clientIdentity;
  if (clientIdentity != a3)
  {

    self->_clientIdentity = [a3 copy];
  }

  [(FinishMicroPaymentOperation *)self unlock];
}

- (void)setTransactionIdentifier:(id)a3
{
  [(FinishMicroPaymentOperation *)self lock];
  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier != a3)
  {

    self->_transactionIdentifier = [a3 copy];
  }

  [(FinishMicroPaymentOperation *)self unlock];
}

- (void)setUserDSID:(id)a3
{
  [(FinishMicroPaymentOperation *)self lock];
  userDSID = self->_userDSID;
  if (userDSID != a3)
  {

    self->_userDSID = a3;
  }

  [(FinishMicroPaymentOperation *)self unlock];
}

- (NSString)transactionIdentifier
{
  [(FinishMicroPaymentOperation *)self lock];
  v3 = self->_transactionIdentifier;
  [(FinishMicroPaymentOperation *)self unlock];
  return v3;
}

- (NSNumber)userDSID
{
  [(FinishMicroPaymentOperation *)self lock];
  v3 = self->_userDSID;
  [(FinishMicroPaymentOperation *)self unlock];
  return v3;
}

- (void)run
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  v4 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v4];
  v5 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:{-[FinishMicroPaymentOperation userDSID](self, "userDSID")}];
  [v5 setAllowsBootstrapCellularData:{-[StoreKitClientIdentity allowsBootstrapCellularData](self->_clientIdentity, "allowsBootstrapCellularData")}];
  [v5 setTokenType:1];
  [v3 setAuthenticationContext:v5];

  v6 = [[NSDictionary alloc] initWithObjectsAndKeys:{-[FinishMicroPaymentOperation transactionIdentifier](self, "transactionIdentifier"), @"transactionId", 0}];
  v7 = objc_alloc_init(SSMutableURLRequestProperties);
  [v7 setAllowsBootstrapCellularData:{-[StoreKitClientIdentity allowsBootstrapCellularData](self->_clientIdentity, "allowsBootstrapCellularData")}];
  [v7 setCachePolicy:1];
  [v7 setRequestParameters:v6];
  [v7 setURLBagKey:@"p2-in-app-transaction-done"];
  if ([(StoreKitClientIdentity *)[(FinishMicroPaymentOperation *)self clientIdentity] isSandboxed])
  {
    [v7 setURLBagType:1];
  }

  [v3 setRequestProperties:v7];

  v17 = 0;
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v18 = 138412546;
    v19 = objc_opt_class();
    v20 = 2112;
    v21 = [(FinishMicroPaymentOperation *)self transactionIdentifier];
    LODWORD(v16) = 22;
    v15 = &v18;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v18, v16];
      free(v12);
      v15 = v13;
      SSFileLog();
    }
  }

  if (([(FinishMicroPaymentOperation *)self runSubOperation:v3 returningError:&v17, v15]& 1) != 0)
  {
    v14 = [(FinishMicroPaymentOperation *)self _parseResponse:[(DaemonProtocolDataProvider *)v4 output] returningError:&v17];
    [(FinishMicroPaymentOperation *)self setError:v17];
    [(FinishMicroPaymentOperation *)self setSuccess:v14];
  }

  else
  {
    [(FinishMicroPaymentOperation *)self setError:v17];
  }
}

- (BOOL)_parseResponse:(id)a3 returningError:(id *)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      *v19 = 138412290;
      *&v19[4] = objc_opt_class();
      LODWORD(v18) = 12;
LABEL_21:
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        [NSString stringWithCString:v14 encoding:4, v19, v18, *v19];
        free(v15);
        SSFileLog();
      }
    }

LABEL_23:
    v16 = ISError();
    result = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_24;
  }

  v6 = [a3 objectForKey:kISFailureTypeKey];
  if (v6)
  {
    v7 = v6;
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v19 = 138412546;
      *&v19[4] = objc_opt_class();
      *&v19[12] = 2112;
      *&v19[14] = v7;
      LODWORD(v18) = 22;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v16 = 0;
  result = 1;
  if (!a4)
  {
    return result;
  }

LABEL_24:
  *a4 = v16;
  return result;
}

@end