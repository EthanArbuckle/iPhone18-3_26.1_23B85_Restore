@interface TSPObjectContextObserver
- (TSPObjectContextObserver)init;
- (TSPObjectContextObserver)initWithTarget:(id)a3 action:(SEL)a4;
- (id)target;
@end

@implementation TSPObjectContextObserver

- (TSPObjectContextObserver)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContextObserver init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 4802, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectContextObserver init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectContextObserver)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TSPObjectContextObserver;
  v7 = [(TSPObjectContextObserver *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, v6);
    v8->_action = a4;
  }

  return v8;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end