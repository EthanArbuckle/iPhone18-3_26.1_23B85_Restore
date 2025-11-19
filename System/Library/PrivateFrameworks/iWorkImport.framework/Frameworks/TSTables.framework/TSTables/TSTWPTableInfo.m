@interface TSTWPTableInfo
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
@end

@implementation TSTWPTableInfo

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v4 = *(a3 + 3);
  }

  else
  {
    v4 = &TST::_TableInfoArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTWPTableInfo;
  [(TSTTableInfo *)&v5 loadFromArchive:v4 unarchiver:a4];
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[58], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

@end