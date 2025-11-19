@interface TSPDataUniqueIdentifier
- (TSPDataUniqueIdentifier)init;
- (TSPDataUniqueIdentifier)initWithDigest:(id)a3;
@end

@implementation TSPDataUniqueIdentifier

- (TSPDataUniqueIdentifier)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataUniqueIdentifier init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 1606, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDataUniqueIdentifier init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDataUniqueIdentifier)initWithDigest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSPDataUniqueIdentifier;
  v6 = [(TSPDataUniqueIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digest, a3);
  }

  return v7;
}

@end