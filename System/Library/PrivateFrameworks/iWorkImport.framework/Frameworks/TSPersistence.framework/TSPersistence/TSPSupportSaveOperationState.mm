@interface TSPSupportSaveOperationState
- (BOOL)isSavingCurrentDocument;
- (TSPSupportSaveOperationState)init;
- (TSPSupportSaveOperationState)initWithOriginalDocumentUUID:(id)a3 originalVersionUUID:(id)a4 originalURL:(id)a5 updateType:(int64_t)a6;
@end

@implementation TSPSupportSaveOperationState

- (TSPSupportSaveOperationState)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPSupportSaveOperationState init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 496, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPSupportSaveOperationState init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPSupportSaveOperationState)initWithOriginalDocumentUUID:(id)a3 originalVersionUUID:(id)a4 originalURL:(id)a5 updateType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27.receiver = self;
  v27.super_class = TSPSupportSaveOperationState;
  v15 = [(TSPSupportSaveOperationState *)&v27 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(v10, v13, v14);
    originalDocumentUUID = v15->_originalDocumentUUID;
    v15->_originalDocumentUUID = v16;

    v20 = objc_msgSend_copy(v11, v18, v19);
    originalVersionUUID = v15->_originalVersionUUID;
    v15->_originalVersionUUID = v20;

    v24 = objc_msgSend_copy(v12, v22, v23);
    originalURL = v15->_originalURL;
    v15->_originalURL = v24;

    v15->_updateType = a6;
  }

  return v15;
}

- (BOOL)isSavingCurrentDocument
{
  if (self->_updateType == 1)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isSameDocumentUpdate(self, a2, v2);
  }
}

@end