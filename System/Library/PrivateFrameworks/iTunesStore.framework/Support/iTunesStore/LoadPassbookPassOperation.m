@interface LoadPassbookPassOperation
- (LoadPassbookPassOperation)initWithAccountIdentifier:(id)a3;
- (NSNumber)accountIdentifier;
- (id)outputBlock;
- (void)dealloc;
- (void)run;
- (void)setOutputBlock:(id)a3;
@end

@implementation LoadPassbookPassOperation

- (LoadPassbookPassOperation)initWithAccountIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = LoadPassbookPassOperation;
  v4 = [(LoadPassbookPassOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadPassbookPassOperation;
  [(LoadPassbookPassOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountID;

  return v2;
}

- (id)outputBlock
{
  [(LoadPassbookPassOperation *)self lock];
  v3 = self->_outputBlock;
  [(LoadPassbookPassOperation *)self unlock];

  return v3;
}

- (void)setOutputBlock:(id)a3
{
  [(LoadPassbookPassOperation *)self lock];
  outputBlock = self->_outputBlock;
  if (outputBlock != a3)
  {

    self->_outputBlock = [a3 copy];
  }

  [(LoadPassbookPassOperation *)self unlock];
}

- (void)run
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDataProvider:{+[ISDataProvider provider](ISDataProvider, "provider")}];
  v4 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  [v3 setAuthenticationContext:v4];

  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  [v5 setURLBagKey:@"getAddCreditPassUrl"];
  [v3 setRequestProperties:v5];

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
    v9 = objc_opt_class();
    accountID = self->_accountID;
    v36 = 138412546;
    v37 = v9;
    v38 = 2112;
    v39 = accountID;
    LODWORD(v34) = 22;
    v32 = &v36;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v36, v34];
      free(v12);
      v32 = v13;
      SSFileLog();
    }
  }

  v35 = 0;
  v14 = [(LoadPassbookPassOperation *)self runSubOperation:v3 returningError:&v35, v32];
  if (!v14 || (v15 = [objc_msgSend(v3 "dataProvider")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v16 = objc_msgSend(objc_alloc(ISWeakLinkedClassForString()), "initWithData:error:", v15, &v35)) == 0)
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
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

    if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (!v26)
    {
      v17 = 0;
      goto LABEL_35;
    }

    v27 = objc_opt_class();
    v28 = self->_accountID;
    v36 = 138412802;
    v37 = v27;
    v38 = 2112;
    v39 = v28;
    v40 = 2112;
    v41 = v35;
    LODWORD(v34) = 32;
    v33 = &v36;
    v23 = _os_log_send_and_compose_impl();
    v17 = 0;
    if (!v23)
    {
      goto LABEL_35;
    }

LABEL_33:
    v29 = v23;
    v30 = [NSString stringWithCString:v23 encoding:4, &v36, v34];
    free(v29);
    v33 = v30;
    SSFileLog();
    goto LABEL_35;
  }

  v17 = v16;
  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v19 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v20 &= 2u;
  }

  if (v20)
  {
    v21 = objc_opt_class();
    v22 = self->_accountID;
    v36 = 138412802;
    v37 = v21;
    v38 = 2112;
    v39 = v22;
    v40 = 2112;
    v41 = v17;
    LODWORD(v34) = 32;
    v33 = &v36;
    v23 = _os_log_send_and_compose_impl();
    if (v23)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  v31 = [(LoadPassbookPassOperation *)self outputBlock];
  if (v31)
  {
    (v31)[2](v31, v17, v35);
    [(LoadPassbookPassOperation *)self setOutputBlock:0];
  }

  [(LoadPassbookPassOperation *)self setError:v35];
  [(LoadPassbookPassOperation *)self setSuccess:v14];
}

@end