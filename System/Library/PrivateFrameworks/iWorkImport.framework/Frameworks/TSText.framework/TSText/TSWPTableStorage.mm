@interface TSWPTableStorage
- (TSWPTableStorage)initWithContext:(id)context string:(id)string kind:(unsigned __int8)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0 paragraphDirection:(int)self1;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)nonUndoableRebuildCellAttributes:(void *)attributes;
@end

@implementation TSWPTableStorage

- (TSWPTableStorage)initWithContext:(id)context string:(id)string kind:(unsigned __int8)kind stylesheet:(id)stylesheet paragraphStyle:(id)style listStyle:(id)listStyle section:(id)section columnStyle:(id)self0 paragraphDirection:(int)self1
{
  v18.receiver = self;
  v18.super_class = TSWPTableStorage;
  v11 = [(TSWPStorage *)&v18 initWithContext:context string:string kind:kind stylesheet:stylesheet paragraphStyle:style listStyle:listStyle section:section columnStyle:columnStyle paragraphDirection:direction];
  v13 = v11;
  if (v11)
  {
    v14 = objc_msgSend_attributeArrayForKind_withCreate_(v11, v12, 10, 1);
    objc_msgSend_nonUndoableInsertParagraphData_charIndex_attributeArray_attributeIndex_(v13, v15, 0, 0, v14, 0);
  }

  return v13;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v16.receiver = self;
  v16.super_class = TSWPTableStorage;
  [(TSWPStorage *)&v16 loadFromUnarchiver:unarchiverCopy];
  if (objc_msgSend_wpKind(self, v5, v6) != 5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPTableStorage loadFromUnarchiver:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTableStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 60, 0, "wpKind should be TSWPKindTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276DD6FF0;
  v15[3] = &unk_27A6F46E8;
  v15[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v7, v15);
}

- (void)nonUndoableRebuildCellAttributes:(void *)attributes
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPTableStorage nonUndoableRebuildCellAttributes:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTableStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 120, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPTableStorage nonUndoableRebuildCellAttributes:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

@end