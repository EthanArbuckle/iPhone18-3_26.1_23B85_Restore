@interface TSPObjectSerializationMetadata
- (TSPObjectSerializationMetadata)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPObjectSerializationMetadata

- (TSPObjectSerializationMetadata)initWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSPObjectSerializationMetadata;
  v5 = [(TSPObject *)&v11 initWithContext:v4];
  if (v5)
  {
    v6 = [TSPDataMetadataMap alloc];
    v8 = objc_msgSend_initWithContext_(v6, v7, v4);
    identifierToDataMetadataMap = v5->_identifierToDataMetadataMap;
    v5->_identifierToDataMetadataMap = v8;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812FBC48[40]);

  sub_2769F0FE4(&self->_message, v6);
  if ((self->_message._has_bits_.has_bits_[0] & 8) != 0)
  {
    data_metadata_map = self->_message.data_metadata_map_;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276A7C15C;
    v11[3] = &unk_27A6E46E0;
    v11[4] = self;
    v8 = v4;
    v9 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v10, data_metadata_map, v9, 0, v11);
  }
}

- (void)saveToArchiver:(id)a3
{
  v11 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v11, v4, sub_276A7C37C, off_2812FBC48[40]);

  identifierToDataMetadataMap = self->_identifierToDataMetadataMap;
  if (identifierToDataMetadataMap)
  {
    self->_message._has_bits_.has_bits_[0] |= 8u;
    data_metadata_map = self->_message.data_metadata_map_;
    if (!data_metadata_map)
    {
      ptr = self->_message._internal_metadata_.ptr_;
      if (ptr)
      {
        ptr = *(ptr & 0xFFFFFFFFFFFFFFFELL);
      }

      data_metadata_map = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(ptr);
      self->_message.data_metadata_map_ = data_metadata_map;
    }

    objc_msgSend_setStrongReference_message_(v11, v6, identifierToDataMetadataMap, data_metadata_map);
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v11, v10, 7, v5);
  }

  sub_2769F0FE4(v5, &self->_message);
}

@end