@interface SKUILoadArtworkResourceOperation
- (SKUILoadArtworkResourceOperation)initWithResourceRequest:(id)request;
- (SSVLoadURLOperation)underlyingOperation;
- (void)cancel;
- (void)main;
@end

@implementation SKUILoadArtworkResourceOperation

- (SKUILoadArtworkResourceOperation)initWithResourceRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILoadArtworkResourceOperation initWithResourceRequest:];
  }

  v7.receiver = self;
  v7.super_class = SKUILoadArtworkResourceOperation;
  v5 = [(SKUILoadResourceOperation *)&v7 initWithResourceRequest:requestCopy];

  return v5;
}

- (void)main
{
  resourceRequest = [(SKUILoadResourceOperation *)self resourceRequest];
  imageName = [resourceRequest imageName];
  v5 = [resourceRequest URL];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D69CD8]);
    v7 = [resourceRequest URL];
    v8 = [v6 initWithURL:v7];

    dataConsumer = [resourceRequest dataConsumer];
    [v8 setDataConsumer:dataConsumer];

    [v8 setITunesStoreRequest:0];
    [v8 setRecordsMetrics:0];
    outputBlock = [(SKUILoadResourceOperation *)self outputBlock];
    [v8 setOutputBlock:outputBlock];

    [(SKUILoadArtworkResourceOperation *)self setUnderlyingOperation:v8];
    [v8 main];
  }

  else if (imageName)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__81;
    v30 = __Block_byref_object_dispose__81;
    v31 = 0;
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v11 = MEMORY[0x277D755B8];
      v12 = SKUIBundle();
      v13 = [v11 imageNamed:imageName inBundle:v12];
      v14 = v27[5];
      v27[5] = v13;
    }

    else
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __40__SKUILoadArtworkResourceOperation_main__block_invoke;
      v23 = &unk_2781F8608;
      v25 = &v26;
      v24 = imageName;
      dispatch_sync(MEMORY[0x277D85CD0], &v20);
      v12 = v24;
    }

    if (([(SKUILoadArtworkResourceOperation *)self isCancelled]& 1) == 0)
    {
      dataConsumer2 = [resourceRequest dataConsumer];
      v16 = dataConsumer2;
      if (dataConsumer2)
      {
        v17 = [dataConsumer2 imageForImage:v27[5]];
        v18 = v27[5];
        v27[5] = v17;
      }

      v19 = [(SKUILoadResourceOperation *)self outputBlock:v20];
      if (v19 && ([(SKUILoadArtworkResourceOperation *)self isCancelled]& 1) == 0)
      {
        v19[2](v19, v27[5], 0);
      }
    }

    _Block_object_dispose(&v26, 8);
  }
}

void __40__SKUILoadArtworkResourceOperation_main__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = *(a1 + 32);
  v7 = SKUIBundle();
  v4 = [v2 imageNamed:v3 inBundle:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = SKUILoadArtworkResourceOperation;
  [(SKUILoadResourceOperation *)&v4 cancel];
  underlyingOperation = [(SKUILoadArtworkResourceOperation *)self underlyingOperation];
  [underlyingOperation cancel];
}

- (SSVLoadURLOperation)underlyingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingOperation);

  return WeakRetained;
}

- (void)initWithResourceRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadArtworkResourceOperation initWithResourceRequest:]";
}

@end