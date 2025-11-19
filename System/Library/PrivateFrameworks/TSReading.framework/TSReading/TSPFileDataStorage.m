@interface TSPFileDataStorage
- (CGDataProvider)newCGDataProvider;
- (CGImageSource)newCGImageSource;
- (id)AVAssetWithOptions:(id)a3 contentTypeUTI:(id)a4;
- (id)AVAssetWithOptions:(id)a3 usingResourceLoaderWithContentTypeUTI:(id)a4;
- (id)NSDataWithOptions:(unint64_t)a3;
- (id)bookmarkDataWithOptions:(unint64_t)a3;
- (unint64_t)encodedLength;
- (void)performIOChannelReadWithAccessor:(id)a3;
- (void)performReadWithAccessor:(id)a3;
@end

@implementation TSPFileDataStorage

- (void)performReadWithAccessor:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPFileDataStorage performReadWithAccessor:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPFileDataStorage.mm"];
  [v4 handleFailureInFunction:v5 file:v6 lineNumber:46 description:@"Abstract method"];

  v7 = MEMORY[0x277CBEAD8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Abstract method", "-[TSPFileDataStorage performReadWithAccessor:]"];
  v9 = [v7 exceptionWithName:*MEMORY[0x277CBE658] reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TSPFileDataStorage_performIOChannelReadWithAccessor___block_invoke;
  v6[3] = &unk_279D470E0;
  v7 = v4;
  v5 = v4;
  [(TSPFileDataStorage *)self performReadWithAccessor:v6];
}

void __55__TSPFileDataStorage_performIOChannelReadWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)bookmarkDataWithOptions:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TSPFileDataStorage_bookmarkDataWithOptions___block_invoke;
  v5[3] = &unk_279D47108;
  v5[4] = &v6;
  v5[5] = a3;
  [(TSPFileDataStorage *)self performReadWithAccessor:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__TSPFileDataStorage_bookmarkDataWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v10 = 0;
    v6 = [v3 bookmarkDataWithOptions:v5 includingResourceValuesForKeys:0 relativeToURL:0 error:&v10];
    v7 = v10;
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      TSULogErrorInFunction();
    }
  }
}

- (CGDataProvider)newCGDataProvider
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TSPFileDataStorage_newCGDataProvider__block_invoke;
  v4[3] = &unk_279D47130;
  v4[4] = &v5;
  [(TSPFileDataStorage *)self performIOChannelReadWithAccessor:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __39__TSPFileDataStorage_newCGDataProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = [objc_alloc(MEMORY[0x277D6C350]) initWithReadChannel:v3];
    if (([v4 canSeek] & 1) == 0)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPFileDataStorage newCGDataProvider]_block_invoke"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPFileDataStorage.mm"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:90 description:@"Need a seekable input stream for -cgDataProvider"];
    }

    v8 = v4;
    *(*(*(a1 + 32) + 8) + 24) = CGDataProviderCreateSequential(v8, &TSPCGDataProviderCallbacks);

    v3 = v9;
  }
}

- (CGImageSource)newCGImageSource
{
  result = [(TSPFileDataStorage *)self newCGDataProvider];
  if (result)
  {
    v3 = result;
    v4 = CGImageSourceCreateWithDataProvider(result, 0);
    CGDataProviderRelease(v3);
    return v4;
  }

  return result;
}

- (id)NSDataWithOptions:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__TSPFileDataStorage_NSDataWithOptions___block_invoke;
  v5[3] = &unk_279D47130;
  v5[4] = &v6;
  [(TSPFileDataStorage *)self performIOChannelReadWithAccessor:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__TSPFileDataStorage_NSDataWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_queue_create("TSPFileDataStorage.NSDataWithOptions.Read", 0);
    v5 = dispatch_semaphore_create(0);
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__4;
    v15 = __Block_byref_object_dispose__4;
    v16 = [MEMORY[0x277CBEB28] data];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__TSPFileDataStorage_NSDataWithOptions___block_invoke_2;
    v7[3] = &unk_279D47158;
    v10 = &v11;
    v8 = v3;
    v6 = v5;
    v9 = v6;
    [v8 readFromOffset:0 length:-1 queue:v4 handler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v12[5]);

    _Block_object_dispose(&v11, 8);
  }
}

void __40__TSPFileDataStorage_NSDataWithOptions___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;

      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPFileDataStorage NSDataWithOptions:]_block_invoke_2"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPFileDataStorage.mm"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:136 description:{@"Error creating NSData for TSPFileDataStorage, %@", v9}];
    }
  }

  else
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __40__TSPFileDataStorage_NSDataWithOptions___block_invoke_3;
    applier[3] = &unk_279D46D48;
    applier[4] = *(a1 + 48);
    dispatch_data_apply(v7, applier);
  }

  if (a2)
  {
    [*(a1 + 32) close];
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (id)AVAssetWithOptions:(id)a3 contentTypeUTI:(id)a4
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__TSPFileDataStorage_AVAssetWithOptions_contentTypeUTI___block_invoke;
  v9[3] = &unk_279D47180;
  v10 = v5;
  v11 = &v12;
  v6 = v5;
  [(TSPFileDataStorage *)self performReadWithAccessor:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__TSPFileDataStorage_AVAssetWithOptions_contentTypeUTI___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x277CE6650] URLAssetWithURL:? options:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)AVAssetWithOptions:(id)a3 usingResourceLoaderWithContentTypeUTI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  v10 = MEMORY[0x277CBEBC0];
  v11 = [@"iWorkAVAsset://" stringByAppendingString:v9];
  v12 = [v10 URLWithString:v11];

  v13 = [MEMORY[0x277CE6650] URLAssetWithURL:v12 options:v6];
  v14 = [@"TSPFileDataStorage.AVAssetResourceLoaderDelegateQueue.Read" stringByAppendingString:v9];
  v15 = dispatch_queue_create([v14 UTF8String], 0);
  v16 = [[TSPAVAssetResourceLoaderDelegate alloc] initWithTSPFileDataStorage:self contentTypeUTI:v7];
  v17 = [v13 resourceLoader];
  [v17 setDelegate:v16 queue:v15];
  objc_setAssociatedObject(v13, "com.apple.iWork.resourceLoaderDelegate", v16, 1);

  return v13;
}

- (unint64_t)encodedLength
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TSPFileDataStorage_encodedLength__block_invoke;
  v4[3] = &unk_279D471A8;
  v4[4] = &v5;
  [(TSPFileDataStorage *)self performReadWithAccessor:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__TSPFileDataStorage_encodedLength__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 path];
    v6 = [v5 stringByRemovingPercentEncoding];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v8 = [v7 attributesOfItemAtPath:v6 error:&v10];
    v9 = v10;

    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = [v8 fileSize];
    }

    else
    {
      TSULogErrorInFunction();
    }
  }
}

@end