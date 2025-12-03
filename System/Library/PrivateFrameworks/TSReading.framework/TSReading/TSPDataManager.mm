@interface TSPDataManager
+ (void)readWithChannel:(id)channel handler:(id)handler;
- (BOOL)linkTemporaryPath:(id)path fromURL:(id)l;
- (TSPDataManager)initWithContext:(id)context;
- (TSPObjectContext)context;
- (id).cxx_construct;
- (id)addNewDataForStorage:(id)storage digest:(const void *)digest filename:(id)filename;
- (id)checkForPersistenceWarningsWithPackageURL:(id)l;
- (id)copyData:(id)data;
- (id)createTemporaryDirectoryForPackageURL:(id)l;
- (id)dataForDigest:(const void *)digest;
- (id)dataForDigestImpl:(const void *)impl accessorBlock:(id)block;
- (id)dataForDigestImpl:(const void *)impl skipDocumentResourcesLookup:(BOOL)lookup accessorBlock:(id)block;
- (id)dataForExistingData:(id)data digest:(const void *)digest filename:(id)filename temporaryPath:(id)path;
- (id)dataForIdentifier:(int64_t)identifier;
- (id)dataForIdentifierImpl:(int64_t)impl;
- (id)dataFromExternalReferenceURL:(id)l useFileCoordination:(BOOL)coordination;
- (id)dataFromFileURL:(id)l useFileCoordination:(BOOL)coordination;
- (id)dataFromNSData:(id)data filename:(id)filename;
- (id)dataFromReadChannel:(id)channel filename:(id)filename;
- (id)dataFromReadChannel:(id)channel filename:(id)filename linkURLOrNil:(id)nil;
- (id)dataFromReadChannel:(id)channel filename:(id)filename temporaryPath:(id)path;
- (id)dataFromURL:(id)l useFileCoordination:(BOOL)coordination;
- (id)dataOrNilForIdentifier:(int64_t)identifier;
- (id)dataWithStorage:(id)storage digest:(const void *)digest filename:(id)filename skipDocumentResourcesLookup:(BOOL)lookup accessorBlock:(id)block;
- (id)dataWithTemporaryPath:(id)path digest:(const void *)digest filename:(id)filename;
- (id)documentResourceDataWithStorage:(id)storage digestString:(id)string filename:(id)filename;
- (id)temporaryPathForFilename:(id)filename;
- (int)openTemporaryPath:(id)path;
- (void)addData:(id)data;
- (void)coordinateReadingNewFileURL:(id)l byAccessor:(id)accessor;
- (void)dataForDigest:(const void *)digest queue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)enumerateDatasUsingBlock:(id)block;
- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l readHandler:(id)handler completion:(id)completion;
- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l temporaryPath:(id)path shouldWriteIfFound:(BOOL)found completion:(id)completion;
- (void)removeExternalReferenceForData:(id)data storage:(id)storage;
- (void)removeExternalReferences;
- (void)removeFileAtPath:(id)path;
- (void)removeTemporaryDirectory;
- (void)setDocumentURL:(id)l;
@end

@implementation TSPDataManager

- (TSPDataManager)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = TSPDataManager;
  v5 = [(TSPDataManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    v7 = dispatch_queue_create("TSPDataManager.Datas", 0);
    datasQueue = v6->_datasQueue;
    v6->_datasQueue = v7;

    v9 = dispatch_queue_create("TSPDataManager.TemporaryDirectory", 0);
    temporaryDirectoryQueue = v6->_temporaryDirectoryQueue;
    v6->_temporaryDirectoryQueue = v9;

    v6->_nextNewIdentifier = 1;
    v11 = dispatch_group_create();
    externalReferenceRemovalGroup = v6->_externalReferenceRemovalGroup;
    v6->_externalReferenceRemovalGroup = v11;

    v13 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(TSPDataManager *)self removeTemporaryDirectory];
  v3.receiver = self;
  v3.super_class = TSPDataManager;
  [(TSPDataManager *)&v3 dealloc];
}

- (id)dataFromURL:(id)l useFileCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v7 = [(TSPDataManager *)self dataFromFileURL:lCopy useFileCoordination:coordinationCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager dataFromURL:useFileCoordination:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:180 description:@"Unsupported URL scheme"];

    v7 = 0;
  }

  return v7;
}

- (id)dataFromFileURL:(id)l useFileCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  lCopy = l;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__TSPDataManager_dataFromFileURL_useFileCoordination___block_invoke;
  aBlock[3] = &unk_279D46B40;
  v14 = &v15;
  aBlock[4] = self;
  v7 = lCopy;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (coordinationCopy)
  {
    [(TSPDataManager *)self coordinateReadingNewFileURL:v7 byAccessor:v8];
  }

  else
  {
    (*(v8 + 2))(v8, v7);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __54__TSPDataManager_dataFromFileURL_useFileCoordination___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:v9];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) lastPathComponent];
  v6 = [v4 dataFromReadChannel:v3 filename:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v3 close];
}

- (void)coordinateReadingNewFileURL:(id)l byAccessor:(id)accessor
{
  lCopy = l;
  accessorCopy = accessor;
  v9 = 0;
  v7 = [MEMORY[0x277CCA9E8] tsp_coordinateReadingItemAtURL:lCopy options:0 filePresenter:0 error:&v9 byAccessor:accessorCopy];
  v8 = v9;
  if (v8)
  {
    TSULogErrorInFunction();
  }

  if ((v7 & 1) == 0)
  {
    accessorCopy[2](accessorCopy, 0);
  }
}

- (id)dataFromReadChannel:(id)channel filename:(id)filename
{
  channelCopy = channel;
  filenameCopy = filename;
  v8 = [(TSPDataManager *)self temporaryPathForFilename:filenameCopy];
  v9 = [(TSPDataManager *)self dataFromReadChannel:channelCopy filename:filenameCopy temporaryPath:v8];

  return v9;
}

- (id)dataFromReadChannel:(id)channel filename:(id)filename linkURLOrNil:(id)nil
{
  channelCopy = channel;
  filenameCopy = filename;
  nilCopy = nil;
  v11 = [(TSPDataManager *)self temporaryPathForFilename:filenameCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  if (nilCopy && [(TSPDataManager *)self linkTemporaryPath:v11 fromURL:nilCopy])
  {
    v12 = dispatch_semaphore_create(0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__TSPDataManager_dataFromReadChannel_filename_linkURLOrNil___block_invoke;
    v17[3] = &unk_279D46B68;
    v17[4] = self;
    v18 = v11;
    v21 = &v22;
    v19 = filenameCopy;
    v20 = v12;
    v13 = v12;
    [(TSPDataManager *)self findExistingDataForReadChannel:channelCopy dataURL:nilCopy readHandler:0 completion:v17];
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v14 = [(TSPDataManager *)self dataFromReadChannel:channelCopy filename:filenameCopy temporaryPath:v11];
    v13 = v23[5];
    v23[5] = v14;
  }

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

void __60__TSPDataManager_dataFromReadChannel_filename_linkURLOrNil___block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v10 = a3;
  if (v10 || (a2 & 1) == 0)
  {
    [*(a1 + 32) removeFileAtPath:*(a1 + 40)];
  }

  if (a2)
  {
    v7 = [*(a1 + 32) dataForExistingData:v10 digest:a4 filename:*(a1 + 48) temporaryPath:*(a1 + 40)];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)dataFromReadChannel:(id)channel filename:(id)filename temporaryPath:(id)path
{
  filenameCopy = filename;
  pathCopy = path;
  channelCopy = channel;
  v11 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__TSPDataManager_dataFromReadChannel_filename_temporaryPath___block_invoke;
  v17[3] = &unk_279D46B90;
  v20 = v11;
  v21 = &v22;
  v17[4] = self;
  v18 = filenameCopy;
  v19 = pathCopy;
  v12 = v11;
  v13 = pathCopy;
  v14 = filenameCopy;
  [(TSPDataManager *)self findExistingDataForReadChannel:channelCopy dataURL:0 temporaryPath:v13 shouldWriteIfFound:0 completion:v17];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __61__TSPDataManager_dataFromReadChannel_filename_temporaryPath___block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v11 = v7;
  if (a2)
  {
    v8 = [*(a1 + 32) dataForExistingData:v7 digest:a4 filename:*(a1 + 40) temporaryPath:*(a1 + 48)];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)dataForExistingData:(id)data digest:(const void *)digest filename:(id)filename temporaryPath:(id)path
{
  dataCopy = data;
  filenameCopy = filename;
  pathCopy = path;
  if (dataCopy)
  {
    v13 = dataCopy;
  }

  else
  {
    v14 = [TSPTemporaryDataStorage alloc];
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
    v16 = [(TSPTemporaryDataStorage *)v14 initWithURL:v15];

    v13 = [(TSPDataManager *)self addNewDataForStorage:v16 digest:digest filename:filenameCopy];
  }

  return v13;
}

- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l temporaryPath:(id)path shouldWriteIfFound:(BOOL)found completion:(id)completion
{
  channelCopy = channel;
  lCopy = l;
  pathCopy = path;
  completionCopy = completion;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = channelCopy != 0;
  if (!channelCopy || (v16 = [(TSPDataManager *)self openTemporaryPath:pathCopy], *(v41 + 24) = v16 >= 0, v16 < 0))
  {
    datasQueue = self->_datasQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke;
    block[3] = &unk_279D46BB8;
    v39 = completionCopy;
    dispatch_async(datasQueue, block);
    v20 = v39;
  }

  else
  {
    v17 = dispatch_queue_create("TSPDataManager.TemporaryWrite", 0);
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_2;
    cleanup_handler[3] = &unk_279D46BE0;
    cleanup_handler[4] = &v40;
    v37 = v16;
    v18 = dispatch_io_create(0, v16, v17, cleanup_handler);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_3;
    aBlock[3] = &unk_279D46C30;
    v34 = &v40;
    foundCopy = found;
    v19 = v18;
    v32 = v19;
    v33 = v17;
    v20 = v17;
    v21 = _Block_copy(aBlock);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_5;
    v24[3] = &unk_279D46CD0;
    foundCopy2 = found;
    v29 = &v40;
    v25 = v19;
    selfCopy = self;
    v27 = pathCopy;
    v28 = completionCopy;
    v22 = v19;
    [(TSPDataManager *)self findExistingDataForReadChannel:channelCopy dataURL:lCopy readHandler:v21 completion:v24];
  }

  _Block_object_dispose(&v40, 8);
}

void __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_3(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = *(a1 + 48);
  if (*(*(v8 + 8) + 24) == 1 && (!a3 || !a4 || (*(a1 + 56) & 1) != 0))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    io_handler[0] = MEMORY[0x277D85DD0];
    io_handler[1] = 3221225472;
    io_handler[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_4;
    io_handler[3] = &unk_279D46C08;
    io_handler[4] = v8;
    dispatch_io_write(v9, 0, v7, v10, io_handler);
  }
}

void __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && (!v5 || *(a1 + 72) == 1))
  {
    operator new();
  }

  dispatch_io_close(*(a1 + 32), 0);
  [*(a1 + 40) removeFileAtPath:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

void __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_6(uint64_t a1)
{
  dispatch_io_close(*(a1 + 32), 0);
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v2 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_7;
    block[3] = &unk_279D46C80;
    v3 = &v15;
    v4 = *(a1 + 48);
    v17 = *(a1 + 80);
    *&v5 = v4;
    *(&v5 + 1) = *(a1 + 40);
    v11 = v5;
    v6 = *(a1 + 56);
    v18 = *(a1 + 88);
    v7 = *(a1 + 64);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v15 = v11;
    v16 = v8;
    dispatch_async(v2, block);
  }

  else
  {
    TSULogErrorInFunction();
    v9 = *(a1 + 80);
    if (v9)
    {
      MEMORY[0x26D6A9A30](v9, 0x1000C40A86A77D5);
    }

    [*(a1 + 40) removeFileAtPath:*(a1 + 56)];
    v10 = *(*(a1 + 40) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_9;
    v12[3] = &unk_279D46BB8;
    v3 = &v13;
    v13 = *(a1 + 64);
    dispatch_async(v10, v12);
  }
}

void __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 || (v3 = *(a1 + 64), v6[0] = MEMORY[0x277D85DD0], v6[1] = 3221225472, v6[2] = __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_8, v6[3] = &unk_279D46C58, v4 = *(a1 + 40), v7 = *(a1 + 48), [v4 dataForDigestImpl:v3 accessorBlock:v6], v2 = objc_claimAutoreleasedReturnValue(), v7, v2))
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      [*(a1 + 40) removeFileAtPath:*(a1 + 48)];
    }
  }

  (*(*(a1 + 56) + 16))();
  v5 = *(a1 + 64);
  if (v5)
  {
    MEMORY[0x26D6A9A30](v5, 0x1000C40A86A77D5);
  }
}

void __101__TSPDataManager_findExistingDataForReadChannel_dataURL_temporaryPath_shouldWriteIfFound_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32) isDirectory:0];
  v4[2](v4, v3);
}

- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l readHandler:(id)handler completion:(id)completion
{
  channelCopy = channel;
  lCopy = l;
  handlerCopy = handler;
  completionCopy = completion;
  v14 = completionCopy;
  if (channelCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager findExistingDataForReadChannel:dataURL:readHandler:completion:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:409 description:{@"Invalid parameter not satisfying: %s", "readChannel"}];

    if (!v14)
    {
LABEL_5:
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager findExistingDataForReadChannel:dataURL:readHandler:completion:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
      [currentHandler2 handleFailureInFunction:v19 file:v20 lineNumber:410 description:{@"Invalid parameter not satisfying: %s", "completion"}];
    }
  }

  v21 = objc_opt_class();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80__TSPDataManager_findExistingDataForReadChannel_dataURL_readHandler_completion___block_invoke;
  v25[3] = &unk_279D46D20;
  v25[4] = self;
  v22 = lCopy;
  v26 = v22;
  v23 = handlerCopy;
  v27 = v23;
  v24 = v14;
  v28 = v24;
  [v21 readWithChannel:channelCopy handler:v25];
}

void __80__TSPDataManager_findExistingDataForReadChannel_dataURL_readHandler_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    if (!v7)
    {
      operator new();
    }

    v10 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__TSPDataManager_findExistingDataForReadChannel_dataURL_readHandler_completion___block_invoke_4;
    block[3] = &unk_279D46BB8;
    v13 = *(a1 + 56);
    dispatch_async(v10, block);
  }

  else if (v8)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, v9, 0, 0);
    }
  }
}

void __80__TSPDataManager_findExistingDataForReadChannel_dataURL_readHandler_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__TSPDataManager_findExistingDataForReadChannel_dataURL_readHandler_completion___block_invoke_3;
  v7[3] = &unk_279D46C58;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = [v3 dataForDigestImpl:v2 accessorBlock:v7];
  if (*(a1 + 48))
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  (*(*(a1 + 64) + 16))();
  v6 = *(a1 + 72);
  if (v6)
  {
    MEMORY[0x26D6A9A30](v6, 0x1000C40A86A77D5);
  }
}

+ (void)readWithChannel:(id)channel handler:(id)handler
{
  channelCopy = channel;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    CC_SHA1_Init(v18[3]);
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__2;
    v15[4] = __Block_byref_object_dispose__2;
    v16 = 0;
    v7 = dispatch_queue_create("TSPDataManager.Read", 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__TSPDataManager_readWithChannel_handler___block_invoke;
    v11[3] = &unk_279D46D70;
    v13 = v15;
    v14 = &v17;
    v12 = handlerCopy;
    [channelCopy readWithQueue:v7 handler:v11];

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSPDataManager readWithChannel:handler:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:450 description:{@"Invalid parameter not satisfying: %s", "handler"}];
  }
}

void __42__TSPDataManager_readWithChannel_handler___block_invoke(void *a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(a1[5] + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (!v8 || v11)
  {
    if (!v11)
    {
      if (v7)
      {
        if (dispatch_data_get_size(v7))
        {
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = __42__TSPDataManager_readWithChannel_handler___block_invoke_2;
          applier[3] = &unk_279D46D48;
          applier[4] = a1[6];
          dispatch_data_apply(v7, applier);
          if ((a2 & 1) == 0)
          {
            (*(a1[4] + 16))();
            goto LABEL_13;
          }
        }

        else if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (!a2)
      {
        goto LABEL_13;
      }

      CC_SHA1_Final(md, *(*(a1[6] + 8) + 24));
      free(*(*(a1[6] + 8) + 24));
      (*(a1[4] + 16))();
    }
  }

  else
  {
    objc_storeStrong(v10, a4);
    TSULogErrorInFunction();
    free(*(*(a1[6] + 8) + 24));
    (*(a1[4] + 16))(a1[4]);
  }

LABEL_13:
}

- (id)dataFromNSData:(id)data filename:(id)filename
{
  v57 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  filenameCopy = filename;
  if (!filenameCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager dataFromNSData:filename:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:510 description:@"Filename was not provided for data."];
  }

  lastPathComponent = [filenameCopy lastPathComponent];

  CC_SHA1([dataCopy bytes], objc_msgSend(dataCopy, "length"), &md);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  v29 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__TSPDataManager_dataFromNSData_filename___block_invoke;
  aBlock[3] = &unk_279D46D98;
  v24 = v40;
  v25 = &v34;
  aBlock[4] = self;
  v12 = lastPathComponent;
  v22 = v12;
  v26 = &v30;
  v13 = dataCopy;
  v23 = v13;
  v27 = v28;
  v14 = _Block_copy(aBlock);
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSPDataManager_dataFromNSData_filename___block_invoke_2;
  block[3] = &unk_279D46DE8;
  v50 = &v42;
  block[4] = self;
  v53 = md;
  v54 = v56;
  v16 = v14;
  v49 = v16;
  v51 = &v30;
  v52 = &v34;
  dispatch_sync(datasQueue, block);
  if (!v43[5])
  {
    v16[2](v16);
    if (*(v31 + 24) == 1)
    {
      v17 = [(TSPDataManager *)self dataWithTemporaryPath:v35[5] digest:&md filename:v12];
      v18 = v43[5];
      v43[5] = v17;
    }

    else
    {
      TSULogErrorInFunction();
    }
  }

  v19 = v43[5];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);

  return v19;
}

void __42__TSPDataManager_dataFromNSData_filename___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = [*(a1 + 32) temporaryPathForFilename:*(a1 + 40)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(a1 + 48);
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = *(*(a1 + 80) + 8);
    obj = *(v7 + 40);
    v8 = [v5 writeToFile:v6 options:0 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v8;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __42__TSPDataManager_dataFromNSData_filename___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TSPDataManager_dataFromNSData_filename___block_invoke_3;
  v6[3] = &unk_279D46DC0;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v3 = [v2 dataForDigestImpl:a1 + 72 accessorBlock:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __42__TSPDataManager_dataFromNSData_filename___block_invoke_3(void *a1, void *a2)
{
  v5 = a2;
  (*(a1[4] + 16))();
  v3 = *(*(a1[5] + 8) + 24);
  if (v3 == 1)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(a1[6] + 8) + 40) isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  v5[2](v5, v4);
  if (v3)
  {
  }
}

- (id)documentResourceDataWithStorage:(id)storage digestString:(id)string filename:(id)filename
{
  v14 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  stringCopy = string;
  filenameCopy = filename;
  TSP::DataDigestForString(stringCopy, v13);
  v11 = [(TSPDataManager *)self dataWithStorage:storageCopy digest:v13 filename:filenameCopy skipDocumentResourcesLookup:1 accessorBlock:0];

  return v11;
}

- (id)copyData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && ([dataCopy context], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v5, "context"), v7 = objc_claimAutoreleasedReturnValue(), -[TSPDataManager context](self, "context"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 != v8))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2;
    v27 = __Block_byref_object_dispose__2;
    v28 = 0;
    datasQueue = self->_datasQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__TSPDataManager_copyData___block_invoke;
    block[3] = &unk_279D46E10;
    v22 = &v23;
    block[4] = self;
    v10 = v5;
    v21 = v10;
    dispatch_sync(datasQueue, block);
    v11 = v24[5];
    if (!v11)
    {
      context = [(TSPDataManager *)self context];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __27__TSPDataManager_copyData___block_invoke_2;
      v16[3] = &unk_279D46E38;
      v19 = &v23;
      v17 = v10;
      v18 = context;
      v13 = context;
      [v17 performIOChannelReadWithAccessor:v16];

      v11 = v24[5];
    }

    v14 = v11;

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

void __27__TSPDataManager_copyData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataForDigestImpl:objc_msgSend(*(a1 + 40) accessorBlock:{"digest"), 0}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = [*(a1 + 40) storage];
    if (objc_opt_respondsToSelector())
    {
      v5 = *(a1 + 32);
      v6 = [v12 storageForDataCopyFromOtherContext];
      v7 = [*(a1 + 40) digest];
      v8 = [*(a1 + 40) filename];
      v9 = [v5 addNewDataForStorage:v6 digest:v7 filename:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

void __27__TSPDataManager_copyData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = [objc_alloc(MEMORY[0x277D6C358]) initWithReadChannel:v3];
    v5 = [*(a1 + 32) filename];
    v6 = [TSPData dataFromReadChannel:v4 filename:v5 context:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v3 = v9;
  }
}

- (void)enumerateDatasUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    datasQueue = self->_datasQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__TSPDataManager_enumerateDatasUsingBlock___block_invoke;
    v7[3] = &unk_279D46E60;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_sync(datasQueue, v7);
  }
}

void __43__TSPDataManager_enumerateDatasUsingBlock___block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 32) + 48); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 3);
    if (WeakRetained)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (id)dataOrNilForIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TSPDataManager_dataOrNilForIdentifier___block_invoke;
  block[3] = &unk_279D469E0;
  block[4] = self;
  block[5] = &v7;
  block[6] = identifier;
  dispatch_sync(datasQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __41__TSPDataManager_dataOrNilForIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) dataForIdentifierImpl:*(a1 + 48)];

  return MEMORY[0x2821F96F8]();
}

- (id)dataForIdentifier:(int64_t)identifier
{
  v4 = [(TSPDataManager *)self dataOrNilForIdentifier:?];
  v5 = v4;
  if (!identifier || v4)
  {
    if (v4)
    {
      v9 = v4;
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager dataForIdentifier:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:857 description:{@"No data loaded for identifier: %qu", identifier}];
  }

  v9 = +[TSPData null];
LABEL_7:
  v10 = v9;

  return v10;
}

- (id)dataForIdentifierImpl:(int64_t)impl
{
  implCopy = impl;
  WeakRetained = std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::find<long long>(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, &implCopy);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    if (!WeakRetained)
    {
      std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, v5, v8);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<long long const,TSPData * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long const,TSPData * {__weak}>,void *>>>>::~unique_ptr[abi:nn200100](v8);
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (int)openTemporaryPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = TSUOpen();
    if (v4 < 0)
    {
      TSULogErrorInFunction();
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)linkTemporaryPath:(id)path fromURL:(id)l
{
  pathCopy = path;
  lCopy = l;
  v7 = lCopy;
  if (pathCopy)
  {
    if (([lCopy isFileURL] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager linkTemporaryPath:fromURL:]"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
      [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:913 description:@"Can't link to non-file URL"];
    }

    path = [v7 path];
    v12 = [TSPFileManager linkFileAtPath:path toPath:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)temporaryPathForFilename:(id)filename
{
  filenameCopy = filename;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  temporaryDirectoryQueue = self->_temporaryDirectoryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TSPDataManager_temporaryPathForFilename___block_invoke;
  block[3] = &unk_279D46AA8;
  block[4] = self;
  v10 = filenameCopy;
  v11 = &v12;
  v6 = filenameCopy;
  dispatch_sync(temporaryDirectoryQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__TSPDataManager_temporaryPathForFilename___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 128))
  {
    v3 = [v2 createTemporaryDirectoryForPackageURL:*(v2 + 120)];
    v4 = a1[4];
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v6 = objc_alloc_init(MEMORY[0x277D6C340]);
    v7 = a1[4];
    v8 = *(v7 + 144);
    *(v7 + 144) = v6;

    v9 = [MEMORY[0x277CCAD78] UUID];
    if (!v9)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager temporaryPathForFilename:]_block_invoke"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:931 description:{@"invalid nil value for '%s'", "uuid"}];
    }

    v13 = *(a1[4] + 128);
    v14 = [v9 UUIDString];
    v15 = [v13 URLByAppendingPathComponent:v14];
    v16 = a1[4];
    v17 = *(v16 + 136);
    *(v16 + 136) = v15;

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = *(a1[4] + 136);
    v28 = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v28];
    v21 = v28;

    if ((v20 & 1) == 0)
    {
      objc_storeStrong((a1[4] + 136), *(a1[4] + 128));
      v27 = v21;
      TSULogErrorInFunction();
    }

    v2 = a1[4];
  }

  v22 = [*(v2 + 144) addPath:{a1[5], v27}];
  v23 = [*(a1[4] + 136) path];
  v24 = [v23 stringByAppendingPathComponent:v22];
  v25 = *(a1[6] + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
}

- (id)dataWithTemporaryPath:(id)path digest:(const void *)digest filename:(id)filename
{
  pathCopy = path;
  filenameCopy = filename;
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
  v11 = [[TSPTemporaryDataStorage alloc] initWithURL:v10];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__TSPDataManager_dataWithTemporaryPath_digest_filename___block_invoke;
  v15[3] = &unk_279D46C58;
  v12 = v10;
  v16 = v12;
  v13 = [(TSPDataManager *)self dataWithStorage:v11 digest:digest filename:filenameCopy skipDocumentResourcesLookup:0 accessorBlock:v15];

  return v13;
}

- (void)setDocumentURL:(id)l
{
  lCopy = l;
  temporaryDirectoryQueue = self->_temporaryDirectoryQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__TSPDataManager_setDocumentURL___block_invoke;
  v7[3] = &unk_279D46A58;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_async(temporaryDirectoryQueue, v7);
}

uint64_t __33__TSPDataManager_setDocumentURL___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 120) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryUniqueDirectoryURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    temporaryUniqueDirectoryURL = self->_temporaryUniqueDirectoryURL;
    v13 = 0;
    v5 = [defaultManager removeItemAtURL:temporaryUniqueDirectoryURL error:&v13];
    v6 = v13;

    if ((v5 & 1) == 0)
    {
      TSULogErrorInFunction();
    }
  }

  temporaryDirectoryURL = self->_temporaryDirectoryURL;
  if (temporaryDirectoryURL)
  {
    if (temporaryDirectoryURL != self->_temporaryUniqueDirectoryURL)
    {
      path = [(NSURL *)temporaryDirectoryURL path];
      v9 = rmdir([path fileSystemRepresentation]);

      if (v9)
      {
        if (v9 != 66)
        {
          strerror(v9);
          TSULogErrorInFunction();
        }
      }
    }
  }

  v10 = self->_temporaryDirectoryURL;
  self->_temporaryDirectoryURL = 0;

  v11 = self->_temporaryUniqueDirectoryURL;
  self->_temporaryUniqueDirectoryURL = 0;

  temporaryPathSet = self->_temporaryPathSet;
  self->_temporaryPathSet = 0;
}

- (id)dataFromExternalReferenceURL:(id)l useFileCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager dataFromExternalReferenceURL:useFileCoordination:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:1022 description:@"External references must be added from a file URL"];
  }

  selfCopy = self;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__TSPDataManager_dataFromExternalReferenceURL_useFileCoordination___block_invoke;
  aBlock[3] = &unk_279D46EB0;
  aBlock[4] = selfCopy;
  v22 = &v23;
  v11 = selfCopy;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (coordinationCopy)
  {
    v19 = 0;
    [MEMORY[0x277CCA9E8] tsp_coordinateReadingItemAtURL:lCopy options:0 filePresenter:0 error:&v19 byAccessor:v12];
    v14 = v19;
    if (v14)
    {
      v15 = v14;
      TSULogErrorInFunction();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    (*(v12 + 2))(v12, lCopy);
    v16 = 0;
  }

  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

void __67__TSPDataManager_dataFromExternalReferenceURL_useFileCoordination___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D6C2D0]) initForReadingURL:v3];
  v5 = dispatch_semaphore_create(0);
  v6 = *(a1 + 32);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __67__TSPDataManager_dataFromExternalReferenceURL_useFileCoordination___block_invoke_2;
  v12 = &unk_279D46E88;
  v16 = *(a1 + 48);
  v7 = v3;
  v13 = v7;
  v14 = *(a1 + 40);
  v8 = v5;
  v15 = v8;
  [v6 findExistingDataForReadChannel:v4 dataURL:v7 readHandler:0 completion:&v9];
  [v4 close];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

void __67__TSPDataManager_dataFromExternalReferenceURL_useFileCoordination___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v16 = v7;
  if (a2)
  {
    if (v7)
    {
      v8 = *(*(a1 + 56) + 8);
      v9 = v7;
      v10 = *(v8 + 40);
      *(v8 + 40) = v9;
    }

    else
    {
      v10 = [[TSPExternalReferenceDataStorage alloc] initWithURL:*(a1 + 32)];
      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) lastPathComponent];
      v13 = [v11 addNewDataForStorage:v10 digest:a4 filename:v12];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)removeExternalReferences
{
  [(TSPDataManager *)self waitForRemoveExternalReferencesToComplete];
  externalReferenceRemovalGroup = self->_externalReferenceRemovalGroup;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSPDataManager_removeExternalReferences__block_invoke;
  block[3] = &unk_279D469B8;
  block[4] = self;
  dispatch_group_async(externalReferenceRemovalGroup, datasQueue, block);
}

void __42__TSPDataManager_removeExternalReferences__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      do
      {
        WeakRetained = objc_loadWeakRetained(v2 + 3);
        objc_opt_class();
        v5 = [WeakRetained storage];
        v6 = TSUDynamicCast();

        if (v6)
        {
          [*(a1 + 32) removeExternalReferenceForData:WeakRetained storage:v6];
        }

        v2 = *v2;
      }

      while (v2);
      v1 = *(a1 + 32);
    }

    *(v1 + 152) = 0;
  }
}

- (void)removeExternalReferenceForData:(id)data storage:(id)storage
{
  dataCopy = data;
  storageCopy = storage;
  v8 = dispatch_get_global_queue(0, 0);
  dispatch_group_enter(self->_externalReferenceRemovalGroup);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TSPDataManager_removeExternalReferenceForData_storage___block_invoke;
  block[3] = &unk_279D46F28;
  v12 = storageCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = storageCopy;
  dispatch_async(v8, block);
}

void __57__TSPDataManager_removeExternalReferenceForData_storage___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__TSPDataManager_removeExternalReferenceForData_storage___block_invoke_2;
  v3[3] = &unk_279D46F00;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 performIOChannelReadWithAccessor:v3];
}

void __57__TSPDataManager_removeExternalReferenceForData_storage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 40) filename];
    v5 = [*(a1 + 32) temporaryPathForFilename:v4];
    v6 = [objc_alloc(MEMORY[0x277D6C358]) initWithReadChannel:v3];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __57__TSPDataManager_removeExternalReferenceForData_storage___block_invoke_3;
    v14 = &unk_279D46ED8;
    v7 = *(a1 + 32);
    v15 = *(a1 + 40);
    v8 = v5;
    v16 = v8;
    v9 = v4;
    v10 = *(a1 + 32);
    v17 = v9;
    v18 = v10;
    [v7 findExistingDataForReadChannel:v6 dataURL:0 temporaryPath:v8 shouldWriteIfFound:1 completion:&v11];
    [v3 close];
  }

  else
  {
    dispatch_group_leave(*(*(a1 + 32) + 160));
  }
}

void __57__TSPDataManager_removeExternalReferenceForData_storage___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    if (*(a1 + 32) != v5)
    {
      TSULogErrorInFunction();
    }

    v6 = [TSPTemporaryDataStorage alloc];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 40) isDirectory:0];
    v8 = [(TSPTemporaryDataStorage *)v6 initWithURL:v7];

    [*(a1 + 32) setFilename:*(a1 + 48) storage:v8];
  }

  dispatch_group_leave(*(*(a1 + 56) + 160));
}

- (id)dataForDigestImpl:(const void *)impl accessorBlock:(id)block
{
  v4 = [(TSPDataManager *)self dataForDigestImpl:impl skipDocumentResourcesLookup:0 accessorBlock:block];

  return v4;
}

- (id)dataForDigestImpl:(const void *)impl skipDocumentResourcesLookup:(BOOL)lookup accessorBlock:(id)block
{
  blockCopy = block;
  v8 = std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::find<std::array<unsigned char,20ul>>(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, impl);
  v9 = v8;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 5);
    if (!WeakRetained)
    {
      std::__hash_table<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::__unordered_map_hasher<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::hash<EQKit::StemStretch::Key>,std::equal_to<EQKit::StemStretch::Key>,true>,std::__unordered_map_equal<EQKit::StemStretch::Key,std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>,std::equal_to<EQKit::StemStretch::Key>,std::hash<EQKit::StemStretch::Key>,true>,std::allocator<std::__hash_value_type<EQKit::StemStretch::Key,std::pair<std::shared_ptr<EQKit::StemStretch::Glyph>,unsigned long>>>>::remove(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, v9, v12);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,void *>>>>::~unique_ptr[abi:nn200100](v12);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)dataForDigest:(const void *)digest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TSPDataManager_dataForDigest___block_invoke;
  block[3] = &unk_279D469E0;
  block[4] = self;
  block[5] = &v7;
  block[6] = digest;
  dispatch_sync(datasQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__TSPDataManager_dataForDigest___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) dataForDigestImpl:*(a1 + 48) accessorBlock:0];

  return MEMORY[0x2821F96F8]();
}

- (void)dataForDigest:(const void *)digest queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  datasQueue = self->_datasQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__TSPDataManager_dataForDigest_queue_completion___block_invoke;
  v13[3] = &unk_279D46F50;
  v13[4] = self;
  v14 = queueCopy;
  v15 = completionCopy;
  digestCopy = digest;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(datasQueue, v13);
}

void __49__TSPDataManager_dataForDigest_queue_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataForDigestImpl:*(a1 + 56) accessorBlock:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TSPDataManager_dataForDigest_queue_completion___block_invoke_2;
  v6[3] = &unk_279D46A08;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (id)dataWithStorage:(id)storage digest:(const void *)digest filename:(id)filename skipDocumentResourcesLookup:(BOOL)lookup accessorBlock:(id)block
{
  storageCopy = storage;
  filenameCopy = filename;
  blockCopy = block;
  if (storageCopy)
  {
    if (filenameCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager dataWithStorage:digest:filename:skipDocumentResourcesLookup:accessorBlock:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
    [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:1265 description:{@"Invalid parameter not satisfying: %s", "storage"}];

    if (filenameCopy)
    {
      goto LABEL_6;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDataManager dataWithStorage:digest:filename:skipDocumentResourcesLookup:accessorBlock:]"];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDataManager.mm"];
  [currentHandler2 handleFailureInFunction:v19 file:v20 lineNumber:1266 description:{@"Invalid parameter not satisfying: %s", "filename"}];

LABEL_6:
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__TSPDataManager_dataWithStorage_digest_filename_skipDocumentResourcesLookup_accessorBlock___block_invoke;
  block[3] = &unk_279D46F78;
  v31 = &v34;
  digestCopy = digest;
  lookupCopy = lookup;
  block[4] = self;
  v28 = storageCopy;
  v29 = filenameCopy;
  v30 = blockCopy;
  v22 = filenameCopy;
  v23 = storageCopy;
  v24 = blockCopy;
  dispatch_sync(datasQueue, block);
  v25 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v25;
}

void __92__TSPDataManager_dataWithStorage_digest_filename_skipDocumentResourcesLookup_accessorBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataForDigestImpl:*(a1 + 72) skipDocumentResourcesLookup:*(a1 + 80) accessorBlock:*(a1 + 56)];
  v4 = v2;
  if (!v2)
  {
    v2 = [*(a1 + 32) addNewDataForStorage:*(a1 + 40) digest:*(a1 + 72) filename:*(a1 + 48)];
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
  v3 = v4;
  if (!v4)
  {

    v3 = 0;
  }
}

- (id)addNewDataForStorage:(id)storage digest:(const void *)digest filename:(id)filename
{
  storageCopy = storage;
  filenameCopy = filename;
  v10 = [[TSPData alloc] initWithIdentifier:self->_nextNewIdentifier digest:digest filename:filenameCopy storage:storageCopy manager:self];
  [(TSPDataManager *)self addData:v10];
  ++self->_nextNewIdentifier;

  return v10;
}

- (void)addData:(id)data
{
  dataCopy = data;
  identifier = [dataCopy identifier];
  digest = &identifier;
  v5 = std::__hash_table<std::__hash_value_type<long long const,TSPData * {__weak}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,TSP::ObjectIdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,TSPData * {__weak}>,std::equal_to<long long const>,TSP::ObjectIdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,TSPData * {__weak}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, &identifier);
  objc_storeWeak(v5 + 3, dataCopy);
  digest = [dataCopy digest];
  v6 = std::__hash_table<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,std::__unordered_map_hasher<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestHash,TSP::DataDigestEqualTo,true>,std::__unordered_map_equal<std::array<unsigned char,20ul> const,std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>,TSP::DataDigestEqualTo,TSP::DataDigestHash,true>,std::allocator<std::__hash_value_type<std::array<unsigned char,20ul> const,TSPData * {__weak}>>>::__emplace_unique_key_args<std::array<unsigned char,20ul>,std::piecewise_construct_t const&,std::tuple<std::array<unsigned char,20ul> const&>,std::tuple<>>(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, digest);
  objc_storeWeak(v6 + 5, dataCopy);
  if (self->_hasExternalReferences)
  {
    self->_hasExternalReferences = 1;
  }

  else
  {
    storage = [dataCopy storage];
    objc_opt_class();
    self->_hasExternalReferences = objc_opt_isKindOfClass() & 1;
  }
}

- (id)checkForPersistenceWarningsWithPackageURL:(id)l
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  delegate = [WeakRetained delegate];

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__TSPDataManager_checkForPersistenceWarningsWithPackageURL___block_invoke;
    v11[3] = &unk_279D46FA0;
    v7 = v6;
    v12 = v7;
    v13 = delegate;
    [(TSPDataManager *)self enumerateDatasUsingBlock:v11];
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__TSPDataManager_checkForPersistenceWarningsWithPackageURL___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([v8 isApplicationData] & 1) == 0)
  {
    v3 = [v8 isReadable];
    v4 = [v8 storage];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) persistenceWarningsForData:v8 isReadable:v3 isExternal:isKindOfClass & 1];
    [v6 unionSet:v7];
  }
}

- (void)removeFileAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  v5 = [defaultManager removeItemAtPath:pathCopy error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    TSULogErrorInFunction();
  }
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

- (id)createTemporaryDirectoryForPackageURL:(id)l
{
  v3 = [objc_alloc(MEMORY[0x277D6C378]) initWithSignature:@"DocumentData"];
  [v3 leakTemporaryDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 URL];
  v6 = *MEMORY[0x277CCA1A0];
  v12 = 0;
  [defaultManager changeFileProtectionAtURL:v5 toProtection:v6 recursively:0 error:&v12];
  v7 = v12;

  v8 = MEMORY[0x277CBEBC0];
  path = [v3 path];
  v10 = [v8 fileURLWithPath:path isDirectory:1];

  return v10;
}

@end