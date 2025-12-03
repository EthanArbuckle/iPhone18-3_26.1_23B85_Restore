@interface TSPDatabaseDataObject
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TSPDatabaseDataObject

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FC2C8, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, *off_2812FC320);

  if (*(v5 + 24))
  {
    objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v6, *(v5 + 24));
  }

  else
  {
    objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v6, &TSP::_DataReference_default_instance_);
  }
  v7 = ;
  data = self->_data;
  self->_data = v7;
}

@end