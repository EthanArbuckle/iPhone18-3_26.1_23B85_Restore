@interface TPViewStateRoot
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToViewStateRoot:(id)a3;
- (TPViewStateRoot)initWithContext:(id)a3;
- (TPViewStateRoot)initWithContext:(id)a3 layoutState:(id)a4 uiState:(id)a5;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setLayoutState:(id)a3;
- (void)setUiState:(id)a3;
@end

@implementation TPViewStateRoot

- (TPViewStateRoot)initWithContext:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TPViewStateRoot;
  v5 = [(TPViewStateRoot *)&v23 initWithContext:v4];
  if (v5)
  {
    v6 = [TPArchivedLayoutState alloc];
    v12 = objc_msgSend_initWithContext_(v6, v7, v8, v9, v10, v11, v4);
    archivedLayoutState = v5->_archivedLayoutState;
    v5->_archivedLayoutState = v12;

    v14 = [TPArchivedUIState alloc];
    v20 = objc_msgSend_initWithContext_(v14, v15, v16, v17, v18, v19, v4);
    archivedUIState = v5->_archivedUIState;
    v5->_archivedUIState = v20;
  }

  return v5;
}

- (void)setLayoutState:(id)a3
{
  v22 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_context(self, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_archivedLayoutStateInContext_(v22, v15, v16, v17, v18, v19, v14);
  archivedLayoutState = self->_archivedLayoutState;
  self->_archivedLayoutState = v20;
}

- (void)setUiState:(id)a3
{
  v22 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_context(self, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_archivedUIStateInContext_(v22, v15, v16, v17, v18, v19, v14);
  archivedUIState = self->_archivedUIState;
  self->_archivedUIState = v20;
}

- (TPViewStateRoot)initWithContext:(id)a3 layoutState:(id)a4 uiState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = TPViewStateRoot;
  v11 = [(TPViewStateRoot *)&v29 initWithContext:v8];
  if (v11)
  {
    v12 = [TPArchivedLayoutState alloc];
    if (v9)
    {
      v18 = objc_msgSend_initWithContext_layoutState_(v12, v13, v14, v15, v16, v17, v8, v9);
    }

    else
    {
      v18 = objc_msgSend_initWithContext_(v12, v13, v14, v15, v16, v17, v8);
    }

    v19 = v18;
    objc_storeStrong(&v11->_archivedLayoutState, v18);

    v20 = [TPArchivedUIState alloc];
    v26 = objc_msgSend_initWithContext_uiState_(v20, v21, v22, v23, v24, v25, v8, v10);
    archivedUIState = v11->_archivedUIState;
    v11->_archivedUIState = v26;
  }

  return v11;
}

- (BOOL)isEqualToViewStateRoot:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToArchivedLayoutState_(self->_archivedLayoutState, v5, v6, v7, v8, v9, v4[8]))
  {
    isEqualToArchivedUIState = objc_msgSend_isEqualToArchivedUIState_(self->_archivedUIState, v10, v11, v12, v13, v14, v4[9]);
  }

  else
  {
    isEqualToArchivedUIState = 0;
  }

  return isEqualToArchivedUIState;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToViewStateRoot = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToViewStateRoot = objc_msgSend_isEqualToViewStateRoot_(self, v5, v6, v7, v8, v9, v4);
    }

    else
    {
      isEqualToViewStateRoot = 0;
    }
  }

  return isEqualToViewStateRoot;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, v9, off_2812F85B8[58]);

  if ((*(v10 + 16) & 1) != 0 && objc_msgSend_hasDocumentVersionUUID(v4, v11, v12, v13, v14, v15))
  {
    v16 = *(v10 + 24);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_275FFDEDC;
    v33[3] = &unk_27A6A8BD0;
    v33[4] = self;
    v17 = v4;
    v19 = objc_opt_class();
    if (v16)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v20, v21, v22, v23, v16, v19, 0, v33);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v20, v21, v22, v23, MEMORY[0x277D80A18], v19, 0, v33);
    }
  }

  if ((*(v10 + 16) & 2) != 0)
  {
    v24 = *(v10 + 32);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_275FFDFD8;
    v32[3] = &unk_27A6A8BF8;
    v32[4] = self;
    v25 = v4;
    v26 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v27, v28, v29, v30, v31, v24, v26, 0, v32);
  }
}

- (void)saveToArchiver:(id)a3
{
  v21 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v21, v4, v5, v6, v7, v8, sub_275FFE27C, off_2812F85B8[58]);

  archivedLayoutState = self->_archivedLayoutState;
  if (archivedLayoutState)
  {
    *(v9 + 16) |= 1u;
    v16 = *(v9 + 24);
    if (!v16)
    {
      v17 = *(v9 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C92D60](v17);
      *(v9 + 24) = v16;
    }

    objc_msgSend_setStrongReference_message_(v21, v10, v11, v12, v13, v14, archivedLayoutState, v16);
  }

  archivedUIState = self->_archivedUIState;
  if (archivedUIState)
  {
    *(v9 + 16) |= 2u;
    v19 = *(v9 + 32);
    if (!v19)
    {
      v20 = *(v9 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C92D60](v20);
      *(v9 + 32) = v19;
    }

    objc_msgSend_setStrongReference_message_(v21, v10, v11, v12, v13, v14, archivedUIState, v19);
  }
}

@end