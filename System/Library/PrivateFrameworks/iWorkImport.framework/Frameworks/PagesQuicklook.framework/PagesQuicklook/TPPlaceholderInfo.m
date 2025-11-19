@interface TPPlaceholderInfo
- (void)loadFromUnarchiver:(id)a3;
@end

@implementation TPPlaceholderInfo

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, v9, off_2812F85B8[6]);

  if (*(v10 + 24))
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = MEMORY[0x277D81070];
  }

  v12.receiver = self;
  v12.super_class = TPPlaceholderInfo;
  [(TPPlaceholderInfo *)&v12 loadFromArchive:v11 unarchiver:v4];
}

@end