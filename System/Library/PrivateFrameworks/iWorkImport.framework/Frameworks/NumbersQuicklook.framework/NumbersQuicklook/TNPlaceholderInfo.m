@interface TNPlaceholderInfo
- (void)loadFromUnarchiver:(id)a3;
@end

@implementation TNPlaceholderInfo

- (void)loadFromUnarchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(a3, v5, off_2812DAFE8[20]);
  if (*(v6 + 24))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = MEMORY[0x277D81070];
  }

  v8.receiver = self;
  v8.super_class = TNPlaceholderInfo;
  [(TNPlaceholderInfo *)&v8 loadFromArchive:v7 unarchiver:a3];
}

@end