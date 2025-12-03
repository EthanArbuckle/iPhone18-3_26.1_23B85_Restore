@interface KNArchivedActionGhostSelection
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToArchiver:(id)archiver intoMessage:(void *)message;
- (void)setSelection:(id)selection;
@end

@implementation KNArchivedActionGhostSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNArchivedActionGhostSelection setSelection:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNArchivedActionGhostSelection.mm");
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 33, 0, "Wrong type of class %@ (expected KNActionGhostSelection)", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  selection = self->_selection;
  self->_selection = selectionCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[48]);

  v6 = [KNActionGhostSelection alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, unarchiverCopy);
  objc_msgSend_setSelection_(self, v9, v8);
}

- (void)saveToArchiver:(id)archiver intoMessage:(void *)message
{
  archiverCopy = archiver;
  objc_opt_class();
  v8 = objc_msgSend_selection(self, v6, v7);
  v9 = TSUDynamicCast();
  objc_msgSend_saveToArchive_archiver_(v9, v10, message, archiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, *MEMORY[0x277D809A8]);
  v9 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v6, sub_275DAB014, off_2812EA908[48]);

  objc_msgSend_saveToArchiver_intoMessage_(self, v8, v9, v7);
}

@end