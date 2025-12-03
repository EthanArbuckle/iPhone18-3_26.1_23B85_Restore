@interface TSWPStorageRangeProvider
- (TSWPStorageRangeProvider)initWithIdentifier:(id)identifier;
- (_NSRange)range;
- (unint64_t)rangeEnd;
- (void)nextRange;
- (void)setRangeStart:(unint64_t)start;
@end

@implementation TSWPStorageRangeProvider

- (TSWPStorageRangeProvider)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TSWPStorageRangeProvider;
  v6 = [(TSWPStorageRangeProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (void)setRangeStart:(unint64_t)start
{
  objc_msgSend_range(self, a2, start);
  v8 = &v6[objc_msgSend_range(self, v6, v5) - start];

  objc_msgSend_setRange_(self, v7, start, v8);
}

- (unint64_t)rangeEnd
{
  v4 = objc_msgSend_range(self, a2, v2);
  objc_msgSend_range(self, v5, v6);
  return v4 + v7 - 1;
}

- (void)nextRange
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageRangeProvider nextRange]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageIterator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 130, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSWPStorageRangeProvider nextRange]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end