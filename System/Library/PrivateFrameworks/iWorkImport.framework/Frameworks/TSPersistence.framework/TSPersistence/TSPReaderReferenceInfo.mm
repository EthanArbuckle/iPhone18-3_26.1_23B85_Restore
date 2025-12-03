@interface TSPReaderReferenceInfo
+ (id)newReferenceInfoWithObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier;
- (TSPReaderReferenceInfo)init;
- (TSPReaderReferenceInfo)initWithObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier;
@end

@implementation TSPReaderReferenceInfo

+ (id)newReferenceInfoWithObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier
{
  v5 = [self alloc];

  return MEMORY[0x2821F9670](v5, sel_initWithObjectIdentifier_componentIdentifier_, identifier);
}

- (TSPReaderReferenceInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReaderReferenceInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 1098, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPReaderReferenceInfo init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPReaderReferenceInfo)initWithObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier
{
  v7.receiver = self;
  v7.super_class = TSPReaderReferenceInfo;
  result = [(TSPReaderReferenceInfo *)&v7 init];
  if (result)
  {
    result->_objectIdentifier = identifier;
    result->_componentIdentifier = componentIdentifier;
  }

  return result;
}

@end