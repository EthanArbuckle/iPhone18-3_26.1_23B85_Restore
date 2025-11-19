@interface TSWPTOCLayoutHint
- (TSWPTOCLayoutHint)init;
- (TSWPTOCLayoutHint)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSWPTOCLayoutHint)initWithRange:(_NSRange)a3;
- (_NSRange)charRange;
- (id)copyForArchiving;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSWPTOCLayoutHint

- (TSWPTOCLayoutHint)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6.receiver = self;
  v6.super_class = TSWPTOCLayoutHint;
  result = [(TSWPTOCLayoutHint *)&v6 init];
  if (result)
  {
    result->_charRange.location = location;
    result->_charRange.length = length;
  }

  return result;
}

- (TSWPTOCLayoutHint)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPTOCLayoutHint init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayoutHint.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 43, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSWPTOCLayoutHint init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)copyForArchiving
{
  v3 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithRange_(v3, v4, self->_charRange.location, self->_charRange.length);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPTOCLayoutHint copyForArchiving]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCLayoutHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 48, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  return v6;
}

- (TSWPTOCLayoutHint)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  if (*(a3 + 16))
  {
    v9 = TSPNSRangeFromMessage();
    v8 = objc_msgSend_initWithRange_(self, v10, v9, v10);
  }

  else
  {
    v8 = objc_msgSend_initWithRange_(self, v6, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));
  }

  v11 = v8;

  return v11;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  if (!*(a3 + 3))
  {
    v5 = *(a3 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a3 + 3) = MEMORY[0x277CA3230](v5);
  }

  TSPNSRangeCopyToMessage();
}

- (_NSRange)charRange
{
  length = self->_charRange.length;
  location = self->_charRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end