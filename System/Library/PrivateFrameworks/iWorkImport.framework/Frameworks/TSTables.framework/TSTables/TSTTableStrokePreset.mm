@interface TSTTableStrokePreset
- (TSTTableStrokePreset)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTTableStrokePreset

- (TSTTableStrokePreset)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTTableStrokePreset;
  result = [(TSTTableStrokePreset *)&v4 initWithContext:context];
  if (result)
  {
    result->mIndex = 0;
  }

  return result;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4660[14], v5, v6);

  self->mIndex = *(v7 + 24);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  mIndex = self->mIndex;
  *(archive + 4) |= 1u;
  *(archive + 6) = mIndex;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221219904, off_2812E4660[14], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

@end