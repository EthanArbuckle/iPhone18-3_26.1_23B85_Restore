@interface TSWPStorageBroadcaster
- (unint64_t)observerCount;
- (unint64_t)paragraphObserverCount;
- (void)addObserver:(id)a3;
- (void)addParagraphObserver:(id)a3;
- (void)dealloc;
- (void)removeAllObservers;
- (void)removeObserver:(id)a3;
- (void)removeParagraphObserver:(id)a3;
@end

@implementation TSWPStorageBroadcaster

- (void)dealloc
{
  v4 = objc_msgSend_allObjects(self->_observers, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPStorageBroadcaster dealloc]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageBroadcaster.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 42, 0, "storage broadcaster has listeners that should have been removed%@", &stru_28860A0F0);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_allObjects(self->_paragraphObservers, v8, v9);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorageBroadcaster dealloc]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageBroadcaster.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 43, 0, "storage broadcaster has listeners that should have been removed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  v29.receiver = self;
  v29.super_class = TSWPStorageBroadcaster;
  [(TSWPStorageBroadcaster *)&v29 dealloc];
}

- (unint64_t)observerCount
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_allObjects(v2->_observers, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  objc_sync_exit(v2);
  return v8;
}

- (unint64_t)paragraphObserverCount
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_allObjects(v2->_paragraphObservers, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  objc_sync_exit(v2);
  return v8;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = self;
    objc_sync_enter(v5);
    observers = v5->_observers;
    if (!observers)
    {
      v8 = objc_alloc(MEMORY[0x277CCAA50]);
      v10 = objc_msgSend_initWithOptions_capacity_(v8, v9, 517, 0);
      v11 = v5->_observers;
      v5->_observers = v10;

      observers = v5->_observers;
    }

    objc_msgSend_addObject_(observers, v6, v12);
    objc_sync_exit(v5);

    v4 = v12;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    objc_msgSend_removeObject_(v5->_observers, v6, v7);
    objc_sync_exit(v5);

    v4 = v7;
  }
}

- (void)addParagraphObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = self;
    objc_sync_enter(v5);
    paragraphObservers = v5->_paragraphObservers;
    if (!paragraphObservers)
    {
      v8 = objc_alloc(MEMORY[0x277CCAA50]);
      v10 = objc_msgSend_initWithOptions_capacity_(v8, v9, 517, 0);
      v11 = v5->_paragraphObservers;
      v5->_paragraphObservers = v10;

      paragraphObservers = v5->_paragraphObservers;
    }

    objc_msgSend_addObject_(paragraphObservers, v6, v12);
    objc_sync_exit(v5);

    v4 = v12;
  }
}

- (void)removeParagraphObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    objc_msgSend_removeObject_(v5->_paragraphObservers, v6, v7);
    objc_sync_exit(v5);

    v4 = v7;
  }
}

- (void)removeAllObservers
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_removeAllObjects(obj->_observers, v2, v3);
  objc_msgSend_removeAllObjects(obj->_paragraphObservers, v4, v5);
  objc_sync_exit(obj);
}

@end