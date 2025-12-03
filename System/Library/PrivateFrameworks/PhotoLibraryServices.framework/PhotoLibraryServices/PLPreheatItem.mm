@interface PLPreheatItem
- (BOOL)isCancelled;
- (BOOL)isRetained;
- (CGSize)optimalSourcePixelSize;
- (id)cachedImage:(BOOL *)image;
- (id)cachedImageIfAvailable:(BOOL *)available;
- (id)description;
- (id)initForCPLPrefetchingWithAssetUUID:(id)d format:(unsigned __int16)format assetsdClient:(id)client;
- (void)cancelPreheatRequestWithCompletionHandler:(id)handler;
- (void)setCachingAllowed:(BOOL)allowed;
- (void)startPreheatRequestWithCompletionHandler:(id)handler;
@end

@implementation PLPreheatItem

- (CGSize)optimalSourcePixelSize
{
  width = self->_optimalSourcePixelSize.width;
  height = self->_optimalSourcePixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isRetained
{
  if (self->_cachingAllowed)
  {
    return 1;
  }

  v3 = atomic_load(&self->_requestCount);
  return v3 > 0;
}

- (void)setCachingAllowed:(BOOL)allowed
{
  if (self->_cachingAllowed != allowed)
  {
    self->_cachingAllowed = allowed;
  }
}

- (BOOL)isCancelled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if ([(PLPreheatItem *)self CPLPrefetching])
  {
    pl_dispatch_sync();
  }

  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)cancelPreheatRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PLPreheatItem *)self CPLPrefetching])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PLPreheatItem_cancelPreheatRequestWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7577C08;
    v6[4] = self;
    v7 = handlerCopy;
    v5 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v6);
    pl_dispatch_async();
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __59__PLPreheatItem_cancelPreheatRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 76) = 1;
  v2 = *(a1 + 32);
  if (v2[8])
  {
    notify_post([v2[8] UTF8String]);
    v2 = *(a1 + 32);
  }

  v3 = [v2 virtualCPLTaskIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 96);
    v9[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PLPreheatItem_cancelPreheatRequestWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E7576AA0;
    v8 = *(a1 + 40);
    [v5 cancelCPLDownloadImageDataWithVirtualTaskIdentifiers:v6 completionHandler:v7];
  }
}

uint64_t __59__PLPreheatItem_cancelPreheatRequestWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)startPreheatRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PLPreheatItem *)self CPLPrefetching])
  {
    v5 = dispatch_time(0, 300000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7575338;
    block[4] = self;
    v8 = handlerCopy;
    v9 = v5;
    v6 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
    pl_dispatch_async();
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 76) = 0;
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = v3;

  v24 = 0;
  [*(*(a1 + 32) + 64) UTF8String];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_2;
  v21 = &unk_1E75752C0;
  v22 = v7;
  v23 = v6;
  pl_notify_register_dispatch();
  v8 = *(a1 + 32);
  v9 = v8[12];
  v10 = [v8 assetUUID];
  v26[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v12 = [*(a1 + 32) format];
  v25 = *(*(a1 + 32) + 64);
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_4;
  v15[3] = &unk_1E7575310;
  v14 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v17 = 0;
  v16 = v14;
  [v9 requestCPLDownloadImageDataForAssets:v11 format:v12 doneTokens:v13 completionHandler:v15];
}

void __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_2(uint64_t a1, int token)
{
  notify_cancel(token);
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, *(v3 + 76));
      v3 = *(a1 + 32);
      v4 = *(v3 + 64);
    }
  }

  *(v3 + 64) = 0;
}

void __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  notify_cancel(*(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, *(v2 + 76));
      v2 = *(a1 + 32);
      v3 = *(v2 + 64);
    }
  }

  *(v2 + 64) = 0;
}

void __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v4 = [v3 length];
  [*(a1 + 32) setVirtualCPLTaskIdentifier:v3];
  if (!v4)
  {
    v5 = *(a1 + 40);
    pl_dispatch_async();
  }
}

void __58__PLPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  notify_cancel(*(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, *(v2 + 76));
      v2 = *(a1 + 32);
      v3 = *(v2 + 64);
    }
  }

  *(v2 + 64) = 0;
}

- (id)cachedImageIfAvailable:(BOOL *)available
{
  if (available)
  {
    *available = 0;
  }

  return 0;
}

- (id)cachedImage:(BOOL *)image
{
  if (image)
  {
    *image = 0;
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  format = self->_format;
  v7 = atomic_load(&self->_requestCount);
  v8 = v7;
  cachingAllowed = self->_cachingAllowed;
  virtualCPLTaskIdentifier = [(PLPreheatItem *)self virtualCPLTaskIdentifier];
  if (virtualCPLTaskIdentifier)
  {
    v11 = MEMORY[0x1E696AEC0];
    virtualCPLTaskIdentifier2 = [(PLPreheatItem *)self virtualCPLTaskIdentifier];
    v13 = [v11 stringWithFormat:@" for Hyperion '%@'", virtualCPLTaskIdentifier2];
    v14 = [v3 stringWithFormat:@"<%@ %p> fmt: %ld, [r: %ld, c: %ld], %@ ", v5, self, format, v8, cachingAllowed, v13];
  }

  else
  {
    v14 = [v3 stringWithFormat:@"<%@ %p> fmt: %ld, [r: %ld, c: %ld], %@ ", v5, self, format, v8, cachingAllowed, &stru_1F0F06D80];
  }

  return v14;
}

- (id)initForCPLPrefetchingWithAssetUUID:(id)d format:(unsigned __int16)format assetsdClient:(id)client
{
  dCopy = d;
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = PLPreheatItem;
  v10 = [(PLPreheatItem *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_format = format;
    v12 = [dCopy copy];
    assetUUID = v11->_assetUUID;
    v11->_assetUUID = v12;

    v11->_CPLPrefetching = 1;
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("PLPreheatItem", v14);
    CPLPrefetchingIsolationQueue = v11->_CPLPrefetchingIsolationQueue;
    v11->_CPLPrefetchingIsolationQueue = v15;

    CPLPrefetchingDoneToken = v11->_CPLPrefetchingDoneToken;
    v11->_CPLPrefetchingDoneToken = 0;

    v11->_CPLPrefetchingCancelled = 0;
    v18 = dispatch_group_create();
    CPLPrefetchingWaitGroup = v11->_CPLPrefetchingWaitGroup;
    v11->_CPLPrefetchingWaitGroup = v18;

    objc_storeStrong(&v11->_cloudClient, client);
  }

  return v11;
}

@end