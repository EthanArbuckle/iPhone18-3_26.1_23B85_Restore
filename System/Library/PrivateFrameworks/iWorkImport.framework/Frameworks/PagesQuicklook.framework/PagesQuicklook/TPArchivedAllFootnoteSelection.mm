@interface TPArchivedAllFootnoteSelection
- (TPArchivedAllFootnoteSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TPArchivedAllFootnoteSelection

- (TPArchivedAllFootnoteSelection)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPArchivedAllFootnoteSelection;
  v5 = [(TPArchivedAllFootnoteSelection *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(TPAllFootnoteSelection);
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v5, v6, v7, v8, off_2812F85B8[54]);

  v10 = [TPAllFootnoteSelection alloc];
  v16 = objc_msgSend_initWithArchive_(v10, v11, v12, v13, v14, v15, v9);
  selection = self->_selection;
  self->_selection = v16;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v5, v6, v7, v8, sub_276003D18, off_2812F85B8[54]);

  v15 = objc_msgSend_selection(self, v10, v11, v12, v13, v14);
  objc_msgSend_saveToArchive_archiver_(v15, v16, v17, v18, v19, v20, v9, archiverCopy);
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end