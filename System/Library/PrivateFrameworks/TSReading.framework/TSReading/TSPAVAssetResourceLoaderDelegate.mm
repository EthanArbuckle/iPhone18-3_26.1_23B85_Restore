@interface TSPAVAssetResourceLoaderDelegate
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (TSPAVAssetResourceLoaderDelegate)initWithTSPFileDataStorage:(id)storage contentTypeUTI:(id)i;
- (void)_provideData:(id)data untilRequestCancelledForResourceLoadingRequest:(id)request;
- (void)dealloc;
@end

@implementation TSPAVAssetResourceLoaderDelegate

- (TSPAVAssetResourceLoaderDelegate)initWithTSPFileDataStorage:(id)storage contentTypeUTI:(id)i
{
  storageCopy = storage;
  iCopy = i;
  v16.receiver = self;
  v16.super_class = TSPAVAssetResourceLoaderDelegate;
  v9 = [(TSPAVAssetResourceLoaderDelegate *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataStorage, storage);
    v11 = [iCopy copy];
    contentTypeUTI = v10->_contentTypeUTI;
    v10->_contentTypeUTI = v11;

    v13 = dispatch_queue_create("TSPFileDataStorage.AVAssetResourceLoader.request", MEMORY[0x277D85CD8]);
    concurrentRequestQueue = v10->_concurrentRequestQueue;
    v10->_concurrentRequestQueue = v13;
  }

  return v10;
}

- (void)_provideData:(id)data untilRequestCancelledForResourceLoadingRequest:(id)request
{
  dataCopy = data;
  requestCopy = request;
  if (([requestCopy isCancelled] & 1) == 0)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __96__TSPAVAssetResourceLoaderDelegate__provideData_untilRequestCancelledForResourceLoadingRequest___block_invoke;
    applier[3] = &unk_279D473C8;
    v8 = requestCopy;
    dispatch_data_apply(dataCopy, applier);
  }
}

uint64_t __96__TSPAVAssetResourceLoaderDelegate__provideData_untilRequestCancelledForResourceLoadingRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [*(a1 + 32) isCancelled];
  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) dataRequest];
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
    [v9 respondWithData:v10];
  }

  return v8 ^ 1u;
}

- (void)dealloc
{
  [(TSUReadChannel *)self->_readChannel close];
  v3.receiver = self;
  v3.super_class = TSPAVAssetResourceLoaderDelegate;
  [(TSPAVAssetResourceLoaderDelegate *)&v3 dealloc];
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  resourceCopy = resource;
  concurrentRequestQueue = self->_concurrentRequestQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__TSPAVAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
  v9[3] = &unk_279D46A58;
  v10 = resourceCopy;
  selfCopy = self;
  v7 = resourceCopy;
  dispatch_async(concurrentRequestQueue, v9);

  return 1;
}

void __91__TSPAVAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) contentInformationRequest];

    if (v2)
    {
      v3 = [*(a1 + 32) contentInformationRequest];
      [v3 setContentType:*(*(a1 + 40) + 40)];
      [v3 setContentLength:{objc_msgSend(*(*(a1 + 40) + 8), "encodedLength")}];
      [v3 setByteRangeAccessSupported:1];
      v4 = [*(a1 + 32) dataRequest];

      if (!v4)
      {
        [*(a1 + 32) finishLoading];
      }
    }

    v5 = [*(a1 + 32) dataRequest];

    if (v5)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__TSPAVAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2;
      aBlock[3] = &unk_279D46F00;
      v10 = *(a1 + 32);
      v6 = v10.i64[0];
      v12 = vextq_s8(v10, v10, 8uLL);
      v7 = _Block_copy(aBlock);
      v8 = v7;
      v9 = *(a1 + 40);
      if (*(v9 + 24))
      {
        (*(v7 + 2))(v7);
      }

      else
      {
        [*(v9 + 8) performIOChannelReadWithAccessor:v7];
      }
    }
  }
}

void __91__TSPAVAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
    v5 = dispatch_queue_create("TSPFileDataStorage.AVAssetResourceLoader.Read", 0);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    v6 = [*(a1 + 40) dataRequest];
    v7 = [v6 currentOffset];
    v8 = [*(a1 + 40) dataRequest];
    v9 = [v8 requestedLength];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__TSPAVAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3;
    v15[3] = &unk_279D47158;
    v18 = v19;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v16 = v10;
    v17 = v11;
    [v4 readFromOffset:v7 length:v9 queue:v5 handler:v15];

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPAVAssetResourceLoaderDelegate resourceLoader:shouldWaitForLoadingOfRequestedResource:]_block_invoke_2"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:105 description:@"Expected a non-nil readChannel."];

    [*(a1 + 40) finishLoadingWithError:0];
  }
}

void __91__TSPAVAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && ([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      [*(a1 + 32) finishLoadingWithError:v7];
    }

    else
    {
      if (v15)
      {
        [*(a1 + 40) _provideData:v15 untilRequestCancelledForResourceLoadingRequest:*(a1 + 32)];
      }

      else
      {
        v8 = [*(a1 + 32) dataRequest];
        v9 = malloc_type_malloc([v8 requestedLength], 0x100004077774924uLL);

        v10 = [*(a1 + 32) dataRequest];
        bzero(v9, [v10 requestedLength]);

        v11 = [*(a1 + 32) dataRequest];
        v12 = MEMORY[0x277CBEA90];
        v13 = [*(a1 + 32) dataRequest];
        v14 = [v12 dataWithBytesNoCopy:v9 length:{objc_msgSend(v13, "requestedLength")}];
        [v11 respondWithData:v14];
      }

      if ((([*(a1 + 32) isCancelled] | a2 ^ 1) & 1) == 0)
      {
        [*(a1 + 32) finishLoading];
      }
    }
  }
}

@end