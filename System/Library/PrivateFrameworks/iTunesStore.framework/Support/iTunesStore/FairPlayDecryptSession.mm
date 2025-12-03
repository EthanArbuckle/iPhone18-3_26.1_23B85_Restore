@interface FairPlayDecryptSession
- (FairPlayDecryptSession)initWithDPInfo:(id)info;
- (id)decryptBytes:(id)bytes error:(id *)error;
- (id)identifier;
- (void)dealloc;
@end

@implementation FairPlayDecryptSession

- (FairPlayDecryptSession)initWithDPInfo:(id)info
{
  v4 = [(FairPlayDecryptSession *)self init];
  if (v4)
  {
    if ([info length])
    {
      v4->_dpInfo = info;
      v4->_identifier = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.fairplay.decryptfile.%@", -[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")];
    }

    else
    {
      v5 = +[SSLogConfig sharedDaemonConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = shouldLog | 2;
      }

      else
      {
        v7 = shouldLog;
      }

      if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v12 = 138412290;
        v13 = objc_opt_class();
        LODWORD(v11) = 12;
        v8 = _os_log_send_and_compose_impl();
        if (v8)
        {
          v9 = v8;
          [NSString stringWithCString:v8 encoding:4, &v12, v11];
          free(v9);
          SSFileLog();
        }
      }

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
    sub_1000B280C(decryptSession);
    self->_decryptSession = 0;
  }

  v4.receiver = self;
  v4.super_class = FairPlayDecryptSession;
  [(FairPlayDecryptSession *)&v4 dealloc];
}

- (id)decryptBytes:(id)bytes error:(id *)error
{
  v24 = 0;
  p_decryptSession = &self->_decryptSession;
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
    goto LABEL_16;
  }

  if (!sub_1000B277C(self->_dpInfo, p_decryptSession))
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v25 = 138412290;
      v26 = objc_opt_class();
      LODWORD(v23) = 12;
      v22 = &v25;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v25, v23];
        free(v13);
        v22 = v14;
        SSFileLog();
      }
    }

    if (error)
    {
      *error = ISError();
    }
  }

  self->_dpInfo = 0;
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
LABEL_16:
    if ((sub_1000B282C(decryptSession, bytes, &v24) & 1) == 0)
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

      if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v25 = 138412290;
        v26 = v18;
        LODWORD(v23) = 12;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          [NSString stringWithCString:v19 encoding:4, &v25, v23];
          free(v20);
          SSFileLog();
        }
      }

      if (error)
      {
        *error = ISError();
      }
    }
  }

  return v24;
}

- (id)identifier
{
  v2 = self->_identifier;

  return v2;
}

@end