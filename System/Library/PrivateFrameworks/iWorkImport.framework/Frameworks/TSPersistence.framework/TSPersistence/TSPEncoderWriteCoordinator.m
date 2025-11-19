@interface TSPEncoderWriteCoordinator
- (BOOL)shouldDelayArchivingObject:(id)a3;
- (TSPEncoderWriteCoordinator)init;
- (TSPEncoderWriteCoordinator)initWithEncoder:(id)a3 context:(id)a4 archiverClass:(Class)a5 delegate:(id)a6;
- (TSPObjectContext)context;
- (id)componentWriter:(id)a3 wantsComponentOfObject:(id)a4 componentReadVersion:(unint64_t *)a5;
- (id)componentWriterWantsDelayedObjects:(id)a3;
- (id)proxyForReferencedObject:(id)a3;
- (unint64_t)objectTargetType;
- (void)addDataFinalizeHandlerForSuccessfulSave:(id)a3;
- (void)archiverManager:(id)a3 didCreateArchiver:(id)a4;
- (void)componentWriter:(id)a3 canSkipArchivingStronglyReferencedObject:(id)a4 fromComponentRootObject:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)delayArchivingOfObject:(id)a3;
- (void)setProxy:(id)a3 forReferencedObject:(id)a4;
- (void)skipArchivingObject:(id)a3;
- (void)stopCapturingSnapshots;
- (void)willModifyObject:(id)a3 options:(unint64_t)a4;
- (void)writeRootObject:(id)a3 completion:(id)a4;
@end

@implementation TSPEncoderWriteCoordinator

- (TSPEncoderWriteCoordinator)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPEncoderWriteCoordinator init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 47, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPEncoderWriteCoordinator init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPEncoderWriteCoordinator)initWithEncoder:(id)a3 context:(id)a4 archiverClass:(Class)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = TSPEncoderWriteCoordinator;
  v14 = [(TSPEncoderWriteCoordinator *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_encoder, a3);
    objc_storeWeak(&v15->_context, v12);
    v16 = [TSPArchiverManager alloc];
    v18 = objc_msgSend_initWithDelegate_archiverClass_archiverFlags_(v16, v17, v15, a5, 0);
    archiverManager = v15->_archiverManager;
    v15->_archiverManager = v18;

    objc_storeWeak(&v15->_delegate, v13);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("TSPEncoderWriteCoordinator.Access", v20);
    accessQueue = v15->_accessQueue;
    v15->_accessQueue = v21;

    v23 = [TSPReferenceOrderedSet alloc];
    v25 = objc_msgSend_initWithCapacity_(v23, v24, 0);
    delayedObjects = v15->_delayedObjects;
    v15->_delayedObjects = v25;

    v27 = objc_alloc_init(MEMORY[0x277D81308]);
    proxyObjectMap = v15->_proxyObjectMap;
    v15->_proxyObjectMap = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dataFinalizeHandlers = v15->_dataFinalizeHandlers;
    v15->_dataFinalizeHandlers = v29;
  }

  return v15;
}

- (void)stopCapturingSnapshots
{
  atomic_store(1u, &self->_didStopCapturingSnapshots);
  objc_msgSend_stop(self->_archiverManager, a2, v2);
  archiverManager = self->_archiverManager;
  self->_archiverManager = 0;
}

- (void)dealloc
{
  objc_msgSend_stopCapturingSnapshots(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPEncoderWriteCoordinator;
  [(TSPEncoderWriteCoordinator *)&v4 dealloc];
}

- (void)writeRootObject:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_newRootObjectComponentWriteChannel(self->_encoder, v8, v9);
  v11 = [TSPComponent alloc];
  v13 = objc_msgSend_initWithDelegate_rootObject_(v11, v12, 0, v6);
  v14 = [TSPComponentWriter alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_msgSend_componentWriterMode(WeakRetained, v16, v17);
  v20 = objc_msgSend_initWithComponent_locator_rootObject_delegate_mode_packageIdentifier_objectReferenceMapOrNil_writeChannel_archiverManager_(v14, v19, v13, 0, v6, self, v18, 1, 0, v10, self->_archiverManager);

  v21 = objc_loadWeakRetained(&self->_delegate);
  v22 = dispatch_get_global_queue(0, 0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_276ACAF0C;
  v27[3] = &unk_27A6E6D60;
  v27[4] = v10;
  v27[5] = v20;
  v27[6] = v21;
  v23 = v6;
  v28 = v23;
  v29 = self;
  v24 = v7;
  v30 = v22;
  v31 = v24;
  v25 = v22;
  objc_msgSend_writeWithCompletionQueue_completion_(v20, v26, v25, v27);
}

- (BOOL)shouldDelayArchivingObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276ACB874;
  block[3] = &unk_27A6E2C00;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

- (void)delayArchivingOfObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(v4, v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_context);

  if (v7 != WeakRetained)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPEncoderWriteCoordinator delayArchivingOfObject:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 164, 0, "Unexpected object context.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  accessQueue = self->_accessQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276ACBA14;
  v19[3] = &unk_27A6E2898;
  v19[4] = self;
  v20 = v4;
  v18 = v4;
  dispatch_async(accessQueue, v19);
}

- (void)setProxy:(id)a3 forReferencedObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_hasProxyObjects = 1;
  v10 = objc_msgSend_context(v6, v8, v9);
  WeakRetained = objc_loadWeakRetained(&self->_context);

  if (v10 != WeakRetained)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPEncoderWriteCoordinator setProxy:forReferencedObject:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 175, 0, "Unexpected object context for proxy object.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_context(v7, v12, v13);
  v22 = objc_loadWeakRetained(&self->_context);

  if (v21 != v22)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPEncoderWriteCoordinator setProxy:forReferencedObject:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 176, 0, "Unexpected object context for referenced object.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276ACBD30;
  block[3] = &unk_27A6E29B0;
  block[4] = self;
  v35 = v6;
  v36 = v7;
  v32 = v7;
  v33 = v6;
  dispatch_async(accessQueue, block);
}

- (void)skipArchivingObject:(id)a3
{
  v4 = a3;
  self->_hasProxyObjects = 1;
  v7 = objc_msgSend_context(v4, v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_context);

  if (v7 != WeakRetained)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPEncoderWriteCoordinator skipArchivingObject:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 186, 0, "Unexpected object context.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  accessQueue = self->_accessQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276ACBEB4;
  v19[3] = &unk_27A6E2898;
  v19[4] = self;
  v20 = v4;
  v18 = v4;
  dispatch_async(accessQueue, v19);
}

- (unint64_t)objectTargetType
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_objectTargetType(WeakRetained, v3, v4);

  return v5;
}

- (void)willModifyObject:(id)a3 options:(unint64_t)a4
{
  if ((a4 & 1) == 0)
  {
    v5 = atomic_load(&self->_didStopCapturingSnapshots);
    if ((v5 & 1) == 0 && (objc_msgSend_shouldDelayArchivingObject_(self, a2, a3) & 1) == 0)
    {
      archiverManager = self->_archiverManager;

      objc_msgSend_archiveObjectWithHighPriority_(archiverManager, v7, a3);
    }
  }
}

- (void)componentWriter:(id)a3 canSkipArchivingStronglyReferencedObject:(id)a4 fromComponentRootObject:(id)a5 completion:(id)a6
{
  v14 = a6;
  v6 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPEncoderWriteCoordinator componentWriter:canSkipArchivingStronglyReferencedObject:fromComponentRootObject:completion:]");
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 218, 0, "We should not skip strongly referenced objects.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  if (v14)
  {
    v14[2](v14, 0);
  }
}

- (id)componentWriterWantsDelayedObjects:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_276ACB3F4;
  v11 = sub_276ACB404;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276ACC27C;
  v6[3] = &unk_27A6E28C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)componentWriter:(id)a3 wantsComponentOfObject:(id)a4 componentReadVersion:(unint64_t *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

- (void)addDataFinalizeHandlerForSuccessfulSave:(id)a3
{
  if (a3)
  {
    dataFinalizeHandlers = self->_dataFinalizeHandlers;
    v5 = _Block_copy(a3);
    objc_msgSend_addObject_(dataFinalizeHandlers, v4, v5);
  }
}

- (void)archiverManager:(id)a3 didCreateArchiver:(id)a4
{
  v6 = TSUProtocolCast();
  objc_msgSend_setProxyObjectMapping_(v6, v5, self, &unk_2885F81A8);
}

- (id)proxyForReferencedObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_hasProxyObjects)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_proxyObjectMapping_willProxyReferencedObject_(WeakRetained, v7, self, v5);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_276ACB3F4;
    v25 = sub_276ACB404;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    accessQueue = self->_accessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_276ACC5BC;
    v13[3] = &unk_27A6E2AA0;
    v13[4] = self;
    v9 = v5;
    v14 = v9;
    v15 = &v17;
    v16 = &v21;
    dispatch_sync(accessQueue, v13);
    v10 = 0;
    if ((v18[3] & 1) == 0)
    {
      v11 = v22[5];
      if (!v11)
      {
        v11 = v9;
      }

      v10 = v11;
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end