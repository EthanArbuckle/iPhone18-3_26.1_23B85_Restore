@interface TSTTableStrokePreset
- (TSTTableStrokePreset)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTTableStrokePreset

- (TSTTableStrokePreset)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTTableStrokePreset;
  result = [(TSTTableStrokePreset *)&v4 initWithContext:a3];
  if (result)
  {
    result->mIndex = 0;
  }

  return result;
}

- (void)loadFromUnarchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v8, v4, off_2812E4660[14], v5, v6);

  self->mIndex = *(v7 + 24);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  mIndex = self->mIndex;
  *(a3 + 4) |= 1u;
  *(a3 + 6) = mIndex;
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_221219904, off_2812E4660[14], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

@end