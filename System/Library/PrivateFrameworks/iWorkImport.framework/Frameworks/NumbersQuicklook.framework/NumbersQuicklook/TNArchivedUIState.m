@interface TNArchivedUIState
- (TNArchivedUIState)initWithUIState:(id)a3 context:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TNArchivedUIState

- (TNArchivedUIState)initWithUIState:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TNArchivedUIState;
  v10 = [(TNArchivedUIState *)&v14 initWithContext:v7];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    uiState = v10->_uiState;
    v10->_uiState = v11;
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812DAFE8[6]);

  v6 = [TNUIState alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, v10);
  uiState = self->_uiState;
  self->_uiState = v8;
}

- (void)saveToArchiver:(id)a3
{
  v13 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v13, v4, sub_275F48D08, off_2812DAFE8[6]);

  v8 = objc_msgSend_uiState(self, v6, v7);
  v11 = objc_msgSend_context(self, v9, v10);
  objc_msgSend_saveToArchive_archiver_context_(v8, v12, v5, v13, v11);
}

@end