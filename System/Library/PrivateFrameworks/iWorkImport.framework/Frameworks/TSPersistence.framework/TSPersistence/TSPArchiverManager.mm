@interface TSPArchiverManager
- (TSPArchiverManager)init;
- (TSPArchiverManager)initWithDelegate:(id)a3 archiverClass:(Class)a4 archiverFlags:(char)a5;
- (id)archiverForObject:(id)a3 hasArchiverAccessLock:(BOOL)a4;
- (id)explicitComponentRootObjectForObject:(id)a3 hasArchiverAccessLock:(BOOL)a4;
- (id)impl_archiverForObject:(id)a3;
- (id)impl_explicitComponentRootObjectForObject:(id)a3;
- (void)archiveObjectWithHighPriority:(id)a3;
- (void)archiveObjectWithLowPriority:(id)a3;
- (void)archiveWithArchiver:(id)a3 queue:(id)a4 waitForArchiving:(BOOL)a5;
- (void)dealloc;
- (void)performAsynchronousArchiverAccessUsingBlock:(id)a3;
- (void)stop;
@end

@implementation TSPArchiverManager

- (TSPArchiverManager)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPArchiverManager init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 51, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPArchiverManager init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPArchiverManager)initWithDelegate:(id)a3 archiverClass:(Class)a4 archiverFlags:(char)a5
{
  v8 = a3;
  v37.receiver = self;
  v37.super_class = TSPArchiverManager;
  v9 = [(TSPArchiverManager *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_archiverClass = a4;
    v10->_archiverFlags = a5;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("TSPArchiverManager.Archivers.High", v11);
    archiversHighQueue = v10->_archiversHighQueue;
    v10->_archiversHighQueue = v12;

    v14 = dispatch_queue_create("TSPArchiverManager.Archivers.Low", 0);
    archiversLowQueue = v10->_archiversLowQueue;
    v10->_archiversLowQueue = v14;

    dispatch_set_target_queue(v10->_archiversLowQueue, v10->_archiversHighQueue);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("TSPArchiverManager.Archive.High", v16);
    archiveHighQueue = v10->_archiveHighQueue;
    v10->_archiveHighQueue = v17;

    v19 = dispatch_queue_create("TSPArchiverManager.Archive.Default", 0);
    archiveDefaultQueue = v10->_archiveDefaultQueue;
    v10->_archiveDefaultQueue = v19;

    v21 = dispatch_queue_create("TSPArchiverManager.Archive.Low", 0);
    archiveLowQueue = v10->_archiveLowQueue;
    v10->_archiveLowQueue = v21;

    dispatch_set_target_queue(v10->_archiveDefaultQueue, v10->_archiveHighQueue);
    dispatch_set_target_queue(v10->_archiveLowQueue, v10->_archiveDefaultQueue);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("TSPArchiverManager.Serialization", v23);
    serializationQueue = v10->_serializationQueue;
    v10->_serializationQueue = v24;

    v26 = objc_alloc(MEMORY[0x277CCAB00]);
    v28 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v26, v27, 1282, 0, 16);
    archivers = v10->_archivers;
    v10->_archivers = v28;

    v30 = objc_alloc(MEMORY[0x277CCAB00]);
    v32 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v30, v31, 512, 0, 2);
    metadataArchivers = v10->_metadataArchivers;
    v10->_metadataArchivers = v32;

    LOBYTE(v23) = objc_opt_respondsToSelector();
    v34 = objc_opt_respondsToSelector();
    if (v23)
    {
      v35 = 2;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v35 |= 4u;
    }

    atomic_store(v35, &v10->_flags);
  }

  return v10;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_flags);
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPArchiverManager dealloc]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 120, 0, "Didn't stop TSPArchiverManager before dealloc.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11.receiver = self;
  v11.super_class = TSPArchiverManager;
  [(TSPArchiverManager *)&v11 dealloc];
}

- (id)archiverForObject:(id)a3 hasArchiverAccessLock:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (v4)
  {
    v8 = objc_msgSend_impl_archiverForObject_(self, v6, v7);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_276AA1D7C;
    v18 = sub_276AA1D8C;
    v19 = 0;
    dispatch_suspend(self->_archiversLowQueue);
    archiversHighQueue = self->_archiversHighQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AA1D94;
    block[3] = &unk_27A6E2C00;
    v13 = &v14;
    block[4] = self;
    v12 = v7;
    dispatch_sync(archiversHighQueue, block);
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

- (id)impl_archiverForObject:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_flags);
  if (v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPArchiverManager impl_archiverForObject:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 143, 0, "We shouldn't request an unarchiver when TSPArchiverManager has stopped.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_archiverForObject_archiveQueue_waitForArchiving_(self, v4, v5, self->_archiveDefaultQueue, 0);

  return v14;
}

- (void)archiveObjectWithHighPriority:(id)a3
{
  v4 = a3;
  if (objc_msgSend_tsp_isArchiverThread(MEMORY[0x277CCACC8], v5, v6))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiverManager archiveObjectWithHighPriority:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverManager.mm");
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v16 = objc_msgSend_tsp_identifier(v4, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v17, v9, v11, 150, 0, "Attempting to modify object [%{public}@-%llu] while archiving.", v13, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  else
  {
    v20 = atomic_load(&self->_flags);
    if ((v20 & 1) == 0)
    {
      dispatch_suspend(self->_archiversLowQueue);
      dispatch_suspend(self->_archiveDefaultQueue);
      archiversHighQueue = self->_archiversHighQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276AA209C;
      block[3] = &unk_27A6E2898;
      block[4] = self;
      v23 = v4;
      dispatch_sync(archiversHighQueue, block);
    }
  }
}

- (void)archiveObjectWithLowPriority:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = atomic_load(&self->_flags);
  if ((v6 & 1) == 0)
  {
    archiversLowQueue = self->_archiversLowQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276AA21A8;
    v8[3] = &unk_27A6E2898;
    v9 = v4;
    v10 = self;
    dispatch_async(archiversLowQueue, v8);
  }
}

- (id)explicitComponentRootObjectForObject:(id)a3 hasArchiverAccessLock:(BOOL)a4
{
  if (a4)
  {
    v6 = objc_msgSend_impl_explicitComponentRootObjectForObject_(self, a2, a3);
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_276AA1D7C;
    v14 = sub_276AA1D8C;
    v15 = 0;
    dispatch_suspend(self->_archiversLowQueue);
    archiversHighQueue = self->_archiversHighQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AA2358;
    block[3] = &unk_27A6E6548;
    block[4] = self;
    block[5] = &v10;
    block[6] = a3;
    dispatch_sync(archiversHighQueue, block);
    v6 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

- (id)impl_explicitComponentRootObjectForObject:(id)a3
{
  v3 = objc_msgSend_archiverForObject_archiveQueue_waitForArchiving_(self, a2, a3, 0, 0);
  v6 = objc_msgSend_explicitComponentRootObject(v3, v4, v5);

  return v6;
}

- (void)performAsynchronousArchiverAccessUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    dispatch_suspend(self->_archiversLowQueue);
    archiversHighQueue = self->_archiversHighQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_276AA24B0;
    v6[3] = &unk_27A6E2C78;
    v6[4] = self;
    v7 = v4;
    dispatch_async(archiversHighQueue, v6);
  }
}

- (void)stop
{
  atomic_fetch_or(&self->_flags, 1u);
  archiversHighQueue = self->_archiversHighQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA2588;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(archiversHighQueue, block);
}

- (void)archiveWithArchiver:(id)a3 queue:(id)a4 waitForArchiving:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  objc_msgSend_willScheduleArchive(v8, v10, v11);
  v14 = objc_msgSend_archiveGroup(v8, v12, v13);
  v17 = objc_msgSend_serializeGroup(v8, v15, v16);
  dispatch_group_enter(v14);
  dispatch_group_enter(v17);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276AA2BF4;
  v23[3] = &unk_27A6E6598;
  v23[4] = self;
  v24 = v8;
  v25 = v14;
  v18 = v9;
  v26 = v18;
  v27 = v17;
  v28 = v5;
  v19 = v17;
  v20 = v14;
  v21 = v8;
  v22 = _Block_copy(v23);
  if (v5)
  {
    dispatch_sync(v18, v22);
  }

  else
  {
    dispatch_async(v18, v22);
  }
}

@end