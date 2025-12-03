@interface SSVLeaseRequestOperation
- (BOOL)_loadCertificateDataIfNecessary:(id *)necessary;
- (BOOL)_resolveConfigurationAndURLReturningError:(id *)error;
- (BOOL)_shouldRetryForError:(id)error;
- (NSString)certificateURLBagKey;
- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request URLBag:(id)bag;
- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request configuration:(id)configuration;
- (SSVPlaybackLeaseRequest)leaseRequest;
- (id)outputBlock;
- (void)cancel;
- (void)main;
- (void)setCertificateURLBagKey:(id)key;
- (void)setOutputBlock:(id)block;
@end

@implementation SSVLeaseRequestOperation

- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request configuration:(id)configuration
{
  requestCopy = request;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SSVLeaseRequestOperation;
  v8 = [(SSVOperation *)&v14 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v11;
  }

  return v8;
}

- (SSVLeaseRequestOperation)initWithLeaseRequest:(id)request URLBag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  v14.receiver = self;
  v14.super_class = SSVLeaseRequestOperation;
  v8 = [(SSVOperation *)&v14 init];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    bagLoadSemaphore = v8->_bagLoadSemaphore;
    v8->_bagLoadSemaphore = v9;

    v11 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v11;

    objc_storeStrong(&v8->_urlBag, bag);
  }

  return v8;
}

- (NSString)certificateURLBagKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__56;
  v9 = __Block_byref_object_dispose__56;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSVLeaseRequestOperation_certificateURLBagKey__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __48__SSVLeaseRequestOperation_certificateURLBagKey__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 312) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSVPlaybackLeaseRequest)leaseRequest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__56;
  v9 = __Block_byref_object_dispose__56;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSVLeaseRequestOperation_leaseRequest__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__SSVLeaseRequestOperation_leaseRequest__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 336) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)outputBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSVLeaseRequestOperation_outputBlock__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = MEMORY[0x1DA6DFBB0](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__SSVLeaseRequestOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setCertificateURLBagKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SSVLeaseRequestOperation_setCertificateURLBagKey___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __52__SSVLeaseRequestOperation_setCertificateURLBagKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 312);
  *(v3 + 312) = v2;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSVLeaseRequestOperation_setOutputBlock___block_invoke;
  v6[3] = &unk_1E84AC360;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __43__SSVLeaseRequestOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;
}

- (void)cancel
{
  dispatch_semaphore_signal(self->_bagLoadSemaphore);
  v3.receiver = self;
  v3.super_class = SSVLeaseRequestOperation;
  [(SSVOperation *)&v3 cancel];
}

- (void)main
{
  v120 = *MEMORY[0x1E69E9840];
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__56;
  v110 = __Block_byref_object_dispose__56;
  v111 = 0;
  obj = 0;
  v3 = [(SSVLeaseRequestOperation *)self _resolveConfigurationAndURLReturningError:&obj];
  objc_storeStrong(&v111, obj);
  if (!v3)
  {
    v28 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v28 shouldLog];
    shouldLogToDisk = [v28 shouldLogToDisk];
    oSLogObject = [v28 OSLogObject];
    v32 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = v107[5];
      *v116 = 138412546;
      *&v116[4] = v34;
      *&v116[12] = 2112;
      *&v116[14] = v35;
      LODWORD(v95) = 22;
      v94 = v116;
      v36 = _os_log_send_and_compose_impl();

      if (!v36)
      {
LABEL_26:

LABEL_38:
        v58 = 0;
        goto LABEL_76;
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithCString:v36 encoding:{4, v116, v95}];
      free(v36);
      SSFileLog(v28, @"%@", v37, v38, v39, v40, v41, v42, v32);
    }

    goto LABEL_26;
  }

  v4 = (v107 + 5);
  v104 = v107[5];
  v5 = [(SSVLeaseRequestOperation *)self _loadCertificateDataIfNecessary:&v104];
  objc_storeStrong(v4, v104);
  if (!v5)
  {
    v43 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v43 shouldLog];
    shouldLogToDisk2 = [v43 shouldLogToDisk];
    oSLogObject2 = [v43 OSLogObject];
    v47 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = v107[5];
      *v116 = 138412546;
      *&v116[4] = v49;
      *&v116[12] = 2112;
      *&v116[14] = v50;
      LODWORD(v95) = 22;
      v94 = v116;
      v51 = _os_log_send_and_compose_impl();

      if (!v51)
      {
LABEL_37:

        goto LABEL_38;
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, v116, v95}];
      free(v51);
      SSFileLog(v43, @"%@", v52, v53, v54, v55, v56, v57, v47);
    }

    goto LABEL_37;
  }

  v6 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  *v116 = 0;
  *&v116[8] = v116;
  *&v116[16] = 0x3032000000;
  v117 = __Block_byref_object_copy__56;
  v118 = __Block_byref_object_dispose__56;
  v119 = 0;
  while (1)
  {
    v7 = objc_alloc(MEMORY[0x1E696AD68]);
    _URL = [(SSVPlaybackLeaseRequest *)self->_request _URL];
    v9 = [v7 initWithURL:_URL];

    [v9 setHTTPMethod:@"POST"];
    v10 = [[SSVLoadURLOperation alloc] initWithURLRequest:v9];

    v11 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
    [(SSVLoadURLOperation *)v10 setDataConsumer:v11];

    [(SSVLoadURLOperation *)v10 setITunesStoreRequest:1];
    [(SSVLoadURLOperation *)v10 setMachineDataStyle:3];
    storeFrontSuffix = [(SSVPlaybackLeaseConfiguration *)self->_configuration storeFrontSuffix];
    [(SSVLoadURLOperation *)v10 setStoreFrontSuffix:storeFrontSuffix];

    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __32__SSVLeaseRequestOperation_main__block_invoke;
    v99[3] = &unk_1E84B1CC8;
    v99[4] = &v106;
    v99[5] = v116;
    [(SSVLoadURLOperation *)v10 setOutputBlock:v99];
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __32__SSVLeaseRequestOperation_main__block_invoke_2;
    v98[3] = &unk_1E84B1CF0;
    v98[4] = self;
    v98[5] = &v100;
    [(SSVLoadURLOperation *)v10 setPrepareRequestBlock:v98];
    [(SSVOperation *)self runChildOperation:v10];
    if (![(SSVLeaseRequestOperation *)self _shouldRetryForError:v107[5]])
    {
      break;
    }

    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v13 shouldLog];
    shouldLogToDisk3 = [v13 shouldLogToDisk];
    oSLogObject3 = [v13 OSLogObject];
    v17 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      shouldLog3 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      shouldLog3 &= 2u;
    }

    if (shouldLog3)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v112 = 138412290;
      v113 = v19;
      LODWORD(v95) = 12;
      v94 = &v112;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_15;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v112, v95}];
      free(v20);
      SSFileLog(v13, @"%@", v21, v22, v23, v24, v25, v26, v17);
    }

LABEL_15:
    v27 = v107[5];
    v107[5] = 0;

    v6 = v10;
  }

  uRLResponse = [(SSVLoadURLOperation *)v10 URLResponse];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [*(*&v116[8] + 40) objectForKey:@"failureType"];
    if (v60)
    {
      leaseInfoData = objc_alloc_init(MEMORY[0x1E695DF90]);
      subscriptionKeyBagData = [*(*&v116[8] + 40) objectForKey:@"dialog"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [leaseInfoData setObject:subscriptionKeyBagData forKey:@"SSVPlaybackResponseErrorUserInfoKeyDialogDictionary"];
      }

      if (![leaseInfoData count])
      {

        leaseInfoData = 0;
      }

      v63 = MEMORY[0x1E696ABC0];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v60 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v71 = [v63 errorWithDomain:@"SSServerErrorDomain" code:integerValue userInfo:leaseInfoData];
      v58 = 0;
      v69 = v107[5];
      v107[5] = v71;
LABEL_55:

      goto LABEL_56;
    }

    v66 = [SSVPlaybackLeaseResponse alloc];
    v58 = [(SSVPlaybackResponse *)v66 initWithDictionary:*(*&v116[8] + 40) URLResponse:uRLResponse];
    pastisKeyServerURL = [(SSVPlaybackLeaseConfiguration *)self->_configuration pastisKeyServerURL];
    [(SSVPlaybackResponse *)v58 setFallbackStreamingKeyServerURL:pastisKeyServerURL];

    pastisCertificateURL = [(SSVPlaybackLeaseConfiguration *)self->_configuration pastisCertificateURL];
    [(SSVPlaybackResponse *)v58 setFallbackStreamingKeyCertificateURL:pastisCertificateURL];

    if (![(SSVPlaybackLeaseRequest *)self->_request _leaseType])
    {
      leaseInfoData = [(SSVPlaybackLeaseResponse *)v58 leaseInfoData];
      subscriptionKeyBagData = [(SSVPlaybackLeaseResponse *)v58 subscriptionKeyBagData];
      if (leaseInfoData | subscriptionKeyBagData)
      {
        v69 = objc_alloc_init(SSVFairPlaySubscriptionController);
        v70 = (v107 + 5);
        v97 = v107[5];
        [(SSVFairPlaySubscriptionController *)v69 importSubscriptionKeyBagData:subscriptionKeyBagData leaseInfoData:leaseInfoData returningError:&v97];
        objc_storeStrong(v70, v97);
        goto LABEL_55;
      }

LABEL_56:
    }

LABEL_57:
  }

  else
  {
    if (!v107[5])
    {
      v65 = SSError(@"SSErrorDomain", 100, 0, 0);
      v58 = 0;
      v60 = v107[5];
      v107[5] = v65;
      goto LABEL_57;
    }

    v58 = 0;
  }

  if (v101[3])
  {
    leaseInfoData2 = [(SSVPlaybackLeaseResponse *)v58 leaseInfoData];
    v73 = leaseInfoData2;
    if (leaseInfoData2)
    {
      v96 = 0;
      v74 = v101[3];
      v75 = leaseInfoData2;
      v76 = C956s6fM(v74, [v73 bytes], objc_msgSend(v73, "length"), &v96);
      if (v76)
      {
        v77 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v77)
        {
          v77 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v77 shouldLog];
        shouldLogToDisk4 = [v77 shouldLogToDisk];
        oSLogObject4 = [v77 OSLogObject];
        v81 = oSLogObject4;
        if (shouldLogToDisk4)
        {
          shouldLog4 |= 2u;
        }

        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog4 &= 2u;
        }

        if (shouldLog4)
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          v112 = 138412546;
          v113 = v83;
          v114 = 2048;
          v115 = v76;
          LODWORD(v95) = 22;
          v94 = &v112;
          v84 = _os_log_send_and_compose_impl();

          if (v84)
          {
            v81 = [MEMORY[0x1E696AEC0] stringWithCString:v84 encoding:{4, &v112, v95}];
            free(v84);
            SSFileLog(v77, @"%@", v85, v86, v87, v88, v89, v90, v81);
            goto LABEL_70;
          }
        }

        else
        {
LABEL_70:
        }
      }

      if (v96)
      {
        N8pdwAfn(v96);
      }
    }

    JE2f6WCx(v101[3]);
  }

  _Block_object_dispose(v116, 8);
  _Block_object_dispose(&v100, 8);
LABEL_76:
  _certificateData = [(SSVPlaybackLeaseRequest *)self->_request _certificateData];
  [(SSVPlaybackLeaseResponse *)v58 setCertificateData:_certificateData];

  [(SSVPlaybackLeaseResponse *)v58 setKDMovieIdentifier:[(SSVPlaybackLeaseRequest *)self->_request _KDMovieIdentifier]];
  outputBlock = [(SSVLeaseRequestOperation *)self outputBlock];
  v93 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v58, v107[5]);
  }

  _Block_object_dispose(&v106, 8);
}

void __32__SSVLeaseRequestOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __32__SSVLeaseRequestOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 344);
  v5 = 30.0;
  if (v4 <= 2)
  {
    v5 = dbl_1D4B39030[v4];
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
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v29 = 138412546;
    v30 = v11;
    v31 = 2048;
    v32 = v5;
    LODWORD(v26) = 22;
    v25 = &v29;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v29, v26}];
    free(v12);
    SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v9);
  }

LABEL_14:
  [v3 setTimeoutInterval:v5];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 24);
  if (v20)
  {
    JE2f6WCx(v20);
    v19 = *(*(a1 + 40) + 8);
  }

  v21 = [*(*(a1 + 32) + 336) _copyBodyDictionaryWithFairPlaySession:{v19 + 24, v25}];
  if ([v21 count])
  {
    v22 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v21 options:0 error:0];
    [v3 setHTTPBody:v22];

    [v3 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  }

  v23 = [*(*(a1 + 32) + 336) HTTPHeaderFields];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __32__SSVLeaseRequestOperation_main__block_invoke_21;
  v27[3] = &unk_1E84ADD90;
  v28 = v3;
  v24 = v3;
  [v23 enumerateKeysAndObjectsUsingBlock:v27];
}

- (BOOL)_loadCertificateDataIfNecessary:(id *)necessary
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__56;
  v15 = __Block_byref_object_dispose__56;
  v16 = 0;
  _certificateData = [(SSVPlaybackLeaseRequest *)self->_request _certificateData];
  if (_certificateData)
  {
    v6 = 1;
    *(v18 + 24) = 1;
  }

  else
  {
    v7 = [[SSVLeaseCertificateRequestOperation alloc] initWithConfiguration:self->_configuration];
    certificateURLBagKey = [(SSVLeaseRequestOperation *)self certificateURLBagKey];
    [(SSVLeaseCertificateRequestOperation *)v7 setCertificateURLBagKey:certificateURLBagKey];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__SSVLeaseRequestOperation__loadCertificateDataIfNecessary___block_invoke;
    v10[3] = &unk_1E84B1D18;
    v10[5] = &v11;
    v10[6] = &v17;
    v10[4] = self;
    [(SSVLeaseCertificateRequestOperation *)v7 setOutputBlock:v10];
    [(SSVOperation *)self runChildOperation:v7];

    v6 = *(v18 + 24);
    if (necessary && (v18[3] & 1) == 0)
    {
      *necessary = v12[5];
      v6 = *(v18 + 24);
    }
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v6 & 1;
}

void __60__SSVLeaseRequestOperation__loadCertificateDataIfNecessary___block_invoke(void *a1, void *a2, id obj)
{
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v6 = obj;
  v7 = a2;
  *(*(a1[6] + 8) + 24) = v7 != 0;
  [*(a1[4] + 336) _setCertificateData:v7];
}

- (BOOL)_resolveConfigurationAndURLReturningError:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__56;
  v32 = __Block_byref_object_dispose__56;
  v33 = 0;
  _URLBagKey = [(SSVPlaybackLeaseRequest *)self->_request _URLBagKey];
  v6 = _URLBagKey;
  if (self->_urlBag)
  {
    if (_URLBagKey)
    {
      _URL = [(SSVPlaybackLeaseRequest *)self->_request _URL];
      if (_URL)
      {
        configuration = self->_configuration;

        if (configuration)
        {
          goto LABEL_12;
        }
      }
    }

    else if (self->_configuration)
    {
      goto LABEL_14;
    }

    bagLoadSemaphore = self->_bagLoadSemaphore;
    if (bagLoadSemaphore)
    {
      v10 = bagLoadSemaphore;
    }

    else
    {
      v10 = dispatch_semaphore_create(0);
    }

    v11 = v10;
    urlBag = self->_urlBag;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __70__SSVLeaseRequestOperation__resolveConfigurationAndURLReturningError___block_invoke;
    v23 = &unk_1E84B1D40;
    v24 = v6;
    selfCopy = self;
    v27 = &v28;
    v13 = v11;
    v26 = v13;
    [(SSURLBag *)urlBag loadWithCompletionBlock:&v20];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!v6)
  {
    if (self->_configuration)
    {
      goto LABEL_14;
    }

LABEL_18:
    if (!v29[5])
    {
      v18 = SSError(@"SSErrorDomain", 137, 0, 0);
      v19 = v29[5];
      v29[5] = v18;
    }

    v16 = 0;
    if (error)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = [(SSVPlaybackLeaseRequest *)self->_request _URL:v20];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = self->_configuration;

  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_14:
  v16 = 1;
  if (error)
  {
LABEL_15:
    *error = v29[5];
  }

LABEL_16:

  _Block_object_dispose(&v28, 8);
  return v16;
}

void __70__SSVLeaseRequestOperation__resolveConfigurationAndURLReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    if (*(a1 + 32))
    {
      v6 = [v15 objectForKey:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
        [*(*(a1 + 40) + 336) _setURL:v7];
      }

      else
      {
        v11 = SSError(@"SSErrorDomain", 124, 0, 0);
        v12 = *(*(a1 + 56) + 8);
        v7 = *(v12 + 40);
        *(v12 + 40) = v11;
      }
    }

    v13 = [[SSVPlaybackLeaseConfiguration alloc] initWithURLBagDictionary:v15];
    v14 = *(a1 + 40);
    v10 = *(v14 + 320);
    *(v14 + 320) = v13;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_11;
    }

    v8 = SSError(@"SSErrorDomain", 111, 0, 0);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

LABEL_11:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)_shouldRetryForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A978]])
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  code = [errorCopy code];

  if (code != -1001)
  {
    goto LABEL_6;
  }

  retryCount = self->_retryCount;
  if (retryCount > 1)
  {
    goto LABEL_6;
  }

  self->_retryCount = retryCount + 1;
  v8 = 1;
LABEL_7:

  return v8;
}

@end