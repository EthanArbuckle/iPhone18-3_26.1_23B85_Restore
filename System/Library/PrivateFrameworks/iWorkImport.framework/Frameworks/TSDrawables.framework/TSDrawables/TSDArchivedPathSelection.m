@interface TSDArchivedPathSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSDArchivedPathSelection

- (void)setSelection:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDArchivedPathSelection setSelection:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDArchivedPathSelection.mm");
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v10, 29, 0, "Wrong type of class %@ (expected TSDPathSelection)", v12);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  pathSelection = self->_pathSelection;
  self->_pathSelection = v6;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = objc_alloc_init(TSDPathSelection);
  pathSelection = self->_pathSelection;
  self->_pathSelection = &v4->super;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(v4, v3, sub_27669CEA0, off_2812F5188[114]);
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