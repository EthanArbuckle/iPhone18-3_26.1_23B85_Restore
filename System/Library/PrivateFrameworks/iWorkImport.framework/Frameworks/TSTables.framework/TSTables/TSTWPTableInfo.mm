@interface TSTWPTableInfo
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TSTWPTableInfo

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v4 = *(archive + 3);
  }

  else
  {
    v4 = &TST::_TableInfoArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTWPTableInfo;
  [(TSTTableInfo *)&v5 loadFromArchive:v4 unarchiver:unarchiver];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[58], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

@end