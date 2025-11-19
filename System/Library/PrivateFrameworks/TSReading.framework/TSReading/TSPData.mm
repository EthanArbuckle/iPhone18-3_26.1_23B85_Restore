@interface TSPData
+ (BOOL)updateDigest:(void *)a3 withProtobufString:(const void *)a4;
+ (id)cullingListeners;
+ (id)cullingListenersQueue;
+ (id)dataFromDataRep:(id)a3 filename:(id)a4 context:(id)a5;
+ (id)dataFromNSData:(id)a3 filename:(id)a4 context:(id)a5;
+ (id)dataFromReadChannel:(id)a3 filename:(id)a4 context:(id)a5;
+ (id)dataFromURL:(id)a3 context:(id)a4;
+ (id)dataFromURL:(id)a3 useExternalReferenceIfAllowed:(BOOL)a4 context:(id)a5;
+ (id)dataFromURL:(id)a3 useExternalReferenceIfAllowed:(BOOL)a4 useFileCoordination:(BOOL)a5 context:(id)a6;
+ (id)null;
+ (id)readOnlyDataFromDataRep:(id)a3 filename:(id)a4 context:(id)a5;
+ (id)readOnlyDataFromNSData:(id)a3 filename:(id)a4 context:(id)a5;
+ (id)readOnlyDataFromURL:(id)a3 context:(id)a4;
+ (id)readOnlyDataWithoutDataDigestFromURL:(id)a3 context:(id)a4;
+ (id)requiredAVAssetOptions;
+ (void)addCullingListener:(id)a3;
+ (void)removeCullingListener:(id)a3;
- (BOOL)isApplicationData;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExternalData;
- (BOOL)isLengthLikelyToBeGreaterThan:(unint64_t)a3;
- (BOOL)isStorageInPackage:(id)a3;
- (BOOL)needsDownload;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (CGDataProvider)newCGDataProvider;
- (CGImage)newCGImage;
- (CGImageSource)newCGImageSource;
- (NSString)documentResourceLocator;
- (NSString)filename;
- (NSString)packageLocator;
- (NSString)type;
- (TSPData)initWithIdentifier:(int64_t)a3 digest:(const void *)a4 filename:(id)a5 storage:(id)a6 manager:(id)a7;
- (TSPDataStorage)storage;
- (TSPObjectContext)context;
- (id)AVAssetWithOptions:(id)a3;
- (id)NSData;
- (id)bookmarkData;
- (id)copyWithContext:(id)a3;
- (id)description;
- (id)preferredFilename;
- (unint64_t)encodedLength;
- (unsigned)packageIdentifier;
- (void)addDownloadObserver:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)performIOChannelReadWithAccessor:(id)a3;
- (void)performInputStreamReadWithAccessor:(id)a3;
- (void)setFilename:(id)a3 storage:(id)a4;
- (void)setStorage:(id)a3;
- (void)willCull;
@end

@implementation TSPData

+ (id)dataFromURL:(id)a3 context:(id)a4
{
  v4 = [a1 dataFromURL:a3 useExternalReferenceIfAllowed:0 context:a4];

  return v4;
}

+ (id)dataFromURL:(id)a3 useExternalReferenceIfAllowed:(BOOL)a4 context:(id)a5
{
  v5 = [a1 dataFromURL:a3 useExternalReferenceIfAllowed:a4 useFileCoordination:1 context:a5];

  return v5;
}

+ (id)dataFromURL:(id)a3 useExternalReferenceIfAllowed:(BOOL)a4 useFileCoordination:(BOOL)a5 context:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (v8 && [v10 areNewExternalReferencesToDataAllowed])
  {
    v12 = [v11 dataManager];
    v13 = [v12 dataFromExternalReferenceURL:v9 useFileCoordination:v7];
  }

  else
  {
    v12 = [v11 dataManager];
    v13 = [v12 dataFromURL:v9 useFileCoordination:v7];
  }

  v14 = v13;

  return v14;
}

+ (id)dataFromNSData:(id)a3 filename:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 dataManager];
  v10 = [v9 dataFromNSData:v7 filename:v8];

  return v10;
}

+ (id)dataFromDataRep:(id)a3 filename:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[TSPDataRepReadChannel alloc] initWithRepresentation:v7];
  v11 = [v9 dataManager];
  v12 = [v11 dataFromReadChannel:v10 filename:v8];

  return v12;
}

+ (id)dataFromReadChannel:(id)a3 filename:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 dataManager];
  v10 = [v9 dataFromReadChannel:v7 filename:v8];

  return v10;
}

+ (id)readOnlyDataFromURL:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[TSPReadOnlyFileDataStorage alloc] initWithURL:v5];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:v5];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__TSPData_readOnlyDataFromURL_context___block_invoke;
    v18[3] = &unk_279D46FD0;
    v20 = &v21;
    v10 = v9;
    v19 = v10;
    [TSPDataManager readWithChannel:v8 handler:v18];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    [v8 close];
  }

  if (!v22[3])
  {
    TSULogErrorInFunction();
    operator new();
  }

  v11 = [TSPData alloc];
  v12 = v22[3];
  v13 = [v5 lastPathComponent];
  v14 = [v6 dataManager];
  v15 = [(TSPData *)v11 initWithIdentifier:0 digest:v12 filename:v13 storage:v7 manager:v14];

  v16 = v22[3];
  if (v16)
  {
    MEMORY[0x26D6A9A30](v16, 0x1000C40A86A77D5);
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __39__TSPData_readOnlyDataFromURL_context___block_invoke(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a3;
  v9 = a4;
  if (a2)
  {
    if (a5)
    {
      operator new();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

+ (id)readOnlyDataFromNSData:(id)a3 filename:(id)a4 context:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[TSPReadOnlyMemoryDataStorage alloc] initWithNSData:v7];
  CC_SHA1_Init(&c);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__TSPData_readOnlyDataFromNSData_filename_context___block_invoke;
  v15[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v15[4] = &c;
  [v7 enumerateByteRangesUsingBlock:v15];
  CC_SHA1_Final(md, &c);
  v11 = [TSPData alloc];
  v12 = [v9 dataManager];
  v13 = [(TSPData *)v11 initWithIdentifier:0 digest:md filename:v8 storage:v10 manager:v12];

  return v13;
}

+ (id)readOnlyDataFromDataRep:(id)a3 filename:(id)a4 context:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[TSPReadOnlyProvidedDataStorage alloc] initWithDataRepresentation:v7];
  LODWORD(v16) = 0;
  v11 = [TSPData alloc];
  v12 = [v9 dataManager];
  v13 = [(TSPData *)v11 initWithIdentifier:0 digest:&v15 filename:v8 storage:v10 manager:v12];

  return v13;
}

+ (id)readOnlyDataWithoutDataDigestFromURL:(id)a3 context:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [[TSPReadOnlyFileDataStorage alloc] initWithURL:v5];
  LODWORD(v14) = 0;
  v8 = [TSPData alloc];
  v9 = [v5 lastPathComponent];
  v10 = [v6 dataManager];
  v11 = [(TSPData *)v8 initWithIdentifier:0 digest:&v13 filename:v9 storage:v7 manager:v10];

  return v11;
}

+ (id)null
{
  if (+[TSPData null]::onceToken != -1)
  {
    +[TSPData null];
  }

  v3 = +[TSPData null]::nullData;

  return v3;
}

void __15__TSPData_null__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  v0 = [[TSPData alloc] initWithIdentifier:0 digest:v2 filename:&stru_287D36338 storage:0 manager:0];
  v1 = +[TSPData null]::nullData;
  +[TSPData null]::nullData = v0;
}

+ (id)cullingListenersQueue
{
  if (+[TSPData cullingListenersQueue]::onceToken != -1)
  {
    +[TSPData cullingListenersQueue];
  }

  v3 = sCullingListenersQueue;

  return v3;
}

uint64_t __32__TSPData_cullingListenersQueue__block_invoke()
{
  sCullingListenersQueue = dispatch_queue_create("TSPData.Culling", 0);

  return MEMORY[0x2821F96F8]();
}

+ (void)addCullingListener:(id)a3
{
  v4 = a3;
  if (+[TSPData addCullingListener:]::onceToken != -1)
  {
    +[TSPData addCullingListener:];
  }

  v5 = [a1 cullingListenersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__TSPData_addCullingListener___block_invoke_2;
  block[3] = &unk_279D469B8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

uint64_t __30__TSPData_addCullingListener___block_invoke()
{
  sCullingListeners = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];

  return MEMORY[0x2821F96F8]();
}

+ (void)removeCullingListener:(id)a3
{
  v4 = a3;
  v5 = [a1 cullingListenersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TSPData_removeCullingListener___block_invoke;
  block[3] = &unk_279D469B8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

+ (id)cullingListeners
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  v2 = [a1 cullingListenersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__TSPData_cullingListeners__block_invoke;
  block[3] = &unk_279D47018;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__TSPData_cullingListeners__block_invoke(uint64_t a1)
{
  v2 = [sCullingListeners count];
  if (v2)
  {
    v3 = [sCullingListeners copy];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  if (v2)
  {
  }
}

- (void)dealloc
{
  self->_isDeallocating = 1;
  [(TSPData *)self willCull];
  v3.receiver = self;
  v3.super_class = TSPData;
  [(TSPData *)&v3 dealloc];
}

- (void)willCull
{
  v2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong(&self->_didCull, &v2, 1u);
  if (!v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [objc_opt_class() cullingListeners];
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) willCullData:self];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)bookmarkData
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 bookmarkDataWithOptions:0];

  return v3;
}

- (id)NSData
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 NSDataWithOptions:0];

  return v3;
}

- (CGDataProvider)newCGDataProvider
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 newCGDataProvider];

  return v3;
}

- (CGImageSource)newCGImageSource
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 newCGImageSource];

  return v3;
}

- (CGImage)newCGImage
{
  result = [(TSPData *)self newCGImageSource];
  if (result)
  {
    v3 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v3);
    return ImageAtIndex;
  }

  return result;
}

- (id)AVAssetWithOptions:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() requiredAVAssetOptions];
  v6 = [v5 mutableCopy];

  if (v4)
  {
    [v6 addEntriesFromDictionary:v4];
  }

  v7 = [(TSPData *)self storage];
  v8 = [(TSPData *)self type];
  v9 = [v7 AVAssetWithOptions:v6 contentTypeUTI:v8];

  return v9;
}

+ (id)requiredAVAssetOptions
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE6260];
  v5[0] = &unk_287DDD440;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (NSString)filename
{
  if (self->_isDeallocating)
  {
    v2 = [(TSPData *)self preferredFilename];
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__3;
    v10 = __Block_byref_object_dispose__3;
    v11 = 0;
    accessQueue = self->_accessQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __19__TSPData_filename__block_invoke;
    v5[3] = &unk_279D46A30;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(accessQueue, v5);
    v2 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return v2;
}

uint64_t __19__TSPData_filename__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) preferredFilename];

  return MEMORY[0x2821F96F8]();
}

- (NSString)type
{
  v2 = [(TSPData *)self filename];
  v3 = [v2 pathExtension];
  if (v3)
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v3, 0);
  }

  else
  {
    PreferredIdentifierForTag = 0;
  }

  return PreferredIdentifierForTag;
}

- (BOOL)isApplicationData
{
  v2 = [(TSPData *)self documentResourceLocator];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isExternalData
{
  v2 = [(TSPData *)self storage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSString)documentResourceLocator
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 documentResourceLocator];

  return v3;
}

- (NSString)packageLocator
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 packageLocator];

  return v3;
}

- (unsigned)packageIdentifier
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 packageIdentifier];

  return v3;
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v3 = [WeakRetained context];

  return v3;
}

- (id)copyWithContext:(id)a3
{
  v4 = [a3 dataManager];
  v5 = [v4 copyData:self];

  return v5;
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v5 = a3;
  v4 = [(TSPData *)self storage];
  [v4 performIOChannelReadWithAccessor:v5];
}

- (void)performInputStreamReadWithAccessor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__TSPData_performInputStreamReadWithAccessor___block_invoke;
    v6[3] = &unk_279D47040;
    v6[4] = self;
    v7 = v4;
    [(TSPData *)self performIOChannelReadWithAccessor:v6];
  }
}

void __46__TSPData_performInputStreamReadWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x277D6C350]) initWithReadChannel:v6];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277D6C280]);
    v5 = [*(a1 + 32) NSData];
    v3 = [v4 initWithData:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)needsDownload
{
  v2 = [(TSPData *)self storage];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 needsDownload];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addDownloadObserver:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(TSPData *)self storage];
  if (objc_opt_respondsToSelector())
  {
    [v7 addDownloadObserver:v8 forData:self completionHandler:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TSPData *)self context];
      v7 = [(TSPData *)v5 context];

      if (v6 == v7)
      {
        v9 = [(TSPData *)self digest];
        v10 = [(TSPData *)v5 digest];
        v8 = *v9 == *v10 && v9[1] == *(v10 + 8) && *(v9 + 4) == *(v10 + 16);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = TSPData;
  v3 = [(TSPData *)&v11 description];
  v4 = [(TSPData *)self preferredFilename];
  if ([v4 length])
  {
    v5 = [v3 stringByAppendingFormat:@" %@", v4];

    v3 = v5;
  }

  v6 = [(TSPDataStorage *)self->_storage documentResourceLocator];

  v7 = [(TSPDataStorage *)self->_storage readOnly];
  if ((v6 != 0) | v7 & 1)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:32];
    objc_msgSend(v8, "appendString:", @"(");
    if (v6)
    {
      [v8 appendString:@"application data"];
      if (v7)
      {
        [v8 appendString:{@", "}];
LABEL_8:
        [v8 appendString:@"read only"];
      }
    }

    else if (v7)
    {
      goto LABEL_8;
    }

    [v8 appendString:@""]);
    v9 = [v3 stringByAppendingString:v8];

    v3 = v9;
  }

  return v3;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([v6 isFileURL] & 1) == 0)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v7 = [v6 path];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  unlink([v7 fileSystemRepresentation]);
  v8 = [v6 path];
  v9 = TSUOpen();

  if (v9 < 0)
  {
    *(v31 + 24) = 0;
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v17 = v25[5];
    v25[5] = v16;

    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = dispatch_queue_create("TSPData.WriteToURL", 0);
  v11 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __28__TSPData_writeToURL_error___block_invoke;
  v18[3] = &unk_279D470B8;
  v23 = v9;
  v21 = &v30;
  v22 = &v24;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  [(TSPData *)self performIOChannelReadWithAccessor:v18];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

  close(v9);
  if (a4)
  {
LABEL_4:
    *a4 = v25[5];
  }

LABEL_5:
  v14 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
LABEL_7:

  return v14 & 1;
}

void __28__TSPData_writeToURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__TSPData_writeToURL_error___block_invoke_2;
    v7[3] = &unk_279D47090;
    v10 = *(a1 + 64);
    v9 = *(a1 + 56);
    v6 = *(a1 + 40);
    v5 = v6;
    v8 = v6;
    [v3 readFromOffset:0 length:-1 queue:v4 handler:v7];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __28__TSPData_writeToURL_error___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 24) == 1)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __28__TSPData_writeToURL_error___block_invoke_3;
      v11[3] = &unk_279D47068;
      v12 = *(a1 + 56);
      v11[4] = *(a1 + 48);
      v10 = dispatch_data_apply(v7, v11);
      v9 = *(*(a1 + 40) + 8);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10;
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (a2)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

uint64_t __28__TSPData_writeToURL_error___block_invoke_3(uint64_t a1, int a2, int a3, void *__buf, size_t __nbyte)
{
  v7 = write(*(a1 + 40), __buf, __nbyte);
  if (v7 < 0)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    if (v7 == __nbyte)
    {
      return 1;
    }

    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPData writeToURL:error:]_block_invoke_3"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPData.mm"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:566 description:@"Didn't write as many bytes as we wanted to"];
  }

  return 0;
}

- (BOOL)isLengthLikelyToBeGreaterThan:(unint64_t)a3
{
  v4 = [(TSPData *)self storage];
  LOBYTE(a3) = [v4 encodedLength] > a3;

  return a3;
}

- (unint64_t)encodedLength
{
  v2 = [(TSPData *)self storage];
  v3 = [v2 encodedLength];

  return v3;
}

- (TSPData)initWithIdentifier:(int64_t)a3 digest:(const void *)a4 filename:(id)a5 storage:(id)a6 manager:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = TSPData;
  v16 = [(TSPData *)&v23 init];
  v17 = v16;
  if (v16)
  {
    *(v16 + 2) = a3;
    v18 = *a4;
    *(v16 + 18) = *(a4 + 4);
    *(v16 + 56) = v18;
    objc_storeStrong(v16 + 5, a5);
    objc_storeStrong(&v17->_storage, a6);
    objc_storeWeak(&v17->_manager, v15);
    v19 = dispatch_queue_create("TSPData.Access", MEMORY[0x277D85CD8]);
    accessQueue = v17->_accessQueue;
    v17->_accessQueue = v19;

    v21 = v17;
  }

  return v17;
}

- (TSPDataStorage)storage
{
  if (self->_isDeallocating)
  {
    v2 = self->_storage;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__3;
    v10 = __Block_byref_object_dispose__3;
    v11 = 0;
    accessQueue = self->_accessQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __18__TSPData_storage__block_invoke;
    v5[3] = &unk_279D46A30;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(accessQueue, v5);
    v2 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return v2;
}

- (void)setStorage:(id)a3
{
  v4 = a3;
  if (self->_isDeallocating)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPData setStorage:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPData.mm"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:662 description:@"Storage should not be modified while TSPData is being deallocated"];
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__TSPData_setStorage___block_invoke;
  v10[3] = &unk_279D46A58;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_barrier_async(accessQueue, v10);
}

- (void)setFilename:(id)a3 storage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isDeallocating)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPData setFilename:storage:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPData.mm"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:671 description:@"Filename and storage should not be modified while TSPData is being deallocated"];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TSPData_setFilename_storage___block_invoke;
  block[3] = &unk_279D46F28;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_barrier_async(accessQueue, block);
}

void __31__TSPData_setFilename_storage___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 32);

  objc_storeStrong(v3, v2);
}

- (id)preferredFilename
{
  storage = self->_storage;
  filename = self->_filename;
  if (storage)
  {
    v5 = [(TSPDataStorage *)storage filenameForPreferredFilename:filename];
  }

  else
  {
    v5 = filename;
  }

  return v5;
}

- (BOOL)isStorageInPackage:(id)a3
{
  v4 = a3;
  v5 = [(TSPData *)self storage];
  v6 = [v5 isInPackage:v4];

  return v6;
}

+ (BOOL)updateDigest:(void *)a3 withProtobufString:(const void *)a4
{
  v4 = *(a4 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 != 20)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = *a4;
    *(a3 + 4) = *(a4 + 4);
    *a3 = v5;
    return 1;
  }

  if (*(a4 + 1) == 20)
  {
    a4 = *a4;
    goto LABEL_6;
  }

LABEL_7:
  TSULogErrorInFunction();
  return 0;
}

@end