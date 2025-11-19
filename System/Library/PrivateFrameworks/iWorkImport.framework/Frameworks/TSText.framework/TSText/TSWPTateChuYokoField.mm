@interface TSWPTateChuYokoField
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPTateChuYokoField

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 3);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(a3 + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSWPTateChuYokoField;
  [(TSWPSmartField *)&v9 saveToArchive:v7 archiver:v6];
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276DDC944, off_2812DC408[166]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v4 = *(a3 + 3);
  }

  else
  {
    v4 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSWPTateChuYokoField;
  [(TSWPSmartField *)&v5 loadFromArchive:v4 unarchiver:a4];
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[166]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

@end