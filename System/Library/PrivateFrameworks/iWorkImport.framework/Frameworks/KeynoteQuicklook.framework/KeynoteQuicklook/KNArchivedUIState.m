@interface KNArchivedUIState
- (KNArchivedUIState)initWithUIState:(id)a3 context:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation KNArchivedUIState

- (KNArchivedUIState)initWithUIState:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = KNArchivedUIState;
  v10 = [(KNArchivedUIState *)&v14 initWithContext:v7];
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
  v13 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v13, v4, off_2812EA908[40]);

  v6 = objc_alloc_init(KNUIState);
  uiState = self->_uiState;
  self->_uiState = v6;

  v8 = self->_uiState;
  v11 = objc_msgSend_context(self, v9, v10);
  objc_msgSend_loadFromArchive_unarchiver_context_(v8, v12, v5, v13, v11);
}

- (void)saveToArchiver:(id)a3
{
  v11 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v11, v4, sub_275D906AC, off_2812EA908[40]);

  uiState = self->_uiState;
  v9 = objc_msgSend_context(self, v7, v8);
  objc_msgSend_saveToArchive_archiver_context_(uiState, v10, v5, v11, v9);
}

@end