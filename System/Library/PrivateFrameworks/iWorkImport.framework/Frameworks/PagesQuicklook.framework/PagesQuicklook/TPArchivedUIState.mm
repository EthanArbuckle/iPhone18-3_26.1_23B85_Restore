@interface TPArchivedUIState
- (BOOL)isEqual:(id)equal;
- (TPArchivedUIState)initWithContext:(id)context uiState:(id)state;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setUiState:(id)state;
@end

@implementation TPArchivedUIState

- (void)setUiState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(stateCopy, v9, v10, v11, v12, v13);
  uiState = self->_uiState;
  self->_uiState = v14;
}

- (TPArchivedUIState)initWithContext:(id)context uiState:(id)state
{
  contextCopy = context;
  stateCopy = state;
  v17.receiver = self;
  v17.super_class = TPArchivedUIState;
  v9 = [(TPArchivedUIState *)&v17 initWithContext:contextCopy];
  if (v9)
  {
    v14 = objc_msgSend_copy(stateCopy, v8, v10, v11, v12, v13);
    uiState = v9->_uiState;
    v9->_uiState = v14;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v5, v6, v7, v8, off_2812F85B8[56]);

  v10 = [TPUIState alloc];
  v16 = objc_msgSend_initWithArchive_unarchiver_(v10, v11, v12, v13, v14, v15, v9, unarchiverCopy);
  uiState = self->_uiState;
  self->_uiState = v16;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v5, v6, v7, v8, sub_275FEA778, off_2812F85B8[56]);

  uiState = self->_uiState;
  v16 = objc_msgSend_context(self, v11, v12, v13, v14, v15);
  objc_msgSend_saveToArchive_archiver_context_(uiState, v17, v18, v19, v20, v21, v9, archiverCopy, v16);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArchivedUIState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToArchivedUIState = objc_msgSend_isEqualToArchivedUIState_(self, v5, v6, v7, v8, v9, equalCopy);
    }

    else
    {
      isEqualToArchivedUIState = 0;
    }
  }

  return isEqualToArchivedUIState;
}

@end