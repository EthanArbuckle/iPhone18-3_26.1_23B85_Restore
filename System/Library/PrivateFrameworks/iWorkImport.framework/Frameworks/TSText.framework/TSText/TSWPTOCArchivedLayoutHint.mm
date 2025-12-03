@interface TSWPTOCArchivedLayoutHint
- (TSWPTOCArchivedLayoutHint)initWithContext:(id)context hint:(id)hint;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setHint:(id)hint;
@end

@implementation TSWPTOCArchivedLayoutHint

- (void)setHint:(id)hint
{
  hintCopy = hint;
  if (self->_hint != hintCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_hint, hint);
  }
}

- (TSWPTOCArchivedLayoutHint)initWithContext:(id)context hint:(id)hint
{
  hintCopy = hint;
  v11.receiver = self;
  v11.super_class = TSWPTOCArchivedLayoutHint;
  v8 = [(TSWPTOCArchivedLayoutHint *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_hint, hint);
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[118]);

  v6 = [TSWPTOCLayoutHint alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, unarchiverCopy);
  hint = self->_hint;
  self->_hint = v8;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276E2C44C, off_2812DC408[118]);

  objc_msgSend_saveToArchive_archiver_(self->_hint, v6, v5, archiverCopy);
}

@end