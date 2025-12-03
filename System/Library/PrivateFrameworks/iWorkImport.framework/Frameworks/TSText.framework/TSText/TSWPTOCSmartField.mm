@interface TSWPTOCSmartField
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TSWPTOCSmartField

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[162]);

  if (*(v6 + 48))
  {
    v7 = *(v6 + 48);
  }

  else
  {
    v7 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
  }

  v8.receiver = self;
  v8.super_class = TSWPTOCSmartField;
  [(TSWPPlaceholderSmartField *)&v8 loadFromArchive:v7 unarchiver:unarchiverCopy];
}

@end