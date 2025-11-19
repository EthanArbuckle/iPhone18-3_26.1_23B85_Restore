@interface TPArchivedAllFootnoteSelection
- (TPArchivedAllFootnoteSelection)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TPArchivedAllFootnoteSelection

- (TPArchivedAllFootnoteSelection)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPArchivedAllFootnoteSelection;
  v5 = [(TPArchivedAllFootnoteSelection *)&v9 initWithContext:v4];
  if (v5)
  {
    v6 = objc_alloc_init(TPAllFootnoteSelection);
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v18, v4, v5, v6, v7, v8, off_2812F85B8[54]);

  v10 = [TPAllFootnoteSelection alloc];
  v16 = objc_msgSend_initWithArchive_(v10, v11, v12, v13, v14, v15, v9);
  selection = self->_selection;
  self->_selection = v16;
}

- (void)saveToArchiver:(id)a3
{
  v21 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v21, v4, v5, v6, v7, v8, sub_276003D18, off_2812F85B8[54]);

  v15 = objc_msgSend_selection(self, v10, v11, v12, v13, v14);
  objc_msgSend_saveToArchive_archiver_(v15, v16, v17, v18, v19, v20, v9, v21);
}

- (void)setSelection:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
  selection = self->_selection;
  self->_selection = v4;
}

@end