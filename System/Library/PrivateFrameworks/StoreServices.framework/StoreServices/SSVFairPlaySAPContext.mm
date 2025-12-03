@interface SSVFairPlaySAPContext
- (BOOL)verifyPrimeSignature:(id)signature error:(id *)error;
- (BOOL)verifySignature:(id)signature forData:(id)data error:(id *)error;
- (SSVFairPlaySAPContext)initWithSAPVersion:(int64_t)version;
- (id)exchangeData:(id)data error:(id *)error;
- (id)primingSignatureForData:(id)data error:(id *)error;
- (id)signData:(id)data error:(id *)error;
- (void)_teardownSession;
- (void)dealloc;
@end

@implementation SSVFairPlaySAPContext

- (SSVFairPlaySAPContext)initWithSAPVersion:(int64_t)version
{
  v33 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = SSVFairPlaySAPContext;
  v4 = [(SSVFairPlaySAPContext *)&v28 init];
  v5 = v4;
  if (v4)
  {
    if (SSVFairPlayGetHardwareInfo(&v4->_hardwareInfo.IDLength))
    {
      cp2g1b9ro(&v5->_context, &v5->_hardwareInfo);
      if (!v6 || (cp2g1b9ro(&v5->_context, &v5->_hardwareInfo), (v8 = v7) == 0))
      {
        if (v5->_context)
        {
LABEL_29:
          v5->_version = version;
          return v5;
        }

        v8 = 0;
      }

      v9 = +[SSLogConfig sharedStoreServicesConfig];
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

      oSLogObject = [v9 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (!v11)
      {
        goto LABEL_27;
      }

      v13 = objc_opt_class();
      v29 = 138543618;
      v30 = v13;
      v31 = 2048;
      v32 = v8;
      v14 = v13;
      LODWORD(v27) = 22;
      v15 = _os_log_send_and_compose_impl();
    }

    else
    {
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v17 = shouldLog2 | 2;
      }

      else
      {
        v17 = shouldLog2;
      }

      oSLogObject = [v9 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v17 &= 2u;
      }

      if (!v17)
      {
        goto LABEL_27;
      }

      v18 = objc_opt_class();
      v29 = 138543362;
      v30 = v18;
      v19 = v18;
      LODWORD(v27) = 12;
      v15 = _os_log_send_and_compose_impl();
    }

    if (!v15)
    {
LABEL_28:

      goto LABEL_29;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v29, v27}];
    free(v15);
    SSFileLog(v9, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
LABEL_27:

    goto LABEL_28;
  }

  return v5;
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    IPaI1oem5iL(context);
  }

  v4.receiver = self;
  v4.super_class = SSVFairPlaySAPContext;
  [(SSVFairPlaySAPContext *)&v4 dealloc];
}

- (id)exchangeData:(id)data error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  context = self->_context;
  if (!context)
  {
    v25 = SSError(@"SSErrorDomain", 122, 0, 0);
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v30 = 0;
  v29 = 0;
  v28 = -1;
  if (self->_version == 1)
  {
    v9 = 210;
  }

  else
  {
    v9 = 200;
  }

  Mib5yocT(v9, &self->_hardwareInfo, context, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v30, &v29, &v28);
  if (v10)
  {
    v11 = v10;
    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v31 = 138412546;
      v32 = v16;
      v33 = 2048;
      v34 = v11;
      v17 = v16;
      LODWORD(v27) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_17:

        context = 0;
        goto LABEL_21;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v31, v27}];
      free(v18);
      SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_17;
  }

  self->_complete = v28 == 0;
  context = SSVCreateDataWithFairPlayBytes(v30, v29);
LABEL_21:
  v25 = 0;
  if (!error)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!context)
  {
    v25 = v25;
    *error = v25;
  }

LABEL_24:

  return context;
}

- (id)primingSignatureForData:(id)data error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  context = self->_context;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  jfkdDAjba3jd(context, 100, bytes, v10, &v30, &v29);
  if (v11)
  {
    v12 = v11;
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v31 = 138412546;
      v32 = v17;
      v33 = 2048;
      v34 = v12;
      v18 = v17;
      LODWORD(v28) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_13;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v31, v28}];
      free(v19);
      SSFileLog(v13, @"%@", v20, v21, v22, v23, v24, v25, oSLogObject);
    }

LABEL_13:
    v26 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v26 = SSVCreateDataWithFairPlayBytes(v30, v29);
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v26)
  {
    *error = 0;
  }

LABEL_18:

  return v26;
}

- (id)signData:(id)data error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = dataCopy;
  context = self->_context;
  if (!context)
  {
    v26 = SSError(@"SSErrorDomain", 122, @"No SAP context for signing", 0);
    goto LABEL_20;
  }

  v30 = 0;
  v29 = 0;
  Fc3vhtJDvr(context, [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v30, &v29);
  if (!v9)
  {
    context = SSVCreateDataWithFairPlayBytes(v30, v29);
    v26 = 0;
    goto LABEL_20;
  }

  v10 = v9;
  v11 = +[SSLogConfig sharedStoreServicesConfig];
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

  oSLogObject = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v15 = objc_opt_class();
  v31 = 138412546;
  v32 = v15;
  v33 = 2048;
  v34 = v10;
  v16 = v15;
  LODWORD(v28) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v31, v28}];
    free(v17);
    SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
LABEL_13:
  }

  if (v10 == -42186)
  {
    v24 = @"Bad SAP session for signing";
    v25 = 148;
  }

  else
  {
    v24 = @"Bad SAP signature";
    v25 = 122;
  }

  v26 = SSError(@"SSErrorDomain", v25, v24, 0);
  context = 0;
LABEL_20:
  if (error && !context)
  {
    v26 = v26;
    *error = v26;
  }

  return context;
}

- (BOOL)verifyPrimeSignature:(id)signature error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  v7 = signatureCopy;
  if (!self->_context)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:122 userInfo:0];
    if (error)
    {
      goto LABEL_15;
    }

LABEL_17:
    v23 = 0;
    goto LABEL_19;
  }

  [signatureCopy bytes];
  [v7 length];
  gLg1CWr7p();
  if (!v8)
  {
    v22 = 0;
    v23 = 1;
    goto LABEL_19;
  }

  v9 = v8;
  v10 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    *v26 = 138412546;
    *&v26[4] = objc_opt_class();
    *&v26[12] = 2048;
    *&v26[14] = v9;
    v14 = *&v26[4];
    LODWORD(v25) = 22;
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
      goto LABEL_14;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v26, v25, *v26, *&v26[16], v27}];
    free(v15);
    SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
  }

LABEL_14:
  [(SSVFairPlaySAPContext *)self _teardownSession];
  v22 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  v22 = v22;
  v23 = 0;
  *error = v22;
LABEL_19:

  return v23;
}

- (BOOL)verifySignature:(id)signature forData:(id)data error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  dataCopy = data;
  if (!self->_context)
  {
    v24 = @"No SAP context for signature verification";
    goto LABEL_19;
  }

  [signatureCopy bytes];
  [signatureCopy length];
  [dataCopy mutableBytes];
  [dataCopy length];
  gLg1CWr7p();
  if (!v10)
  {
    v26 = 0;
    v27 = 1;
    goto LABEL_23;
  }

  v11 = v10;
  v12 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  oSLogObject = [v12 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  *v30 = 138412546;
  *&v30[4] = objc_opt_class();
  *&v30[12] = 2048;
  *&v30[14] = v11;
  v16 = *&v30[4];
  LODWORD(v29) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, v30, v29, *v30, *&v30[16], v31}];
    free(v17);
    SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
LABEL_13:
  }

  if (v11 == -42186)
  {
    v24 = @"Bad SAP session for signature verification";
    v25 = 148;
    goto LABEL_20;
  }

  v24 = @"Bad SAP signature verification";
LABEL_19:
  v25 = 122;
LABEL_20:
  v26 = SSError(@"SSErrorDomain", v25, v24, 0);
  if (error)
  {
    v26 = v26;
    v27 = 0;
    *error = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_23:

  return v27;
}

- (void)_teardownSession
{
  context = self->_context;
  if (context)
  {
    IPaI1oem5iL(context);
    self->_context = 0;
  }

  self->_complete = 0;
}

@end