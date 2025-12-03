@interface TPArchivedLayoutState
- (BOOL)isEqual:(id)equal;
- (TPArchivedLayoutState)initWithContext:(id)context layoutState:(id)state;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setLayoutState:(id)state;
@end

@implementation TPArchivedLayoutState

- (void)setLayoutState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(stateCopy, v9, v10, v11, v12, v13);
  layoutState = self->_layoutState;
  self->_layoutState = v14;
}

- (TPArchivedLayoutState)initWithContext:(id)context layoutState:(id)state
{
  contextCopy = context;
  stateCopy = state;
  v17.receiver = self;
  v17.super_class = TPArchivedLayoutState;
  v9 = [(TPArchivedLayoutState *)&v17 initWithContext:contextCopy];
  if (v9)
  {
    v14 = objc_msgSend_copy(stateCopy, v8, v10, v11, v12, v13);
    layoutState = v9->_layoutState;
    v9->_layoutState = v14;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v5, v6, v7, v8, off_2812F85B8[50]);

  v10 = [TPLayoutState alloc];
  v16 = objc_msgSend_initWithArchive_unarchiver_(v10, v11, v12, v13, v14, v15, v9, unarchiverCopy);
  layoutState = self->_layoutState;
  self->_layoutState = v16;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v5, v6, v7, v8, sub_2760055B4, off_2812F85B8[50]);

  layoutState = self->_layoutState;
  v16 = objc_msgSend_context(self, v11, v12, v13, v14, v15);
  objc_msgSend_saveToArchive_archiver_context_(layoutState, v17, v18, v19, v20, v21, v9, archiverCopy, v16);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArchivedLayoutState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToArchivedLayoutState = objc_msgSend_isEqualToArchivedLayoutState_(self, v5, v6, v7, v8, v9, equalCopy);
    }

    else
    {
      isEqualToArchivedLayoutState = 0;
    }
  }

  return isEqualToArchivedLayoutState;
}

@end