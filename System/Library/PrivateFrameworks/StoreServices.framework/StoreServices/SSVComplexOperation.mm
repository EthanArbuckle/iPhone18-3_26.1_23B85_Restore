@interface SSVComplexOperation
- (NSDictionary)URLBagDictionary;
- (SSVFairPlaySAPSession)SAPSession;
- (id)newLoadURLOperationWithRequest:(id)request;
- (void)configureWithURLBag:(id)bag;
- (void)configureWithURLBagDictionary:(id)dictionary;
- (void)setSAPSession:(id)session;
@end

@implementation SSVComplexOperation

- (void)configureWithURLBag:(id)bag
{
  bagCopy = bag;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SSVComplexOperation_configureWithURLBag___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = bagCopy;
  v5 = bagCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __43__SSVComplexOperation_configureWithURLBag___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  *(v2 + 304) = 0;
}

- (void)configureWithURLBagDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SSVComplexOperation_configureWithURLBagDictionary___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = dictionaryCopy;
  v5 = dictionaryCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __53__SSVComplexOperation_configureWithURLBagDictionary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  *(v2 + 296) = 0;

  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 304);
  *(v5 + 304) = v4;
}

- (id)newLoadURLOperationWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[SSVLoadURLOperation alloc] initWithURLRequest:requestCopy];

  [(SSVLoadURLOperation *)v5 setITunesStoreRequest:1];
  uRLBagDictionary = [(SSVComplexOperation *)self URLBagDictionary];
  if (uRLBagDictionary)
  {
    v7 = [[SSVURLBagInterpreter alloc] initWithURLBagDictionary:uRLBagDictionary];
    [(SSVLoadURLOperation *)v5 _configureWithURLBagInterpreter:v7];
    [(SSVLoadURLOperation *)v5 setMachineDataStyle:2];
    v8 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:1];
    sAPSession = [(SSVComplexOperation *)self SAPSession];
    [(SSVLoadURLOperation *)v5 setSAPSession:sAPSession];

    [(SSVLoadURLOperation *)v5 setSAPSignaturePolicy:v8];
  }

  return v5;
}

- (SSVFairPlaySAPSession)SAPSession
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__43;
  v9 = __Block_byref_object_dispose__43;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSVComplexOperation_SAPSession__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setSAPSession:(id)session
{
  sessionCopy = session;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SSVComplexOperation_setSAPSession___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = sessionCopy;
  v5 = sessionCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __37__SSVComplexOperation_setSAPSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 288) != v1)
  {
    objc_storeStrong((v2 + 288), v1);
  }
}

- (NSDictionary)URLBagDictionary
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__43;
  v27 = __Block_byref_object_dispose__43;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__43;
  v21 = __Block_byref_object_dispose__43;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__SSVComplexOperation_URLBagDictionary__block_invoke;
  v16[3] = &unk_1E84B0E10;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v23;
  [(SSVOperation *)self dispatchSync:v16];
  v3 = v24[5];
  if (!v3)
  {
    if (!v18[5])
    {
      v4 = [SSURLBagContext contextWithBagType:0];
      v5 = [[SSURLBag alloc] initWithURLBagContext:v4];
      v6 = v18[5];
      v18[5] = v5;
    }

    v7 = dispatch_semaphore_create(0);
    v8 = v18[5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__SSVComplexOperation_URLBagDictionary__block_invoke_2;
    v13[3] = &unk_1E84ADCE0;
    v15 = &v23;
    v9 = v7;
    v14 = v9;
    [v8 loadWithCompletionBlock:v13];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__SSVComplexOperation_URLBagDictionary__block_invoke_3;
    v12[3] = &unk_1E84B0E10;
    v12[4] = self;
    v12[5] = &v23;
    v12[6] = &v17;
    [(SSVOperation *)self dispatchAsync:v12];

    v3 = v24[5];
  }

  v10 = v3;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v10;
}

void __39__SSVComplexOperation_URLBagDictionary__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 296));
  v2 = [*(a1[4] + 304) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __39__SSVComplexOperation_URLBagDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __39__SSVComplexOperation_URLBagDictionary__block_invoke_3(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v2 = a1[4];
    v1 = a1 + 4;
    v3 = *(v2 + 296);
    *(v2 + 296) = 0;

    v4 = [*(*(v1[1] + 8) + 40) copy];
  }

  else
  {
    v1 = a1 + 4;
    objc_storeStrong((a1[4] + 296), *(*(a1[6] + 8) + 40));
    v4 = 0;
  }

  v5 = *(*v1 + 304);
  *(*v1 + 304) = v4;
}

@end