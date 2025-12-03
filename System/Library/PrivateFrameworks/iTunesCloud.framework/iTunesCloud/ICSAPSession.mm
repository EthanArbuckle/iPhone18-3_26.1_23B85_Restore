@interface ICSAPSession
+ (id)sharedSAPSessionWithVersion:(unsigned int)version URLBag:(id)bag requestContext:(id)context;
- (id)_initWithVersion:(unsigned int)version certificateURL:(id)l setupURL:(id)rL requestContext:(id)context;
- (void)signData:(id)data withCompletionHandler:(id)handler;
- (void)verifySignatureData:(id)data forData:(id)forData withCompletionHandler:(id)handler;
@end

@implementation ICSAPSession

- (void)verifySignatureData:(id)data forData:(id)forData withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  forDataCopy = forData;
  dataCopy = data;
  v11 = objc_alloc_init(ICSAPSessionVerifySignatureOperation);
  [(ICSAPSessionAbstractOperation *)v11 setSapSession:self];
  [(ICSAPSessionVerifySignatureOperation *)v11 setData:forDataCopy];

  [(ICSAPSessionVerifySignatureOperation *)v11 setSignatureData:dataCopy];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__ICSAPSession_verifySignatureData_forData_withCompletionHandler___block_invoke;
  v16 = &unk_1E7BF98C0;
  selfCopy = self;
  v18 = handlerCopy;
  v12 = handlerCopy;
  [(ICSAPSessionVerifySignatureOperation *)v11 setResponseHandler:&v13];
  [(NSOperationQueue *)self->_operationQueue addOperation:v11, v13, v14, v15, v16, selfCopy];
}

void __66__ICSAPSession_verifySignatureData_forData_withCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICSAPSession_verifySignatureData_forData_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9B68;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)signData:(id)data withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v8 = objc_alloc_init(ICSAPSessionSignDataOperation);
  [(ICSAPSessionAbstractOperation *)v8 setSapSession:self];
  [(ICSAPSessionSignDataOperation *)v8 setData:dataCopy];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__ICSAPSession_signData_withCompletionHandler___block_invoke;
  v13 = &unk_1E7BF9FB0;
  selfCopy = self;
  v15 = handlerCopy;
  v9 = handlerCopy;
  [(ICSAPSessionSignDataOperation *)v8 setResponseHandler:&v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8, v10, v11, v12, v13, selfCopy];
}

void __47__ICSAPSession_signData_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__ICSAPSession_signData_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)_initWithVersion:(unsigned int)version certificateURL:(id)l setupURL:(id)rL requestContext:(id)context
{
  lCopy = l;
  rLCopy = rL;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = ICSAPSession;
  v13 = [(ICSAPSession *)&v27 init];
  if (v13)
  {
    v14 = [lCopy copy];
    certificateURL = v13->_certificateURL;
    v13->_certificateURL = v14;

    v16 = [rLCopy copy];
    setupURL = v13->_setupURL;
    v13->_setupURL = v16;

    v18 = [contextCopy copyWithBlock:&__block_literal_global_8];
    requestContext = v13->_requestContext;
    v13->_requestContext = v18;

    v13->_sapVersion = version;
    v20 = dispatch_queue_create("com.apple.iTunesCloud.ICSAPSession.calloutQueue", 0);
    calloutQueue = v13->_calloutQueue;
    v13->_calloutQueue = v20;

    v22 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    prepareFairPlayContextOperationQueue = v13->_prepareFairPlayContextOperationQueue;
    v13->_prepareFairPlayContextOperationQueue = v22;

    [(NSOperationQueue *)v13->_prepareFairPlayContextOperationQueue setName:@"com.apple.iTunesCloud.ICSAPSession.prepareFairPlayContextOperationQueue"];
    [(NSOperationQueue *)v13->_prepareFairPlayContextOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v13->_prepareFairPlayContextOperationQueue setQualityOfService:25];
    v24 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v24;

    [(NSOperationQueue *)v13->_operationQueue setName:@"com.apple.iTunesCloud.ICSAPSession.prepareFairPlayContextOperationQueue"];
    [(NSOperationQueue *)v13->_operationQueue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v13->_operationQueue setQualityOfService:25];
  }

  return v13;
}

+ (id)sharedSAPSessionWithVersion:(unsigned int)version URLBag:(id)bag requestContext:(id)context
{
  contextCopy = context;
  bagCopy = bag;
  v9 = [bagCopy urlForBagKey:@"sign-sap-setup-cert"];
  v10 = [bagCopy urlForBagKey:@"sign-sap-setup"];

  v11 = 0;
  if (v9 && v10)
  {
    if (sharedSAPSessionWithVersion_URLBag_requestContext__sOnceToken != -1)
    {
      dispatch_once(&sharedSAPSessionWithVersion_URLBag_requestContext__sOnceToken, &__block_literal_global_326);
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke_2;
    v36[3] = &unk_1E7BF36E8;
    versionCopy = version;
    v12 = v9;
    v37 = v12;
    v13 = v10;
    v38 = v13;
    v14 = MEMORY[0x1B8C781E0](v36);
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__327;
    v34 = __Block_byref_object_dispose__328;
    v35 = 0;
    v15 = sSharedAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke_3;
    block[3] = &unk_1E7BF8F80;
    v29 = &v30;
    v16 = v14;
    v28 = v16;
    dispatch_sync(v15, block);
    v17 = v31[5];
    if (!v17)
    {
      v18 = sSharedAccessQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke_2_4;
      v20[3] = &unk_1E7BF3710;
      v25 = &v30;
      v24 = v16;
      versionCopy2 = version;
      v21 = v12;
      v22 = v13;
      v23 = contextCopy;
      dispatch_barrier_sync(v18, v20);

      v17 = v31[5];
    }

    v11 = v17;

    _Block_object_dispose(&v30, 8);
  }

  return v11;
}

id __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 sapVersion] == *(a1 + 48))
        {
          v9 = [v8 _certificateURL];
          if ([v9 isEqual:*(a1 + 32)])
          {
            v10 = [v8 _setupURL];
            v11 = [v10 isEqual:*(a1 + 40)];

            if (v11)
            {
              v12 = v8;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

uint64_t __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke_2_4(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = [[ICSAPSession alloc] _initWithVersion:*(a1 + 72) certificateURL:*(a1 + 32) setupURL:*(a1 + 40) requestContext:*(a1 + 48)];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = sharedSAPSessionWithVersion_URLBag_requestContext__sAvailableSessions;
    if (!sharedSAPSessionWithVersion_URLBag_requestContext__sAvailableSessions)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = sharedSAPSessionWithVersion_URLBag_requestContext__sAvailableSessions;
      sharedSAPSessionWithVersion_URLBag_requestContext__sAvailableSessions = v9;

      v8 = sharedSAPSessionWithVersion_URLBag_requestContext__sAvailableSessions;
    }

    v11 = *(*(*(a1 + 64) + 8) + 40);

    [v8 addObject:v11];
  }
}

uint64_t __66__ICSAPSession_sharedSAPSessionWithVersion_URLBag_requestContext___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.iTunesCloud.ICSAPSession.SharedAccessQueue", MEMORY[0x1E69E96A8]);
  v1 = sSharedAccessQueue;
  sSharedAccessQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end