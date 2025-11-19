@interface TSPPackageConverterFileCoordinatorDelegate
- (TSPPackageConverterFileCoordinatorDelegate)init;
- (TSPPackageConverterFileCoordinatorDelegate)initWithURL:(id)a3;
@end

@implementation TSPPackageConverterFileCoordinatorDelegate

- (TSPPackageConverterFileCoordinatorDelegate)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageConverterFileCoordinatorDelegate init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 634, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageConverterFileCoordinatorDelegate init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageConverterFileCoordinatorDelegate)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSPPackageConverterFileCoordinatorDelegate;
  v7 = [(TSPPackageConverterFileCoordinatorDelegate *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    URL = v7->_URL;
    v7->_URL = v8;
  }

  return v7;
}

@end