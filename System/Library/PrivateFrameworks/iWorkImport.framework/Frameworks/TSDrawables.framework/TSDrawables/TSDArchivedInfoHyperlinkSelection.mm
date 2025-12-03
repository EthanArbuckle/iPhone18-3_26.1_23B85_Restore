@interface TSDArchivedInfoHyperlinkSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSDArchivedInfoHyperlinkSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDArchivedInfoHyperlinkSelection setSelection:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDArchivedInfoHyperlinkSelection.mm");
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v9, 35, 0, "Wrong type of class %@ (expected TSDInfoHyperlinkSelection)", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_setHyperlinkSelection_(self, v15, selectionCopy);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  v4 = objc_alloc_init(TSDInfoHyperlinkSelection);
  hyperlinkSelection = self->_hyperlinkSelection;
  self->_hyperlinkSelection = v4;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, sub_2767A7660, off_2812F5188[116]);
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