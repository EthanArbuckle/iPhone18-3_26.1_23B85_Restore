@interface TSCHArchivedSelection
- (TSCHArchivedSelection)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCHArchivedSelection

- (TSCHArchivedSelection)initWithContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHArchivedSelection initWithContext:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 232, 0, "expect to have a context");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v26.receiver = self;
  v26.super_class = TSCHArchivedSelection;
  v24 = [(TSCHArchivedSelection *)&v26 initWithContext:v5];

  return v24;
}

- (void)loadFromUnarchiver:(id)a3
{
  v19 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v19, v4, v5, v6, v7, off_2812ED048[48]);

  v9 = [TSCHSelection alloc];
  v14 = objc_msgSend_initFromArchive_unarchiver_(v9, v10, v11, v12, v13, v8, v19);
  objc_msgSend_setSelection_(self, v15, v16, v17, v18, v14);
}

- (void)saveToArchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v18, v4, v5, v6, v7, sub_2762F0C50, off_2812ED048[48]);

  v13 = objc_msgSend_selection(self, v9, v10, v11, v12);
  objc_msgSend_saveToArchive_archiver_(v13, v14, v15, v16, v17, v8, v18);
}

@end