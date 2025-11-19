@interface TNArchivedSheetSelection
- (TNArchivedSheetSelection)initWithContext:(id)a3;
- (void)dealloc;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TNArchivedSheetSelection

- (TNArchivedSheetSelection)initWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = TNArchivedSheetSelection;
  v4 = [(TNArchivedSheetSelection *)&v8 initWithContext:a3];
  if (v4)
  {
    v5 = objc_msgSend_selectionForSheet_paginated_(TNSheetSelection, v3, 0, 0);
    objc_msgSend_setSelection_(v4, v6, v5);
  }

  return v4;
}

- (void)loadFromUnarchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(a3, v5, off_2812DAFE8[8]);
  v7 = *(v6 + 32);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3052000000;
  v15[3] = sub_275F370A8;
  v15[4] = sub_275F370B8;
  v15[5] = 0;
  v8 = *(v6 + 24);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275F370C4;
  v14[3] = &unk_27A6A3268;
  v14[4] = v15;
  v10 = objc_opt_class();
  if (v8)
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(a3, v9, v8, v10, 0, v14);
  }

  else
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(a3, v9, MEMORY[0x277D80A18], v10, 0, v14);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275F370F4;
  v12[3] = &unk_27A6A3290;
  v12[4] = self;
  v12[5] = v15;
  v13 = v7;
  objc_msgSend_addFinalizeHandler_(a3, v11, v12);
  _Block_object_dispose(v15, 8);
}

- (void)saveToArchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(a3, v5, sub_275F372C8, off_2812DAFE8[8]);
  v9 = objc_msgSend_selection(self, v7, v8);
  isPaginated = objc_msgSend_isPaginated(v9, v10, v11);
  *(v6 + 16) |= 2u;
  *(v6 + 32) = isPaginated;
  v15 = objc_msgSend_selection(self, v13, v14);
  if (objc_msgSend_sheet(v15, v16, v17))
  {
    v20 = objc_msgSend_selection(self, v18, v19);
    v24 = objc_msgSend_sheet(v20, v21, v22);
    *(v6 + 16) |= 1u;
    v25 = *(v6 + 24);
    if (!v25)
    {
      v26 = *(v6 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C90F90](v26);
      *(v6 + 24) = v25;
    }

    objc_msgSend_setWeakReference_message_(a3, v23, v24, v25);
  }
}

- (void)dealloc
{
  self->mSelection = 0;
  v3.receiver = self;
  v3.super_class = TNArchivedSheetSelection;
  [(TNArchivedSheetSelection *)&v3 dealloc];
}

@end