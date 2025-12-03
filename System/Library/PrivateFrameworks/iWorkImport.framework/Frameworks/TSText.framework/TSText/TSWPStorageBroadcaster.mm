@interface TSWPStorageBroadcaster
- (unint64_t)observerCount;
- (unint64_t)paragraphObserverCount;
- (void)addObserver:(id)observer;
- (void)addParagraphObserver:(id)observer;
- (void)dealloc;
- (void)removeAllObservers;
- (void)removeObserver:(id)observer;
- (void)removeParagraphObserver:(id)observer;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_allObjects(selfCopy->_observers, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  objc_sync_exit(selfCopy);
  return v8;
}

- (unint64_t)paragraphObserverCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_allObjects(selfCopy->_paragraphObservers, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  objc_sync_exit(selfCopy);
  return v8;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v12 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    observers = selfCopy->_observers;
    if (!observers)
    {
      v8 = objc_alloc(MEMORY[0x277CCAA50]);
      v10 = objc_msgSend_initWithOptions_capacity_(v8, v9, 517, 0);
      v11 = selfCopy->_observers;
      selfCopy->_observers = v10;

      observers = selfCopy->_observers;
    }

    objc_msgSend_addObject_(observers, v6, v12);
    objc_sync_exit(selfCopy);

    observerCopy = v12;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_removeObject_(selfCopy->_observers, v6, v7);
    objc_sync_exit(selfCopy);

    observerCopy = v7;
  }
}

- (void)addParagraphObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v12 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    paragraphObservers = selfCopy->_paragraphObservers;
    if (!paragraphObservers)
    {
      v8 = objc_alloc(MEMORY[0x277CCAA50]);
      v10 = objc_msgSend_initWithOptions_capacity_(v8, v9, 517, 0);
      v11 = selfCopy->_paragraphObservers;
      selfCopy->_paragraphObservers = v10;

      paragraphObservers = selfCopy->_paragraphObservers;
    }

    objc_msgSend_addObject_(paragraphObservers, v6, v12);
    objc_sync_exit(selfCopy);

    observerCopy = v12;
  }
}

- (void)removeParagraphObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_removeObject_(selfCopy->_paragraphObservers, v6, v7);
    objc_sync_exit(selfCopy);

    observerCopy = v7;
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