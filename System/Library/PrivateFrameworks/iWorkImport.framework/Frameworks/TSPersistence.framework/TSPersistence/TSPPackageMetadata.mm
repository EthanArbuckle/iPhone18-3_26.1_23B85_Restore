@interface TSPPackageMetadata
- (TSPPackageMetadata)initWithContext:(id)context;
- (id)packageMetadataDataInfosWithDecryptionKey:(id)key;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDataMetadata:(id)metadata forDataIdentifier:(int64_t)identifier;
@end

@implementation TSPPackageMetadata

- (TSPPackageMetadata)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSPPackageMetadata;
  v5 = [(TSPObject *)&v13 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [TSPDataMetadataMap alloc];
    v8 = objc_msgSend_initWithContext_(v6, v7, contextCopy);
    identifierToDataMetadataMap = v5->_identifierToDataMetadataMap;
    v5->_identifierToDataMetadataMap = v8;

    objc_msgSend_tsp_identifier(v5->_identifierToDataMetadataMap, v10, v11);
  }

  return v5;
}

- (void)setDataMetadata:(id)metadata forDataIdentifier:(int64_t)identifier
{
  metadataCopy = metadata;
  objc_msgSend_tsp_identifier(metadataCopy, v6, v7);
  objc_msgSend_setDataMetadata_forDataIdentifier_(self->_identifierToDataMetadataMap, v8, metadataCopy, identifier);
}

- (id)packageMetadataDataInfosWithDecryptionKey:(id)key
{
  keyCopy = key;
  p_message = &self->_message;
  current_size = self->_message.datas_.current_size_;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v7, v8, current_size);
  rep = p_message->datas_.rep_;
  if (rep)
  {
    v11 = (rep + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = p_message->datas_.current_size_;
  if (v12)
  {
    v13 = 8 * v12;
    do
    {
      v14 = *v11;
      v15 = [TSPPackageMetadataDataInfo alloc];
      v18 = objc_msgSend_initWithDataInfo_decryptionKey_(v15, v16, v14, keyCopy);
      if (v18)
      {
        objc_msgSend_addObject_(v9, v17, v18);
      }

      ++v11;
      v13 -= 8;
    }

    while (v13);
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812FBC48[20]);

  sub_2769E8F18(&self->_message, v6);
  if ((self->_message._has_bits_.has_bits_[0] & 2) != 0)
  {
    data_metadata_map = self->_message.data_metadata_map_;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276A1A160;
    v11[3] = &unk_27A6E46E0;
    v11[4] = self;
    v8 = unarchiverCopy;
    v9 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v10, data_metadata_map, v9, 0, v11);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A1A72C, off_2812FBC48[20]);

  identifierToDataMetadataMap = self->_identifierToDataMetadataMap;
  if (identifierToDataMetadataMap)
  {
    self->_message._has_bits_.has_bits_[0] |= 2u;
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

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, identifierToDataMetadataMap, data_metadata_map);
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v10, 10, v5);
  }

  sub_2769E8F18(v5, &self->_message);
}

@end