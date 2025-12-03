@interface TSPDataObserverInfo
- (BOOL)shouldClearObserverForStatus:(int64_t)status;
- (BOOL)shouldNotifyStatus:(int64_t)status;
- (TSPDataObserverInfo)init;
- (TSPDataObserverInfo)initWithObserver:(id)observer data:(id)data options:(unint64_t)options completionHandler:(id)handler;
- (void)notifyWithStatus:(int64_t)status info:(id)info;
@end

@implementation TSPDataObserverInfo

- (TSPDataObserverInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataObserverInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataObserverInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 16, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDataObserverInfo init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDataObserverInfo)initWithObserver:(id)observer data:(id)data options:(unint64_t)options completionHandler:(id)handler
{
  observerCopy = observer;
  dataCopy = data;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = TSPDataObserverInfo;
  v13 = [(TSPDataObserverInfo *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_observer, observerCopy);
    objc_storeWeak(&v14->_data, dataCopy);
    v14->_options = options;
    v17 = objc_msgSend_copy(handlerCopy, v15, v16);
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v17;
  }

  return v14;
}

- (BOOL)shouldNotifyStatus:(int64_t)status
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataObserverInfo shouldNotifyStatus:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataObserverInfo.m");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 30, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSPDataObserverInfo shouldNotifyStatus:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v19, v13, v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (BOOL)shouldClearObserverForStatus:(int64_t)status
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v4 = WeakRetained == 0;

  return v4;
}

- (void)notifyWithStatus:(int64_t)status info:(id)info
{
  infoCopy = info;
  if (objc_msgSend_shouldNotifyStatus_(self, v6, status))
  {
    WeakRetained = objc_loadWeakRetained(&self->_data);
    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained(&self->_observer);
      if (v9)
      {
        completionHandler = self->_completionHandler;
        if (completionHandler)
        {
          completionHandler[2](completionHandler, v9, WeakRetained, status, infoCopy);
        }
      }
    }
  }

  if (objc_msgSend_shouldClearObserverForStatus_(self, v7, status))
  {
    v11 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

@end