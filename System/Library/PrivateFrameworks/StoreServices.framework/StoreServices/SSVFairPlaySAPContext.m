@interface SSVFairPlaySAPContext
- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4;
- (BOOL)verifySignature:(id)a3 forData:(id)a4 error:(id *)a5;
- (SSVFairPlaySAPContext)initWithSAPVersion:(int64_t)a3;
- (id)exchangeData:(id)a3 error:(id *)a4;
- (id)primingSignatureForData:(id)a3 error:(id *)a4;
- (id)signData:(id)a3 error:(id *)a4;
- (void)_teardownSession;
- (void)dealloc;
@end

@implementation SSVFairPlaySAPContext

- (SSVFairPlaySAPContext)initWithSAPVersion:(int64_t)a3
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
          v5->_version = a3;
          return v5;
        }

        v8 = 0;
      }

      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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

      v16 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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

    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v29, v27}];
    free(v15);
    SSFileLog(v9, @"%@", v20, v21, v22, v23, v24, v25, v12);
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

- (id)exchangeData:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  context = self->_context;
  if (!context)
  {
    v25 = SSError(@"SSErrorDomain", 122, 0, 0);
    if (!a4)
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

  Mib5yocT(v9, &self->_hardwareInfo, context, [v6 bytes], objc_msgSend(v6, "length"), &v30, &v29, &v28);
  if (v10)
  {
    v11 = v10;
    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v31, v27}];
      free(v18);
      SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, v15);
    }

    goto LABEL_17;
  }

  self->_complete = v28 == 0;
  context = SSVCreateDataWithFairPlayBytes(v30, v29);
LABEL_21:
  v25 = 0;
  if (!a4)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (!context)
  {
    v25 = v25;
    *a4 = v25;
  }

LABEL_24:

  return context;
}

- (id)primingSignatureForData:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  context = self->_context;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  jfkdDAjba3jd(context, 100, v9, v10, &v30, &v29);
  if (v11)
  {
    v12 = v11;
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v31, v28}];
      free(v19);
      SSFileLog(v13, @"%@", v20, v21, v22, v23, v24, v25, v16);
    }

LABEL_13:
    v26 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v26 = SSVCreateDataWithFairPlayBytes(v30, v29);
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v26)
  {
    *a4 = 0;
  }

LABEL_18:

  return v26;
}

- (id)signData:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  context = self->_context;
  if (!context)
  {
    v26 = SSError(@"SSErrorDomain", 122, @"No SAP context for signing", 0);
    goto LABEL_20;
  }

  v30 = 0;
  v29 = 0;
  Fc3vhtJDvr(context, [v6 bytes], objc_msgSend(v6, "length"), &v30, &v29);
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

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v31, v28}];
    free(v17);
    SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, v14);
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
  if (a4 && !context)
  {
    v26 = v26;
    *a4 = v26;
  }

  return context;
}

- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!self->_context)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:122 userInfo:0];
    if (a4)
    {
      goto LABEL_15;
    }

LABEL_17:
    v23 = 0;
    goto LABEL_19;
  }

  [v6 bytes];
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

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
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

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v26, v25, *v26, *&v26[16], v27}];
    free(v15);
    SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v13);
  }

LABEL_14:
  [(SSVFairPlaySAPContext *)self _teardownSession];
  v22 = 0;
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_15:
  v22 = v22;
  v23 = 0;
  *a4 = v22;
LABEL_19:

  return v23;
}

- (BOOL)verifySignature:(id)a3 forData:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!self->_context)
  {
    v24 = @"No SAP context for signature verification";
    goto LABEL_19;
  }

  [v8 bytes];
  [v8 length];
  [v9 mutableBytes];
  [v9 length];
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

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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
    v15 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, v30, v29, *v30, *&v30[16], v31}];
    free(v17);
    SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, v15);
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
  if (a5)
  {
    v26 = v26;
    v27 = 0;
    *a5 = v26;
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