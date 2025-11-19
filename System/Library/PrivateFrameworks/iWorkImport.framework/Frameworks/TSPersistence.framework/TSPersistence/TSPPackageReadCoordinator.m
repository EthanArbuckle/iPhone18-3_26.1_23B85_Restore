@interface TSPPackageReadCoordinator
- (BOOL)endReading;
- (BOOL)p_validateComponent:(id)a3 error:(id *)a4;
- (BOOL)p_validateData:(id)a3 timing:(int64_t)a4 documentMetadata:(id)a5 scanForOSLikeCorruption:(BOOL)a6 error:(id *)a7;
- (BOOL)readComponentIfNeededAsync:(id)a3;
- (TSPPackageReadCoordinator)init;
- (TSPPackageReadCoordinator)initWithContext:(id)a3 package:(id)a4 packageURL:(id)a5 finalizeHandlerQueue:(id)a6 areExternalDataReferencesAllowed:(BOOL)a7 skipDocumentUpgrade:(BOOL)a8 documentLoadValidationPolicy:(id)a9;
- (id).cxx_construct;
- (id)context;
- (id)externalObjectForIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isReadFinished:(BOOL)a5;
- (id)newObjectUUIDForObjectIdentifier:(int64_t)a3;
- (id)p_allComponentsInPackage;
- (id)p_allDataInPackage;
- (id)readPackageMetadataWithError:(id *)a3;
- (id)reader:(id)a3 wantsDataForIdentifier:(int64_t)a4;
- (id)unarchivedObjectForIdentifier:(int64_t)a3 isReadFinished:(BOOL)a4;
- (int64_t)reader:(id)a3 wantsObjectIdentifierForUUID:(id)a4;
- (unint64_t)fileFormatVersionFromMetadataMessage:(const void *)a3;
- (void)dealloc;
- (void)didReadObjects:(id)a3 forComponent:(id)a4 packageIdentifier:(unsigned __int8)a5;
- (void)didUpdateLazyReferenceDelegate:(id)a3;
- (void)p_readComponent:(id)a3 additionalComponents:(id)a4 upgradeMode:(int64_t)a5 completionQueue:(id)a6 completion:(id)a7;
- (void)persistedObjectUUIDMap:(id)a3 foundDuplicateUUID:(id)a4 firstObjectLocation:(TSPObjectLocation)a5 secondObjectLocation:(TSPObjectLocation)a6;
- (void)postprocessMetadata:(id)a3;
- (void)prepareForDocumentUpgradeWithMode:(int64_t)a3;
- (void)prepareForDocumentUpgradeWithModeImpl:(int64_t)a3;
- (void)prepareToReadComponentWithIdentifier:(int64_t)a3 forObjectIdentifier:(int64_t)a4 isWeakReference:(BOOL)a5 queue:(id)a6 completion:(id)a7;
- (void)preprocessMetadata:(id)a3;
- (void)readComponent:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)readComponentAsync:(id)a3;
- (void)readExternalReferenceComponentIfNeededAsyncForObjectIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isWeak:(BOOL)a5 fromComponent:(id)a6;
- (void)readPackageMetadataWithComponent:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)readRootObjectWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)reader:(id)a3 didResetObjectIdentifierForObject:(id)a4 originalObjectIdentifier:(int64_t)a5;
- (void)reader:(id)a3 didResetObjectUUID:(id)a4 forObjectIdentifier:(int64_t)a5 originalObjectUUID:(id)a6;
- (void)tearDown;
- (void)updateObjectContextForSuccessfulRead;
- (void)validateDocumentWithOptions:(unint64_t)a3 timing:(int64_t)a4 completion:(id)a5;
@end

@implementation TSPPackageReadCoordinator

- (TSPPackageReadCoordinator)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageReadCoordinator init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 224, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageReadCoordinator init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageReadCoordinator)initWithContext:(id)a3 package:(id)a4 packageURL:(id)a5 finalizeHandlerQueue:(id)a6 areExternalDataReferencesAllowed:(BOOL)a7 skipDocumentUpgrade:(BOOL)a8 documentLoadValidationPolicy:(id)a9
{
  v14 = a3;
  v61 = a4;
  v62 = a5;
  v60 = a6;
  v59 = a9;
  if (!v14)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPackageReadCoordinator initWithContext:package:packageURL:finalizeHandlerQueue:areExternalDataReferencesAllowed:skipDocumentUpgrade:documentLoadValidationPolicy:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 228, 0, "Invalid parameter not satisfying: %{public}s", "context != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v63.receiver = self;
  v63.super_class = TSPPackageReadCoordinator;
  v23 = [(TSPReadCoordinatorBase *)&v63 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_context, v14);
    v27 = objc_msgSend_documentUUID(v14, v25, v26);
    v30 = objc_msgSend_copy(v27, v28, v29);
    documentUUID = v24->_documentUUID;
    v24->_documentUUID = v30;

    objc_storeStrong(&v24->_package, a4);
    v34 = objc_msgSend_copy(v62, v32, v33);
    packageURL = v24->_packageURL;
    v24->_packageURL = v34;

    objc_storeStrong(&v24->_finalizeHandlerQueue, a6);
    v24->_areExternalDataReferencesAllowed = a7;
    v24->_skipDocumentUpgrade = a8;
    objc_storeStrong(&v24->_documentLoadValidationPolicy, a9);
    v36 = dispatch_group_create();
    completionGroup = v24->_completionGroup;
    v24->_completionGroup = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("TSPPackageReadCoordinator.IO", v38);
    ioQueue = v24->_ioQueue;
    v24->_ioQueue = v39;

    v41 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v42 = dispatch_queue_create("TSPPackageReadCoordinator.IOCompletion", v41);
    ioCompletionQueue = v24->_ioCompletionQueue;
    v24->_ioCompletionQueue = v42;

    v44 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v45 = dispatch_queue_create("TSPPackageReadCoordinator.ReadCompletion", v44);
    readCompletionQueue = v24->_readCompletionQueue;
    v24->_readCompletionQueue = v45;

    v47 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v48 = dispatch_queue_create("TSPPackageReadCoordinator.Components", v47);
    componentQueue = v24->_componentQueue;
    v24->_componentQueue = v48;

    v50 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v51 = dispatch_queue_create("TSPPackageReadCoordinator.Objects", v50);
    objectQueue = v24->_objectQueue;
    v24->_objectQueue = v51;

    v55 = objc_msgSend_newTspStrongObjectsMapTable(MEMORY[0x277CCAB00], v53, v54);
    objects = v24->_objects;
    v24->_objects = v55;
  }

  return v24;
}

- (void)dealloc
{
  if (self->_objects)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageReadCoordinator dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 261, 0, "Package read coordinator was not torn down.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10.receiver = self;
  v10.super_class = TSPPackageReadCoordinator;
  [(TSPPackageReadCoordinator *)&v10 dealloc];
}

- (void)tearDown
{
  completionGroup = self->_completionGroup;
  objectQueue = self->_objectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A6AF98;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_group_notify(completionGroup, objectQueue, block);
}

- (BOOL)endReading
{
  v3 = objc_autoreleasePoolPush();
  if (objc_msgSend_success(self, v4, v5) && objc_msgSend_resolveExternalReferences(self, v6, v7))
  {
    objc_msgSend_setLazyReferencesDelegateToObjectContext(self, v6, v7);
    objects = self->_objects;
    v11 = objc_msgSend_packageIdentifier(self, v9, v10);
    v13 = objc_msgSend_objectIdentifierForPackageIdentifier_(TSPObjectContainer, v12, v11);
    v15 = objc_msgSend_tsp_objectForIdentifier_(objects, v14, v13);
    objectContainer = self->_objectContainer;
    self->_objectContainer = v15;

    v17 = self->_objects;
    v20 = objc_msgSend_metadataObjectIdentifier(self, v18, v19);
    v22 = objc_msgSend_tsp_objectForIdentifier_(v17, v21, v20);
    metadataObject = self->_metadataObject;
    self->_metadataObject = v22;
  }

  v24 = objc_msgSend_success(self, v6, v7);
  objc_autoreleasePoolPop(v3);
  return v24;
}

- (void)didUpdateLazyReferenceDelegate:(id)a3
{
  v4 = a3;
  if (atomic_load(&self->_upgradeMode))
  {
    v22 = v4;
    v8 = objc_msgSend_tsp_identifier(v4, v5, v6);
    v12 = objc_msgSend_tsp_objectForIdentifier_(self->_objects, v9, v8);
    if (v12)
    {
      objc_msgSend_retainObject_(v22, v10, v12);
      objc_msgSend_resetIdentifierFromCopy_(v22, v13, 0);
    }

    else if (!objc_msgSend_ownershipMode(v22, v10, v11))
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPackageReadCoordinator didUpdateLazyReferenceDelegate:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 300, 0, "Object with identifier %llu should have been loaded.", v8);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v4 = v22;
  }
}

- (void)readRootObjectWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A6B414;
  aBlock[3] = &unk_27A6E4B68;
  v8 = v6;
  v26 = v8;
  v9 = v7;
  v27 = v9;
  v10 = _Block_copy(aBlock);
  v11 = dispatch_get_global_queue(0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v15 = objc_msgSend_componentManager(WeakRetained, v13, v14);
  v18 = objc_msgSend_packageMetadataComponent(v15, v16, v17);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_276A6B534;
  v22[3] = &unk_27A6E5538;
  v22[4] = self;
  v19 = v10;
  v24 = v19;
  v22[5] = WeakRetained;
  v22[6] = v15;
  v20 = v11;
  v23 = v20;
  objc_msgSend_readPackageMetadataWithComponent_completionQueue_completion_(self, v21, v18, v20, v22);
}

- (void)readComponent:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276A6BE08;
  v11[3] = &unk_27A6E5560;
  v12 = v8;
  v9 = v8;
  objc_msgSend_p_readComponent_completionQueue_completion_(self, v10, a3, a4, v11);
}

- (void)p_readComponent:(id)a3 additionalComponents:(id)a4 upgradeMode:(int64_t)a5 completionQueue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  completionGroup = self->_completionGroup;
  componentQueue = self->_componentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A6C06C;
  block[3] = &unk_27A6E5588;
  block[4] = self;
  v17 = v12;
  v27 = v17;
  v28 = v13;
  v29 = a5;
  v18 = v13;
  v19 = a6;
  dispatch_group_async(completionGroup, componentQueue, block);
  v20 = self->_completionGroup;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276A6C224;
  v23[3] = &unk_27A6E55B0;
  v23[4] = self;
  v24 = v17;
  v25 = v14;
  v21 = v14;
  v22 = v17;
  dispatch_group_notify(v20, v19, v23);
}

- (BOOL)readComponentIfNeededAsync:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPPackageReadCoordinator readComponentIfNeededAsync:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 491, 0, "Invalid parameter not satisfying: %{public}s", "component");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_identifier(v5, v3, v4);
  sub_276A51254();
}

- (void)readComponentAsync:(id)a3
{
  v4 = a3;
  completionGroup = self->_completionGroup;
  ioQueue = self->_ioQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A6C7F0;
  v8[3] = &unk_27A6E2898;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_async(completionGroup, ioQueue, v8);
}

- (void)didReadObjects:(id)a3 forComponent:(id)a4 packageIdentifier:(unsigned __int8)a5
{
  v8 = a3;
  v11 = a4;
  persistedUUIDMap = self->_persistedUUIDMap;
  if (persistedUUIDMap)
  {
    LOBYTE(persistedUUIDMap) = objc_msgSend_fileFormatVersion(self, v9, v10) < 0xB000100000000;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_276A6CF7C;
  v25 = &unk_27A6E5628;
  v29 = persistedUUIDMap;
  v26 = self;
  v13 = v11;
  v30 = a5;
  v27 = v13;
  v28 = &v31;
  objc_msgSend_tsp_enumerateIdentifiersAndObjectsUsingBlock_(v8, v14, &v22);
  if (*(v32 + 24) == 1)
  {
    objects = self->_objects;
    v18 = objc_msgSend_identifier(v13, v15, v16, v22, v23, v24, v25, v26);
    v20 = objc_msgSend_tsp_objectForIdentifier_(objects, v19, v18);
    objc_msgSend_willModifyForUpgradeWithOptions_(v20, v21, 2);
  }

  _Block_object_dispose(&v31, 8);
}

- (void)readExternalReferenceComponentIfNeededAsyncForObjectIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isWeak:(BOOL)a5 fromComponent:(id)a6
{
  objectQueue = self->_objectQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A6D784;
  v7[3] = &unk_27A6E5678;
  v7[4] = self;
  v7[5] = a3;
  v8 = a5;
  v7[6] = a4;
  dispatch_sync(objectQueue, v7);
}

- (void)prepareToReadComponentWithIdentifier:(int64_t)a3 forObjectIdentifier:(int64_t)a4 isWeakReference:(BOOL)a5 queue:(id)a6 completion:(id)a7
{
  v11 = a6;
  v12 = a7;
  dispatch_group_enter(self->_completionGroup);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A6DAD4;
  block[3] = &unk_27A6E56C8;
  v16 = v11;
  v17 = self;
  v20 = a5;
  v18 = v12;
  v19 = a3;
  v13 = v12;
  v14 = v11;
  dispatch_async(v14, block);
}

- (void)readPackageMetadataWithComponent:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  cachedMetadata = self->_cachedMetadata;
  if (cachedMetadata)
  {
    v13 = cachedMetadata;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A6DEEC;
    block[3] = &unk_27A6E2C78;
    v19 = v13;
    v20 = v11;
    v14 = v13;
    dispatch_async(v9, block);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_276A6DF04;
    v16[3] = &unk_27A6E4B68;
    v16[4] = self;
    v17 = v10;
    objc_msgSend_p_readComponent_completionQueue_completion_(self, v15, v8, v9, v16);
  }
}

- (id)readPackageMetadataWithError:(id *)a3
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_276A6E490;
  v58 = sub_276A6E4A0;
  v59 = self->_cachedMetadata;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_276A6E490;
  v52 = sub_276A6E4A0;
  v53 = 0;
  if (!v55[5])
  {
    v7 = dispatch_semaphore_create(0);
    v10 = objc_msgSend_packageIdentifier(self->_package, v8, v9);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v14 = objc_msgSend_componentManager(WeakRetained, v12, v13);
    v17 = objc_msgSend_packageMetadataComponent(v14, v15, v16);

    if (!v17)
    {
      v19 = [TSPComponent alloc];
      v17 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(v19, v20, 0, 2, @"Metadata", v10);
    }

    v23 = objc_msgSend_packageEntryInfoForComponentLocator_isStoredOutsideObjectArchive_(self->_package, v18, @"Metadata", 0);
    if (!v23)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPPackageReadCoordinator readPackageMetadataWithError:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 784, 0, "invalid nil value for '%{public}s'", "packageEntryInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    }

    if (!objc_msgSend_encodedLength(v17, v21, v22) || v10 == 1)
    {
      v33 = objc_msgSend_encodedLength(v23, v31, v32);
      v36 = objc_msgSend_lastModificationDate(v23, v34, v35);
      objc_msgSend_setEncodedLength_lastModificationDate_(v17, v37, v33, v36);
    }

    v38 = dispatch_get_global_queue(0, 0);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_276A6E4A8;
    v44[3] = &unk_27A6E56F0;
    v46 = &v54;
    v47 = &v48;
    v39 = v7;
    v45 = v39;
    objc_msgSend_readPackageMetadataWithComponent_completionQueue_completion_(self, v40, v17, v38, v44);

    dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
    if (a3 && !v55[5])
    {
      v42 = v49[5];
      if (v42)
      {
        *a3 = v42;
      }

      else
      {
        v43 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v41, 0);
        *a3 = v43;
      }
    }
  }

  v5 = v55[5];
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);

  return v5;
}

- (id)newObjectUUIDForObjectIdentifier:(int64_t)a3
{
  v4 = objc_msgSend_baseObjectUUID(self, a2, a3);
  v5 = sub_2769DD85C(v4, 3, a3, 0);

  if (!v5)
  {
    TSUSetCrashReporterInfo();
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPPackageReadCoordinator newObjectUUIDForObjectIdentifier:]", "[TSPPackageReadCoordinator newObjectUUIDForObjectIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm", 807);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 807, 1, "New object UUID should not be nil.");

    TSUCrashBreakpoint();
    abort();
  }

  return v5;
}

- (unint64_t)fileFormatVersionFromMetadataMessage:(const void *)a3
{
  if (a3 && (v4 = *(a3 + 30), v3 = a3 + 120, v4 >= 1))
  {

    return UnsafePointer(v3, a2);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v9 = objc_msgSend_documentProperties(WeakRetained, v7, v8);
    v12 = objc_msgSend_fileFormatVersion(v9, v10, v11);

    return v12;
  }
}

- (void)preprocessMetadata:(id)a3
{
  v6 = a3;
  if (self->_cachedMetadata)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPPackageReadCoordinator preprocessMetadata:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 821, 0, "expected nil value for '%{public}s'", "_cachedMetadata");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objc_storeStrong(&self->_cachedMetadata, a3);
  v17 = objc_msgSend_message(v6, v14, v15);
  if (v17)
  {
    v18 = objc_msgSend_fileFormatVersionFromMetadataMessage_(self, v16, v17);
    objc_msgSend_didReadFileFormatVersion_(self->_package, v19, v18);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    objc_msgSend_setLastObjectIdentifier_(WeakRetained, v21, *(v17 + 184));
    v23 = UnsafePointer(v17 + 72, v22);
    self->_readVersion = v23;
    objc_msgSend_didReadDocumentReadVersion_(self->_package, v24, v23);
    v26 = UnsafePointer(v17 + 96, v25);
    self->_losesDataOnWrite = sub_276AC087C(v26);
    if (!self->_packageURL)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPPackageReadCoordinator preprocessMetadata:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 841, 0, "invalid nil value for '%{public}s'", "_packageURL");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    if (objc_msgSend_packageIdentifier(self->_package, v27, v28) == 1)
    {
      v38 = objc_msgSend_dataManager(WeakRetained, v36, v37);
      package = self->_package;
      packageURL = self->_packageURL;
      areExternalDataReferencesAllowed = self->_areExternalDataReferencesAllowed;
      v86 = 0;
      objc_msgSend_loadFromPackage_packageURL_packageMetadata_areExternalReferencesAllowed_dataIdentifiersIndexSet_(v38, v42, package, packageURL, v6, areExternalDataReferencesAllowed, &v86);
      v43 = v86;

      v48 = objc_msgSend_dataReferenceMap(WeakRetained, v44, v45);
      v49 = v43;
      if (!v43)
      {
        v49 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v46, v47);
      }

      objc_msgSend_setInitialDataIdentifiersInDocumentIndexSet_(v48, v46, v49);
      if (!v43)
      {
      }
    }

    else
    {
      v43 = objc_msgSend_dataManager(WeakRetained, v36, v37);
      objc_msgSend_loadFromPackage_packageURL_packageMetadata_areExternalReferencesAllowed_dataIdentifiersIndexSet_(v43, v50, self->_package, self->_packageURL, v6, self->_areExternalDataReferencesAllowed, 0);
    }

    if (*(v17 + 16))
    {
      v54 = *(v17 + 168);
      v55 = *(v54 + 16);
      if ((v55 & 4) != 0)
      {
        v53 = *(v54 + 40);
      }

      else if ((v55 & 2) != 0)
      {
        v53 = *(v54 + 32);
        if (v53 != v53)
        {
          v79 = MEMORY[0x277D81150];
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSPPackageReadCoordinator preprocessMetadata:]");
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v83, v80, v82, 860, 0, "Document revision sequence overflown: %llu", *(v54 + 32));

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
          v55 = *(v54 + 16);
        }
      }

      else
      {
        v53 = 0;
      }

      if (v55)
      {
        v56 = objc_alloc(MEMORY[0x277CCACA8]);
        v58 = objc_msgSend_tsp_initWithProtobufString_(v56, v57, *(v54 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v59 = objc_alloc(MEMORY[0x277CCAD78]);
        v61 = objc_msgSend_initWithUUIDString_(v59, v60, v58);

        if (v61)
        {
LABEL_24:
          v72 = [TSPDocumentRevision alloc];
          v74 = objc_msgSend_initWithSequence_identifier_(v72, v73, v53, v61);
          documentRevision = self->_documentRevision;
          self->_documentRevision = v74;

          self->_saveToken = *(v17 + 192);
          v78 = *(v17 + 200);
          if (v78 == 1)
          {
            self->_preferredPackageType = 1;
            if (objc_msgSend_packageType(self->_package, v76, v77) != 2)
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v78 == 2)
          {
LABEL_29:
            self->_preferredPackageType = v78;
            goto LABEL_30;
          }

          v78 = 0;
          goto LABEL_29;
        }
      }

      if (v53)
      {
        v62 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSPPackageReadCoordinator preprocessMetadata:]");
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v66, v63, v65, 869, 0, "Document revision identifier should have been defined because sequence is not zero.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68);
      }
    }

    else
    {
      v53 = 0;
    }

    v69 = objc_msgSend_documentProperties(self->_package, v51, v52);
    v61 = objc_msgSend_versionUUID(v69, v70, v71);

    goto LABEL_24;
  }

LABEL_31:
}

- (void)postprocessMetadata:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_message(v4, v5, v6);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v11 = objc_msgSend_componentManager(WeakRetained, v9, v10);

    objc_msgSend_loadFromPackage_metadata_(v11, v12, self->_package, v4);
    if (objc_msgSend_packageIdentifier(self->_package, v13, v14) == 1)
    {
      v15 = [TSPWrittenComponentMetadataDictionary alloc];
      v17 = objc_msgSend_initWithCapacity_(v15, v16, *(v7 + 152) + *(v7 + 32));
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 0;
      v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_276A6F00C;
      v43[3] = &unk_27A6E5718;
      v44 = 1;
      v43[4] = v17;
      v43[5] = v18;
      v43[6] = v19;
      v43[7] = &v45;
      objc_msgSend_enumerateComponents_(v11, v20, v43);
      v21 = [TSPPersistedObjectUUIDMap alloc];
      isLoadingDocument_objectReferenceMap_delegate = objc_msgSend_initWithComponentObjectUUIDMapDictionary_objectUUIDCount_isLoadingDocument_objectReferenceMap_delegate_(v21, v22, v17, v46[3], 1, 0, self);
      persistedUUIDMap = self->_persistedUUIDMap;
      self->_persistedUUIDMap = isLoadingDocument_objectReferenceMap_delegate;

      if (objc_msgSend_count(self->_duplicatedUUIDs, v25, v26))
      {
        v29 = objc_msgSend_fileFormatVersion(self, v27, v28);
        if (v29 >= UnsafePointer())
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSPPackageReadCoordinator postprocessMetadata:]");
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 935, 0, "We should not encounter a document with duplicated UUIDs that was saved in the current version of the app.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
        }

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_276A6F208;
        v42[3] = &unk_27A6E5768;
        v42[4] = self;
        objc_msgSend_enumerateComponents_(v11, v30, v42);
      }

      featureIdentifiers = self->_featureIdentifiers;
      self->_featureIdentifiers = v18;
      v39 = v18;

      unsupportedFeatureIdentifiers = self->_unsupportedFeatureIdentifiers;
      self->_unsupportedFeatureIdentifiers = v19;
      v41 = v19;

      _Block_object_dispose(&v45, 8);
    }
  }
}

- (void)updateObjectContextForSuccessfulRead
{
  if (objc_msgSend_packageIdentifier(self->_package, a2, v2) == 1)
  {
    if (!self->_persistedUUIDMap)
    {
      TSUSetCrashReporterInfo();
      v11 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPPackageReadCoordinator updateObjectContextForSuccessfulRead]", "[TSPPackageReadCoordinator updateObjectContextForSuccessfulRead]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm", 967, "_persistedUUIDMap");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v17, v14, 967, 1, "invalid nil value for '%{public}s'", "_persistedUUIDMap");

      TSUCrashBreakpoint();
      abort();
    }

    begin = self->_persistedUUIDMapOperations.__begin_;
    end = self->_persistedUUIDMapOperations.__end_;
    while (begin != end)
    {
      v6 = *begin++;
      (*(*v6 + 24))(v6, self->_persistedUUIDMap);
    }

    sub_276A6F644(&self->_persistedUUIDMapOperations.__begin_);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v9 = objc_msgSend_objectUUIDMap(WeakRetained, v7, v8);
    objc_msgSend_setPersistedUUIDMap_(v9, v10, self->_persistedUUIDMap);
  }
}

- (void)prepareForDocumentUpgradeWithMode:(int64_t)a3
{
  v5 = atomic_load(&self->_upgradeMode);
  if (v5 != a3 && !self->_skipDocumentUpgrade)
  {
    v8[6] = v3;
    v8[7] = v4;
    completionGroup = self->_completionGroup;
    componentQueue = self->_componentQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276A6F780;
    v8[3] = &unk_27A6E2CA0;
    v8[4] = self;
    v8[5] = a3;
    dispatch_group_async(completionGroup, componentQueue, v8);
  }
}

- (void)prepareForDocumentUpgradeWithModeImpl:(int64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v13 = atomic_load(&self->_upgradeMode);
    if (v13 == 2)
    {
LABEL_18:
      v32 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_7:
    if (atomic_exchange(&self->_upgradeMode, a3) != a3)
    {
      if (self->_componentsToUpgrade)
      {
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageReadCoordinator prepareForDocumentUpgradeWithModeImpl:]");
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1014, 0, "expected nil value for '%{public}s'", "_componentsToUpgrade");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
      }

      v21 = objc_msgSend_p_allComponentsInPackage(self, a2, a3);
      v24 = objc_msgSend_copy(v21, v22, v23);
      componentsToUpgrade = self->_componentsToUpgrade;
      self->_componentsToUpgrade = v24;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = self->_componentsToUpgrade;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v33, v37, 16);
      if (v29)
      {
        v30 = *v34;
        do
        {
          v31 = 0;
          do
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(v26);
            }

            objc_msgSend_readComponentIfNeededAsync_(self, v28, *(*(&v33 + 1) + 8 * v31++));
          }

          while (v29 != v31);
          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v33, v37, 16);
        }

        while (v29);
      }
    }

    goto LABEL_18;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageReadCoordinator prepareForDocumentUpgradeWithModeImpl:]");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1001, 0, "Should not attempt to upgrade the document without a mode.");

  v11 = MEMORY[0x277D81150];
  v12 = *MEMORY[0x277D85DE8];

  objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

- (id)p_allComponentsInPackage
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v7 = objc_msgSend_componentManager(WeakRetained, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276A6FB50;
  v11[3] = &unk_27A6E5790;
  v11[4] = self;
  v11[5] = v3;
  objc_msgSend_enumerateComponents_(v7, v8, v11);

  v9 = v3;
  return v3;
}

- (id)p_allDataInPackage
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v7 = objc_msgSend_dataManager(WeakRetained, v5, v6, 0);
  v10 = objc_msgSend_allData(v7, v8, v9);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_msgSend_storage(v17, v12, v13);
        v20 = objc_msgSend_isInPackage_(v18, v19, self->_package);

        if (v20)
        {
          objc_msgSend_addObject_(v3, v12, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v23, v27, 16);
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)validateDocumentWithOptions:(unint64_t)a3 timing:(int64_t)a4 completion:(id)a5
{
  v6 = a3;
  v63 = a5;
  if (v6)
  {
    v11 = objc_msgSend_p_allComponentsInPackage(self, v8, v9);
    v10 = objc_msgSend_copy(v11, v12, v13);
  }

  else
  {
    v10 = 0;
  }

  v62 = v10;
  if ((v6 & 0xE) == 2)
  {
    if (objc_msgSend_packageType(self->_package, v8, v9) != 2)
    {
LABEL_6:
      v14 = 0;
      v15 = 0;
      goto LABEL_9;
    }
  }

  else if ((v6 & 0xC) == 0)
  {
    goto LABEL_6;
  }

  v16 = objc_msgSend_p_allDataInPackage(self, v8, v9);
  v14 = objc_msgSend_copy(v16, v17, v18);

  v15 = 1;
LABEL_9:
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v77 = 1;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = sub_276A6E490;
  v74[4] = sub_276A6E4A0;
  v75 = 0;
  if (objc_msgSend_packageIdentifier(self->_package, v20, v21) == 1)
  {
    if (!self->_metadataObject)
    {
      v25 = objc_msgSend_fileFormatVersion(self, v22, v23);
      if (v25 >= 0xA000200000003)
      {
        v26 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPPackageReadCoordinator validateDocumentWithOptions:timing:completion:]");
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        v29 = NSStringFromTSPVersion(v25, v28);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v61, v60, 1069, 0, "Document metadata is expected for documents with file format version %{public}@", v29);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      }

      v33 = [TSPDocumentMetadata alloc];
      WeakRetained = objc_loadWeakRetained(&self->_context);
      v36 = objc_msgSend_initWithContext_(v33, v35, WeakRetained);
      metadataObject = self->_metadataObject;
      self->_metadataObject = v36;
    }

    objc_opt_class();
    v38 = self->_metadataObject;
    v39 = TSUDynamicCast();
    if (!v39)
    {
      TSUSetCrashReporterInfo();
      v40 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSPPackageReadCoordinator validateDocumentWithOptions:timing:completion:]", "[TSPPackageReadCoordinator validateDocumentWithOptions:timing:completion:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm", 1074, "documentMetadata");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v42, v44, 1074, 1, "invalid nil value for '%{public}s'", "documentMetadata");

      TSUCrashBreakpoint();
      abort();
    }
  }

  else
  {
    v46 = objc_loadWeakRetained(&self->_context);
    v39 = objc_msgSend_documentMetadata(v46, v47, v48);

    if (!v39)
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSPPackageReadCoordinator validateDocumentWithOptions:timing:completion:]");
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 1077, 0, "Document metadata should have been populated.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
      v39 = 0;
    }
  }

  componentQueue = self->_componentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A70330;
  block[3] = &unk_27A6E5830;
  v71 = v6 & 1;
  block[4] = v62;
  block[5] = self;
  v68 = v76;
  v69 = v74;
  v72 = v15;
  v70 = a4;
  block[6] = v14;
  v65 = v39;
  v73 = (v6 & 8) != 0;
  v66 = v19;
  v67 = v63;
  v58 = v63;
  v59 = v39;
  dispatch_async(componentQueue, block);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);
}

- (BOOL)p_validateComponent:(id)a3 error:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_ioQueue);
  package = self->_package;
  v10 = objc_msgSend_locator(v6, v8, v9);
  v13 = objc_msgSend_compressionAlgorithm(v6, v11, v12);
  isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(v6, v14, v15);
  v35 = 0;
  isStoredOutsideObjectArchive_error = objc_msgSend_newReadChannelForComponentLocator_compressionAlgorithm_isStoredOutsideObjectArchive_error_(package, v17, v10, v13, isStoredOutsideObjectArchive, &v35);
  v19 = v35;

  if (!isStoredOutsideObjectArchive_error)
  {
    if (objc_msgSend_canBeDropped(v6, v20, v21))
    {
      v25 = 1;
      goto LABEL_13;
    }

    if (UnsafePointer == -1)
    {
      if (a4)
      {
LABEL_10:
        objc_msgSend_tsp_ensureCorruptedDocumentErrorWithError_(MEMORY[0x277CCA9B8], v26, v19);
        *a4 = v25 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      sub_276BD59F8();
      if (a4)
      {
        goto LABEL_10;
      }
    }

    v25 = 0;
    goto LABEL_13;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_276A6E490;
  v33 = sub_276A6E4A0;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276A70E68;
  v28[3] = &unk_27A6E4E38;
  v28[4] = &v29;
  objc_msgSend_readWithHandlerAndWait_(isStoredOutsideObjectArchive_error, v20, v28);
  objc_msgSend_close(isStoredOutsideObjectArchive_error, v22, v23);
  v24 = v30[5];
  if (a4 && v24)
  {
    *a4 = v24;
    v24 = v30[5];
  }

  v25 = v24 == 0;
  _Block_object_dispose(&v29, 8);

LABEL_13:
  return v25;
}

- (BOOL)p_validateData:(id)a3 timing:(int64_t)a4 documentMetadata:(id)a5 scanForOSLikeCorruption:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  dispatch_assert_queue_V2(self->_ioQueue);
  if (v8)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v22 = 0;
  v16 = objc_msgSend_validateDataDigestWithReason_options_documentMetadata_error_(v12, v14, @"load", v15, v13, &v22);
  v17 = v22;
  if ((v16 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    objc_msgSend_didEncounterValidationError_forData_timing_(WeakRetained, v19, v17, v12, a4);
  }

  if (a7 && v17)
  {
    v20 = v17;
    *a7 = v17;
  }

  return v17 == 0;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)unarchivedObjectForIdentifier:(int64_t)a3 isReadFinished:(BOOL)a4
{
  v4 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_276A6E490;
  v15 = sub_276A6E4A0;
  v16 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A71190;
  aBlock[3] = &unk_27A6E2C28;
  aBlock[4] = self;
  aBlock[5] = &v11;
  aBlock[6] = a3;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (v4)
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->_objectQueue, v6);
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)externalObjectForIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isReadFinished:(BOOL)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = objc_msgSend_objectForIdentifier_(WeakRetained, v7, a3);

  return v8;
}

- (int64_t)reader:(id)a3 wantsObjectIdentifierForUUID:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (self->_persistedUUIDMap)
  {
    if (objc_msgSend_packageIdentifier(self->_package, v7, v8) != 1)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPPackageReadCoordinator reader:wantsObjectIdentifierForUUID:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      v17 = objc_msgSend_packageIdentifier(self->_package, v15, v16);
      v19 = sub_276AC69B4(v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v20, v12, v14, 1306, 0, "Persisted UUID map should only be initiliazed when reading from the document package. Unexpected package: %{public}@", v19);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    objc_msgSend_objectLocationForUUID_(self->_persistedUUIDMap, v10, v9);
    v24 = v23;
  }

  else
  {
    v29 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v27 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(WeakRetained, v26, v9, 1, 0, &v29);

    v24 = v29;
  }

  return v24;
}

- (id)reader:(id)a3 wantsDataForIdentifier:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = objc_msgSend_dataManager(WeakRetained, v6, v7);
  v10 = objc_msgSend_dataForIdentifier_(v8, v9, a4);

  return v10;
}

- (void)reader:(id)a3 didResetObjectIdentifierForObject:(id)a4 originalObjectIdentifier:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_msgSend_prepareForDocumentUpgradeWithMode_(self, v10, 2);
  if (objc_msgSend_packageIdentifier(self->_package, v11, v12) == 1)
  {
    v17 = objc_msgSend_objectUUID(v9, v13, v14);
    if (v17)
    {
      if (self->_persistedUUIDMap)
      {
        v18 = objc_msgSend_component(v8, v15, v16);
        v21 = objc_msgSend_identifier(v18, v19, v20);

        v24 = objc_msgSend_tsp_identifier(v9, v22, v23);
        completionGroup = self->_completionGroup;
        objectQueue = self->_objectQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_276A71A48;
        block[3] = &unk_27A6E5858;
        block[4] = self;
        v35 = v17;
        v36 = v21;
        v37 = v24;
        v38 = a5;
        dispatch_group_async(completionGroup, objectQueue, block);
      }

      else if (!self->_skipDocumentUpgrade)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPackageReadCoordinator reader:didResetObjectIdentifierForObject:originalObjectIdentifier:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1355, 0, "Persisted UUID map should have been initialized. This assertion indicates that the max file format version needs to be increased.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      }
    }
  }
}

- (void)reader:(id)a3 didResetObjectUUID:(id)a4 forObjectIdentifier:(int64_t)a5 originalObjectUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (objc_msgSend_packageIdentifier(self->_package, v13, v14) == 1)
  {
    if (self->_persistedUUIDMap)
    {
      v17 = objc_msgSend_component(v10, v15, v16);
      v20 = objc_msgSend_identifier(v17, v18, v19);

      completionGroup = self->_completionGroup;
      objectQueue = self->_objectQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276A71D48;
      block[3] = &unk_27A6E3008;
      block[4] = self;
      v33 = v20;
      v34 = a5;
      v31 = v11;
      v32 = v12;
      dispatch_group_async(completionGroup, objectQueue, block);
    }

    else if (!self->_skipDocumentUpgrade)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPPackageReadCoordinator reader:didResetObjectUUID:forObjectIdentifier:originalObjectUUID:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 1372, 0, "Persisted UUID map should have been initialized. This assertion indicates that the max file format version needs to be increased.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }
  }
}

- (void)persistedObjectUUIDMap:(id)a3 foundDuplicateUUID:(id)a4 firstObjectLocation:(TSPObjectLocation)a5 secondObjectLocation:(TSPObjectLocation)a6
{
  var0 = a6.var0;
  v7 = a5.var0;
  v24 = a3;
  v11 = a4;
  if (!self->_duplicatedUUIDs)
  {
    v12 = objc_opt_new();
    duplicatedUUIDs = self->_duplicatedUUIDs;
    self->_duplicatedUUIDs = v12;
  }

  if (!self->_componentIdentifiersWithDuplicatedUUIDs)
  {
    v14 = objc_opt_new();
    componentIdentifiersWithDuplicatedUUIDs = self->_componentIdentifiersWithDuplicatedUUIDs;
    self->_componentIdentifiersWithDuplicatedUUIDs = v14;
  }

  objc_msgSend_addObject_(self->_duplicatedUUIDs, v10, v11);
  v16 = self->_componentIdentifiersWithDuplicatedUUIDs;
  v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v17, v7);
  objc_msgSend_addObject_(v16, v19, v18);

  v20 = self->_componentIdentifiersWithDuplicatedUUIDs;
  v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v21, var0);
  objc_msgSend_addObject_(v20, v23, v22);
}

- (id).cxx_construct
{
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 88) = 1065353216;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 106) = 1065353216;
  return self;
}

@end