@interface TSPPackageWriterCopyDataResult
- (TSPPackageWriterCopyDataResult)init;
- (TSPPackageWriterCopyDataResult)initWithFilename:(id)a3 encryptionInfo:(id)a4 encodedLength:(unint64_t)a5;
@end

@implementation TSPPackageWriterCopyDataResult

- (TSPPackageWriterCopyDataResult)initWithFilename:(id)a3 encryptionInfo:(id)a4 encodedLength:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TSPPackageWriterCopyDataResult;
  v11 = [(TSPPackageWriterCopyDataResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_filename, a3);
    objc_storeStrong(&v12->_encryptionInfo, a4);
    v12->_encodedLength = a5;
  }

  return v12;
}

- (TSPPackageWriterCopyDataResult)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageWriterCopyDataResult init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 857, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageWriterCopyDataResult init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

@end