@interface TSPDocumentSaveOperationState
- (TSPDocumentSaveOperationState)init;
- (TSPDocumentSaveOperationState)initWithURL:(id)a3 updateType:(int64_t)a4 packageType:(int64_t)a5;
@end

@implementation TSPDocumentSaveOperationState

- (TSPDocumentSaveOperationState)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentSaveOperationState init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSaveOperationState.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 140, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDocumentSaveOperationState init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDocumentSaveOperationState)initWithURL:(id)a3 updateType:(int64_t)a4 packageType:(int64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = TSPDocumentSaveOperationState;
  v11 = [(TSPSaveOperationState *)&v15 initWithUpdateType:a4];
  if (v11)
  {
    v12 = objc_msgSend_copy(v8, v9, v10);
    URL = v11->_URL;
    v11->_URL = v12;

    v11->_packageType = a5;
  }

  return v11;
}

@end