@interface TSWPArchivedSelection
- (TSWPArchivedSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSWPArchivedSelection

- (TSWPArchivedSelection)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TSWPArchivedSelection;
  v5 = [(TSWPArchivedSelection *)&v11 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [TSWPSelection alloc];
    v8 = objc_msgSend_initWithRange_(v6, v7, 0, 0);
    selection = v5->_selection;
    v5->_selection = v8;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, *off_2812DC408);

  v6 = [TSWPSelection alloc];
  v8 = objc_msgSend_initWithArchive_(v6, v7, v5);
  selection = self->_selection;
  self->_selection = v8;

  v12 = self->_selection;
  if (v12 && !objc_msgSend_type(v12, v10, v11))
  {
    objc_msgSend_willModifyForUpgrade(self, v13, v14);
    v16 = objc_msgSend_copyWithNewType_(self->_selection, v15, 8);
    v17 = self->_selection;
    self->_selection = v16;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276D743B8, *off_2812DC408);

  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, v5, archiverCopy);
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  objc_msgSend_willModify(self, v5, v6);
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end