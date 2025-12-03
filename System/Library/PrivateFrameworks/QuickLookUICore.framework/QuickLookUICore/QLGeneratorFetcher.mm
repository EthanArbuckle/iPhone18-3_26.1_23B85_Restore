@interface QLGeneratorFetcher
- (QLGeneratorFetcher)initWithURL:(id)l contentType:(id)type;
- (void)_callCompletionBlockIfNecessary:(id)necessary withReply:(id)reply error:(id)error;
- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation QLGeneratorFetcher

- (QLGeneratorFetcher)initWithURL:(id)l contentType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = QLGeneratorFetcher;
  v9 = [(QLItemFetcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_contentType, type);
  }

  return v10;
}

- (void)_callCompletionBlockIfNecessary:(id)necessary withReply:(id)reply error:(id)error
{
  necessaryCopy = necessary;
  replyCopy = reply;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(QLGeneratorFetcher *)selfCopy fetchCompleted])
  {
    necessaryCopy[2](necessaryCopy, replyCopy, errorCopy);
    [(QLGeneratorFetcher *)selfCopy setFetchCompleted:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock
{
  v28[1] = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  mEMORY[0x277D43E98] = [MEMORY[0x277D43E98] sharedManager];
  contentType = [(QLGeneratorFetcher *)self contentType];
  LOBYTE(v21) = 0;
  v16 = [mEMORY[0x277D43E98] qlExtensionForContentType:contentType allowExtensionsForParentTypes:1 applicationBundleIdentifier:0 extensionPath:0 extensionType:0 generationType:1 shouldUseRestrictedExtension:v21];

  if (v16)
  {
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__QLGeneratorFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
    v22[3] = &unk_279AE1110;
    objc_copyWeak(&v25, &location);
    v24 = completionBlockCopy;
    v23 = v16;
    [v23 extensionContextWithCompletionHandler:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v27 = *MEMORY[0x277CCA068];
    v28[0] = @"No valid extension or context.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v19 = [v17 initWithDomain:*MEMORY[0x277D43EF0] code:4 userInfo:v18];

    [(QLGeneratorFetcher *)self _callCompletionBlockIfNecessary:completionBlockCopy withReply:0 error:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __95__QLGeneratorFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(id *a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = [a1[4] extension];
    v6 = [v3 _auxiliaryConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__QLGeneratorFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_2;
    v21[3] = &unk_279AE10C0;
    v7 = WeakRetained;
    v22 = v7;
    v23 = a1[5];
    v8 = [v6 remoteObjectProxyWithErrorHandler:v21];

    if (v3 && v5 && v8)
    {
      [a1[4] registerClient:v7];
      v9 = objc_alloc(MEMORY[0x277CDAB18]);
      v10 = [v7 url];
      v11 = [v9 initWithURL:v10 sandboxType:*MEMORY[0x277D861B8]];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __95__QLGeneratorFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_3;
      v17[3] = &unk_279AE10E8;
      objc_copyWeak(&v20, a1 + 6);
      v18 = a1[4];
      v19 = a1[5];
      [v8 generatePreviewForURL:v11 completion:v17];

      objc_destroyWeak(&v20);
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA068];
      v25 = @"Failed to connect to extension to generate a preview.";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v11 = [v14 errorWithDomain:*MEMORY[0x277D43EF0] code:4 userInfo:v15];

      [v7 _callCompletionBlockIfNecessary:a1[5] withReply:0 error:v11];
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = @"Could not fetch content because fetcher was deallocated before completion.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v5 = [v12 errorWithDomain:*MEMORY[0x277D43EF0] code:4 userInfo:v13];

    (*(a1[5] + 2))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __95__QLGeneratorFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) unregisterClient:WeakRetained];
  [WeakRetained _callCompletionBlockIfNecessary:*(a1 + 40) withReply:v6 error:v5];
}

@end