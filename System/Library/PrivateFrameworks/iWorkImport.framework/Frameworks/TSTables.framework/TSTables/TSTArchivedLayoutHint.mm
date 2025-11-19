@interface TSTArchivedLayoutHint
- (TSTArchivedLayoutHint)initWithContext:(id)a3 hint:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setHint:(id)a3;
@end

@implementation TSTArchivedLayoutHint

- (void)setHint:(id)a3
{
  v9 = a3;
  if (self->mHint != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->mHint, a3);
  }
}

- (TSTArchivedLayoutHint)initWithContext:(id)a3 hint:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSTArchivedLayoutHint;
  v8 = [(TSTArchivedLayoutHint *)&v11 initWithContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mHint, a4);
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v14 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v14, v4, off_2812E4498[236], v5, v6);

  v8 = [TSTLayoutHint alloc];
  v12 = objc_msgSend_initWithArchive_(v8, v9, v7, v10, v11);
  mHint = self->mHint;
  self->mHint = v12;
}

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_2213B6FC0, off_2812E4498[236], v5);

  objc_msgSend_saveToArchive_(self->mHint, v7, v6, v8, v9);
}

@end