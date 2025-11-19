@interface TSAArchivedGalleryItemSelection
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSAArchivedGalleryItemSelection

- (void)setSelection:(id)a3
{
  v8 = a3;
  if (self->_selection != v8)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_selection, a3);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812F3500[48], v6);

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_2760BECA0;
  v22[4] = sub_2760BECB0;
  v23 = 0;
  if (*(v7 + 16))
  {
    v8 = *(v7 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2760BECB8;
    v21[3] = &unk_27A6B04C8;
    v21[4] = v22;
    v9 = v4;
    v10 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v21);
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_2760BECA0;
  v19[4] = sub_2760BECB0;
  v20 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2760BEDB0;
  v18[3] = &unk_27A6B04F0;
  v18[4] = v19;
  v12 = v4;
  v13 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v12, v14, v7 + 24, v13, 0, v18);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2760BEE30;
  v17[3] = &unk_27A6B0518;
  v17[4] = self;
  v17[5] = v19;
  v17[6] = v22;
  objc_msgSend_addFinalizeHandler_(v12, v15, v17, v16);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v22, 8);
}

- (void)saveToArchiver:(id)a3
{
  v22 = a3;
  google::protobuf::internal::AssignDescriptors();
  v4 = objc_msgSend_messageWithNewFunction_descriptor_(v22, v3, sub_2760BF034, off_2812F3500[48]);

  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_displayedItem(v5, v6, v7, v8);
  *(v4 + 16) |= 1u;
  v11 = *(v4 + 48);
  if (!v11)
  {
    v12 = *(v4 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277C951B0](v12);
    *(v4 + 48) = v11;
  }

  objc_msgSend_setWeakReference_message_(v22, v9, v10, v11);

  v16 = objc_msgSend_items(v5, v13, v14, v15);
  v20 = objc_msgSend_array(v16, v17, v18, v19);
  objc_msgSend_setWeakReferenceArray_message_(v22, v21, v20, v4 + 24);
}

@end