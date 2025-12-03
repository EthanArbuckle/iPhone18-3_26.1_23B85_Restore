@interface TSPPackageEntryInfo
- (TSPPackageEntryInfo)init;
- (TSPPackageEntryInfo)initWithEncodedLength:(unint64_t)length lastModificationDate:(id)date CRC:(unsigned int)c;
@end

@implementation TSPPackageEntryInfo

- (TSPPackageEntryInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageEntryInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 756, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageEntryInfo init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageEntryInfo)initWithEncodedLength:(unint64_t)length lastModificationDate:(id)date CRC:(unsigned int)c
{
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = TSPPackageEntryInfo;
  v9 = [(TSPPackageEntryInfo *)&v16 init];
  v12 = v9;
  if (v9)
  {
    v9->_encodedLength = length;
    v13 = objc_msgSend_copy(dateCopy, v10, v11);
    lastModificationDate = v12->_lastModificationDate;
    v12->_lastModificationDate = v13;

    v12->_CRC = c;
  }

  return v12;
}

@end