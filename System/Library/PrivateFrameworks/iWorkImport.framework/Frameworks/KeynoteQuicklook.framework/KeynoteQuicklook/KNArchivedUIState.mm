@interface KNArchivedUIState
- (KNArchivedUIState)initWithUIState:(id)state context:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNArchivedUIState

- (KNArchivedUIState)initWithUIState:(id)state context:(id)context
{
  stateCopy = state;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = KNArchivedUIState;
  v10 = [(KNArchivedUIState *)&v14 initWithContext:contextCopy];
  if (v10)
  {
    v11 = objc_msgSend_copy(stateCopy, v8, v9);
    uiState = v10->_uiState;
    v10->_uiState = v11;
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[40]);

  v6 = objc_alloc_init(KNUIState);
  uiState = self->_uiState;
  self->_uiState = v6;

  v8 = self->_uiState;
  v11 = objc_msgSend_context(self, v9, v10);
  objc_msgSend_loadFromArchive_unarchiver_context_(v8, v12, v5, unarchiverCopy, v11);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275D906AC, off_2812EA908[40]);

  uiState = self->_uiState;
  v9 = objc_msgSend_context(self, v7, v8);
  objc_msgSend_saveToArchive_archiver_context_(uiState, v10, v5, archiverCopy, v9);
}

@end