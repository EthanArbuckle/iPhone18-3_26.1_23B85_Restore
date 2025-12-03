@interface SUSetupMescalSessionOperation
- (BOOL)_isMescalEnabled;
- (SUMescalSession)mescalSession;
- (SUSetupMescalSessionOperation)initWithURLRequestProperties:(id)properties;
- (id)_setupSAPCertificate:(id *)certificate;
- (id)_setupSAPWithData:(id)data error:(id *)error;
- (void)dealloc;
- (void)run;
@end

@implementation SUSetupMescalSessionOperation

- (SUSetupMescalSessionOperation)initWithURLRequestProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = SUSetupMescalSessionOperation;
  v4 = [(SUSetupMescalSessionOperation *)&v6 init];
  if (v4)
  {
    v4->_requestProperties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSetupMescalSessionOperation;
  [(SUSetupMescalSessionOperation *)&v3 dealloc];
}

- (SUMescalSession)mescalSession
{
  [(SUSetupMescalSessionOperation *)self lock];
  v3 = self->_session;
  [(SUSetupMescalSessionOperation *)self unlock];
  return v3;
}

- (void)run
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if ([(SUSetupMescalSessionOperation *)self _isMescalEnabled])
  {
    v3 = objc_alloc_init(SUMescalSession);
    v4 = [(SUSetupMescalSessionOperation *)self _setupSAPCertificate:&v24];
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = [(SUMescalSession *)v3 exchangeData:v4 error:&v24];
    if (v5)
    {
      [(SUMescalSession *)v3 exchangeData:[(SUSetupMescalSessionOperation *)self _setupSAPWithData:v5 error:&v24] error:&v24];
    }

    else
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v17 = shouldLog | 2;
      }

      else
      {
        v17 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v25 = 138412546;
        v26 = v18;
        v27 = 2112;
        v28 = v24;
        LODWORD(v23) = 22;
        v22 = &v25;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          v21 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v25, v23}];
          free(v20);
          v22 = v21;
          SSFileLog();
        }
      }
    }

    if ([(SUMescalSession *)v3 isComplete])
    {
      [(SUSetupMescalSessionOperation *)self lock];

      self->_session = v3;
      [(SUSetupMescalSessionOperation *)self unlock];
      v6 = 1;
    }

    else
    {
LABEL_8:
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v10 = shouldLog2 | 2;
      }

      else
      {
        v10 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v11 = objc_opt_class();
        v25 = 138412546;
        v26 = v11;
        v27 = 2112;
        v28 = v24;
        LODWORD(v23) = 22;
        v22 = &v25;
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          v13 = v12;
          v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v25, v23}];
          free(v13);
          v22 = v14;
          SSFileLog();
        }
      }

      v6 = 0;
    }

    v7 = v24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  [(SUSetupMescalSessionOperation *)self setError:v7, v22];
  [(SUSetupMescalSessionOperation *)self setSuccess:v6];
}

- (BOOL)_isMescalEnabled
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:{-[SSURLRequestProperties URLBagType](self->_requestProperties, "URLBagType")}];
  if (!self->_requestProperties)
  {
    return 1;
  }

  v4 = v3;
  if (![(SUSetupMescalSessionOperation *)self loadURLBagWithContext:v3 returningError:0])
  {
    return 0;
  }

  v5 = [objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  v6 = [(SSURLRequestProperties *)self->_requestProperties URL];
  if (!v6)
  {
    uRLBagURLBlock = [(SSURLRequestProperties *)self->_requestProperties URLBagURLBlock];
    if (uRLBagURLBlock)
    {
      v8 = (*(uRLBagURLBlock + 16))(uRLBagURLBlock, v4);
    }

    else
    {
      uRLBagKey = [(SSURLRequestProperties *)self->_requestProperties URLBagKey];
      if (!uRLBagKey)
      {
        return 0;
      }

      v8 = [v5 urlForKey:uRLBagKey];
    }

    v6 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v10 = [v5 valueForKey:@"account-flow-url-patterns"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v10 options:1 error:0];
    if (v11)
    {
      v12 = v11;
      absoluteString = [v6 absoluteString];
      v14 = [v12 rangeOfFirstMatchInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          v23 = shouldLog | 2;
        }

        else
        {
          v23 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v23 &= 2u;
        }

        if (v23)
        {
          v26 = 138412546;
          v27 = objc_opt_class();
          v28 = 2112;
          v29 = v6;
          LODWORD(v25) = 22;
          v18 = _os_log_send_and_compose_impl();
          v19 = 1;
          if (!v18)
          {
            return v19;
          }

          goto LABEL_19;
        }

        return 1;
      }
    }
  }

  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    v17 = shouldLog2 | 2;
  }

  else
  {
    v17 = shouldLog2;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    return 0;
  }

  v26 = 138412546;
  v27 = objc_opt_class();
  v28 = 2112;
  v29 = v6;
  LODWORD(v25) = 22;
  v18 = _os_log_send_and_compose_impl();
  v19 = 0;
  if (v18)
  {
LABEL_19:
    v20 = v18;
    [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v26, v25}];
    free(v20);
    SSFileLog();
  }

  return v19;
}

- (id)_setupSAPCertificate:(id *)certificate
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v5 setDataProvider:{objc_msgSend(MEMORY[0x1E69E47B8], "provider")}];
  v6 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v6 setAllowedRetryCount:0];
  [v6 setURLBagKey:@"sign-sap-setup-cert"];
  [v5 setRequestProperties:v6];

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v24 = 138412290;
    v25 = objc_opt_class();
    LODWORD(v22) = 12;
    v21 = &v24;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v24, v22}];
      free(v11);
      v21 = v12;
      SSFileLog();
    }
  }

  if ([(SUSetupMescalSessionOperation *)self runSubOperation:v5 returningError:&v23, v21])
  {
    v13 = [objc_msgSend(objc_msgSend(v5 "dataProvider")];
    if (!v13)
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v16 = shouldLog2 | 2;
      }

      else
      {
        v16 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        v24 = 138412290;
        v25 = v17;
        LODWORD(v22) = 12;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v24, v22}];
          free(v19);
          SSFileLog();
        }
      }

      v13 = 0;
      v23 = SSError();
    }
  }

  else
  {
    v13 = 0;
  }

  if (certificate && !v13)
  {
    *certificate = v23;
  }

  return v13;
}

- (id)_setupSAPWithData:(id)data error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v7 setDataProvider:{objc_msgSend(MEMORY[0x1E69E47B8], "provider")}];
  v8 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v8 setAllowedRetryCount:0];
  [v8 setHTTPMethod:@"POST"];
  [v8 setURLBagKey:@"sign-sap-setup"];
  [v8 setValue:data forRequestParameter:@"sign-sap-setup-buffer"];
  [v7 setRequestProperties:v8];

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v26 = 138412290;
    v27 = objc_opt_class();
    LODWORD(v24) = 12;
    v23 = &v26;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v26, v24}];
      free(v13);
      v23 = v14;
      SSFileLog();
    }
  }

  if ([(SUSetupMescalSessionOperation *)self runSubOperation:v7 returningError:&v25, v23])
  {
    v15 = [objc_msgSend(objc_msgSend(v7 "dataProvider")];
    if (!v15)
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v18 = shouldLog2 | 2;
      }

      else
      {
        v18 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v26 = 138412290;
        v27 = v19;
        LODWORD(v24) = 12;
        v20 = _os_log_send_and_compose_impl();
        if (v20)
        {
          v21 = v20;
          [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v26, v24}];
          free(v21);
          SSFileLog();
        }
      }

      v15 = 0;
      v25 = SSError();
    }
  }

  else
  {
    v15 = 0;
  }

  if (error && !v15)
  {
    *error = v25;
  }

  return v15;
}

@end