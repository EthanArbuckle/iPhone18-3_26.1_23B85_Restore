@interface TSPFinalizeHandlerQueue
- (BOOL)runFinalizeHandlers;
- (TSPFinalizeHandlerQueue)init;
- (TSPFinalizeHandlerQueue)initWithRootObjectIdentifier:(int64_t)a3 cancellationState:(id)a4;
- (id).cxx_construct;
- (int64_t)currentObjectIdentifier;
- (void)addFinalizeHandlers:(void *)a3 strongReferences:(void *)a4 forIdentifier:(int64_t)a5;
- (void)reset;
- (void)runFinalizeHandlerForItem:(void *)a3;
- (void)visitItemForCycleDetection:(void *)a3;
@end

@implementation TSPFinalizeHandlerQueue

- (TSPFinalizeHandlerQueue)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPFinalizeHandlerQueue init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFinalizeHandlerQueue.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 73, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPFinalizeHandlerQueue init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPFinalizeHandlerQueue)initWithRootObjectIdentifier:(int64_t)a3 cancellationState:(id)a4
{
  v23 = a3;
  v6 = a4;
  v22.receiver = self;
  v22.super_class = TSPFinalizeHandlerQueue;
  v7 = [(TSPFinalizeHandlerQueue *)&v22 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TSPFinalizeHandlerQueue.Access", v8);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v9;

    v7->_rootObjectIdentifier = a3;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = objc_alloc_init(TSPCancellationState);
    }

    cancellationState = v7->_cancellationState;
    v7->_cancellationState = v11;

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a3;
    *v18 = 0u;
    *__p = 0u;
    v20 = 0u;
    v21 = 1;
    sub_276AF6A98();
  }

  return 0;
}

- (void)reset
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AF5E8C;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)addFinalizeHandlers:(void *)a3 strongReferences:(void *)a4 forIdentifier:(int64_t)a5
{
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276AF5F1C;
  v6[3] = &unk_27A6E74E8;
  v6[4] = self;
  v6[5] = a5;
  v6[6] = a3;
  v6[7] = a4;
  dispatch_sync(accessQueue, v6);
}

- (void)visitItemForCycleDetection:(void *)a3
{
  v4 = *(a3 + 80) | 0xC;
  *(a3 + 80) = v4;
  v5 = *(a3 + 4);
  v6 = *(a3 + 5);
  if (v5 != v6)
  {
    do
    {
      v8 = sub_2769ABC64(&self->_map.__table_.__bucket_list_.__ptr_, v5);
      if (v8)
      {
        v9 = v8;
        v11 = v8 + 3;
        sub_276AF6100(a3 + 56, &v11);
        if ((v11[10] & 4) != 0)
        {
          if ((v11[10] & 8) == 0)
          {
            *(v9 + 104) &= ~1u;
          }
        }

        else
        {
          objc_msgSend_visitItemForCycleDetection_(self, v10, v11);
        }
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = *(a3 + 80);
  }

  *(a3 + 80) = v4 & 0xF7;
}

- (void)runFinalizeHandlerForItem:(void *)a3
{
  *(a3 + 80) |= 2u;
  v5 = *(a3 + 7);
  v6 = *(a3 + 8);
  while (v5 != v6)
  {
    if ((*(*v5 + 80) & 2) == 0)
    {
      objc_msgSend_runFinalizeHandlerForItem_(self, a2, *v5);
    }

    ++v5;
  }

  if (*(a3 + 3) != self->_rootObjectIdentifier)
  {
    self->_currentItem = a3;
    sub_276AF636C(a3, self->_cancellationState);
    self->_currentItem = 0;
  }
}

- (BOOL)runFinalizeHandlers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AF648C;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)currentObjectIdentifier
{
  v5 = self->_accessQueue;
  if (v5 != MEMORY[0x277D85CD0] || (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v3, v4) & 1) == 0)
  {
    dispatch_assert_queue_V2(v5);
  }

  currentItem = self->_currentItem;
  if (!currentItem)
  {
    TSUSetCrashReporterInfo();
    v8 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPFinalizeHandlerQueue currentObjectIdentifier]", "[TSPFinalizeHandlerQueue currentObjectIdentifier]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFinalizeHandlerQueue.mm", 228);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFinalizeHandlerQueue.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 228, 1, "Calling this method outside of a finalize handler.");

    TSUCrashBreakpoint();
    abort();
  }

  return currentItem[3];
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end