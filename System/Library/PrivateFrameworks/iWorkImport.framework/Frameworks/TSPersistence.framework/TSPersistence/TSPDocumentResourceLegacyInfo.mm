@interface TSPDocumentResourceLegacyInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDocumentResourceLegacyInfo:(id)a3;
- (TSPDocumentResourceLegacyInfo)init;
- (TSPDocumentResourceLegacyInfo)initWithDigestString:(id)a3 locator:(id)a4;
- (id)description;
@end

@implementation TSPDocumentResourceLegacyInfo

- (TSPDocumentResourceLegacyInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceLegacyInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceLegacyRegistry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 160, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDocumentResourceLegacyInfo init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDocumentResourceLegacyInfo)initWithDigestString:(id)a3 locator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = TSPDocumentResourceLegacyInfo;
  v10 = [(TSPDocumentResourceLegacyInfo *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    digestString = v10->_digestString;
    v10->_digestString = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    locator = v10->_locator;
    v10->_locator = v15;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    isEqualToDocumentResourceLegacyInfo = objc_msgSend_isEqualToDocumentResourceLegacyInfo_(self, v6, v5);
  }

  else
  {
    isEqualToDocumentResourceLegacyInfo = 0;
  }

  return isEqualToDocumentResourceLegacyInfo;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPDocumentResourceLegacyInfo;
  v4 = [(TSPDocumentResourceLegacyInfo *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ - digestString: (%@), locator: (%@)", v4, self->_digestString, self->_locator);

  return v6;
}

- (BOOL)isEqualToDocumentResourceLegacyInfo:(id)a3
{
  v4 = a3;
  digestString = self->_digestString;
  v8 = objc_msgSend_digestString(v4, v6, v7);
  if (objc_msgSend_isEqualToString_(digestString, v9, v8))
  {
    locator = self->_locator;
    v13 = objc_msgSend_locator(v4, v10, v11);
    isEqualToString = objc_msgSend_isEqualToString_(locator, v14, v13);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end