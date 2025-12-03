@interface TSPDataManager
+ (void)readWithChannel:(id)channel handler:(id)handler;
+ (void)readWithChannelImpl:(id)impl handler:(id)handler;
+ (void)readWithURL:(id)l handler:(id)handler;
- (BOOL)attemptToMaterializeData:(id)data dataURL:(id)l dataURLType:(int64_t)type;
- (BOOL)hasIncompleteDataIncludeUnmaterialized:(BOOL)unmaterialized includeMissing:(BOOL)missing includeExternalReference:(BOOL)reference;
- (BOOL)migrateDataToTemporaryStorageFromPackage:(id)package;
- (BOOL)prepareSaveWithOldPackage:(id)package saveOperationState:(id)state;
- (BOOL)prepareTemporaryDataStorageForData:(id)data temporaryDataStorage:(id *)storage;
- (BOOL)shouldAttemptToMaterializeData:(id)data expectedLength:(unint64_t)length;
- (NSArray)allData;
- (NSArray)missingOrUnmaterializedRemoteData;
- (NSDictionary)digestToDataMap;
- (NSDictionary)identifierToDataMap;
- (NSIndexSet)allDataIdentifiers;
- (NSSet)dataWarnings;
- (TSPDataManager)init;
- (TSPDataManager)initWithContext:(id)context;
- (TSPObjectContext)context;
- (id).cxx_construct;
- (id)copyData:(id)data;
- (id)dataForDigest:(id)digest;
- (id)dataForDigestImpl:(id)impl documentResourceInfo:(id)info skipDocumentResourcesLookup:(BOOL)lookup expectedLength:(unint64_t)length accessorBlock:(id)block;
- (id)dataForDocumentResourceInfo:(id)info fromFileURL:(id)l;
- (id)dataForIdentifier:(int64_t)identifier;
- (id)dataForIdentifierImpl:(int64_t)impl;
- (id)dataFromExternalReferenceURL:(id)l filename:(id)filename useFileCoordination:(BOOL)coordination;
- (id)dataFromFileURL:(id)l filename:(id)filename useFileCoordination:(BOOL)coordination;
- (id)dataFromNSData:(id)data filename:(id)filename;
- (id)dataFromReadChannel:(id)channel filename:(id)filename;
- (id)dataOrNilForIdentifier:(int64_t)identifier;
- (id)dataWithStorage:(id)storage digest:(id)digest hasValidatedDigestMatch:(BOOL)match filename:(id)filename skipDocumentResourcesLookup:(BOOL)lookup accessorBlock:(id)block;
- (id)documentResourceDataForInfo:(id)info withStorage:(id)storage filename:(id)filename;
- (id)preferredFilenameForDocumentResourceInfo:(id)info;
- (id)temporaryDataStorageURLForFilename:(id)filename;
- (id)unmaterializedRemoteDataIncludingExpiredUploads:(BOOL)uploads includingDataNotInDocument:(BOOL)document;
- (int)openTemporaryURL:(id)l;
- (void)addData:(id)data;
- (void)addDataFromPackage:(id)package packageURL:(id)l dataInfo:(const void *)info packageMetadata:(id)metadata documentResourceInfo:(id)resourceInfo areExternalReferencesAllowed:(BOOL)allowed;
- (void)coordinateReadingNewFileURL:(id)l byAccessor:(id)accessor;
- (void)dataForDigest:(id)digest queue:(id)queue completion:(id)completion;
- (void)dataFromFileURL:(id)l filename:(id)filename context:(id)context completionQueue:(id)queue completion:(id)completion;
- (void)didSaveWithSaveOperationState:(id)state;
- (void)enumerateAllDataUsingBlock:(id)block;
- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l dataURLType:(int64_t)type readHandler:(id)handler completion:(id)completion;
- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l dataURLType:(int64_t)type temporaryDataStorageURL:(id)rL keepTemporaryFileOnSuccess:(BOOL)success completion:(id)completion;
- (void)loadFromPackage:(id)package packageURL:(id)l packageMetadata:(id)metadata areExternalReferencesAllowed:(BOOL)allowed dataIdentifiersIndexSet:(id *)set;
- (void)removeExternalReferenceForData:(id)data storage:(id)storage;
- (void)removeExternalReferences;
- (void)removeFileAtURL:(id)l;
- (void)willCreateData;
@end

@implementation TSPDataManager

- (TSPDataManager)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataManager init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 101, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDataManager init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDataManager)initWithContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = TSPDataManager;
  v5 = [(TSPDataManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPDataManager.Datas", v7);
    datasQueue = v6->_datasQueue;
    v6->_datasQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("TSPDataManager.TemporaryDirectory", v10);
    temporaryDirectoryQueue = v6->_temporaryDirectoryQueue;
    v6->_temporaryDirectoryQueue = v11;

    v6->_nextNewIdentifier = 1;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("TSPDataManager.ExternalReferenceRemoval", v13);
    externalReferenceRemovalQueue = v6->_externalReferenceRemovalQueue;
    v6->_externalReferenceRemovalQueue = v14;

    v16 = dispatch_group_create();
    externalReferenceRemovalGroup = v6->_externalReferenceRemovalGroup;
    v6->_externalReferenceRemovalGroup = v16;
  }

  return v6;
}

- (void)willCreateData
{
  if (objc_msgSend_tsp_isArchiverThread(MEMORY[0x277CCACC8], a2, v2))
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPDataManager willCreateData]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 153, 0, "Should not create data from the archiver thread.");

    v11 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v11, v9, v10);
  }
}

- (id)dataFromFileURL:(id)l filename:(id)filename useFileCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  lCopy = l;
  filenameCopy = filename;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2769C7DC0;
  v23 = sub_2769C7DD0;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769C7DD8;
  aBlock[3] = &unk_27A6E3390;
  v18 = &v19;
  aBlock[4] = self;
  v10 = filenameCopy;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  v13 = v11;
  if (coordinationCopy)
  {
    objc_msgSend_coordinateReadingNewFileURL_byAccessor_(self, v12, lCopy, v11);
  }

  else
  {
    (*(v11 + 2))(v11, lCopy);
  }

  v14 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v14;
}

- (void)dataFromFileURL:(id)l filename:(id)filename context:(id)context completionQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  filenameCopy = filename;
  queueCopy = queue;
  completionCopy = completion;
  v15 = objc_alloc(MEMORY[0x277D81320]);
  v17 = objc_msgSend_initWithURL_(v15, v16, lCopy);
  v18 = objc_alloc(MEMORY[0x277D811D0]);
  v20 = objc_msgSend_initForReadingURL_error_(v18, v19, lCopy, 0);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2769C80E0;
  v26[3] = &unk_27A6E33B8;
  v27 = v20;
  v21 = v17;
  v28 = v21;
  v22 = completionCopy;
  v30 = v22;
  v23 = queueCopy;
  v29 = v23;
  v24 = v20;
  objc_msgSend_dataFromReadChannel_filename_dataURL_canLink_completion_(self, v25, v24, filenameCopy, lCopy, 0, v26);
}

- (void)coordinateReadingNewFileURL:(id)l byAccessor:(id)accessor
{
  lCopy = l;
  accessorCopy = accessor;
  v8 = MEMORY[0x277CCA9E8];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v12 = objc_msgSend_filePresenter(WeakRetained, v10, v11);
  v16 = 0;
  v14 = objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v8, v13, lCopy, 2, 0, v12, &v16, accessorCopy);
  v15 = v16;

  if (v15 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD12DC();
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v14 & 1) == 0)
  {
LABEL_4:
    accessorCopy[2](accessorCopy, 0);
  }

LABEL_5:
}

- (id)dataFromReadChannel:(id)channel filename:(id)filename
{
  v4 = objc_msgSend_dataFromReadChannel_filename_dataURL_canLink_(self, a2, channel, filename, 0, 0);

  return v4;
}

- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l dataURLType:(int64_t)type temporaryDataStorageURL:(id)rL keepTemporaryFileOnSuccess:(BOOL)success completion:(id)completion
{
  channelCopy = channel;
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46[0] = channelCopy != 0;
  v19 = atomic_load(v46);
  if (v19)
  {
    v20 = objc_msgSend_openTemporaryURL_(self, v17, rLCopy);
    v21 = v44;
    atomic_store(v20 >= 0, v44 + 24);
  }

  else
  {
    v20 = 0;
    v21 = v44;
  }

  v22 = atomic_load(v21 + 24);
  if (v22)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2769C8DD0;
    aBlock[3] = &unk_27A6E34D0;
    v39 = &v43;
    v40 = v20;
    v23 = rLCopy;
    v37 = v23;
    v29 = lCopy;
    v24 = lCopy;
    v38 = v24;
    v25 = _Block_copy(aBlock);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2769C9060;
    v30[3] = &unk_27A6E3520;
    v34 = &v43;
    v30[4] = self;
    v31 = v23;
    successCopy = success;
    v33 = completionCopy;
    v32 = v24;
    objc_msgSend_findExistingDataForReadChannel_dataURL_dataURLType_readHandler_completion_(self, v26, channelCopy, v32, type, v25, v30);
    v27 = &v37;

    lCopy = v29;
  }

  else
  {
    datasQueue = self->_datasQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769C8DB0;
    block[3] = &unk_27A6E3480;
    v27 = &v42;
    v42 = completionCopy;
    dispatch_async(datasQueue, block);
  }

  _Block_object_dispose(&v43, 8);
}

- (void)findExistingDataForReadChannel:(id)channel dataURL:(id)l dataURLType:(int64_t)type readHandler:(id)handler completion:(id)completion
{
  channelCopy = channel;
  lCopy = l;
  handlerCopy = handler;
  completionCopy = completion;
  if (!channelCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPDataManager findExistingDataForReadChannel:dataURL:dataURLType:readHandler:completion:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 368, 0, "Invalid parameter not satisfying: %{public}s", "readChannel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  if (!completionCopy)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPDataManager findExistingDataForReadChannel:dataURL:dataURLType:readHandler:completion:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 369, 0, "Invalid parameter not satisfying: %{public}s", "completion");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  v31 = objc_opt_class();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2769C95C0;
  v36[3] = &unk_27A6E3598;
  v32 = handlerCopy;
  v38 = v32;
  v36[4] = self;
  v33 = lCopy;
  v37 = v33;
  typeCopy = type;
  v34 = completionCopy;
  v39 = v34;
  objc_msgSend_readWithChannel_handler_(v31, v35, channelCopy, v36);
}

+ (void)readWithURL:(id)l handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = objc_alloc(MEMORY[0x277D811D0]);
    v30 = 0;
    v11 = objc_msgSend_initForReadingURL_error_(v9, v10, lCopy, &v30);
    v12 = v30;
    v14 = v12;
    if (v11)
    {
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x3032000000;
      v28[3] = sub_2769C7DC0;
      v28[4] = sub_2769C7DD0;
      v29 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_2769C9C08;
      v24[3] = &unk_27A6E35C0;
      v25 = v11;
      v27 = v28;
      v26 = handlerCopy;
      objc_msgSend_readWithChannelImpl_handler_(self, v15, v25, v24);

      _Block_object_dispose(v28, 8);
    }

    else
    {
      v23 = v12;
      if (!v12)
      {
        v23 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v13, 0);
      }

      (*(handlerCopy + 2))(handlerCopy, 1, v23, MEMORY[0x277D85CC8], 0, 0);
      if (!v14)
      {
      }
    }
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSPDataManager readWithURL:handler:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 399, 0, "Invalid parameter not satisfying: %{public}s", "handler");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }
}

+ (void)readWithChannel:(id)channel handler:(id)handler
{
  channelCopy = channel;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (channelCopy)
    {
      objc_msgSend_readWithChannelImpl_handler_(self, v6, channelCopy, handlerCopy);
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSPDataManager readWithChannel:handler:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 437, 0, "Invalid parameter not satisfying: %{public}s", "readChannel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      v23 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v22, 0);
      (*(handlerCopy + 2))(handlerCopy, 1, v23, 0, 0, 0);
    }
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSPDataManager readWithChannel:handler:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 430, 0, "Invalid parameter not satisfying: %{public}s", "handler");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }
}

+ (void)readWithChannelImpl:(id)impl handler:(id)handler
{
  implCopy = impl;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  CC_SHA1_Init(v18[3]);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_2769C7DC0;
  v14[4] = sub_2769C7DD0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2769CA0C8;
  v9[3] = &unk_27A6E3610;
  v11 = v14;
  v12 = &v17;
  v7 = handlerCopy;
  v10 = v7;
  v13 = v16;
  objc_msgSend_readWithHandler_(implCopy, v8, v9);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
}

- (id)dataFromNSData:(id)data filename:(id)filename
{
  dataCopy = data;
  filenameCopy = filename;
  objc_msgSend_willCreateData(self, v8, v9);
  if (objc_msgSend_length(dataCopy, v10, v11))
  {
    v39 = dataCopy;
    if (!objc_msgSend_length(filenameCopy, v12, v13))
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDataManager dataFromNSData:filename:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 493, 0, "Filename was not provided for data.");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22);
      v23 = @"data";

      filenameCopy = v23;
    }

    v24 = objc_msgSend_lastPathComponent(filenameCopy, v14, v15);

    v25 = [TSPDigest alloc];
    v27 = objc_msgSend_initFromNSData_(v25, v26, dataCopy);
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = sub_2769C7DC0;
    v77 = sub_2769C7DD0;
    v78 = 0;
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x2020000000;
    v72 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = sub_2769C7DC0;
    v69 = sub_2769C7DD0;
    v70 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = sub_2769C7DC0;
    v55[4] = sub_2769C7DD0;
    v56 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2769CA8BC;
    aBlock[3] = &unk_27A6E3638;
    v51 = v71;
    v52 = &v65;
    aBlock[4] = self;
    filenameCopy = v24;
    v49 = filenameCopy;
    v53 = &v57;
    v28 = dataCopy;
    v50 = v28;
    v54 = v55;
    v29 = _Block_copy(aBlock);
    datasQueue = self->_datasQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769CA97C;
    block[3] = &unk_27A6E3688;
    v44 = &v73;
    block[4] = self;
    v31 = v27;
    v41 = v31;
    v42 = v28;
    v32 = v29;
    v43 = v32;
    v45 = &v57;
    v46 = &v61;
    v47 = &v65;
    dispatch_sync(datasQueue, block);
    if (!v74[5])
    {
      v32[2](v32);
      if (*(v58 + 24) == 1)
      {
        v34 = objc_msgSend_dataWithTemporaryDataStorageURL_digest_hasValidatedDigestMatch_filename_(self, v33, v66[5], v31, 1, filenameCopy);
        v35 = v74[5];
        v74[5] = v34;

        *(v62 + 24) = 1;
      }

      else if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD137C();
      }
    }

    if ((v62[3] & 1) == 0)
    {
      v37 = v66[5];
      if (v37)
      {
        objc_msgSend_removeFileAtURL_(self, v33, v37);
      }
    }

    v36 = v74[5];

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v65, 8);

    _Block_object_dispose(v71, 8);
    _Block_object_dispose(&v73, 8);

    dataCopy = v39;
  }

  else
  {
    v36 = objc_msgSend_null(TSPData, v12, v13);
  }

  return v36;
}

- (id)documentResourceDataForInfo:(id)info withStorage:(id)storage filename:(id)filename
{
  infoCopy = info;
  storageCopy = storage;
  filenameCopy = filename;
  v11 = [TSPDigest alloc];
  v14 = objc_msgSend_digestString(infoCopy, v12, v13);
  v16 = objc_msgSend_initWithDigestString_(v11, v15, v14);

  v18 = objc_msgSend_dataWithStorage_digest_hasValidatedDigestMatch_filename_skipDocumentResourcesLookup_accessorBlock_(self, v17, storageCopy, v16, 0, filenameCopy, 1, 0);

  return v18;
}

- (id)copyData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_storage(dataCopy, v5, v6);
  v10 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  if (objc_msgSend_readOnly(v7, v8, v9))
  {
    goto LABEL_5;
  }

  v15 = objc_msgSend_context(dataCopy, v11, v12);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = objc_msgSend_context(dataCopy, v13, v14);
  v19 = objc_msgSend_context(self, v17, v18);

  if (v16 != v19)
  {
LABEL_5:
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_2769C7DC0;
    v42 = sub_2769C7DD0;
    v43 = 0;
    datasQueue = self->_datasQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769CB0C4;
    block[3] = &unk_27A6E36B0;
    v37 = &v38;
    block[4] = self;
    v21 = dataCopy;
    v35 = v21;
    v36 = v10;
    dispatch_sync(datasQueue, block);
    v24 = v39[5];
    if (!v24)
    {
      v25 = objc_msgSend_context(self, v22, v23);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2769CB258;
      v30[3] = &unk_27A6E36D8;
      v33 = &v38;
      v31 = v21;
      v32 = v25;
      v26 = v25;
      objc_msgSend_performIOChannelReadWithAccessor_(v31, v27, v30);

      v24 = v39[5];
    }

    v28 = v24;

    _Block_object_dispose(&v38, 8);
  }

  else
  {
LABEL_8:
    v28 = dataCopy;
  }

  return v28;
}

- (void)loadFromPackage:(id)package packageURL:(id)l packageMetadata:(id)metadata areExternalReferencesAllowed:(BOOL)allowed dataIdentifiersIndexSet:(id *)set
{
  packageCopy = package;
  lCopy = l;
  metadataCopy = metadata;
  v17 = objc_msgSend_message(metadataCopy, v15, v16);
  v18 = *(v17 + 56);
  if (set)
  {
    v19 = objc_alloc_init(MEMORY[0x277CCAB58]);
  }

  else
  {
    v19 = 0;
  }

  if (v18 >= 1)
  {
    v20 = v17 + 48;
    datasQueue = self->_datasQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769CB4BC;
    block[3] = &unk_27A6E3700;
    v28 = v18;
    v27 = v20;
    block[4] = self;
    block[5] = v19;
    v24 = packageCopy;
    v25 = lCopy;
    v26 = metadataCopy;
    allowedCopy = allowed;
    dispatch_sync(datasQueue, block);
  }

  if (set)
  {
    v22 = v19;
    *set = v19;
  }
}

- (BOOL)prepareSaveWithOldPackage:(id)package saveOperationState:(id)state
{
  packageCopy = package;
  stateCopy = state;
  v10 = stateCopy;
  if (packageCopy)
  {
    v11 = 1;
    if (objc_msgSend_shouldUpdate(stateCopy, v8, v9))
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_2769CBBB4;
      v14[3] = &unk_27A6E3728;
      v15 = v10;
      selfCopy = self;
      v18 = &v19;
      v16 = packageCopy;
      objc_msgSend_enumerateDataUsingBlock_(v16, v12, v14);
      v11 = *(v20 + 24);

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)migrateDataToTemporaryStorageFromPackage:(id)package
{
  packageCopy = package;
  v5 = packageCopy;
  v6 = 1;
  if (packageCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2769CBE4C;
    v9[3] = &unk_27A6E3750;
    selfCopy = self;
    v12 = &v13;
    v10 = packageCopy;
    objc_msgSend_enumerateAllDataUsingBlock_(self, v7, v9);
    v6 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return v6 & 1;
}

- (BOOL)prepareTemporaryDataStorageForData:(id)data temporaryDataStorage:(id *)storage
{
  dataCopy = data;
  v9 = dataCopy;
  if (!storage)
  {
    TSUSetCrashReporterInfo();
    v37 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSPDataManager prepareTemporaryDataStorageForData:temporaryDataStorage:]", "[TSPDataManager prepareTemporaryDataStorageForData:temporaryDataStorage:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm", 768);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v39, v41, 768, 1, "Unexpected NULL argument.");

    TSUCrashBreakpoint();
    abort();
  }

  *storage = 0;
  v10 = objc_msgSend_filename(dataCopy, v7, v8);
  v12 = objc_msgSend_temporaryDataStorageURLForFilename_(self, v11, v10);

  if (v12)
  {
    v15 = objc_msgSend_storage(v9, v13, v14);
    v18 = objc_opt_respondsToSelector();
    if (v18)
    {
      v19 = objc_msgSend_decryptionInfo(v15, v16, v17);
      v22 = objc_msgSend_mutableCryptoInfoCopy(v19, v20, v21);
    }

    else
    {
      v19 = 0;
      v22 = objc_msgSend_mutableCryptoInfoCopy(0, v16, v17);
    }

    v26 = v22;
    if (v18)
    {
    }

    isMissingData = objc_msgSend_isMissingData(v15, v23, v24);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v15, v28, v29))
    {
      v30 = 0;
      v31 = 1;
    }

    else if (objc_msgSend_encodedLength(v15, v28, v29))
    {
      v30 = 0;
      v31 = 0;
      v25 = 0;
      if (!objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(v15, v32, v12, v26, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v31 = 0;
      v30 = 1;
    }

    v33 = [TSPTemporaryDataStorage alloc];
    v35 = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_isMissingOriginalData_isMissingData_isUnmaterializedDueToPartiallyDownloadedDocument_(v33, v34, v12, v26, isMissingData, v30, v31);
    *storage = v35;

    v25 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v25 = 0;
LABEL_18:

  return v25;
}

- (void)didSaveWithSaveOperationState:(id)state
{
  stateCopy = state;
  if (objc_msgSend_shouldUpdate(stateCopy, v5, v6))
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v9 = objc_msgSend_dataObserversConformingToProtocol_(WeakRetained, v8, &unk_28860AA58);

    v12 = objc_msgSend_count(v9, v10, v11);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2769CC3E8;
    v20[3] = &unk_27A6E3778;
    v22 = v12;
    v20[4] = v9;
    v13 = stateCopy;
    v21 = v13;
    objc_msgSend_enumerateDataAndStoragesUsingBlock_(v13, v14, v20);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2769CC680;
    v16[3] = &unk_27A6E37A0;
    v18 = v9;
    v19 = v12;
    v17 = v13;
    objc_msgSend_enumerateRemoteDataUsingBlock_(v17, v15, v16);
  }
}

- (void)addDataFromPackage:(id)package packageURL:(id)l dataInfo:(const void *)info packageMetadata:(id)metadata documentResourceInfo:(id)resourceInfo areExternalReferencesAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  packageCopy = package;
  lCopy = l;
  metadataCopy = metadata;
  resourceInfoCopy = resourceInfo;
  dispatch_assert_queue_V2(self->_datasQueue);
  v18 = [TSPDigest alloc];
  v21 = objc_msgSend_initFromProtobufString_(v18, v19, *(info + 3) & 0xFFFFFFFFFFFFFFFELL);
  if (v21)
  {
    v165 = packageCopy;
    v162 = lCopy;
    v163 = resourceInfoCopy;
    v160 = metadataCopy;
    v161 = v21;
    v164 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v20, *(info + 4) & 0xFFFFFFFFFFFFFFFELL);
    v23 = &qword_276C14018;
    v24 = *(info + 4);
    if ((v24 & 0x20000) != 0)
    {
      v23 = (info + 144);
    }

    if (resourceInfoCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_context);
      v28 = objc_msgSend_resourceContext(WeakRetained, v26, v27);

      v29 = objc_loadWeakRetained(&self->_context);
      v32 = objc_msgSend_ignoreDocumentResourcesWhileReading(v29, v30, v31);
      v169 = 0;
      canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = objc_msgSend_newDataStorageForDocumentResourceInfo_createResourceRequestIfNeeded_error_(v28, v33, v163, v32 ^ 1u, &v169);
      v35 = v169;

      v37 = 0;
      v38 = 0;
      v39 = 0;
      if (canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage)
      {
        goto LABEL_6;
      }

LABEL_67:
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD13A4();
      }

      canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = v39;
      goto LABEL_70;
    }

    if ((v24 & 0x10) != 0)
    {
      v75 = *(info + 7) & 0xFFFFFFFFFFFFFFFELL;
      v76 = *(v75 + 23);
      if (v76 < 0)
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v22, *v75, *(v75 + 8));
      }

      else
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v22, *(info + 7) & 0xFFFFFFFFFFFFFFFELL, v76);
      }
      v87 = ;
      v88 = [TSPExternalReferenceDataStorage alloc];
      v89 = objc_loadWeakRetained(&self->_context);
      canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = objc_msgSend_initWithBookmarkData_context_(v88, v90, v87, v89);

      v38 = !allowedCopy;
      v37 = 0;
      v39 = 0;
LABEL_66:
      v35 = 0;
      if (!canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage)
      {
        goto LABEL_67;
      }

LABEL_6:
      v158 = v35;
      v40 = *(info + 14);
      hasValidatedDigestMatch_filename_lastModificationDate_storage_manager = objc_msgSend_dataForIdentifierImpl_(self, v36, v40);
      if (hasValidatedDigestMatch_filename_lastModificationDate_storage_manager)
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSPDataManager addDataFromPackage:packageURL:dataInfo:packageMetadata:documentResourceInfo:areExternalReferencesAllowed:]");
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 981, 0, "Data with identifier %llu is already defined: %@", v40, hasValidatedDigestMatch_filename_lastModificationDate_storage_manager);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
        objc_msgSend_setFilename_storage_(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v50, v164, canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage);
      }

      else
      {
        v58 = [TSPData alloc];
        v59 = v39;
        if (!v39)
        {
          v59 = objc_msgSend_date(MEMORY[0x277CBEAA8], v56, v57);
        }

        hasValidatedDigestMatch_filename_lastModificationDate_storage_manager = objc_msgSend_initWithIdentifier_digest_hasValidatedDigestMatch_filename_lastModificationDate_storage_manager_(v58, v56, v40, v161, 0, v164, v59, canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage, self);
        if (!v39)
        {
        }

        v61 = *(info + 4);
        if ((v61 & 0x100) != 0)
        {
          v62 = objc_msgSend_newDataAttributesWithMessage_(TSPDataAttributes, v60, *(info + 11));
          objc_msgSend_setUnsafeAttributes_(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v63, v62);

          v61 = *(info + 4);
        }

        if ((v61 & 0x40) != 0)
        {
          v64 = [TSPDigest alloc];
          v66 = objc_msgSend_initFromProtobufString_(v64, v65, *(info + 9) & 0xFFFFFFFFFFFFFFFELL);
          objc_msgSend_setLastMismatchedDigest_(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v67, v66);
        }

        if (v37)
        {
          objc_msgSend_setDelegate_(canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage, v60, hasValidatedDigestMatch_filename_lastModificationDate_storage_manager);
        }

        objc_msgSend_addData_(self, v60, hasValidatedDigestMatch_filename_lastModificationDate_storage_manager);
        if (objc_opt_respondsToSelector())
        {
          v68 = objc_loadWeakRetained(&self->_context);
          v71 = objc_msgSend_delegate(v68, v69, v70);

          if (objc_opt_respondsToSelector())
          {
            isDataUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_isDataUnmaterializedDueToPartiallyDownloadedDocument_(v71, v72, hasValidatedDigestMatch_filename_lastModificationDate_storage_manager);
            objc_msgSend_setIsUnmaterializedDueToPartiallyDownloadedDocument_(canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage, v74, isDataUnmaterializedDueToPartiallyDownloadedDocument);
          }

          else
          {
            objc_msgSend_setIsUnmaterializedDueToPartiallyDownloadedDocument_(canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage, v72, 0);
          }
        }

        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_didInitializeFromDocumentURL_(canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage, v51, v162);
        }

        if (v38)
        {
          objc_msgSend_removeExternalReferenceForData_storage_(self, v51, hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage);
        }

        if (!hasValidatedDigestMatch_filename_lastModificationDate_storage_manager)
        {
          goto LABEL_43;
        }
      }

      objc_msgSend_didReferenceData_(v165, v51, hasValidatedDigestMatch_filename_lastModificationDate_storage_manager);
      v93 = objc_msgSend_metadata(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v91, v92);

      if (!v93)
      {
        v96 = objc_msgSend_identifier(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v94, v95);
        v100 = objc_msgSend_dataMetadataForDataIdentifier_(v160, v97, v96);
        if (v100)
        {
          objc_msgSend_setMetadata_(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v98, v100);
        }

        objc_msgSend_upgradeFallbackColorIfNeeded(hasValidatedDigestMatch_filename_lastModificationDate_storage_manager, v98, v99);
      }

LABEL_43:
      if (v40 >= self->_nextNewIdentifier)
      {
        self->_nextNewIdentifier = v40 + 1;
      }

      v35 = v158;
LABEL_70:

      packageCopy = v165;
      lCopy = v162;
      resourceInfoCopy = v163;
      metadataCopy = v160;
      v21 = v161;
      goto LABEL_71;
    }

    v52 = *v23;
    if ((v24 & 0x20) == 0)
    {
      if ((v24 & 4) != 0)
      {
        v53 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v22, *(info + 5) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v53 = v164;
      }

      v101 = v53;
      v102 = objc_msgSend_decryptionKey(packageCopy, v54, v55);
      v104 = v102;
      v105 = *(info + 4);
      if (v102)
      {
        if ((v105 & 0x200) != 0)
        {
          v106 = sub_276AB6E08(v102, *(info + 12));
        }

        else
        {
          v106 = v102;
        }

        v116 = v106;
      }

      else if ((v105 & 0x200) != 0)
      {
        v117 = MEMORY[0x277D81150];
        v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSPDataManager addDataFromPackage:packageURL:dataInfo:packageMetadata:documentResourceInfo:areExternalReferencesAllowed:]");
        v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v121, v118, v120, 961, 0, "Encryption info should not be set when the document it not encrypted.");

        v116 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123);
      }

      else
      {
        v116 = 0;
      }

      v124 = objc_msgSend_dataEntryPathForFilename_(TSPPackage, v103, v101);
      v166 = 0;
      canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(packageCopy, v125, v124, v116, v52, v162, &v166);
      v39 = v166;

      v37 = 0;
      v38 = 0;
      goto LABEL_66;
    }

    v77 = objc_alloc(MEMORY[0x277CBEBC0]);
    v79 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v78, *(info + 8) & 0xFFFFFFFFFFFFFFFELL);
    v81 = objc_msgSend_initWithString_(v77, v80, v79);

    v84 = *(info + 4);
    if ((v84 & 0x400) != 0)
    {
      v107 = objc_alloc(MEMORY[0x277CCAA78]);
      if (*(info + 13))
      {
        v109 = objc_msgSend_tsp_initWithMessage_(v107, v108, *(info + 13));
      }

      else
      {
        v109 = objc_msgSend_tsp_initWithMessage_(v107, v108, &TSP::_IndexSet_default_instance_);
      }

      v85 = v109;
      if ((*(info + 4) & 0x4000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v85 = 0;
      if ((v84 & 0x4000) == 0)
      {
LABEL_29:
        v86 = 0;
        goto LABEL_55;
      }
    }

    v168 = *(info + 31);
    v86 = sub_276A7BDA8(&v168, v82);
LABEL_55:
    v157 = v86;
    v159 = v85;
    if (*(info + 121) != 1)
    {
      v115 = 0;
      v39 = 0;
      goto LABEL_83;
    }

    v110 = objc_msgSend_decryptionKey(v165, v82, v83);
    v112 = v110;
    v113 = *(info + 4);
    if (v110)
    {
      if ((v113 & 0x200) == 0)
      {
        v114 = v110;
LABEL_77:
        if ((*(info + 16) & 4) != 0)
        {
          v133 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v111, *(info + 5) & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v133 = v164;
        }

        v135 = v133;
        if (!v133)
        {
          v136 = MEMORY[0x277D81150];
          v156 = v112;
          v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, "[TSPDataManager addDataFromPackage:packageURL:dataInfo:packageMetadata:documentResourceInfo:areExternalReferencesAllowed:]");
          v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v140, v137, v139, 931, 0, "invalid nil value for '%{public}s'", "packageFilename");

          v112 = v156;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142);
        }

        v143 = objc_msgSend_dataEntryPathForFilename_(TSPPackage, v134, v135);
        v167 = 0;
        v115 = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(v165, v144, v143, v114, v52, v162, &v167);
        v39 = v167;

LABEL_83:
        v145 = *(info + 38) == 1;
        v148 = objc_msgSend_date(MEMORY[0x277CBEAA8], v82, v83);
        if (*(info + 18))
        {
          v149 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v146, v147, *(info + 17));

          v148 = v149;
        }

        v150 = [TSPRemoteDataStorage alloc];
        v153 = objc_msgSend_decryptionKey(v165, v151, v152);
        canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = objc_msgSend_initWithRemoteURL_unmaterializedRanges_encryptionKey_canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage_(v150, v154, v81, v159, v153, *(info + 120), v145, v157, v148, v52, v115);

        v38 = 0;
        v35 = 0;
        v37 = 1;
        if (!canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      }

      v155 = v110;
      v114 = sub_276AB6E08(v110, *(info + 12));
    }

    else
    {
      if ((v113 & 0x200) == 0)
      {
        v114 = 0;
        goto LABEL_77;
      }

      v155 = 0;
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSPDataManager addDataFromPackage:packageURL:dataInfo:packageMetadata:documentResourceInfo:areExternalReferencesAllowed:]");
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v130, v127, v129, 927, 0, "Encryption info should not be set when the document it not encrypted.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132);
      v114 = 0;
    }

    v112 = v155;
    goto LABEL_77;
  }

LABEL_71:
}

- (void)enumerateAllDataUsingBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = objc_msgSend_allData(self, v4, v5, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v19, 16);
    if (v9)
    {
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * v11), &v18);
        if (v18)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v14, v19, 16);
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)allData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769C7DC0;
  v10 = sub_2769C7DD0;
  v11 = 0;
  datasQueue = self->_datasQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769CD75C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(datasQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSIndexSet)allDataIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  datasQueue = self->_datasQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769CD898;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v7[5] = v3;
  dispatch_sync(datasQueue, v7);
  v5 = v3;

  return v3;
}

- (NSDictionary)identifierToDataMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769C7DC0;
  v10 = sub_2769C7DD0;
  v11 = 0;
  datasQueue = self->_datasQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769CDA00;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(datasQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDictionary)digestToDataMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769C7DC0;
  v10 = sub_2769C7DD0;
  v11 = 0;
  datasQueue = self->_datasQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769CDBC8;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(datasQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)unmaterializedRemoteDataIncludingExpiredUploads:(BOOL)uploads includingDataNotInDocument:(BOOL)document
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2769C7DC0;
  v14 = sub_2769C7DD0;
  v15 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769CDD9C;
  block[3] = &unk_27A6E37C8;
  block[4] = self;
  block[5] = &v10;
  uploadsCopy = uploads;
  documentCopy = document;
  dispatch_sync(datasQueue, block);
  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (NSArray)missingOrUnmaterializedRemoteData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769C7DC0;
  v10 = sub_2769C7DD0;
  v11 = 0;
  datasQueue = self->_datasQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769CDF64;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(datasQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasIncompleteDataIncludeUnmaterialized:(BOOL)unmaterialized includeMissing:(BOOL)missing includeExternalReference:(BOOL)reference
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769CE12C;
  block[3] = &unk_27A6E37F0;
  unmaterializedCopy = unmaterialized;
  block[4] = self;
  block[5] = &v12;
  referenceCopy = reference;
  missingCopy = missing;
  dispatch_sync(datasQueue, block);
  v6 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v6;
}

- (id)dataOrNilForIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2769C7DC0;
  v11 = sub_2769C7DD0;
  v12 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769CE37C;
  block[3] = &unk_27A6E2C28;
  block[4] = self;
  block[5] = &v7;
  block[6] = identifier;
  dispatch_sync(datasQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)dataForIdentifier:(int64_t)identifier
{
  v4 = objc_msgSend_dataOrNilForIdentifier_(self, a2, identifier);
  v7 = v4;
  if (!identifier || v4)
  {
    if (v4)
    {
      v15 = v4;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPDataManager dataForIdentifier:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1204, 0, "No data loaded for identifier: %llu", identifier);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_null(TSPData, v5, v6);
LABEL_7:
  v16 = v15;

  return v16;
}

- (id)dataForIdentifierImpl:(int64_t)impl
{
  implCopy = impl;
  WeakRetained = sub_2769ABC64(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, &implCopy);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    if (!WeakRetained)
    {
      sub_2769D2814(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, v5, v8);
      sub_2769D2950(v8);
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (int)openTemporaryURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (lCopy)
  {
    v7 = objc_msgSend_path(lCopy, v4, v5);
    v8 = v7;
    v11 = objc_msgSend_fileSystemRepresentation(v8, v9, v10);

    v12 = open(v11, 2561, 420);
    if (v12 < 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD13CC();
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)temporaryDataStorageURLForFilename:(id)filename
{
  filenameCopy = filename;
  v7 = objc_msgSend_length(filenameCopy, v5, v6);
  v8 = @"data";
  if (v7)
  {
    v8 = filenameCopy;
  }

  v9 = v8;

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2769C7DC0;
  v21 = sub_2769C7DD0;
  v22 = 0;
  temporaryDirectoryQueue = self->_temporaryDirectoryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769CE8E0;
  block[3] = &unk_27A6E3818;
  block[4] = self;
  v15 = v9;
  v16 = &v17;
  v11 = v9;
  dispatch_sync(temporaryDirectoryQueue, block);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)dataFromExternalReferenceURL:(id)l filename:(id)filename useFileCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  lCopy = l;
  filenameCopy = filename;
  if ((objc_msgSend_isFileURL(lCopy, v10, v11) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDataManager dataFromExternalReferenceURL:filename:useFileCoordination:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1313, 0, "External references must be added from a file URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  selfCopy = self;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_2769C7DC0;
  v50 = sub_2769C7DD0;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_2769C7DC0;
  v44 = sub_2769C7DD0;
  v45 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769CF1A8;
  aBlock[3] = &unk_27A6E3868;
  v38 = &v40;
  v39 = &v46;
  aBlock[4] = selfCopy;
  v21 = selfCopy;
  v36 = v21;
  v22 = filenameCopy;
  v37 = v22;
  v23 = _Block_copy(aBlock);
  v24 = v23;
  if (coordinationCopy)
  {
    v25 = MEMORY[0x277CCA9E8];
    WeakRetained = objc_loadWeakRetained(v21 + 19);
    v29 = objc_msgSend_filePresenter(WeakRetained, v27, v28);
    v30 = (v41 + 5);
    obj = v41[5];
    objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v25, v31, lCopy, 2, 0, v29, &obj, v24);
    objc_storeStrong(v30, obj);
  }

  else
  {
    (*(v23 + 2))(v23, lCopy);
  }

  if (v41[5] && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD13E0();
  }

  v32 = v47[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v32;
}

- (void)removeExternalReferences
{
  objc_msgSend_waitForRemoveExternalReferencesToComplete(self, a2, v2);
  externalReferenceRemovalGroup = self->_externalReferenceRemovalGroup;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769CF544;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_group_async(externalReferenceRemovalGroup, datasQueue, block);
}

- (void)removeExternalReferenceForData:(id)data storage:(id)storage
{
  dataCopy = data;
  storageCopy = storage;
  dispatch_group_enter(self->_externalReferenceRemovalGroup);
  externalReferenceRemovalQueue = self->_externalReferenceRemovalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769CF700;
  block[3] = &unk_27A6E29B0;
  v12 = storageCopy;
  selfCopy = self;
  v14 = dataCopy;
  v9 = dataCopy;
  v10 = storageCopy;
  dispatch_async(externalReferenceRemovalQueue, block);
}

- (id)dataForDigestImpl:(id)impl documentResourceInfo:(id)info skipDocumentResourcesLookup:(BOOL)lookup expectedLength:(unint64_t)length accessorBlock:(id)block
{
  implCopy = impl;
  infoCopy = info;
  blockCopy = block;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = sub_2769C7DC0;
  v89 = sub_2769C7DD0;
  v90 = 0;
  if (!implCopy)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDataManager dataForDigestImpl:documentResourceInfo:skipDocumentResourcesLookup:expectedLength:accessorBlock:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1530, 0, "Invalid parameter not satisfying: %{public}s", "digest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    goto LABEL_29;
  }

  v17 = objc_msgSend_digestData(implCopy, v14, v15);
  v18 = sub_2769D299C(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, v17);
  v19 = v18;
  if (v18)
  {
    WeakRetained = objc_loadWeakRetained(v18 + 5);
    v21 = v86[5];
    v86[5] = WeakRetained;

    v23 = v86[5];
    if (v23)
    {
      if (blockCopy && objc_msgSend_shouldAttemptToMaterializeData_expectedLength_(self, v22, v23, length))
      {
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = sub_2769D0168;
        v84[3] = &unk_27A6E38E0;
        v84[4] = self;
        v84[5] = &v85;
        blockCopy[2](blockCopy, v84);
      }
    }

    else
    {
      sub_2769D2814(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, v19, v91);
      sub_2769D2A64(v91);
    }
  }

  if (!v86[5] && !lookup)
  {
    v31 = objc_loadWeakRetained(&self->_context);
    v34 = objc_msgSend_ignoreDocumentResourcesWhileReading(v31, v32, v33);

    if ((v34 & 1) == 0)
    {
      v35 = objc_loadWeakRetained(&self->_context);
      v38 = objc_msgSend_resourceContext(v35, v36, v37);

      if (!infoCopy)
      {
        v41 = objc_msgSend_documentResourceRegistry(v38, v39, v40);
        v44 = objc_msgSend_digestString(implCopy, v42, v43);
        infoCopy = objc_msgSend_documentResourceInfoForDigestString_locator_(v41, v45, v44, 0);
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_2769D0184;
      aBlock[3] = &unk_27A6E3908;
      aBlock[4] = self;
      infoCopy = infoCopy;
      v82 = infoCopy;
      v83 = implCopy;
      v48 = _Block_copy(aBlock);
      if (!infoCopy)
      {
        goto LABEL_28;
      }

      if (blockCopy)
      {
        v49 = objc_msgSend_documentResourceCache(v38, v46, v47);
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = sub_2769D0218;
        v78[3] = &unk_27A6E3930;
        v78[4] = v38;
        v50 = infoCopy;
        v79 = v50;
        v80 = v48;
        v51 = _Block_copy(v78);
        v53 = objc_msgSend_fileURLForResourceInfo_(v49, v52, v50);
        if (objc_msgSend_checkResourceIsReachableAndReturnError_(v53, v54, 0))
        {
          v55 = v51[2](v51);
          v56 = v86[5];
          v86[5] = v55;
        }

        else
        {
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = sub_2769D032C;
          v74[3] = &unk_27A6E3980;
          v74[4] = v49;
          v76 = v51;
          v77 = &v85;
          v75 = v50;
          blockCopy[2](blockCopy, v74);
        }

        if (!v86[5])
        {
          v60 = objc_msgSend_documentResourceRegistry(v38, v58, v59);
          v62 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v61, v50);
          v64 = objc_msgSend_localStrategyProviderForDocumentResourceInfos_(v60, v63, v62);

          v66 = objc_msgSend_localStrategyForDocumentResourceInfo_(v64, v65, v50);
          v57 = (v66 >> 1) & 1;
          goto LABEL_23;
        }
      }

      else if (!v86[5])
      {
        v57 = 1;
LABEL_23:
        v73 = 0;
        v67 = objc_msgSend_newDataStorageForDocumentResourceInfo_createResourceRequestIfNeeded_error_(v38, v46, infoCopy, v57, &v73);
        v68 = v73;
        if (v67)
        {
          v69 = v48[2](v48, v67);
          v70 = v86[5];
          v86[5] = v69;
        }

        else if (UnsafePointer != -1)
        {
          sub_276BD1408();
        }
      }

LABEL_28:
    }
  }

LABEL_29:
  v71 = v86[5];
  _Block_object_dispose(&v85, 8);

  return v71;
}

- (id)preferredFilenameForDocumentResourceInfo:(id)info
{
  infoCopy = info;
  v6 = objc_msgSend_locator(infoCopy, v4, v5);
  v9 = objc_msgSend_lastPathComponent(v6, v7, v8);
  v12 = objc_msgSend_fileExtension(infoCopy, v10, v11);
  v14 = objc_msgSend_stringByAppendingPathExtension_(v9, v13, v12);

  return v14;
}

- (id)dataForDigest:(id)digest
{
  digestCopy = digest;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2769C7DC0;
  v16 = sub_2769C7DD0;
  v17 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769D0740;
  block[3] = &unk_27A6E2C00;
  v10 = digestCopy;
  v11 = &v12;
  block[4] = self;
  v6 = digestCopy;
  dispatch_sync(datasQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)dataForDocumentResourceInfo:(id)info fromFileURL:(id)l
{
  infoCopy = info;
  lCopy = l;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2769C7DC0;
  v22 = sub_2769C7DD0;
  v23 = 0;
  datasQueue = self->_datasQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2769D08DC;
  v13[3] = &unk_27A6E39D0;
  v14 = lCopy;
  v15 = infoCopy;
  selfCopy = self;
  v17 = &v18;
  v9 = infoCopy;
  v10 = lCopy;
  dispatch_sync(datasQueue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)dataForDigest:(id)digest queue:(id)queue completion:(id)completion
{
  digestCopy = digest;
  queueCopy = queue;
  completionCopy = completion;
  datasQueue = self->_datasQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2769D0B10;
  v15[3] = &unk_27A6E39F8;
  v15[4] = self;
  v16 = digestCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = queueCopy;
  v14 = digestCopy;
  dispatch_async(datasQueue, v15);
}

- (id)dataWithStorage:(id)storage digest:(id)digest hasValidatedDigestMatch:(BOOL)match filename:(id)filename skipDocumentResourcesLookup:(BOOL)lookup accessorBlock:(id)block
{
  storageCopy = storage;
  digestCopy = digest;
  filenameCopy = filename;
  blockCopy = block;
  if (!storageCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPDataManager dataWithStorage:digest:hasValidatedDigestMatch:filename:skipDocumentResourcesLookup:accessorBlock:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1582, 0, "Invalid parameter not satisfying: %{public}s", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (!filenameCopy)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPDataManager dataWithStorage:digest:hasValidatedDigestMatch:filename:skipDocumentResourcesLookup:accessorBlock:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1583, 0, "Invalid parameter not satisfying: %{public}s", "filename");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_2769C7DC0;
  v52 = sub_2769C7DD0;
  v53 = 0;
  datasQueue = self->_datasQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769D0EE0;
  block[3] = &unk_27A6E3A20;
  block[4] = self;
  v41 = digestCopy;
  lookupCopy = lookup;
  v44 = blockCopy;
  v45 = &v48;
  matchCopy = match;
  v42 = storageCopy;
  v43 = filenameCopy;
  v34 = filenameCopy;
  v35 = blockCopy;
  v36 = storageCopy;
  v37 = digestCopy;
  dispatch_sync(datasQueue, block);
  v38 = v49[5];

  _Block_object_dispose(&v48, 8);

  return v38;
}

- (BOOL)shouldAttemptToMaterializeData:(id)data expectedLength:(unint64_t)length
{
  dataCopy = data;
  v9 = objc_msgSend_storage(dataCopy, v7, v8);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v9, v10, v11))
  {
    goto LABEL_3;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_needsDownload(v9, v13, v14) & 1) != 0 || !objc_msgSend_encodedLength(v9, v13, v14) || objc_msgSend_length(v9, v15, v16) < length)
  {
    LOBYTE(v12) = 1;
    goto LABEL_9;
  }

  v20 = objc_msgSend_packageLocator(v9, v17, v18);
  if (v20)
  {

LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v24 = objc_msgSend_documentMetadata(WeakRetained, v22, v23);
    v12 = objc_msgSend_validateDataDigestWithReason_options_documentMetadata_error_(dataCopy, v25, @"deduping", 1, v24, 0) ^ 1;

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_13;
  }

LABEL_3:
  LOBYTE(v12) = 0;
LABEL_9:

  return v12;
}

- (BOOL)attemptToMaterializeData:(id)data dataURL:(id)l dataURLType:(int64_t)type
{
  dataCopy = data;
  lCopy = l;
  if (lCopy)
  {
    v13 = objc_msgSend_storage(dataCopy, v10, v11);
    if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_needsDownload(v13, v14, v15))
    {
      if (!objc_msgSend_conformsToProtocol_(v13, v14, &unk_2885F02A8))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v83 = dispatch_semaphore_create(0);
          v84 = dispatch_get_global_queue(0, 0);
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = sub_2769D18AC;
          v100[3] = &unk_27A6E3A70;
          v85 = v83;
          v101 = v85;
          objc_msgSend_didReceiveRemoteDataAtURL_canMove_decryptionInfo_completionQueue_completion_(dataCopy, v86, lCopy, 0, 0, v84, v100);

          dispatch_semaphore_wait(v85, 0xFFFFFFFFFFFFFFFFLL);
        }

        goto LABEL_28;
      }

      v16 = dispatch_semaphore_create(0);
      v98 = objc_msgSend_digestString(dataCopy, v17, v18);
      v21 = objc_msgSend_documentResourceLocator(v13, v19, v20);
      v24 = objc_msgSend_context(dataCopy, v22, v23);
      v27 = objc_msgSend_resourceContext(v24, v25, v26);

      v30 = objc_msgSend_documentResourceRegistry(v27, v28, v29);
      v32 = objc_msgSend_documentResourceInfoForDigestString_locator_(v30, v31, v98, v21);

      if (!v32)
      {
        v35 = [TSPDocumentResourceInfo alloc];
        v38 = objc_msgSend_filename(dataCopy, v36, v37);
        v41 = objc_msgSend_pathExtension(v38, v39, v40);
        v32 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v35, v42, v98, v21, v41, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
      }

      v43 = objc_msgSend_documentResourceCache(v27, v33, v34);
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = sub_2769D17E0;
      v102[3] = &unk_27A6E3A48;
      v102[4] = v16;
      objc_msgSend_cacheResourceAtURL_forInfo_copy_completionQueue_completionHandler_(v43, v44, lCopy, v32, 1, 0, v102);

      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_27;
    }

    if (type <= 1)
    {
      if (!type)
      {
        v69 = MEMORY[0x277D81150];
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDataManager attemptToMaterializeData:dataURL:dataURLType:]");
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v73, v70, v72, 1712, 0, "Type should be known if the URL is defined.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
LABEL_28:
        v5 = 0;
        goto LABEL_29;
      }

      if (type == 1)
      {
        v45 = objc_msgSend_filename(dataCopy, v14, v15);
        v16 = objc_msgSend_temporaryDataStorageURLForFilename_(self, v46, v45);

        if (v16)
        {
          v49 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v47, v48);
          v99 = 0;
          v51 = objc_msgSend_copyItemAtURL_toURL_error_(v49, v50, lCopy, v16, &v99);
          v52 = v99;

          if (v51)
          {
            v53 = [TSPTemporaryDataStorage alloc];
            v55 = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_(v53, v54, v16, 0);
            objc_msgSend_setStorage_(dataCopy, v56, v55);
            objc_msgSend_resetLastValidationResult(dataCopy, v57, v58);
            objc_msgSend_didReplaceDataContents(dataCopy, v59, v60);
          }

          else if (*MEMORY[0x277D81408] != -1)
          {
            sub_276BD146C();
          }
        }

LABEL_27:

        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_30;
    }

    if (type == 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v88 = objc_opt_class();
        v97 = NSStringFromClass(v88);
        TSUSetCrashReporterInfo();

        v89 = MEMORY[0x277D81150];
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TSPDataManager attemptToMaterializeData:dataURL:dataURLType:]", "[TSPDataManager attemptToMaterializeData:dataURL:dataURLType:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm", 1691, v97);
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
        v94 = objc_opt_class();
        v95 = NSStringFromClass(v94);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v96, v91, v93, 1691, 1, "Unexpected temporary data storage URL class: %{public}@", v95);

        TSUCrashBreakpoint();
        abort();
      }

      v76 = [TSPTemporaryDataStorage alloc];
      v63 = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_(v76, v77, lCopy, 0);
      objc_msgSend_setStorage_(dataCopy, v78, v63);
      objc_msgSend_resetLastValidationResult(dataCopy, v79, v80);
      objc_msgSend_didReplaceDataContents(dataCopy, v81, v82);
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_29;
      }

      v61 = [TSPExternalReferenceDataStorage alloc];
      v63 = objc_msgSend_initWithURL_(v61, v62, lCopy);
      objc_msgSend_setStorage_(dataCopy, v64, v63);
      objc_msgSend_resetLastValidationResult(dataCopy, v65, v66);
      objc_msgSend_didReplaceDataContents(dataCopy, v67, v68);
    }

    v5 = 1;
    goto LABEL_29;
  }

  v5 = 0;
LABEL_30:

  return v5 & 1;
}

- (void)addData:(id)data
{
  v70 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v67[0] = objc_msgSend_identifier(dataCopy, v5, v6);
  v7 = sub_2769ABC64(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, v67);
  if (v7 && (WeakRetained = objc_loadWeakRetained(v7 + 3), (v11 = WeakRetained) != 0))
  {
    if (WeakRetained != dataCopy)
    {
      v12 = v67[0];
      v13 = objc_msgSend_storage(dataCopy, v9, v10);
      v65 = objc_msgSend_storage(v11, v14, v15);
      v64 = v12;
      TSUSetCrashReporterInfo();

      v16 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPDataManager addData:]", "[TSPDataManager addData:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm", 1751, v64, dataCopy, v13, v11, v65);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      v21 = v67[0];
      v24 = objc_msgSend_storage(dataCopy, v22, v23);
      v27 = objc_msgSend_storage(v11, v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v28, v18, v20, 1751, 1, "Should not have two TSPData instances with the same identifier %llu: %@ (%@) and %@ (%@).", v21, dataCopy, v24, v11, v27);

      TSUCrashBreakpoint();
      goto LABEL_5;
    }
  }

  else
  {
    *&v68 = v67;
    v29 = sub_2769D2AB0(&self->_identifierToDataMap.__table_.__bucket_list_.__ptr_, v67);
    objc_storeWeak(v29 + 3, dataCopy);
    v11 = 0;
  }

  v68 = 0uLL;
  v69 = 0;
  v30 = objc_msgSend_digest(dataCopy, v9, v10);
  v33 = objc_msgSend_digestData(v30, v31, v32);
  v34 = *v33;
  v69 = *(v33 + 16);
  v68 = v34;

  v35 = sub_2769D299C(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, &v68);
  if (!v35)
  {

    goto LABEL_12;
  }

  v36 = objc_loadWeakRetained(v35 + 5);

  if (!v36)
  {
LABEL_12:
    v67[2] = &v68;
    v40 = sub_2769D2D0C(&self->_digestToDataMap.__table_.__bucket_list_.__ptr_, &v68);
    objc_storeWeak(v40 + 5, dataCopy);
    v39 = 0;
    goto LABEL_13;
  }

  if (v36 != dataCopy)
  {
    v43 = objc_msgSend_digestString(dataCopy, v37, v38);
    v46 = objc_msgSend_storage(dataCopy, v44, v45);
    v66 = objc_msgSend_storage(v36, v47, v48);
    TSUSetCrashReporterInfo();

    v49 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSPDataManager addData:]", "[TSPDataManager addData:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm", 1760, v43, dataCopy, v46, v36, v66);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
    v56 = objc_msgSend_digestString(dataCopy, v54, v55);
    v59 = objc_msgSend_storage(dataCopy, v57, v58);
    v62 = objc_msgSend_storage(v36, v60, v61);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v63, v51, v53, 1760, 1, "Should not have two TSPData instances with the same digest %{public}@: %@ (%@) and %@ (%@).", v56, dataCopy, v59, v36, v62);

    TSUCrashBreakpoint();
LABEL_5:
    abort();
  }

  v39 = v36;
LABEL_13:
  if (self->_hasExternalReferences)
  {
    self->_hasExternalReferences = 1;
  }

  else
  {
    v41 = objc_msgSend_storage(dataCopy, v37, v38);
    objc_opt_class();
    self->_hasExternalReferences = objc_opt_isKindOfClass() & 1;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (NSSet)dataWarnings
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v6 = objc_msgSend_delegate(WeakRetained, v4, v5);

  if (objc_opt_respondsToSelector())
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2769D21E4;
    v13[3] = &unk_27A6E3A98;
    v13[4] = v9;
    v13[5] = v6;
    objc_msgSend_enumerateAllDataUsingBlock_(self, v10, v13);
    v11 = v9;
  }

  else
  {
    v11 = objc_msgSend_set(MEMORY[0x277CBEB98], v7, v8);
  }

  return v11;
}

- (void)removeFileAtURL:(id)l
{
  lCopy = l;
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5);
  if (UnsafePointer != -1)
  {
    sub_276BD14BC();
  }

  v11 = 0;
  v8 = objc_msgSend_removeItemAtURL_error_(v7, v6, lCopy, &v11);
  v10 = v11;
  if ((v8 & 1) == 0 && objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v9, 0) && UnsafePointer != -1)
  {
    sub_276BD14D0();
  }
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end