@interface TSPDataStorageWriteResult
- (TSPDataStorageWriteResult)init;
- (TSPDataStorageWriteResult)initWithFilename:(id)a3 encryptionInfo:(id)a4 packageStorageType:(int64_t)a5 encodedLength:(unint64_t)a6 isMissingData:(BOOL)a7 changeCount:(unint64_t)a8;
@end

@implementation TSPDataStorageWriteResult

- (TSPDataStorageWriteResult)initWithFilename:(id)a3 encryptionInfo:(id)a4 packageStorageType:(int64_t)a5 encodedLength:(unint64_t)a6 isMissingData:(BOOL)a7 changeCount:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = TSPDataStorageWriteResult;
  v17 = [(TSPDataStorageWriteResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_filename, a3);
    objc_storeStrong(&v18->_encryptionInfo, a4);
    v18->_packageStorageType = a5;
    v18->_encodedLength = a6;
    v18->_isMissingData = a7;
    v18->_changeCount = a8;
  }

  return v18;
}

- (TSPDataStorageWriteResult)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataStorageWriteResult init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataStorageWriteResult.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 27, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDataStorageWriteResult init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

@end