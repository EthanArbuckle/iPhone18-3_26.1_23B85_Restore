@interface SSVFairPlaySAPSession
- (BOOL)_primeTheConnection;
- (BOOL)_shouldRetrySAPOperationForError:(id)a3;
- (BOOL)_verifyPrimeResponse:(id)a3;
- (BOOL)_verifySignature:(id)a3 forData:(id)a4 error:(id *)a5;
- (BOOL)verifyData:(id)a3 withSignature:(id)a4 error:(id *)a5;
- (NSData)certificateData;
- (SSVFairPlaySAPSession)initWithSSBag:(id)a3 SAPVersion:(int64_t)a4;
- (SSVFairPlaySAPSession)initWithURLBag:(id)a3 SAPVersion:(int64_t)a4;
- (SSVFairPlaySAPSession)initWithURLBagDictionary:(id)a3 SAPVersion:(int64_t)a4;
- (id)_establishContext;
- (id)_initSSVFairPlaySAPSession;
- (id)_initWithURLBagInterpreter:(id)a3 SAPVersion:(int64_t)a4;
- (id)_loadCertificateData;
- (id)_postExchangeData:(id)a3;
- (id)_signData:(id)a3 error:(id *)a4;
- (id)_urlBagInterpreter;
- (id)signatureWithData:(id)a3 error:(id *)a4;
- (void)establishSessionWithCompletionBlock:(id)a3;
- (void)primeSessionWithCompletionBlock:(id)a3;
- (void)setCertificateData:(id)a3;
- (void)signData:(id)a3 completionBlock:(id)a4;
- (void)verifySignature:(id)a3 forData:(id)a4 completionBlock:(id)a5;
@end

@implementation SSVFairPlaySAPSession

- (id)_initSSVFairPlaySAPSession
{
  v8.receiver = self;
  v8.super_class = SSVFairPlaySAPSession;
  v2 = [(SSVFairPlaySAPSession *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVFairPlaySAPSession.completion", 0);
    completionBlockQueue = v2->_completionBlockQueue;
    v2->_completionBlockQueue = v3;

    v5 = dispatch_queue_create("com.apple.StoreServices.SSVFairPlaySAPSession", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;
  }

  return v2;
}

- (SSVFairPlaySAPSession)initWithSSBag:(id)a3 SAPVersion:(int64_t)a4
{
  v7 = a3;
  v8 = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      objc_storeStrong(v8 + 1, a3);
      v10 = [[SSVURLBagInterpreter alloc] initWithSSBag:v7];
      urlBagInterpreter = v9->_urlBagInterpreter;
      v9->_urlBagInterpreter = v10;
    }

    v9->_version = a4;
  }

  return v9;
}

- (SSVFairPlaySAPSession)initWithURLBag:(id)a3 SAPVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  if (v7)
  {
    if (v6)
    {
      v8 = v6;
      urlBag = v7->_urlBag;
      v7->_urlBag = v8;
    }

    else
    {
      urlBag = [SSURLBagContext contextWithBagType:0];
      v10 = [[SSURLBag alloc] initWithURLBagContext:urlBag];
      v11 = v7->_urlBag;
      v7->_urlBag = v10;
    }

    v7->_version = a4;
  }

  return v7;
}

- (SSVFairPlaySAPSession)initWithURLBagDictionary:(id)a3 SAPVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  if (v7)
  {
    v8 = [[SSVURLBagInterpreter alloc] initWithURLBagDictionary:v6];
    urlBagInterpreter = v7->_urlBagInterpreter;
    v7->_urlBagInterpreter = v8;

    v7->_version = a4;
  }

  return v7;
}

- (id)_initWithURLBagInterpreter:(id)a3 SAPVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [(SSVFairPlaySAPSession *)self _initSSVFairPlaySAPSession];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = v7[10];
    v7[10] = v8;

    v7[8] = a4;
  }

  return v7;
}

- (NSData)certificateData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__79;
  v10 = __Block_byref_object_dispose__79;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSVFairPlaySAPSession_certificateData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__SSVFairPlaySAPSession_certificateData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)establishSessionWithCompletionBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SSVFairPlaySAPSession_establishSessionWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __61__SSVFairPlaySAPSession_establishSessionWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _establishContext];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32) != 0;
    v6 = *(v4 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SSVFairPlaySAPSession_establishSessionWithCompletionBlock___block_invoke_2;
    v7[3] = &unk_1E84AED58;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)primeSessionWithCompletionBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSVFairPlaySAPSession_primeSessionWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __57__SSVFairPlaySAPSession_primeSessionWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _establishContext];
  v3 = [*(a1 + 32) _primeTheConnection];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v3;
    v6 = *(*(a1 + 32) + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__SSVFairPlaySAPSession_primeSessionWithCompletionBlock___block_invoke_2;
    v7[3] = &unk_1E84AED58;
    v8 = v4;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

- (void)setCertificateData:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSVFairPlaySAPSession_setCertificateData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __44__SSVFairPlaySAPSession_setCertificateData___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 24) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }
}

- (void)signData:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSVFairPlaySAPSession_signData_completionBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __50__SSVFairPlaySAPSession_signData_completionBlock___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v50 = 0;
  v4 = [v2 _signData:v3 error:&v50];
  v5 = v50;
  if (v4)
  {
    goto LABEL_27;
  }

  if (![*(a1 + 32) _shouldRetrySAPOperationForError:v5])
  {
    goto LABEL_15;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
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

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v51 = 138412290;
    v52 = v10;
    v11 = v10;
    LODWORD(v44) = 12;
    v43 = &v51;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v51, v44}];
    free(v12);
    SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v9);
  }

LABEL_14:
  v19 = *(a1 + 32);
  v20 = *(v19 + 32);
  *(v19 + 32) = 0;

  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v49 = v5;
  v4 = [v21 _signData:v22 error:&v49];
  v23 = v49;

  v5 = v23;
  if (!v4)
  {
LABEL_15:
    v24 = +[SSLogConfig sharedStoreServicesConfig];
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

    v27 = [v24 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v28 = objc_opt_class();
      v51 = 138412546;
      v52 = v28;
      v53 = 2112;
      v54 = v5;
      v29 = v28;
      LODWORD(v44) = 22;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_26:

        v37 = *(a1 + 32);
        v38 = *(v37 + 32);
        *(v37 + 32) = 0;

        v4 = 0;
        *(*(a1 + 32) + 48) = 0;
        goto LABEL_27;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v51, v44}];
      free(v30);
      SSFileLog(v24, @"%@", v31, v32, v33, v34, v35, v36, v27);
    }

    goto LABEL_26;
  }

LABEL_27:
  v39 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSVFairPlaySAPSession_signData_completionBlock___block_invoke_14;
  block[3] = &unk_1E84ABEC8;
  v40 = *(a1 + 48);
  v47 = v5;
  v48 = v40;
  v46 = v4;
  v41 = v5;
  v42 = v4;
  dispatch_async(v39, block);
}

- (void)verifySignature:(id)a3 forData:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__SSVFairPlaySAPSession_verifySignature_forData_completionBlock___block_invoke;
  v15[3] = &unk_1E84B3718;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

void __65__SSVFairPlaySAPSession_verifySignature_forData_completionBlock___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v52 = 0;
  v5 = [v2 _verifySignature:v3 forData:v4 error:&v52];
  v6 = v52;
  if ((v5 & 1) == 0)
  {
    if (![*(a1 + 32) _shouldRetrySAPOperationForError:v6])
    {
      v7 = 0;
      goto LABEL_18;
    }

    v8 = +[SSLogConfig sharedStoreServicesConfig];
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

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v53 = 138412290;
      v54 = v12;
      v13 = v12;
      LODWORD(v46) = 12;
      v45 = &v53;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_15;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v53, v46}];
      free(v14);
      SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
    }

LABEL_15:
    v21 = *(a1 + 32);
    v22 = *(v21 + 32);
    *(v21 + 32) = 0;

    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v51 = v6;
    v7 = [v23 _verifySignature:v24 forData:v25 error:&v51];
    v26 = v51;

    v6 = v26;
    if (v7)
    {
      goto LABEL_31;
    }

LABEL_18:
    if (!v6)
    {
      goto LABEL_31;
    }

    v27 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v31 = objc_opt_class();
      v53 = 138412546;
      v54 = v31;
      v55 = 2112;
      v56 = v6;
      v32 = v31;
      LODWORD(v46) = 22;
      v33 = _os_log_send_and_compose_impl();

      if (!v33)
      {
LABEL_30:

        v40 = *(a1 + 32);
        v41 = *(v40 + 32);
        *(v40 + 32) = 0;

        v7 = 0;
        goto LABEL_31;
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, &v53, v46}];
      free(v33);
      SSFileLog(v27, @"%@", v34, v35, v36, v37, v38, v39, v30);
    }

    goto LABEL_30;
  }

  v7 = 1;
LABEL_31:
  v42 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SSVFairPlaySAPSession_verifySignature_forData_completionBlock___block_invoke_15;
  block[3] = &unk_1E84B08A8;
  v43 = *(a1 + 56);
  v50 = v7;
  v48 = v6;
  v49 = v43;
  v44 = v6;
  dispatch_async(v42, block);
}

- (id)signatureWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__79;
  v26 = __Block_byref_object_dispose__79;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__79;
  v20 = __Block_byref_object_dispose__79;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__SSVFairPlaySAPSession_signatureWithData_error___block_invoke;
  v12[3] = &unk_1E84B1D18;
  v14 = &v22;
  v15 = &v16;
  v8 = v7;
  v13 = v8;
  [(SSVFairPlaySAPSession *)self signData:v6 completionBlock:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v17[5];
  if (a4 && !v9)
  {
    *a4 = v23[5];
    v9 = v17[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __49__SSVFairPlaySAPSession_signatureWithData_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)verifyData:(id)a3 withSignature:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__79;
  v26 = __Block_byref_object_dispose__79;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__SSVFairPlaySAPSession_verifyData_withSignature_error___block_invoke;
  v14[3] = &unk_1E84AE928;
  v16 = &v22;
  v17 = &v18;
  v11 = v10;
  v15 = v11;
  [(SSVFairPlaySAPSession *)self verifySignature:v9 forData:v8 completionBlock:v14];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(v19 + 24);
  if (a5 && (v19[3] & 1) == 0)
  {
    *a5 = v23[5];
    v12 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v12 & 1;
}

void __56__SSVFairPlaySAPSession_verifyData_withSignature_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_establishContext
{
  v34 = *MEMORY[0x1E69E9840];
  context = self->_context;
  if (context)
  {
    goto LABEL_29;
  }

  v4 = [(SSVFairPlaySAPSession *)self _loadCertificateData];
  if (v4)
  {
    v5 = [[SSVFairPlaySAPContext alloc] initWithSAPVersion:self->_version];
    v29 = 0;
    v6 = [(SSVFairPlaySAPContext *)v5 exchangeData:v4 error:&v29];
    v7 = v29;
    if (v6)
    {
      while (![(SSVFairPlaySAPContext *)v5 isComplete])
      {
        certificateData = [(SSVFairPlaySAPSession *)self _postExchangeData:v6];
        if (!certificateData)
        {

          goto LABEL_12;
        }

        v28 = 0;
        v9 = [(SSVFairPlaySAPContext *)v5 exchangeData:certificateData error:&v28];
        v10 = v28;

        if (!v7)
        {
          v7 = v10;
        }

        v6 = v9;
        if (!v9)
        {
          break;
        }
      }
    }

    else
    {
      certificateData = self->_certificateData;
      self->_certificateData = 0;
LABEL_12:

      v6 = 0;
    }

    if ([(SSVFairPlaySAPContext *)v5 isComplete])
    {
      v11 = v5;
      v12 = self->_context;
      self->_context = v11;
LABEL_26:

      goto LABEL_27;
    }

    v12 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v30 = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v7;
      v17 = v16;
      LODWORD(v27) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_26;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v30, v27}];
      free(v18);
      SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, v15);
    }

    goto LABEL_26;
  }

LABEL_27:

  context = self->_context;
  if (!context)
  {
    v25 = self->_certificateData;
    self->_certificateData = 0;

    context = self->_context;
  }

LABEL_29:

  return context;
}

- (id)_loadCertificateData
{
  v26 = *MEMORY[0x1E69E9840];
  certificateData = self->_certificateData;
  if (!certificateData)
  {
    v4 = [(SSVFairPlaySAPSession *)self _urlBagInterpreter];
    v5 = [v4 URLForURLBagKey:@"sign-sap-setup-cert"];
    if (v5)
    {
      v6 = [[SSVLoadURLOperation alloc] initWithURL:v5];
      [(SSVLoadURLOperation *)v6 _configureWithURLBagInterpreter:v4];
      v7 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
      [(SSVLoadURLOperation *)v6 setDataConsumer:v7];

      [(SSVLoadURLOperation *)v6 setITunesStoreRequest:1];
      [(SSVLoadURLOperation *)v6 setBag:self->_bag];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __45__SSVFairPlaySAPSession__loadCertificateData__block_invoke;
      v23[3] = &unk_1E84B3740;
      v23[4] = self;
      [(SSVLoadURLOperation *)v6 setOutputBlock:v23];
      [(SSVLoadURLOperation *)v6 main];
    }

    certificateData = self->_certificateData;
    if (!certificateData)
    {
      v8 = +[SSLogConfig sharedConfig];
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

      v11 = [v8 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v24 = 138543362;
        v25 = v12;
        v13 = v12;
        LODWORD(v22) = 12;
        v14 = _os_log_send_and_compose_impl();

        if (!v14)
        {
LABEL_16:

          certificateData = self->_certificateData;
          goto LABEL_17;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v24, v22}];
        free(v14);
        SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
      }

      goto LABEL_16;
    }
  }

LABEL_17:

  return certificateData;
}

void __45__SSVFairPlaySAPSession__loadCertificateData__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = [v6 objectForKey:@"sign-sap-setup-cert"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(a1 + 32) + 24), v5);
    }

    v4 = v6;
  }
}

- (id)_postExchangeData:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__79;
  v32 = __Block_byref_object_dispose__79;
  v33 = 0;
  v5 = [(SSVFairPlaySAPSession *)self _urlBagInterpreter];
  v6 = [v5 URLForURLBagKey:@"sign-sap-setup"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v6];
    [v7 setHTTPMethod:@"POST"];
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v4, @"sign-sap-setup-buffer", 0}];
    v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:100 options:0 error:0];
    [v7 setHTTPBody:v9];

    v10 = [[SSVLoadURLOperation alloc] initWithURLRequest:v7];
    [(SSVLoadURLOperation *)v10 _configureWithURLBagInterpreter:v5];
    v11 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
    [(SSVLoadURLOperation *)v10 setDataConsumer:v11];

    [(SSVLoadURLOperation *)v10 setITunesStoreRequest:1];
    [(SSVLoadURLOperation *)v10 setBag:self->_bag];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __43__SSVFairPlaySAPSession__postExchangeData___block_invoke;
    v27[3] = &unk_1E84B3768;
    v27[4] = &v28;
    [(SSVLoadURLOperation *)v10 setOutputBlock:v27];
    [(SSVLoadURLOperation *)v10 main];

LABEL_3:
    goto LABEL_4;
  }

  v7 = +[SSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v14 = [v7 shouldLog];
  v15 = [v7 shouldLogToDisk];
  v16 = [v7 OSLogObject];
  v8 = v16;
  if (v15)
  {
    v14 |= 2u;
  }

  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_3;
  }

  v17 = objc_opt_class();
  v34 = 138543362;
  v35 = v17;
  v18 = v17;
  LODWORD(v26) = 12;
  v19 = _os_log_send_and_compose_impl();

  if (v19)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v34, v26}];
    free(v19);
    SSFileLog(v7, @"%@", v20, v21, v22, v23, v24, v25, v8);
    goto LABEL_3;
  }

LABEL_4:

  v12 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v12;
}

void __43__SSVFairPlaySAPSession__postExchangeData___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = [v6 objectForKey:@"sign-sap-setup-buffer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
    }

    v4 = v6;
  }
}

- (BOOL)_primeTheConnection
{
  v2 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (self->_version == 1)
  {
    context = self->_context;
    v5 = [MEMORY[0x1E695DEF0] data];
    v6 = [(SSVFairPlaySAPContext *)context primingSignatureForData:v5 error:0];

    if (v6)
    {
      v7 = [v6 base64EncodedStringWithOptions:0];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(SSVFairPlaySAPSession *)self _urlBagInterpreter];
    v9 = [v8 mescalPrimingURL];
    if (v9)
    {
      v10 = +[SSDevice currentDevice];
      v11 = [v10 uniqueDeviceIdentifier];
      v12 = [v11 uppercaseString];

      v13 = [v9 URLByAppendingQueryParameter:@"guid" value:v12];

      if (v13 && v7)
      {
        v14 = [[SSVLoadURLOperation alloc] initWithURL:v13];
        [(SSVLoadURLOperation *)v14 _configureWithURLBagInterpreter:v8];
        [(SSVLoadURLOperation *)v14 setSAPSession:self];
        v15 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
        [(SSVLoadURLOperation *)v14 setDataConsumer:v15];

        [(SSVLoadURLOperation *)v14 setITunesStoreRequest:1];
        [(SSVLoadURLOperation *)v14 setBag:self->_bag];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke;
        v20[3] = &unk_1E84B2FF0;
        v21 = v7;
        [(SSVLoadURLOperation *)v14 setPrepareRequestBlock:v20];
        objc_initWeak(&location, v14);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke_2;
        v17[3] = &unk_1E84B3790;
        objc_copyWeak(&v18, &location);
        v17[4] = self;
        v17[5] = &v22;
        [(SSVLoadURLOperation *)v14 setOutputBlock:v17];
        [(SSVLoadURLOperation *)v14 main];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v13 = 0;
    }

    v2 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);
  return v2 & 1;
}

void __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHTTPMethod:@"POST"];
  [v3 setValue:*(a1 + 32) forHTTPHeaderField:@"X-Apple-ActionSignature"];
}

void __44__SSVFairPlaySAPSession__primeTheConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained URLResponse];

    WeakRetained = v6;
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v6 URLResponse];
      *(*(*(a1 + 40) + 8) + 24) = [v4 _verifyPrimeResponse:v5];

      WeakRetained = v6;
    }
  }
}

- (BOOL)_shouldRetrySAPOperationForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"SSErrorDomain"])
  {
    v5 = [v3 code] == 148;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_signData:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SSVFairPlaySAPSession *)self _establishContext];
  v8 = v7;
  if (v7)
  {
    v26 = 0;
    v9 = [v7 signData:v6 error:&v26];
    v10 = v26;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

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
    v27 = 138412290;
    v28 = objc_opt_class();
    v17 = v28;
    LODWORD(v25) = 12;
    v18 = _os_log_send_and_compose_impl();

    if (!v18)
    {
      goto LABEL_18;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v27, v25}];
    free(v18);
    SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, v16);
  }

LABEL_18:
  v10 = SSError(@"SSErrorDomain", 122, @"No SAP context for signing", 0);
  v9 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v10;
    *a4 = v10;
  }

LABEL_4:

  return v9;
}

- (id)_urlBagInterpreter
{
  if (!self->_urlBagInterpreter)
  {
    bag = self->_bag;
    v4 = [SSVURLBagInterpreter alloc];
    if (bag)
    {
      v5 = [(SSVURLBagInterpreter *)v4 initWithSSBag:self->_bag];
    }

    else
    {
      v5 = [(SSVURLBagInterpreter *)v4 initWithURLBag:self->_urlBag];
    }

    urlBagInterpreter = self->_urlBagInterpreter;
    self->_urlBagInterpreter = v5;
  }

  v7 = self->_urlBagInterpreter;

  return v7;
}

- (BOOL)_verifyPrimeResponse:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_primed = 0;
  v5 = [v4 allHeaderFields];
  v6 = [v5 objectForKey:@"X-Apple-ActionSignature"];
  if (!v6)
  {
    v7 = [@"X-Apple-ActionSignature" lowercaseString];
    v6 = [v5 objectForKey:v7];
  }

  if ([v6 length])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
    context = self->_context;
    v39 = 0;
    v10 = [(SSVFairPlaySAPContext *)context verifyPrimeSignature:v8 error:&v39];
    v38 = v39;
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    v12 = v11;
    if (v10)
    {
      if (!v11)
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
      v16 = 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = v14;
      }

      else
      {
        v17 = v14 & 2;
      }

      if (v17)
      {
        v37 = v8;
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [v4 URL];
        v40 = 138412546;
        v41 = v18;
        v42 = 2112;
        v43 = v20;
        LODWORD(v36) = 22;
        v16 = 1;
        v21 = _os_log_send_and_compose_impl();

        if (!v21)
        {
          v8 = v37;
          v22 = v38;
          goto LABEL_30;
        }

        v8 = v37;
        v22 = v38;
LABEL_26:
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v40, v36}];
        free(v21);
        SSFileLog(v12, @"%@", v28, v29, v30, v31, v32, v33, v15);
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if (!v11)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v23 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      v15 = [v12 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 2;
      }

      if (v25)
      {
        v26 = objc_opt_class();
        v40 = 138412546;
        v41 = v26;
        v42 = 2112;
        v22 = v38;
        v43 = v38;
        v27 = v26;
        LODWORD(v36) = 22;
        v21 = _os_log_send_and_compose_impl();

        v16 = 0;
        if (!v21)
        {
LABEL_30:

          self->_primed = v16;
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v16 = 0;
    }

    v22 = v38;
    goto LABEL_29;
  }

LABEL_31:
  primed = self->_primed;

  return primed;
}

- (BOOL)_verifySignature:(id)a3 forData:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(SSVFairPlaySAPSession *)self _establishContext];
  v11 = v10;
  if (!v10)
  {
    v16 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v30 = 138412290;
      v31 = objc_opt_class();
      v20 = v31;
      LODWORD(v28) = 12;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
        goto LABEL_16;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v30, v28}];
      free(v21);
      SSFileLog(v16, @"%@", v22, v23, v24, v25, v26, v27, v19);
    }

LABEL_16:
    v13 = SSError(@"SSErrorDomain", 122, @"No SAP context for signature verification", 0);
    v12 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v29 = 0;
  v12 = [v10 verifySignature:v8 forData:v9 error:&v29];
  v13 = v29;
  if (a5)
  {
LABEL_3:
    v14 = v13;
    *a5 = v13;
  }

LABEL_4:

  return v12;
}

@end