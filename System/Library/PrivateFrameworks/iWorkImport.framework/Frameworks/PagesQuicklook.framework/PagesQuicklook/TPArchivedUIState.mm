@interface TPArchivedUIState
- (BOOL)isEqual:(id)a3;
- (TPArchivedUIState)initWithContext:(id)a3 uiState:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setUiState:(id)a3;
@end

@implementation TPArchivedUIState

- (void)setUiState:(id)a3
{
  v16 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v16, v9, v10, v11, v12, v13);
  uiState = self->_uiState;
  self->_uiState = v14;
}

- (TPArchivedUIState)initWithContext:(id)a3 uiState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = TPArchivedUIState;
  v9 = [(TPArchivedUIState *)&v17 initWithContext:v6];
  if (v9)
  {
    v14 = objc_msgSend_copy(v7, v8, v10, v11, v12, v13);
    uiState = v9->_uiState;
    v9->_uiState = v14;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v18, v4, v5, v6, v7, v8, off_2812F85B8[56]);

  v10 = [TPUIState alloc];
  v16 = objc_msgSend_initWithArchive_unarchiver_(v10, v11, v12, v13, v14, v15, v9, v18);
  uiState = self->_uiState;
  self->_uiState = v16;
}

- (void)saveToArchiver:(id)a3
{
  v22 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v22, v4, v5, v6, v7, v8, sub_275FEA778, off_2812F85B8[56]);

  uiState = self->_uiState;
  v16 = objc_msgSend_context(self, v11, v12, v13, v14, v15);
  objc_msgSend_saveToArchive_archiver_context_(uiState, v17, v18, v19, v20, v21, v9, v22, v16);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToArchivedUIState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToArchivedUIState = objc_msgSend_isEqualToArchivedUIState_(self, v5, v6, v7, v8, v9, v4);
    }

    else
    {
      isEqualToArchivedUIState = 0;
    }
  }

  return isEqualToArchivedUIState;
}

@end