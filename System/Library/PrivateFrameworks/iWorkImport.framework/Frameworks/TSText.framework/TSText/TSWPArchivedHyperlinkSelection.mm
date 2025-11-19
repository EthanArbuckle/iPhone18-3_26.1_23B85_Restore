@interface TSWPArchivedHyperlinkSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSWPArchivedHyperlinkSelection

- (void)setSelection:(id)a3
{
  v16 = a3;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPArchivedHyperlinkSelection setSelection:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPArchivedHyperlinkSelection.mm");
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v9, 35, 0, "Wrong type of class %@ (expected TSWPHyperlinkSelection)", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_setHyperlinkSelection_(self, v15, v16);
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = objc_alloc_init(TSWPHyperlinkSelection);
  hyperlinkSelection = self->_hyperlinkSelection;
  self->_hyperlinkSelection = v4;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(v4, v3, sub_276F374D0, off_2812DC408[174]);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_selection(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@: %p> %@", v5, self, v8);

  return v10;
}

@end