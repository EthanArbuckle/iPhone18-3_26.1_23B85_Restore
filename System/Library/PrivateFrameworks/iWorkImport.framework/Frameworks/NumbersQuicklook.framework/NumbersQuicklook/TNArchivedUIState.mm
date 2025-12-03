@interface TNArchivedUIState
- (TNArchivedUIState)initWithUIState:(id)state context:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TNArchivedUIState

- (TNArchivedUIState)initWithUIState:(id)state context:(id)context
{
  stateCopy = state;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = TNArchivedUIState;
  v10 = [(TNArchivedUIState *)&v14 initWithContext:contextCopy];
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
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DAFE8[6]);

  v6 = [TNUIState alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, unarchiverCopy);
  uiState = self->_uiState;
  self->_uiState = v8;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275F48D08, off_2812DAFE8[6]);

  v8 = objc_msgSend_uiState(self, v6, v7);
  v11 = objc_msgSend_context(self, v9, v10);
  objc_msgSend_saveToArchive_archiver_context_(v8, v12, v5, archiverCopy, v11);
}

@end