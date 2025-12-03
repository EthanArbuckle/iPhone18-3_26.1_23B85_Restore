@interface TSDArchivedDrawableSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToArchiver:(id)archiver intoMessage:(void *)message;
- (void)setSelection:(id)selection;
@end

@implementation TSDArchivedDrawableSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDArchivedDrawableSelection setSelection:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDArchivedDrawableSelection.mm");
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 29, 0, "Wrong type of class %@ (expected TSDDrawableSelection)", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  drawableSelection = self->_drawableSelection;
  self->_drawableSelection = selectionCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[110]);

  v6 = [TSDDrawableSelection alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, unarchiverCopy);
  objc_msgSend_setSelection_(self, v9, v8);
}

- (void)saveToArchiver:(id)archiver intoMessage:(void *)message
{
  archiverCopy = archiver;
  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, message, archiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2766BF374, off_2812F5188[110]);

  objc_msgSend_saveToArchiver_intoMessage_(self, v6, archiverCopy, v5);
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