@interface TSWPTOCArchivedLayoutHint
- (TSWPTOCArchivedLayoutHint)initWithContext:(id)a3 hint:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setHint:(id)a3;
@end

@implementation TSWPTOCArchivedLayoutHint

- (void)setHint:(id)a3
{
  v7 = a3;
  if (self->_hint != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_hint, a3);
  }
}

- (TSWPTOCArchivedLayoutHint)initWithContext:(id)a3 hint:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSWPTOCArchivedLayoutHint;
  v8 = [(TSWPTOCArchivedLayoutHint *)&v11 initWithContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_hint, a4);
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812DC408[118]);

  v6 = [TSWPTOCLayoutHint alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, v10);
  hint = self->_hint;
  self->_hint = v8;
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276E2C44C, off_2812DC408[118]);

  objc_msgSend_saveToArchive_archiver_(self->_hint, v6, v5, v7);
}

@end