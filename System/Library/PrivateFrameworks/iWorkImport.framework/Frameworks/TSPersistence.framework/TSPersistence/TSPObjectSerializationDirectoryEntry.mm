@interface TSPObjectSerializationDirectoryEntry
- (TSPObjectSerializationDirectoryEntry)init;
- (TSPObjectSerializationDirectoryEntry)initWithOffset:(unint64_t)offset size:(unint64_t)size;
@end

@implementation TSPObjectSerializationDirectoryEntry

- (TSPObjectSerializationDirectoryEntry)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationDirectoryEntry init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationDecoder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 143, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectSerializationDirectoryEntry init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectSerializationDirectoryEntry)initWithOffset:(unint64_t)offset size:(unint64_t)size
{
  v7.receiver = self;
  v7.super_class = TSPObjectSerializationDirectoryEntry;
  result = [(TSPObjectSerializationDirectoryEntry *)&v7 init];
  if (result)
  {
    result->_offset = offset;
    result->_size = size;
  }

  return result;
}

@end