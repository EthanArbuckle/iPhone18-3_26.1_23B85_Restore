@interface TSPDatabaseDataObject
- (void)loadFromUnarchiver:(id)a3;
@end

@implementation TSPDatabaseDataObject

- (void)loadFromUnarchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FC2C8, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v9, v4, *off_2812FC320);

  if (*(v5 + 24))
  {
    objc_msgSend_readDataReferenceMessage_(v9, v6, *(v5 + 24));
  }

  else
  {
    objc_msgSend_readDataReferenceMessage_(v9, v6, &TSP::_DataReference_default_instance_);
  }
  v7 = ;
  data = self->_data;
  self->_data = v7;
}

@end