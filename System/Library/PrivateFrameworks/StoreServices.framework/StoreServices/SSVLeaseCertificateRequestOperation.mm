@interface SSVLeaseCertificateRequestOperation
- (NSString)certificateURLBagKey;
- (SSVLeaseCertificateRequestOperation)initWithConfiguration:(id)configuration;
- (SSVLeaseCertificateRequestOperation)initWithURLBag:(id)bag;
- (id)_resolveCertificateURLReturningError:(id *)error;
- (id)outputBlock;
- (void)cancel;
- (void)main;
- (void)setCertificateURLBagKey:(id)key;
- (void)setOutputBlock:(id)block;
@end

@implementation SSVLeaseCertificateRequestOperation

- (SSVLeaseCertificateRequestOperation)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(SSVOperation *)self init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (SSVLeaseCertificateRequestOperation)initWithURLBag:(id)bag
{
  bagCopy = bag;
  v6 = [(SSVOperation *)self init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    bagLoadSemaphore = v6->_bagLoadSemaphore;
    v6->_bagLoadSemaphore = v7;

    objc_storeStrong(&v6->_urlBag, bag);
  }

  return v6;
}

- (void)cancel
{
  bagLoadSemaphore = self->_bagLoadSemaphore;
  if (bagLoadSemaphore)
  {
    dispatch_semaphore_signal(bagLoadSemaphore);
  }

  v4.receiver = self;
  v4.super_class = SSVLeaseCertificateRequestOperation;
  [(SSVOperation *)&v4 cancel];
}

- (void)main
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  obj = 0;
  v3 = [(SSVLeaseCertificateRequestOperation *)self _resolveCertificateURLReturningError:&obj];
  objc_storeStrong(&v23, obj);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v3];
    [v4 setHTTPMethod:@"GET"];
    v5 = [[SSVLoadURLOperation alloc] initWithURLRequest:v4];
    v6 = +[SSVURLDataConsumer consumer];
    [(SSVLoadURLOperation *)v5 setDataConsumer:v6];

    [(SSVLoadURLOperation *)v5 setITunesStoreRequest:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__SSVLeaseCertificateRequestOperation_main__block_invoke;
    v10[3] = &unk_1E84AD0C0;
    v10[4] = &v18;
    v10[5] = &v12;
    [(SSVLoadURLOperation *)v5 setOutputBlock:v10];
    [(SSVOperation *)self runChildOperation:v5];

LABEL_3:
    goto LABEL_5;
  }

  if (!v19[5])
  {
    v9 = SSError(@"SSErrorDomain", 100, 0, 0);
    v4 = v19[5];
    v19[5] = v9;
    goto LABEL_3;
  }

LABEL_5:
  outputBlock = [(SSVLeaseCertificateRequestOperation *)self outputBlock];
  v8 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v13[5], v19[5]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __43__SSVLeaseCertificateRequestOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSString)certificateURLBagKey
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SSVLeaseCertificateRequestOperation_certificateURLBagKey__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)outputBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__6;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSVLeaseCertificateRequestOperation_outputBlock__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = MEMORY[0x1DA6DFBB0](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__SSVLeaseCertificateRequestOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(*(a1 + 32) + 336));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setOutputBlock:(id)block
{
  v4 = [block copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SSVLeaseCertificateRequestOperation_setOutputBlock___block_invoke;
  v6[3] = &unk_1E84AC360;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __54__SSVLeaseCertificateRequestOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 336);
  *(v3 + 336) = v2;
}

- (void)setCertificateURLBagKey:(id)key
{
  v4 = [key copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__SSVLeaseCertificateRequestOperation_setCertificateURLBagKey___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVOperation *)self dispatchAsync:v6];
}

- (id)_resolveCertificateURLReturningError:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__16;
  v29 = __Block_byref_object_dispose__16;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__16;
  v23 = __Block_byref_object_dispose__16;
  certificateURL = [(SSVPlaybackLeaseConfiguration *)self->_configuration certificateURL];
  if (!v20[5])
  {
    certificateURLBagKey = [(SSVLeaseCertificateRequestOperation *)self certificateURLBagKey];
    if (certificateURLBagKey || (certificateURLBagKey = @"fps-cert") != 0)
    {
      v6 = self->_urlBag;
      if (!v6)
      {
        v7 = [SSURLBagContext contextWithBagType:0];
        v6 = [SSURLBag URLBagForContext:v7];
      }

      bagLoadSemaphore = self->_bagLoadSemaphore;
      if (bagLoadSemaphore)
      {
        v9 = bagLoadSemaphore;
      }

      else
      {
        v9 = dispatch_semaphore_create(0);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__SSVLeaseCertificateRequestOperation__resolveCertificateURLReturningError___block_invoke;
      v15[3] = &unk_1E84AE350;
      v17 = &v19;
      v18 = &v25;
      v10 = v9;
      v16 = v10;
      [(SSURLBag *)v6 loadValueForKey:certificateURLBagKey completionBlock:v15];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (!v20[5] && !v26[5])
    {
      v11 = SSError(@"SSErrorDomain", 124, 0, 0);
      v12 = v26[5];
      v26[5] = v11;
    }
  }

  if (error)
  {
    *error = v26[5];
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __76__SSVLeaseCertificateRequestOperation__resolveCertificateURLReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    if (![v12 isNSString])
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:v12];
    v11 = *(*(a1 + 40) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 32));
}

@end