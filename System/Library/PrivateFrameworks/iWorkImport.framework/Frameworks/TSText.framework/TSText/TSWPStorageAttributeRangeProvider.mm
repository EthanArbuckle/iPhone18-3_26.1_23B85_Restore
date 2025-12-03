@interface TSWPStorageAttributeRangeProvider
- (TSWPStorageAttributeRangeProvider)initWithStorage:(id)storage kind:(unint64_t)kind;
- (void)dealloc;
- (void)nextRange;
@end

@implementation TSWPStorageAttributeRangeProvider

- (TSWPStorageAttributeRangeProvider)initWithStorage:(id)storage kind:(unint64_t)kind
{
  storageCopy = storage;
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"attribute-%lu", kind);
  v15.receiver = self;
  v15.super_class = TSWPStorageAttributeRangeProvider;
  v9 = [(TSWPStorageRangeProvider *)&v15 initWithIdentifier:v8];

  if (v9)
  {
    objc_msgSend_range(storageCopy, v10, v11);
    objc_msgSend_range(storageCopy, v12, v13);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  enumerator = self->_enumerator;
  if (enumerator)
  {
    (*(enumerator->var0 + 1))(enumerator, a2);
  }

  v4.receiver = self;
  v4.super_class = TSWPStorageAttributeRangeProvider;
  [(TSWPStorageAttributeRangeProvider *)&v4 dealloc];
}

- (void)nextRange
{
  enumerator = self->_enumerator;
  if (enumerator)
  {
    AttributeIndex = TSWPAttributeEnumerator::nextAttributeIndex(enumerator, &self->super._range, v2);
    if (AttributeIndex)
    {
      var4 = self->_enumerator->var4;
      if (!var4)
      {
        TSUSetCrashReporterInfo();
        v8 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPStorageAttributeRangeProvider nextRange]", "[TSWPStorageAttributeRangeProvider nextRange]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageIterator.mm", 173);
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageIterator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 173, 1, "No attribute array.");

        TSUCrashBreakpoint();
        abort();
      }

      v7 = TSWPAttributeRecord::object(AttributeIndex, *(var4 + 28));
      self->super._object = v7;
    }
  }
}

@end