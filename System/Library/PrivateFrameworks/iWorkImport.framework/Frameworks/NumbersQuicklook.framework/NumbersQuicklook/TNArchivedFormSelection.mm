@interface TNArchivedFormSelection
- (TNArchivedFormSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TNArchivedFormSelection

- (TNArchivedFormSelection)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TNArchivedFormSelection;
  v7 = [(TNArchivedFormSelection *)&v11 initWithContext:contextCopy];
  if (v7)
  {
    v8 = objc_msgSend_selection(TNFormViewerSelection, v5, v6);
    objc_msgSend_setSelection_(v7, v9, v8);
  }

  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DAFE8[10]);

  v9 = *(v6 + 24);
  v8 = *(v6 + 28);
  if (v8 >= 0x10000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNArchivedFormSelection loadFromUnarchiver:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNFormViewerSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 106, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    LOWORD(v8) = -1;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275F2D614;
  v17[3] = &unk_27A6A30B0;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v7, v17);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275F2D7D8, off_2812DAFE8[10]);

  v8 = objc_msgSend_selection(self, v6, v7);
  v11 = objc_msgSend_recordIndex(v8, v9, v10);
  v5[4] |= 1u;
  v5[6] = v11;

  v14 = objc_msgSend_selection(self, v12, v13);
  v17 = objc_msgSend_fieldIndex(v14, v15, v16);
  v5[4] |= 2u;
  v5[7] = v17;
}

@end