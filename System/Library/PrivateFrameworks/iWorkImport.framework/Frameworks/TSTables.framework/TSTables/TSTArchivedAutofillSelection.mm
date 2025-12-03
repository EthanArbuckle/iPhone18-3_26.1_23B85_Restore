@interface TSTArchivedAutofillSelection
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTArchivedAutofillSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTArchivedAutofillSelection setSelection:]", v5, v6);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedAutofillSelection.mm", v10, v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v8, v12, 38, 0, "Wrong type of class %@ (expected TSTAutofillSelection)", v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    }
  }

  objc_opt_class();
  v20 = TSUDynamicCast();
  objc_msgSend_willModify(self, v21, v22, v23, v24);
  autofillSelection = self->_autofillSelection;
  self->_autofillSelection = v20;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[154], v5, v6);
  v8 = 0x7FFF7FFFFFFFLL;

  v9 = *(v7 + 16);
  if (v9)
  {
    v11 = sub_22112397C(*(v7 + 24));
    v10 = v13;
    if ((*(v7 + 16) & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0x7FFF7FFFFFFFLL;
    if ((v9 & 2) == 0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  v8 = sub_22112397C(*(v7 + 32));
  v12 = v14;
LABEL_6:
  v15 = [TSTAutofillSelection alloc];
  v17 = objc_msgSend_initWithSourceCellRange_targetCellRange_(v15, v16, v11, v10, v8, v12);
  autofillSelection = self->_autofillSelection;
  self->_autofillSelection = v17;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2216E45B4, off_2812E4498[154], v5);

  v11 = objc_msgSend_autofillSelection(self, v7, v8, v9, v10);
  v16 = objc_msgSend_sourceCellRange(v11, v12, v13, v14, v15);
  v18 = v17;
  *(v6 + 16) |= 1u;
  v19 = *(v6 + 24);
  if (!v19)
  {
    v20 = *(v6 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v20);
    *(v6 + 24) = v19;
  }

  sub_2211239EC(v16, v18, v19);

  v25 = objc_msgSend_autofillSelection(self, v21, v22, v23, v24);
  v30 = objc_msgSend_targetCellRange(v25, v26, v27, v28, v29);
  v32 = v31;
  *(v6 + 16) |= 2u;
  v33 = *(v6 + 32);
  if (!v33)
  {
    v34 = *(v6 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v34);
    *(v6 + 32) = v33;
  }

  sub_2211239EC(v30, v32, v33);
}

@end