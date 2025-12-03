@interface TSPData
+ (BOOL)updateDigest:(void *)digest withProtobufString:(const void *)string;
+ (id)cullingListeners;
+ (id)cullingListenersQueue;
+ (id)dataFromDataRep:(id)rep filename:(id)filename context:(id)context;
+ (id)dataFromNSData:(id)data filename:(id)filename context:(id)context;
+ (id)dataFromReadChannel:(id)channel filename:(id)filename context:(id)context;
+ (id)dataFromURL:(id)l context:(id)context;
+ (id)dataFromURL:(id)l useExternalReferenceIfAllowed:(BOOL)allowed context:(id)context;
+ (id)dataFromURL:(id)l useExternalReferenceIfAllowed:(BOOL)allowed useFileCoordination:(BOOL)coordination context:(id)context;
+ (id)null;
+ (id)readOnlyDataFromDataRep:(id)rep filename:(id)filename context:(id)context;
+ (id)readOnlyDataFromNSData:(id)data filename:(id)filename context:(id)context;
+ (id)readOnlyDataFromURL:(id)l context:(id)context;
+ (id)readOnlyDataWithoutDataDigestFromURL:(id)l context:(id)context;
+ (id)requiredAVAssetOptions;
+ (void)addCullingListener:(id)listener;
+ (void)removeCullingListener:(id)listener;
- (BOOL)isApplicationData;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExternalData;
- (BOOL)isLengthLikelyToBeGreaterThan:(unint64_t)than;
- (BOOL)isStorageInPackage:(id)package;
- (BOOL)needsDownload;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (CGDataProvider)newCGDataProvider;
- (CGImage)newCGImage;
- (CGImageSource)newCGImageSource;
- (NSString)documentResourceLocator;
- (NSString)filename;
- (NSString)packageLocator;
- (NSString)type;
- (TSPData)initWithIdentifier:(int64_t)identifier digest:(const void *)digest filename:(id)filename storage:(id)storage manager:(id)manager;
- (TSPDataStorage)storage;
- (TSPObjectContext)context;
- (id)AVAssetWithOptions:(id)options;
- (id)NSData;
- (id)bookmarkData;
- (id)copyWithContext:(id)context;
- (id)description;
- (id)preferredFilename;
- (unint64_t)encodedLength;
- (unsigned)packageIdentifier;
- (void)addDownloadObserver:(id)observer completionHandler:(id)handler;
- (void)dealloc;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)performInputStreamReadWithAccessor:(id)accessor;
- (void)setFilename:(id)filename storage:(id)storage;
- (void)setStorage:(id)storage;
- (void)willCull;
@end

@implementation TSPData

+ (id)dataFromURL:(id)l context:(id)context
{
  v4 = [self dataFromURL:l useExternalReferenceIfAllowed:0 context:context];

  return v4;
}

+ (id)dataFromURL:(id)l useExternalReferenceIfAllowed:(BOOL)allowed context:(id)context
{
  v5 = [self dataFromURL:l useExternalReferenceIfAllowed:allowed useFileCoordination:1 context:context];

  return v5;
}

+ (id)dataFromURL:(id)l useExternalReferenceIfAllowed:(BOOL)allowed useFileCoordination:(BOOL)coordination context:(id)context
{
  coordinationCopy = coordination;
  allowedCopy = allowed;
  lCopy = l;
  contextCopy = context;
  v11 = contextCopy;
  if (allowedCopy && [contextCopy areNewExternalReferencesToDataAllowed])
  {
    dataManager = [v11 dataManager];
    v13 = [dataManager dataFromExternalReferenceURL:lCopy useFileCoordination:coordinationCopy];
  }

  else
  {
    dataManager = [v11 dataManager];
    v13 = [dataManager dataFromURL:lCopy useFileCoordination:coordinationCopy];
  }

  v14 = v13;

  return v14;
}

+ (id)dataFromNSData:(id)data filename:(id)filename context:(id)context
{
  dataCopy = data;
  filenameCopy = filename;
  dataManager = [context dataManager];
  v10 = [dataManager dataFromNSData:dataCopy filename:filenameCopy];

  return v10;
}

+ (id)dataFromDataRep:(id)rep filename:(id)filename context:(id)context
{
  repCopy = rep;
  filenameCopy = filename;
  contextCopy = context;
  v10 = [[TSPDataRepReadChannel alloc] initWithRepresentation:repCopy];
  dataManager = [contextCopy dataManager];
  v12 = [dataManager dataFromReadChannel:v10 filename:filenameCopy];

  return v12;
}

+ (id)dataFromReadChannel:(id)channel filename:(id)filename context:(id)context
{
  channelCopy = channel;
  filenameCopy = filename;
  dataManager = [context dataManager];
  v10 = [dataManager dataFromReadChannel:channelCopy filename:filenameCopy];

  return v10;
}

+ (id)readOnlyDataFromURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v7 = [[TSPReadOnlyFileDataStorage alloc] initWithURL:lCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:lCopy];
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
  lastPathComponent = [lCopy lastPathComponent];
  dataManager = [contextCopy dataManager];
  v15 = [(TSPData *)v11 initWithIdentifier:0 digest:v12 filename:lastPathComponent storage:v7 manager:dataManager];

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

+ (id)readOnlyDataFromNSData:(id)data filename:(id)filename context:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  filenameCopy = filename;
  contextCopy = context;
  v10 = [[TSPReadOnlyMemoryDataStorage alloc] initWithNSData:dataCopy];
  CC_SHA1_Init(&c);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__TSPData_readOnlyDataFromNSData_filename_context___block_invoke;
  v15[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v15[4] = &c;
  [dataCopy enumerateByteRangesUsingBlock:v15];
  CC_SHA1_Final(md, &c);
  v11 = [TSPData alloc];
  dataManager = [contextCopy dataManager];
  v13 = [(TSPData *)v11 initWithIdentifier:0 digest:md filename:filenameCopy storage:v10 manager:dataManager];

  return v13;
}

+ (id)readOnlyDataFromDataRep:(id)rep filename:(id)filename context:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  repCopy = rep;
  filenameCopy = filename;
  contextCopy = context;
  v10 = [[TSPReadOnlyProvidedDataStorage alloc] initWithDataRepresentation:repCopy];
  LODWORD(v16) = 0;
  v11 = [TSPData alloc];
  dataManager = [contextCopy dataManager];
  v13 = [(TSPData *)v11 initWithIdentifier:0 digest:&v15 filename:filenameCopy storage:v10 manager:dataManager];

  return v13;
}

+ (id)readOnlyDataWithoutDataDigestFromURL:(id)l context:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  contextCopy = context;
  v7 = [[TSPReadOnlyFileDataStorage alloc] initWithURL:lCopy];
  LODWORD(v14) = 0;
  v8 = [TSPData alloc];
  lastPathComponent = [lCopy lastPathComponent];
  dataManager = [contextCopy dataManager];
  v11 = [(TSPData *)v8 initWithIdentifier:0 digest:&v13 filename:lastPathComponent storage:v7 manager:dataManager];

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

+ (void)addCullingListener:(id)listener
{
  listenerCopy = listener;
  if (+[TSPData addCullingListener:]::onceToken != -1)
  {
    +[TSPData addCullingListener:];
  }

  cullingListenersQueue = [self cullingListenersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__TSPData_addCullingListener___block_invoke_2;
  block[3] = &unk_279D469B8;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_async(cullingListenersQueue, block);
}

uint64_t __30__TSPData_addCullingListener___block_invoke()
{
  sCullingListeners = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];

  return MEMORY[0x2821F96F8]();
}

+ (void)removeCullingListener:(id)listener
{
  listenerCopy = listener;
  cullingListenersQueue = [self cullingListenersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TSPData_removeCullingListener___block_invoke;
  block[3] = &unk_279D469B8;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_async(cullingListenersQueue, block);
}

+ (id)cullingListeners
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  cullingListenersQueue = [self cullingListenersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__TSPData_cullingListeners__block_invoke;
  block[3] = &unk_279D47018;
  block[4] = &v6;
  dispatch_sync(cullingListenersQueue, block);

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
    cullingListeners = [objc_opt_class() cullingListeners];
    v5 = [cullingListeners countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(cullingListeners);
          }

          [*(*(&v8 + 1) + 8 * v7++) willCullData:self];
        }

        while (v5 != v7);
        v5 = [cullingListeners countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)bookmarkData
{
  storage = [(TSPData *)self storage];
  v3 = [storage bookmarkDataWithOptions:0];

  return v3;
}

- (id)NSData
{
  storage = [(TSPData *)self storage];
  v3 = [storage NSDataWithOptions:0];

  return v3;
}

- (CGDataProvider)newCGDataProvider
{
  storage = [(TSPData *)self storage];
  newCGDataProvider = [storage newCGDataProvider];

  return newCGDataProvider;
}

- (CGImageSource)newCGImageSource
{
  storage = [(TSPData *)self storage];
  newCGImageSource = [storage newCGImageSource];

  return newCGImageSource;
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

- (id)AVAssetWithOptions:(id)options
{
  optionsCopy = options;
  requiredAVAssetOptions = [objc_opt_class() requiredAVAssetOptions];
  v6 = [requiredAVAssetOptions mutableCopy];

  if (optionsCopy)
  {
    [v6 addEntriesFromDictionary:optionsCopy];
  }

  storage = [(TSPData *)self storage];
  type = [(TSPData *)self type];
  v9 = [storage AVAssetWithOptions:v6 contentTypeUTI:type];

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
    preferredFilename = [(TSPData *)self preferredFilename];
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
    preferredFilename = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return preferredFilename;
}

uint64_t __19__TSPData_filename__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) preferredFilename];

  return MEMORY[0x2821F96F8]();
}

- (NSString)type
{
  filename = [(TSPData *)self filename];
  pathExtension = [filename pathExtension];
  if (pathExtension)
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], pathExtension, 0);
  }

  else
  {
    PreferredIdentifierForTag = 0;
  }

  return PreferredIdentifierForTag;
}

- (BOOL)isApplicationData
{
  documentResourceLocator = [(TSPData *)self documentResourceLocator];
  v3 = documentResourceLocator != 0;

  return v3;
}

- (BOOL)isExternalData
{
  storage = [(TSPData *)self storage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSString)documentResourceLocator
{
  storage = [(TSPData *)self storage];
  documentResourceLocator = [storage documentResourceLocator];

  return documentResourceLocator;
}

- (NSString)packageLocator
{
  storage = [(TSPData *)self storage];
  packageLocator = [storage packageLocator];

  return packageLocator;
}

- (unsigned)packageIdentifier
{
  storage = [(TSPData *)self storage];
  packageIdentifier = [storage packageIdentifier];

  return packageIdentifier;
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  context = [WeakRetained context];

  return context;
}

- (id)copyWithContext:(id)context
{
  dataManager = [context dataManager];
  v5 = [dataManager copyData:self];

  return v5;
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  storage = [(TSPData *)self storage];
  [storage performIOChannelReadWithAccessor:accessorCopy];
}

- (void)performInputStreamReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v5 = accessorCopy;
  if (accessorCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__TSPData_performInputStreamReadWithAccessor___block_invoke;
    v6[3] = &unk_279D47040;
    v6[4] = self;
    v7 = accessorCopy;
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
  storage = [(TSPData *)self storage];
  if (objc_opt_respondsToSelector())
  {
    needsDownload = [storage needsDownload];
  }

  else
  {
    needsDownload = 0;
  }

  return needsDownload;
}

- (void)addDownloadObserver:(id)observer completionHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  storage = [(TSPData *)self storage];
  if (objc_opt_respondsToSelector())
  {
    [storage addDownloadObserver:observerCopy forData:self completionHandler:handlerCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      context = [(TSPData *)self context];
      context2 = [(TSPData *)v5 context];

      if (context == context2)
      {
        digest = [(TSPData *)self digest];
        digest2 = [(TSPData *)v5 digest];
        v8 = *digest == *digest2 && digest[1] == *(digest2 + 8) && *(digest + 4) == *(digest2 + 16);
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
  preferredFilename = [(TSPData *)self preferredFilename];
  if ([preferredFilename length])
  {
    v5 = [v3 stringByAppendingFormat:@" %@", preferredFilename];

    v3 = v5;
  }

  documentResourceLocator = [(TSPDataStorage *)self->_storage documentResourceLocator];

  readOnly = [(TSPDataStorage *)self->_storage readOnly];
  if ((documentResourceLocator != 0) | readOnly & 1)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:32];
    objc_msgSend(v8, "appendString:", @"(");
    if (documentResourceLocator)
    {
      [v8 appendString:@"application data"];
      if (readOnly)
      {
        [v8 appendString:{@", "}];
LABEL_8:
        [v8 appendString:@"read only"];
      }
    }

    else if (readOnly)
    {
      goto LABEL_8;
    }

    [v8 appendString:@""]);
    v9 = [v3 stringByAppendingString:v8];

    v3 = v9;
  }

  return v3;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    v14 = 0;
    goto LABEL_7;
  }

  path = [lCopy path];
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
  unlink([path fileSystemRepresentation]);
  path2 = [lCopy path];
  v9 = TSUOpen();

  if (v9 < 0)
  {
    *(v31 + 24) = 0;
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v17 = v25[5];
    v25[5] = v16;

    if (!error)
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
  if (error)
  {
LABEL_4:
    *error = v25[5];
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

- (BOOL)isLengthLikelyToBeGreaterThan:(unint64_t)than
{
  storage = [(TSPData *)self storage];
  LOBYTE(than) = [storage encodedLength] > than;

  return than;
}

- (unint64_t)encodedLength
{
  storage = [(TSPData *)self storage];
  encodedLength = [storage encodedLength];

  return encodedLength;
}

- (TSPData)initWithIdentifier:(int64_t)identifier digest:(const void *)digest filename:(id)filename storage:(id)storage manager:(id)manager
{
  filenameCopy = filename;
  storageCopy = storage;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = TSPData;
  v16 = [(TSPData *)&v23 init];
  v17 = v16;
  if (v16)
  {
    *(v16 + 2) = identifier;
    v18 = *digest;
    *(v16 + 18) = *(digest + 4);
    *(v16 + 56) = v18;
    objc_storeStrong(v16 + 5, filename);
    objc_storeStrong(&v17->_storage, storage);
    objc_storeWeak(&v17->_manager, managerCopy);
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

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  if (self->_isDeallocating)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPData setStorage:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPData.mm"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:662 description:@"Storage should not be modified while TSPData is being deallocated"];
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__TSPData_setStorage___block_invoke;
  v10[3] = &unk_279D46A58;
  v10[4] = self;
  v11 = storageCopy;
  v9 = storageCopy;
  dispatch_barrier_async(accessQueue, v10);
}

- (void)setFilename:(id)filename storage:(id)storage
{
  filenameCopy = filename;
  storageCopy = storage;
  if (self->_isDeallocating)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPData setFilename:storage:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPData.mm"];
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:671 description:@"Filename and storage should not be modified while TSPData is being deallocated"];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TSPData_setFilename_storage___block_invoke;
  block[3] = &unk_279D46F28;
  block[4] = self;
  v15 = filenameCopy;
  v16 = storageCopy;
  v12 = storageCopy;
  v13 = filenameCopy;
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

- (BOOL)isStorageInPackage:(id)package
{
  packageCopy = package;
  storage = [(TSPData *)self storage];
  v6 = [storage isInPackage:packageCopy];

  return v6;
}

+ (BOOL)updateDigest:(void *)digest withProtobufString:(const void *)string
{
  v4 = *(string + 23);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 != 20)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = *string;
    *(digest + 4) = *(string + 4);
    *digest = v5;
    return 1;
  }

  if (*(string + 1) == 20)
  {
    string = *string;
    goto LABEL_6;
  }

LABEL_7:
  TSULogErrorInFunction();
  return 0;
}

@end