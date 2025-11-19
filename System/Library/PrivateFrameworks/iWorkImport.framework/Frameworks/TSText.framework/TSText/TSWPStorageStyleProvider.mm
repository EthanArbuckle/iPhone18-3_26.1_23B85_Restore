@interface TSWPStorageStyleProvider
- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)dropCapStyleAtParIndex:(unint64_t)a3;
- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)textPropertiesForEquation:(id)a3 basedOnProperties:(id)a4;
@end

@implementation TSWPStorageStyleProvider

- (id)paragraphStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageStyleProvider paragraphStyleAtParIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyleProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 27, 0, "Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageStyleProvider paragraphStyleAtCharIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyleProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 32, 0, "Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageStyleProvider characterStyleAtCharIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyleProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 37, 0, "Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (id)listStyleAtParIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageStyleProvider listStyleAtParIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyleProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 42, 0, "Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

- (id)dropCapStyleAtParIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageStyleProvider dropCapStyleAtParIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyleProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 47, 0, "Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)textPropertiesForEquation:(id)a3 basedOnProperties:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageStyleProvider textPropertiesForEquation:basedOnProperties:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyleProvider.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 52, 0, "Use the class method: styleProviderForStorage and do not allocate this class directly. Alternatively, provide your own implementation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

@end