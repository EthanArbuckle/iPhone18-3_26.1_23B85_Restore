@interface TSTArchivedStrokeSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSTArchivedStrokeSelection

- (void)setSelection:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTArchivedStrokeSelection setSelection:]", v6, v7);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedStrokeSelection.mm", v12, v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v10, v14, 27, 0, "Wrong type of class %@ (expected TSTStrokeSelection)", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    }
  }

  objc_msgSend_willModify(self, v4, v5, v6, v7);
  mStrokeSelection = self->mStrokeSelection;
  self->mStrokeSelection = v8;
}

- (void)loadFromUnarchiver:(id)a3
{
  v15 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v15, v4, off_2812E4498[146], v5, v6);

  v8 = [TSTStrokeSelection alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, v7, v15, v10);
  objc_msgSend_setSelection_(self, v12, v11, v13, v14);
}

- (void)saveToArchiver:(id)a3
{
  v14 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v14, v4, sub_221445348, off_2812E4498[146], v5);

  v11 = objc_msgSend_selection(self, v7, v8, v9, v10);
  objc_msgSend_saveToArchive_archiver_(v11, v12, v6, v14, v13);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_selection(self, v6, v7, v8, v9);
  v14 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@: %p> %@", v12, v13, v5, self, v10);

  return v14;
}

@end