@interface TPArchivedCanvasSelection
- (TPArchivedCanvasSelection)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TPArchivedCanvasSelection

- (TPArchivedCanvasSelection)initWithContext:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TPArchivedCanvasSelection;
  v6 = [(TPArchivedCanvasSelection *)&v14 initWithContext:v4];
  if (v6)
  {
    v11 = objc_msgSend_emptySelection(TPCanvasSelection, v5, v7, v8, v9, v10);
    selection = v6->_selection;
    v6->_selection = v11;
  }

  return v6;
}

- (void)loadFromUnarchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v18, v4, v5, v6, v7, v8, off_2812F85B8[52]);

  v10 = [TPCanvasSelection alloc];
  v16 = objc_msgSend_initWithArchive_unarchiver_(v10, v11, v12, v13, v14, v15, v9, v18);
  selection = self->_selection;
  self->_selection = v16;
}

- (void)saveToArchiver:(id)a3
{
  v21 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v21, v4, v5, v6, v7, v8, sub_275FDE4F4, off_2812F85B8[52]);

  v15 = objc_msgSend_selection(self, v10, v11, v12, v13, v14);
  objc_msgSend_saveToArchive_archiver_(v15, v16, v17, v18, v19, v20, v9, v21);
}

- (void)setSelection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = [TPCanvasSelection alloc];
    v12 = objc_msgSend_infos(v5, v7, v8, v9, v10, v11);
    v18 = objc_msgSend_initWithInfos_(v6, v13, v14, v15, v16, v17, v12);

    v4 = v18;
  }

  objc_msgSend_willModify(self, v19, v20, v21, v22, v23);
  selection = self->_selection;
  self->_selection = v4;
}

@end