@interface TSWPArchivedSelection
- (TSWPArchivedSelection)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSWPArchivedSelection

- (TSWPArchivedSelection)initWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSWPArchivedSelection;
  v5 = [(TSWPArchivedSelection *)&v11 initWithContext:v4];
  if (v5)
  {
    v6 = [TSWPSelection alloc];
    v8 = objc_msgSend_initWithRange_(v6, v7, 0, 0);
    selection = v5->_selection;
    v5->_selection = v8;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v18, v4, *off_2812DC408);

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

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_276D743B8, *off_2812DC408);

  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, v5, v10);
}

- (void)setSelection:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6);
  selection = self->_selection;
  self->_selection = v4;
}

@end