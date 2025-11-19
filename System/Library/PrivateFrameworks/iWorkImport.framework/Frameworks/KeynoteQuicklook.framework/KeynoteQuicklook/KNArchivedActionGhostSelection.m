@interface KNArchivedActionGhostSelection
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveToArchiver:(id)a3 intoMessage:(void *)a4;
- (void)setSelection:(id)a3;
@end

@implementation KNArchivedActionGhostSelection

- (void)setSelection:(id)a3
{
  v6 = a3;
  if (v6)
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
  self->_selection = v6;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812EA908[48]);

  v6 = [KNActionGhostSelection alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, v10);
  objc_msgSend_setSelection_(self, v9, v8);
}

- (void)saveToArchiver:(id)a3 intoMessage:(void *)a4
{
  v11 = a3;
  objc_opt_class();
  v8 = objc_msgSend_selection(self, v6, v7);
  v9 = TSUDynamicCast();
  objc_msgSend_saveToArchive_archiver_(v9, v10, a4, v11);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_setMessageVersion_(v4, v5, *MEMORY[0x277D809A8]);
  v9 = v4;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v6, sub_275DAB014, off_2812EA908[48]);

  objc_msgSend_saveToArchiver_intoMessage_(self, v8, v9, v7);
}

@end