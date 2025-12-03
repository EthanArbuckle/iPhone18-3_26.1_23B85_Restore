@interface TSTArchivedLayoutHint
- (TSTArchivedLayoutHint)initWithContext:(id)context hint:(id)hint;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setHint:(id)hint;
@end

@implementation TSTArchivedLayoutHint

- (void)setHint:(id)hint
{
  hintCopy = hint;
  if (self->mHint != hintCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->mHint, hint);
  }
}

- (TSTArchivedLayoutHint)initWithContext:(id)context hint:(id)hint
{
  hintCopy = hint;
  v11.receiver = self;
  v11.super_class = TSTArchivedLayoutHint;
  v8 = [(TSTArchivedLayoutHint *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mHint, hint);
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[236], v5, v6);

  v8 = [TSTLayoutHint alloc];
  v12 = objc_msgSend_initWithArchive_(v8, v9, v7, v10, v11);
  mHint = self->mHint;
  self->mHint = v12;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2213B6FC0, off_2812E4498[236], v5);

  objc_msgSend_saveToArchive_(self->mHint, v7, v6, v8, v9);
}

@end