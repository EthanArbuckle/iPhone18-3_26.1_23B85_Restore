@interface TPArchivedLayoutState
- (BOOL)isEqual:(id)a3;
- (TPArchivedLayoutState)initWithContext:(id)a3 layoutState:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setLayoutState:(id)a3;
@end

@implementation TPArchivedLayoutState

- (void)setLayoutState:(id)a3
{
  v16 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v16, v9, v10, v11, v12, v13);
  layoutState = self->_layoutState;
  self->_layoutState = v14;
}

- (TPArchivedLayoutState)initWithContext:(id)a3 layoutState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = TPArchivedLayoutState;
  v9 = [(TPArchivedLayoutState *)&v17 initWithContext:v6];
  if (v9)
  {
    v14 = objc_msgSend_copy(v7, v8, v10, v11, v12, v13);
    layoutState = v9->_layoutState;
    v9->_layoutState = v14;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v18, v4, v5, v6, v7, v8, off_2812F85B8[50]);

  v10 = [TPLayoutState alloc];
  v16 = objc_msgSend_initWithArchive_unarchiver_(v10, v11, v12, v13, v14, v15, v9, v18);
  layoutState = self->_layoutState;
  self->_layoutState = v16;
}

- (void)saveToArchiver:(id)a3
{
  v22 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v22, v4, v5, v6, v7, v8, sub_2760055B4, off_2812F85B8[50]);

  layoutState = self->_layoutState;
  v16 = objc_msgSend_context(self, v11, v12, v13, v14, v15);
  objc_msgSend_saveToArchive_archiver_context_(layoutState, v17, v18, v19, v20, v21, v9, v22, v16);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToArchivedLayoutState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToArchivedLayoutState = objc_msgSend_isEqualToArchivedLayoutState_(self, v5, v6, v7, v8, v9, v4);
    }

    else
    {
      isEqualToArchivedLayoutState = 0;
    }
  }

  return isEqualToArchivedLayoutState;
}

@end